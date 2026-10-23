/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib sources retain their original attribution and licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#696. Exact parent: updated draft PR #638.
-/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshBoundaryTriangle
import Mathlib.Tactic

/-!
# Event-supremum and half-L1 finite total variation

The updated finite Chowla-sofic branch uses rational half-L1 total
variation of category masses; other ongoing source drafts use the
maximum of the absolute mass discrepancy over ALL Boolean events.

For an arbitrary zero-total-mass rational vector on a finite alphabet,
these two expressions are exactly equal. The upper bound follows by
centering each Boolean event into a +1/-1 sign function; the lower
bound selects the event of nonnegative signed masses.

The same theorem is instantiated with the *actual* category counts
from the parent FiniteLabeledBoundaryTV module. The positive root-count
guard keeps the normalization an empirical probability.

This comparison is finite algebra, not an arithmetic cancellation
theorem, a claim that the other source branches were rebased, or an
accepted Lean kernel proof. No Chowla, sofic ergodicity, GUE or RH
claim is inferred.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

variable {β : Type*} [Fintype β] [DecidableEq β]

/-- Signed event mass for one Boolean event on the COMPLETE alphabet. -/
def finiteSignedEventMass (δ : β → ℚ) (event : β → Bool) : ℚ :=
  ∑ b : β, if event b then δ b else 0

/-- Total variation in the all-event-supremum representation.
There is always at least one Boolean event, even for an empty alphabet. -/
def finiteSignedEventSup (δ : β → ℚ) : ℚ :=
  (Finset.univ : Finset (β → Bool)).sup'
    (by exact ⟨(fun _ : β => false), Finset.mem_univ _⟩)
    (fun event => |finiteSignedEventMass δ event|)

/-- The centered +/-1 weight associated with an arbitrary event. -/
def finiteEventSign (event : β → Bool) (b : β) : ℚ :=
  if event b then 1 else -1

/-- Exact signed-event centering; the zero-total-mass hypothesis is not
optional. Omitting it changes the factor-two equation. -/
theorem finiteEventSign_pairing
    (δ : β → ℚ) (event : β → Bool)
    (hzero : (∑ b : β, δ b) = 0) :
    (∑ b : β, finiteEventSign event b * δ b) =
      2 * finiteSignedEventMass δ event := by
  classical
  have hp (b : β) :
      finiteEventSign event b * δ b =
        2 * (if event b then δ b else 0) - δ b := by
    cases he : event b <;> simp [finiteEventSign, he] <;> ring
  calc
    (∑ b : β, finiteEventSign event b * δ b) =
        ∑ b : β, (2 * (if event b then δ b else 0) - δ b) := by
      apply Finset.sum_congr rfl
      intro b hb
      exact hp b
    _ = 2 * (∑ b : β, if event b then δ b else 0) -
        ∑ b : β, δ b := by
      rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
    _ = 2 * finiteSignedEventMass δ event := by
      simp [finiteSignedEventMass, hzero]

/-- Each centered-event sign is a unit in absolute value. -/
theorem finiteEventSign_mul_abs (δ : β → ℚ) (event : β → Bool)
    (b : β) :
    |finiteEventSign event b * δ b| = |δ b| := by
  cases he : event b <;> simp [finiteEventSign, he]

/-- Every event discrepancy is bounded by one half of total absolute
mass. No singleton-pattern or missing-event shortcut is used. -/
theorem two_mul_abs_finiteSignedEventMass_le
    (δ : β → ℚ) (event : β → Bool)
    (hzero : (∑ b : β, δ b) = 0) :
    2 * |finiteSignedEventMass δ event| ≤
      ∑ b : β, |δ b| := by
  classical
  calc
    2 * |finiteSignedEventMass δ event| =
        |∑ b : β, finiteEventSign event b * δ b| := by
      rw [finiteEventSign_pairing δ event hzero]
      simp [abs_mul]
    _ ≤ ∑ b : β, |finiteEventSign event b * δ b| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ b : β, |δ b| := by
      apply Finset.sum_congr rfl
      intro b hb
      exact finiteEventSign_mul_abs δ event b

/-- The finite Hahn-Jordan event: select exactly nonnegative masses.
At this event the all-event upper bound is attained. -/
def nonnegativeMassEvent (δ : β → ℚ) : β → Bool :=
  fun b => decide (0 ≤ δ b)

