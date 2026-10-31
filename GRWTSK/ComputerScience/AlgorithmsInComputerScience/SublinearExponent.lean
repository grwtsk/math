import Init

/-!
# Sublinear exponent bounds and finite-prefix obstructions

Local attribution: grwtsk contributors.

A fixed natural-valued exponent sequence is sublinear when every positive
integer reciprocal rate eventually bounds it. Two total exponent sequences can
agree on any supplied finite prefix while only one has this property.

This scalar model supplies no SAT algorithm, computational time semantics,
polynomial input-size factor or identification with the Exponential Time
Hypothesis. In particular, its quantifiers do not exchange a fixed algorithm
with a family of algorithms chosen separately for each rate.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.AlgorithmsInComputerScience.SublinearExponent

/-- A fixed exponent is eventually below every positive reciprocal linear rate. -/
def IsSublinear (exponent : Nat → Nat) : Prop :=
  ∀ rate : Nat, 0 < rate → ∃ threshold : Nat,
    ∀ n : Nat, threshold ≤ n → rate * exponent n ≤ n

/-- A total exponent agreeing with zero through `cutoff`, then growing linearly. -/
def delayedLinear (cutoff n : Nat) : Nat :=
  if n ≤ cutoff then 0 else n

theorem zero_isSublinear : IsSublinear (fun _ => 0) := by
  intro rate _positive
  refine ⟨0, ?_⟩
  intro n _past
  exact Nat.zero_le n

theorem delayedLinear_prefix (cutoff n : Nat) (within : n ≤ cutoff) :
    delayedLinear cutoff n = 0 :=
  ite_eq_left within

theorem delayedLinear_not_isSublinear (cutoff : Nat) :
    ¬ IsSublinear (delayedLinear cutoff) := by
  intro sublinear
  obtain ⟨threshold, bound⟩ := sublinear 2 (by decide)
  let n := cutoff + threshold + 1
  have past : threshold ≤ n :=
    Nat.le_trans (Nat.le_add_left threshold cutoff) (Nat.le_succ (cutoff + threshold))
  have beyond : cutoff < n :=
    Nat.lt_of_le_of_lt (Nat.le_add_right cutoff threshold)
      (Nat.lt_succ_self (cutoff + threshold))
  have positive : 0 < n := Nat.succ_pos (cutoff + threshold)
  have strict : n < 2 * n := by
    calc
      n = 1 * n := (Nat.one_mul n).symm
      _ < 2 * n := Nat.mul_lt_mul_of_pos_right (by decide) positive
  have incompatible := bound n past
  rw [delayedLinear, ite_eq_right (Nat.not_le_of_gt beyond)] at incompatible
  exact (Nat.not_le_of_gt strict) incompatible

/-- Finite prefix equality cannot decide this uniform eventual property.
This is about supplied scalar sequences, not the existence of SAT deciders. -/
theorem finitePrefix_ambiguous (cutoff : Nat) :
    ∃ fast slow : Nat → Nat,
      (∀ n, n ≤ cutoff → fast n = slow n) ∧
        IsSublinear fast ∧ ¬ IsSublinear slow := by
  refine ⟨(fun _ => 0), delayedLinear cutoff, ?_, zero_isSublinear,
    delayedLinear_not_isSublinear cutoff⟩
  intro n within
  exact (delayedLinear_prefix cutoff n within).symm

/-- No decision rule depending only on the supplied finite prefix correctly
classifies every exponent sequence. Operational observation refinement remains
an independent premise; this conclusion is not an ETH lower bound. -/
theorem noPrefixClassifier (cutoff : Nat) (classify : (Nat → Nat) → Bool)
    (prefixInvariant : ∀ fast slow : Nat → Nat,
      (∀ n, n ≤ cutoff → fast n = slow n) → classify fast = classify slow)
    (correct : ∀ exponent : Nat → Nat, classify exponent = true ↔ IsSublinear exponent) :
    False := by
  obtain ⟨fast, slow, agreement, fastBound, slowFailure⟩ := finitePrefix_ambiguous cutoff
  have acceptedFast : classify fast = true := (correct fast).mpr fastBound
  have acceptedSlow : classify slow = true :=
    (prefixInvariant fast slow agreement).symm.trans acceptedFast
  exact slowFailure ((correct slow).mp acceptedSlow)

/-- Every fixed natural-valued constant exponent satisfies the eventual bound. -/
theorem constant_isSublinear (value : Nat) : IsSublinear (fun _ => value) := by
  intro rate _positive
  refine ⟨rate * value, ?_⟩
  intro n past
  exact past

