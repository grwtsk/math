/-
OrderedBooleanEnumeration — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a
Organized SHA-256: 6e0a1ee1b3d1950e8385560e459bccb83a30fe79a3e8e8241beb9b4b277e8cf9
PMD: 510.7.010.010 counting principles (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole ordered recursive vertex list, exact cardinality, parity/index lemmas and equality with range-mapped pointOfIndex. No extra bijection theorem. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Boolean.Matrix
import Boolean.Cube.ListTools
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.SourceComponents.Variant17131ddf74e1ced3.FiniteBooleanCarriers

namespace Boolean.Cube

universe u

/--
All vertices of `{0,1}^n`, enumerated in standard truth-table order.
-/
def Hypercube.vertices : (n : Nat) → List (Hypercube.Point n)
  | 0 => [fun i => nomatch i]
  | n + 1 =>
      (Hypercube.vertices n).flatMap
        (fun x => [Hypercube.extend x false, Hypercube.extend x true])

@[simp] theorem Hypercube.vertices_length (n : Nat) :
    (Hypercube.vertices n).length = 2 ^ n := by
  induction n with
  | zero => rfl
  | succ n ih =>
      have hflat :
          ∀ xs : List (Hypercube.Point n),
            (xs.flatMap
              (fun x => [Hypercube.extend x false, Hypercube.extend x true])).length =
              xs.length * 2 := by
        intro xs
        induction xs with
        | nil => rfl
        | cons x xs ihxs =>
            simp [ihxs]
            omega
      rw [Hypercube.vertices, hflat, ih]
      simp [Nat.pow_succ]

theorem Hypercube.bitAtNat_two_mul_succ (k b : Nat) :
    Hypercube.bitAtNat (2 * k) (b + 1) = Hypercube.bitAtNat k b := by
  simp only [Hypercube.bitAtNat, ← Nat.testBit_eq_decide_div_mod_eq]
  rw [show b + 1 = b.succ by omega, Nat.testBit_succ]
  rw [show (2 * k) / 2 = k by omega]

theorem Hypercube.bitAtNat_two_mul_add_one_succ (k b : Nat) :
    Hypercube.bitAtNat (2 * k + 1) (b + 1) = Hypercube.bitAtNat k b := by
  simp only [Hypercube.bitAtNat, ← Nat.testBit_eq_decide_div_mod_eq]
  rw [show b + 1 = b.succ by omega, Nat.testBit_succ]
  rw [show (2 * k + 1) / 2 = k by omega]

theorem Hypercube.bitAtNat_two_mul_zero (k : Nat) :
    Hypercube.bitAtNat (2 * k) 0 = false := by
  simp [Hypercube.bitAtNat]

theorem Hypercube.bitAtNat_two_mul_add_one_zero (k : Nat) :
    Hypercube.bitAtNat (2 * k + 1) 0 = true := by
  simp [Hypercube.bitAtNat]

theorem Hypercube.pointOfIndex_two_mul (n k : Nat) :
    Hypercube.pointOfIndex (n + 1) (2 * k) =
      Hypercube.extend (Hypercube.pointOfIndex n k) false := by
  funext i
  by_cases h : i.val < n
  · simp only [Hypercube.pointOfIndex, Hypercube.extend, h, dite_true]
    rw [show Hypercube.tableBit (n + 1) i =
        Hypercube.tableBit n ⟨i.val, h⟩ + 1 by
          simp [Hypercube.tableBit]
          omega]
    exact Hypercube.bitAtNat_two_mul_succ k _
  · have hi : i.val = n := by omega
    simp [Hypercube.pointOfIndex, Hypercube.extend, Hypercube.tableBit,
      hi, Hypercube.bitAtNat_two_mul_zero]

theorem Hypercube.pointOfIndex_two_mul_add_one (n k : Nat) :
    Hypercube.pointOfIndex (n + 1) (2 * k + 1) =
      Hypercube.extend (Hypercube.pointOfIndex n k) true := by
  funext i
  by_cases h : i.val < n
  · simp only [Hypercube.pointOfIndex, Hypercube.extend, h, dite_true]
    rw [show Hypercube.tableBit (n + 1) i =
        Hypercube.tableBit n ⟨i.val, h⟩ + 1 by
          simp [Hypercube.tableBit]
          omega]
    exact Hypercube.bitAtNat_two_mul_add_one_succ k _
  · have hi : i.val = n := by omega
    simp [Hypercube.pointOfIndex, Hypercube.extend, Hypercube.tableBit,
      hi, Hypercube.bitAtNat_two_mul_add_one_zero]

theorem Hypercube.range_two_mul (m : Nat) :
    List.range (2 * m) =
      (List.range m).flatMap (fun k => [2 * k, 2 * k + 1]) := by
  induction m with
  | zero => rfl
  | succ m ih =>
      rw [Nat.mul_succ]
      simp only [List.range_succ, List.flatMap_append, ih]
      simp

/--
The recursive vertex enumerator agrees exactly, including list order, with
the index-based truth-table enumerator.
-/
theorem Hypercube.vertices_eq_range_map_pointOfIndex (n : Nat) :
    Hypercube.vertices n =
      (List.range (2 ^ n)).map (Hypercube.pointOfIndex n) := by
  induction n with
  | zero =>
      simp only [Hypercube.vertices, Nat.pow_zero, List.range_one, List.map_cons,
        List.map_nil, List.cons.injEq, and_true]
      funext i
      exact Fin.elim0 i
  | succ n ih =>
      rw [Hypercube.vertices, ih, Nat.pow_succ]
      rw [show 2 ^ n * 2 = 2 * 2 ^ n by omega, Hypercube.range_two_mul]
      simp only [List.flatMap_map, List.map_flatMap, List.map_cons, List.map_nil]
      apply congrArg (fun f : Nat → List (Hypercube.Point (n + 1)) =>
        List.flatMap f (List.range (2 ^ n)))
      funext k
      rw [Hypercube.pointOfIndex_two_mul, Hypercube.pointOfIndex_two_mul_add_one]

end Boolean.Cube