/-- The selected Hahn-Jordan sign converts each rational coefficient
exactly to its absolute value, including zero. -/
theorem nonnegativeMassEvent_sign (δ : β → ℚ) (b : β) :
    finiteEventSign (nonnegativeMassEvent δ) b * δ b = |δ b| := by
  by_cases h : 0 ≤ δ b
  · simp [nonnegativeMassEvent, finiteEventSign, h, abs_of_nonneg h]
  · have hneg : δ b < 0 := lt_of_not_ge h
    simp [nonnegativeMassEvent, finiteEventSign, h, abs_of_neg hneg]

/-- Classical finite TV identity, valid for every finite alphabet
including the empty one, PROVIDED the signed vector sums to zero. -/
theorem finiteSignedEventSup_eq_half_l1
    (δ : β → ℚ) (hzero : (∑ b : β, δ b) = 0) :
    finiteSignedEventSup δ = (∑ b : β, |δ b|) / 2 := by
  classical
  have hupper : finiteSignedEventSup δ ≤ (∑ b : β, |δ b|) / 2 := by
    unfold finiteSignedEventSup
    apply Finset.sup'_le
    intro event hevent
    have h := two_mul_abs_finiteSignedEventMass_le δ event hzero
    linarith
  let posEvent : β → Bool := nonnegativeMassEvent δ
  have hpositive :
      (∑ b : β, finiteEventSign posEvent b * δ b) =
        ∑ b : β, |δ b| := by
    apply Finset.sum_congr rfl
    intro b hb
    exact nonnegativeMassEvent_sign δ b
  have htwice :
      2 * finiteSignedEventMass δ posEvent =
        ∑ b : β, |δ b| := by
    calc
      2 * finiteSignedEventMass δ posEvent =
          ∑ b : β, finiteEventSign posEvent b * δ b :=
        (finiteEventSign_pairing δ posEvent hzero).symm
      _ = ∑ b : β, |δ b| := hpositive
  have hmass_nonneg : 0 ≤ finiteSignedEventMass δ posEvent := by
    have hs : 0 ≤ ∑ b : β, |δ b| :=
      Finset.sum_nonneg (fun b hb => abs_nonneg (δ b))
    linarith
  have hlower : (∑ b : β, |δ b|) / 2 ≤ finiteSignedEventSup δ := by
    calc
      (∑ b : β, |δ b|) / 2 =
          |finiteSignedEventMass δ posEvent| := by
        rw [abs_of_nonneg hmass_nonneg]
        linarith
      _ ≤ finiteSignedEventSup δ := by
        unfold finiteSignedEventSup
        exact Finset.le_sup'
          (fun event : β → Bool => |finiteSignedEventMass δ event|)
          (Finset.mem_univ posEvent)
  exact le_antisymm hupper hlower

/-- The exact category-mass difference divided by the ORIGINAL root
cardinality, not by the size of the Boolean event family. -/
def normalizedCategoryDifference (roots : Finset ℕ)
    (x y : ℕ → β) (b : β) : ℚ :=
  (categoricalPatternCount roots x b -
    categoricalPatternCount roots y b) / (roots.card : ℚ)

/-- Normalized category differences sum to zero, derived from the
parent's exact count-total theorem. No external stochastic law. -/
theorem normalizedCategoryDifference_sum_zero
    (roots : Finset ℕ) (x y : ℕ → β) :
    (∑ b : β, normalizedCategoryDifference roots x y b) = 0 := by
  unfold normalizedCategoryDifference
  rw [← Finset.sum_div, Finset.sum_sub_distrib]
  simp [categoricalPatternCount_total]

/-- The all-event categorical TV representation derived from actual
parent root-labeled category-count differences. -/
def categoricalEventSupTV (roots : Finset ℕ)
    (x y : ℕ → β) : ℚ :=
  finiteSignedEventSup (normalizedCategoryDifference roots x y)

/-- Reconciliation with the exact categorical half-L1 TV already supplied
by the UPDATED PR #638. It is a real mathematical equality at the
rational source-data boundary, not an alias or definitional assumption. -/
theorem categoricalEventSupTV_eq_categoricalTotalVariation
    (roots : Finset ℕ) (x y : ℕ → β)
    (hroots : 0 < roots.card) :
    categoricalEventSupTV roots x y =
      categoricalTotalVariation roots x y := by
  have hcard : (0 : ℚ) < (roots.card : ℚ) := by
    exact_mod_cast hroots
  unfold categoricalEventSupTV
  rw [finiteSignedEventSup_eq_half_l1
    (normalizedCategoryDifference roots x y)
    (normalizedCategoryDifference_sum_zero roots x y)]
  unfold categoricalTotalVariation normalizedCategoryDifference
  simp_rw [abs_div, abs_of_pos hcard]
  rw [← Finset.sum_div]
  ring

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