/-- Fixed affine enlargement preserves sublinearity of a fixed exponent.
The scale and offset are independent of the input and requested reciprocal rate.
This supplies only the exponent arithmetic, not a computational reduction. -/
theorem IsSublinear.affine {exponent : Nat → Nat} (sublinear : IsSublinear exponent)
    (scale offset : Nat) : IsSublinear (fun n => exponent (scale * n + offset)) := by
  cases scale with
  | zero =>
    intro rate positive
    obtain ⟨threshold, bound⟩ := constant_isSublinear (exponent offset) rate positive
    refine ⟨threshold, ?_⟩
    intro n past
    change rate * exponent (0 * n + offset) ≤ n
    rw [Nat.zero_mul, Nat.zero_add]
    exact bound n past
  | succ previous =>
    intro rate positive
    let factor := Nat.succ previous + offset
    have factorPositive : 0 < factor :=
      Nat.lt_of_lt_of_le (Nat.succ_pos previous)
        (Nat.le_add_right (Nat.succ previous) offset)
    obtain ⟨threshold, bound⟩ := sublinear (rate * factor)
      (Nat.mul_pos positive factorPositive)
    refine ⟨threshold + 1, ?_⟩
    intro n past
    have thresholdLe : threshold ≤ n :=
      Nat.le_trans (Nat.le_succ threshold) past
    have oneLeN : 1 ≤ n :=
      Nat.le_trans (Nat.succ_le_succ (Nat.zero_le threshold)) past
    have oneLeScale : 1 ≤ Nat.succ previous :=
      Nat.succ_le_succ (Nat.zero_le previous)
    have scaleLower : n ≤ Nat.succ previous * n := by
      calc
        n = 1 * n := (Nat.one_mul n).symm
        _ ≤ Nat.succ previous * n := Nat.mul_le_mul_right n oneLeScale
    have inputPast : threshold ≤ Nat.succ previous * n + offset :=
      Nat.le_trans (Nat.le_trans thresholdLe scaleLower)
        (Nat.le_add_right (Nat.succ previous * n) offset)
    have offsetLower : offset ≤ offset * n := by
      calc
        offset = offset * 1 := (Nat.mul_one offset).symm
        _ ≤ offset * n := Nat.mul_le_mul_left offset oneLeN
    have inputUpper : Nat.succ previous * n + offset ≤ factor * n := by
      calc
        Nat.succ previous * n + offset ≤ Nat.succ previous * n + offset * n :=
          Nat.add_le_add_left offsetLower (Nat.succ previous * n)
        _ = factor * n := (Nat.add_mul (Nat.succ previous) offset n).symm
    have scaled : factor * (rate * exponent (Nat.succ previous * n + offset)) ≤
        factor * n := by
      calc
        factor * (rate * exponent (Nat.succ previous * n + offset)) =
            (factor * rate) * exponent (Nat.succ previous * n + offset) :=
          (Nat.mul_assoc factor rate _).symm
        _ = (rate * factor) * exponent (Nat.succ previous * n + offset) :=
          congrArg (fun value => value * exponent (Nat.succ previous * n + offset))
            (Nat.mul_comm factor rate)
        _ ≤ Nat.succ previous * n + offset := bound _ inputPast
        _ ≤ factor * n := inputUpper
    exact Nat.le_of_mul_le_mul_left scaled factorPositive

/-- Two independently sublinear fixed exponents have a sublinear sum.
The source bounds are each requested at twice the desired reciprocal rate. -/
theorem IsSublinear.add {left right : Nat → Nat}
    (leftBound : IsSublinear left) (rightBound : IsSublinear right) :
    IsSublinear (fun n => left n + right n) := by
  intro rate positive
  have doubledPositive : 0 < 2 * rate := Nat.mul_pos (by decide) positive
  obtain ⟨leftThreshold, leftPast⟩ := leftBound (2 * rate) doubledPositive
  obtain ⟨rightThreshold, rightPast⟩ := rightBound (2 * rate) doubledPositive
  refine ⟨leftThreshold + rightThreshold, ?_⟩
  intro n past
  have leftApplies : leftThreshold ≤ n :=
    Nat.le_trans (Nat.le_add_right leftThreshold rightThreshold) past
  have rightApplies : rightThreshold ≤ n :=
    Nat.le_trans (Nat.le_add_left rightThreshold leftThreshold) past
  have scaled : 2 * (rate * (left n + right n)) ≤ 2 * n := by
    calc
      2 * (rate * (left n + right n)) = (2 * rate) * (left n + right n) :=
        (Nat.mul_assoc 2 rate _).symm
      _ = (2 * rate) * left n + (2 * rate) * right n :=
        Nat.mul_add (2 * rate) (left n) (right n)
      _ ≤ n + n := Nat.add_le_add (leftPast n leftApplies) (rightPast n rightApplies)
      _ = 2 * n := (Nat.two_mul n).symm
  exact Nat.le_of_mul_le_mul_left scaled (by decide)

/-- Exponent arithmetic for fixed affine target parameters plus a separately
justified sublinear overhead. It supplies no algorithm or overhead estimate. -/
theorem IsSublinear.affine_add {target overhead : Nat → Nat}
    (targetBound : IsSublinear target) (overheadBound : IsSublinear overhead)
    (scale offset : Nat) :
    IsSublinear (fun n => target (scale * n + offset) + overhead n) :=
  (targetBound.affine scale offset).add overheadBound

end GRWTSK.ComputerScience.AlgorithmsInComputerScience.SublinearExponent
