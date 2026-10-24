/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCountDeficit
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Rational isolation of one canonical positive-height zero count

Issue #135 requires more than a numerical approximation to a zero count. A real
count enclosure is useful only when its endpoint convention matches the canonical
source and the enclosure contains exactly one natural number.

This module separates those obligations:

* `RationalCountInterval` is finite rational data;
* `CanonicalCountEnclosure T` is the semantic theorem that the actual canonical
  count `positiveHeightCount T` lies in that interval;
* `accepts interval n` is a decidable strict guard proving that `n` is the only
  natural number in the interval.

Acceptance does not produce the analytic enclosure. Conversely, an enclosure
containing two consecutive integers is rejected even when both endpoints are
exact. The result is an exact equality with the maintained canonical count, not
rounding of a main term or an external count assertion.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No argument-principle or Turing
estimate is constructed here.
-/

namespace GRWTSK.RiemannHypothesis.RationalPositiveHeightCountIsolation

open PositiveHeightCountDeficit

noncomputable section

/-- A closed rational interval. Validity alone says nothing about a zero count. -/
structure RationalCountInterval where
  lower : ℚ
  upper : ℚ
  valid : lower ≤ upper

namespace RationalCountInterval

/-- Real membership in the rational closed interval. -/
def Contains (interval : RationalCountInterval) (x : ℝ) : Prop :=
  (interval.lower : ℝ) ≤ x ∧ x ≤ (interval.upper : ℝ)

/-- Strict isolation of one natural number.

The candidate itself must lie in the interval. The open neighboring bounds reject
both a second integer and equality with either adjacent integer. -/
def Isolates (interval : RationalCountInterval) (count : ℕ) : Prop :=
  (count : ℚ) - 1 < interval.lower ∧
    interval.lower ≤ (count : ℚ) ∧
    (count : ℚ) ≤ interval.upper ∧
    interval.upper < (count : ℚ) + 1

instance (interval : RationalCountInterval) (count : ℕ) :
    Decidable (interval.Isolates count) := by
  unfold Isolates
  infer_instance

/-- Pure rational isolation check. -/
def accepts (interval : RationalCountInterval) (count : ℕ) : Bool :=
  decide (interval.Isolates count)

@[simp] theorem accepts_iff
    (interval : RationalCountInterval) (count : ℕ) :
    interval.accepts count = true ↔ interval.Isolates count := by
  simp [accepts]

/-- An accepted interval contains no natural number other than its candidate. -/
theorem nat_eq_of_contains_of_isolates
    (interval : RationalCountInterval) {actual candidate : ℕ}
    (contained : interval.Contains (actual : ℝ))
    (isolates : interval.Isolates candidate) :
    actual = candidate := by
  rcases contained with ⟨hlower, hupper⟩
  rcases isolates with ⟨hpred, _candidateLower, _candidateUpper, hsucc⟩
  have hpredR : (candidate : ℝ) - 1 < (interval.lower : ℝ) := by
    exact_mod_cast hpred
  have hsuccR : (interval.upper : ℝ) < (candidate : ℝ) + 1 := by
    exact_mod_cast hsucc
  have hlowerActual : (candidate : ℝ) - 1 < (actual : ℝ) :=
    hpredR.trans_le hlower
  have hactualUpper : (actual : ℝ) < (candidate : ℝ) + 1 :=
    hupper.trans_lt hsuccR
  have hactualLtSucc : actual < candidate + 1 := by
    exact_mod_cast hactualUpper
  have hactualLe : actual ≤ candidate := Nat.lt_succ_iff.mp hactualLtSucc
  have hcandidateLe : candidate ≤ actual := by
    cases candidate with
    | zero => exact Nat.zero_le actual
    | succ candidate =>
        have hcast : (candidate : ℝ) < (actual : ℝ) := by
          simpa using hlowerActual
        have hnat : candidate < actual := by
          exact_mod_cast hcast
        exact Nat.succ_le_iff.mpr hnat
  exact Nat.le_antisymm hactualLe hcandidateLe

/-- If the successor is retained, the interval cannot isolate the lower count. -/
theorem not_isolates_of_successor_le_upper
    (interval : RationalCountInterval) (count : ℕ)
    (successorMem : (((count + 1 : ℕ) : ℚ)) ≤ interval.upper) :
    ¬ interval.Isolates count := by
  intro isolated
  have hupper := isolated.2.2.2
  have hcast : (((count + 1 : ℕ) : ℚ)) = (count : ℚ) + 1 := by
    norm_num
  rw [← hcast] at hupper
  exact (not_lt_of_ge successorMem) hupper

