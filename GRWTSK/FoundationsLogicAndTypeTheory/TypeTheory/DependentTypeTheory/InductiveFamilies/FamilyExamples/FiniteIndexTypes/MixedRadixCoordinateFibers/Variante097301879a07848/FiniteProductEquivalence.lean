/-
Complete finite mixed-radix coordinate equivalence
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c
Organized SHA-256: 8b26a214146396c3bca993b027ce70c07fd75d180e9923ee158928caab86f407
PMD: 510.0.070.020.060.030.020 finite index types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Original namespace blocks are retained exactly for imported-type extension/field lookup; no containing namespace is changed in this output and no GRWTSK alias is fabricated. Isolated uncompiled historical declarations must not be coimported with another full copy/version. This is pure supplied mathematics, not a source/runtime acceptance or foreign provider construction. -/

import BitMatrix.Carrier.Address
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Data.Nat.Nth

/-!
# Complete sequential-prime carrier

This module constructs the restricted carrier described by the rhetorical
specification.  Unlike `RawCarrierAddress`, every coordinate here belongs to
the finite dependent product selected by its sequential-prime specification.
The canonical enumeration is obtained by increasing enumeration of the exact
image of the documented address code.
-/

namespace BitMatrix.Carrier

open scoped BigOperators

/-- A finite dependent product of finite axes, represented recursively. -/
def CoordinateFiber : List Nat → Type
  | [] => PUnit
  | cardinality :: tail => Fin cardinality × CoordinateFiber tail

namespace CoordinateFiber

/-- Cardinality of the dependent finite product. -/
def cardinality : List Nat → Nat
  | [] => 1
  | radix :: tail => radix * cardinality tail

/-- Least-significant-coordinate-first mixed-radix evaluation. -/
def mixedRadix : {radices : List Nat} → CoordinateFiber radices → Nat
  | [], _ => 0
  | radix :: _, coordinate =>
      coordinate.1.val + radix * mixedRadix coordinate.2

/-- The all-zero point of a fiber whose axes are all nonempty. -/
def zero : (radices : List Nat) →
    (∀ radix ∈ radices, 0 < radix) → CoordinateFiber radices
  | [], _ => PUnit.unit
  | radix :: tail, positive =>
      (⟨0, positive radix (by simp)⟩,
        zero tail (fun value member => positive value (by simp [member])))

@[simp]
theorem mixedRadix_zero
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix) :
    mixedRadix (zero radices positive) = 0 := by
  induction radices with
  | nil => rfl
  | cons radix tail inductionHypothesis =>
      simp only [zero, mixedRadix, zero_add]
      rw [inductionHypothesis]
      simp

theorem cardinality_positive
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix) :
    0 < cardinality radices := by
  induction radices with
  | nil => simp [cardinality]
  | cons radix tail inductionHypothesis =>
      simp only [cardinality]
      exact Nat.mul_pos (positive radix (by simp))
        (inductionHypothesis (fun value member => positive value (by simp [member])))

/-- Decode a bounded natural into least-significant-coordinate-first digits. -/
def ofNat : (radices : List Nat) →
    (∀ radix ∈ radices, 0 < radix) → Nat → CoordinateFiber radices
  | [], _, _ => PUnit.unit
  | radix :: tail, positive, value =>
      (⟨value % radix, Nat.mod_lt value (positive radix (by simp))⟩,
        ofNat tail (fun axis member => positive axis (by simp [member]))
          (value / radix))

theorem mixedRadix_ofNat
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix)
    (value : Nat)
    (bound : value < cardinality radices) :
    mixedRadix (ofNat radices positive value) = value := by
  induction radices generalizing value with
  | nil =>
      simp only [cardinality] at bound
      have : value = 0 := by omega
      subst value
      rfl
  | cons radix tail inductionHypothesis =>
      have radixPositive := positive radix (by simp)
      have tailBound : value / radix < cardinality tail := by
        rw [Nat.div_lt_iff_lt_mul radixPositive]
        simpa [cardinality, Nat.mul_comm] using bound
      simp only [ofNat, mixedRadix]
      rw [inductionHypothesis
        (fun axis member => positive axis (by simp [member]))
        (value / radix) tailBound]
      exact Nat.mod_add_div value radix

theorem mixedRadix_injective
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix) :
    Function.Injective (@mixedRadix radices) := by
  induction radices with
  | nil =>
      intro left right _
      cases left
      cases right
      rfl
  | cons radix tail inductionHypothesis =>
      intro left right equality
      have radixPositive : 0 < radix := positive radix (by simp)
      have headEquality : left.1.val = right.1.val := by
        have moduloEquality := congrArg (fun value => value % radix) equality
        simpa [mixedRadix, Nat.add_mul_mod_self_left,
          Nat.mod_eq_of_lt left.1.isLt, Nat.mod_eq_of_lt right.1.isLt]
          using moduloEquality
      have headSubtypeEquality : left.1 = right.1 := Fin.ext headEquality
      have tailProductEquality :
          radix * mixedRadix left.2 = radix * mixedRadix right.2 := by
        simpa [mixedRadix, headEquality] using equality
      have tailCodeEquality : mixedRadix left.2 = mixedRadix right.2 :=
        Nat.mul_left_cancel radixPositive tailProductEquality
      have tailEquality : left.2 = right.2 :=
        inductionHypothesis
          (fun value member => positive value (by simp [member]))
          tailCodeEquality
      exact Prod.ext headSubtypeEquality tailEquality

theorem mixedRadix_lt_cardinality
    {radices : List Nat}
    (coordinate : CoordinateFiber radices) :
    mixedRadix coordinate < cardinality radices := by
  induction radices with
  | nil =>
      cases coordinate
      simp [mixedRadix, cardinality]
  | cons radix tail inductionHypothesis =>
      have headBound : coordinate.1.val < radix := coordinate.1.isLt
      have tailBound : mixedRadix coordinate.2 < cardinality tail :=
        inductionHypothesis coordinate.2
      calc
        mixedRadix coordinate =
            coordinate.1.val + radix * mixedRadix coordinate.2 := rfl
        _ < radix + radix * mixedRadix coordinate.2 :=
          Nat.add_lt_add_right headBound _
        _ = radix * (mixedRadix coordinate.2 + 1) := by
          rw [Nat.mul_add, Nat.mul_one, Nat.add_comm]
        _ ≤ radix * cardinality tail :=
          Nat.mul_le_mul_left radix (Nat.succ_le_iff.mpr tailBound)
        _ = cardinality (radix :: tail) := rfl

/-- Exact documented mixed-radix equivalence for any nonempty-axis list. -/
noncomputable def mixedRadixEquiv
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix) :
    CoordinateFiber radices ≃ Fin (cardinality radices) where
  toFun coordinate := ⟨mixedRadix coordinate, mixedRadix_lt_cardinality coordinate⟩
  invFun index := ofNat radices positive index.val
  left_inv coordinate := by
    apply mixedRadix_injective radices positive
    exact mixedRadix_ofNat radices positive
      (mixedRadix coordinate) (mixedRadix_lt_cardinality coordinate)
  right_inv index := by
    apply Fin.ext
    exact mixedRadix_ofNat radices positive index.val index.isLt

@[simp]
theorem mixedRadixEquiv_apply
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix)
    (coordinate : CoordinateFiber radices) :
    (mixedRadixEquiv radices positive coordinate).val = mixedRadix coordinate :=
  rfl

end CoordinateFiber

end BitMatrix.Carrier