/-- If the predecessor is retained, the interval cannot isolate a positive count. -/
theorem not_isolates_of_lower_le_predecessor
    (interval : RationalCountInterval) (count : ℕ) (positive : 0 < count)
    (predecessorMem : interval.lower ≤ ((count - 1 : ℕ) : ℚ)) :
    ¬ interval.Isolates count := by
  intro isolated
  cases count with
  | zero => simp at positive
  | succ count =>
      have hlower := isolated.1
      norm_num at hlower predecessorMem
      linarith

end RationalCountInterval

/-- A source theorem that the maintained canonical count lies in one rational interval.
The endpoint convention is inherited from `positiveHeightCount`: `0 < Im rho ≤ T`,
with actual analytic multiplicity. -/
structure CanonicalCountEnclosure (T : ℝ) where
  interval : RationalCountInterval
  contains_count : interval.Contains (positiveHeightCount T : ℝ)

namespace CanonicalCountEnclosure

/-- Decidable isolation guard attached to a semantic count enclosure. -/
def accepts {T : ℝ} (enclosure : CanonicalCountEnclosure T) (count : ℕ) : Bool :=
  enclosure.interval.accepts count

@[simp] theorem accepts_iff {T : ℝ}
    (enclosure : CanonicalCountEnclosure T) (count : ℕ) :
    enclosure.accepts count = true ↔ enclosure.interval.Isolates count := by
  simp [accepts]

/-- A sound enclosure plus rational isolation supplies the exact canonical count. -/
theorem exact_count_of_accepts {T : ℝ}
    (enclosure : CanonicalCountEnclosure T) (count : ℕ)
    (accepted : enclosure.accepts count = true) :
    positiveHeightCount T = count := by
  apply RationalCountInterval.nat_eq_of_contains_of_isolates
    enclosure.interval enclosure.contains_count
  exact (enclosure.accepts_iff count).mp accepted

/-- Two accepted candidates for the same source enclosure are equal. -/
theorem accepted_count_unique {T : ℝ}
    (enclosure : CanonicalCountEnclosure T) {left right : ℕ}
    (leftAccepted : enclosure.accepts left = true)
    (rightAccepted : enclosure.accepts right = true) :
    left = right := by
  rw [← enclosure.exact_count_of_accepts left leftAccepted,
    ← enclosure.exact_count_of_accepts right rightAccepted]

end CanonicalCountEnclosure

/-- A narrow interval around fourteen isolates fourteen. -/
def fourteenInterval : RationalCountInterval where
  lower := 139 / 10
  upper := 141 / 10
  valid := by norm_num

/-- Exact rational fixture for one-integer isolation. -/
theorem fourteen_interval_accepts : fourteenInterval.accepts 14 = true := by
  norm_num [RationalCountInterval.accepts, RationalCountInterval.Isolates,
    fourteenInterval]

/-- The closed interval `[14,15]` contains two integers and cannot certify fourteen. -/
def twoIntegerInterval : RationalCountInterval where
  lower := 14
  upper := 15
  valid := by norm_num

/-- The lower candidate is rejected because its successor is retained. -/
theorem two_integer_interval_rejects_fourteen :
    twoIntegerInterval.accepts 14 = false := by
  norm_num [RationalCountInterval.accepts, RationalCountInterval.Isolates,
    twoIntegerInterval]

/-- The upper candidate is rejected because its predecessor is retained. -/
theorem two_integer_interval_rejects_fifteen :
    twoIntegerInterval.accepts 15 = false := by
  norm_num [RationalCountInterval.accepts, RationalCountInterval.Isolates,
    twoIntegerInterval]

/-- A narrow interval that misses the proposed integer is also rejected. -/
def missedIntegerInterval : RationalCountInterval where
  lower := 141 / 10
  upper := 149 / 10
  valid := by norm_num

/-- Isolation requires containment of the candidate, not only width below one. -/
theorem missed_integer_interval_rejected :
    missedIntegerInterval.accepts 14 = false := by
  norm_num [RationalCountInterval.accepts, RationalCountInterval.Isolates,
    missedIntegerInterval]

end

end GRWTSK.RiemannHypothesis.RationalPositiveHeightCountIsolation
