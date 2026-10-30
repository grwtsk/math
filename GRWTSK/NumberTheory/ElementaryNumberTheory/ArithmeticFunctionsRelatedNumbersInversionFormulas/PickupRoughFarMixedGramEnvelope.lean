/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarMixedChannelConnections

/-!
# Pointwise mixed-Gram envelopes returned to the exact divisor-mask consumer

The mixed-channel atlas identifies the first residual sector as a weighted finite
sum of the exact quantity

  `mixedGram P p T m n`.

This module supplies the conversion that a quantitative correlation theorem must
actually satisfy.  A pointwise envelope controls the absolute mixed Gram on the
literal closed source box.  Its weight is then derived from the unchanged source,
and the resulting weighted budget constructs the existing `GramMismatchSupplier`.
Together with independently supplied indicator and atomic sectors, the estimate
returns to the complete `transportedDivisorMask` consumer.

The canonical absolute envelope is also constructed.  It is unconditional but
contains no cancellation and therefore does not provide an asymptotic saving.
Its purpose is to prove that the interface is inhabited without hiding the exact
cost that a useful theorem must improve.

No shifted-convolution, Chowla/Elliott, entropy, sieve, or large-values theorem is
imported.  No endpoint bound or RH claim is made.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedGramEnvelope

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffStrips
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator
open GRWTSK.NumberTheory.Moebius.PickupRoughFarDivisorMaskReduction
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedChannel
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedChannelConnections

/-- The exact scalar weight multiplying the mixed Gram in the first residual
sector.  All source signs, selectors, divisor weights, and transported rough
coefficients remain inside this factor. -/
def gramMismatchWeight
    (P : List ℕ) (N L Z H p m n : ℕ) : ℝ :=
  transportedOuter P p m n *
    farIndicator N L H (p*m) (p*n) *
    rightWeightDelta P N Z p m n

/-- Exact factorization of the first residual atom. -/
theorem gramMismatchAtom_eq_weight_mul_mixedGram
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) (m n : ℕ) :
    gramMismatchAtom P N L Z H p T m n =
      gramMismatchWeight P N L Z H p m n * mixedGram P p T m n := by
  unfold gramMismatchAtom gramMismatchWeight
  ring

/-- A theorem-facing envelope for the exact mixed Gram on the literal source box.
The bound may depend on both source indices; no uniformity is inserted here. -/
structure PointwiseMixedGramEnvelope
    (P : List ℕ) (N p : ℕ) (T : ℝ) where
  bound : ℕ → ℕ → ℝ
  controls :
    ∀ m ∈ Finset.Icc 1 N, ∀ n ∈ Finset.Icc 1 N,
      |mixedGram P p T m n| ≤ bound m n

/-- Nonnegativity is forced by the envelope inequality; it is not a separate
certificate field. -/
theorem PointwiseMixedGramEnvelope.bound_nonnegative
    {P : List ℕ} {N p : ℕ} {T : ℝ}
    (E : PointwiseMixedGramEnvelope P N p T)
    {m n : ℕ} (hm : m ∈ Finset.Icc 1 N) (hn : n ∈ Finset.Icc 1 N) :
    0 ≤ E.bound m n := by
  exact (abs_nonneg (mixedGram P p T m n)).trans (E.controls m hm n hn)

/-- The exact source-weighted cost of a pointwise mixed-Gram envelope. -/
def weightedEnvelopeBudget
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ)
    (E : PointwiseMixedGramEnvelope P N p T) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    |gramMismatchWeight P N L Z H p m n| * E.bound m n

/-- One exact atom is bounded by the corresponding source-weighted envelope
term. -/
theorem gramMismatchAtom_le_weightedEnvelopeTerm
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ)
    (E : PointwiseMixedGramEnvelope P N p T)
    (m n : ℕ) (hm : m ∈ Finset.Icc 1 N) (hn : n ∈ Finset.Icc 1 N) :
    gramMismatchAtom P N L Z H p T m n ≤
      |gramMismatchWeight P N L Z H p m n| * E.bound m n := by
  rw [gramMismatchAtom_eq_weight_mul_mixedGram]
  calc
    gramMismatchWeight P N L Z H p m n * mixedGram P p T m n ≤
        |gramMismatchWeight P N L Z H p m n * mixedGram P p T m n| :=
      le_abs_self _
    _ = |gramMismatchWeight P N L Z H p m n| *
        |mixedGram P p T m n| := by rw [abs_mul]
    _ ≤ |gramMismatchWeight P N L Z H p m n| * E.bound m n :=
      mul_le_mul_of_nonneg_left (E.controls m hm n hn) (abs_nonneg _)

/-- The complete first residual sum is bounded by the exact source-weighted
pointwise envelope. -/
theorem gramMismatchSum_le_weightedEnvelopeBudget
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ)
    (E : PointwiseMixedGramEnvelope P N p T) :
    gramMismatchSum P N L Z H p T ≤
      weightedEnvelopeBudget P N L Z H p T E := by
  unfold gramMismatchSum weightedEnvelopeBudget
  apply Finset.sum_le_sum
  intro m hm
  apply Finset.sum_le_sum
  intro n hn
  exact gramMismatchAtom_le_weightedEnvelopeTerm P N L Z H p T E m n hm hn

/-- The weighted envelope budget is nonnegative. -/
theorem weightedEnvelopeBudget_nonnegative
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ)
    (E : PointwiseMixedGramEnvelope P N p T) :
    0 ≤ weightedEnvelopeBudget P N L Z H p T E := by
  unfold weightedEnvelopeBudget
  apply Finset.sum_nonneg
  intro m hm
  apply Finset.sum_nonneg
  intro n hn
  exact mul_nonneg (abs_nonneg _ ) (E.bound_nonnegative hm hn)

/-- Every pointwise envelope constructs the exact component supplier expected by
the mixed-channel atlas. -/
def PointwiseMixedGramEnvelope.toSupplier
    {P : List ℕ} {N p : ℕ} {T : ℝ}
    (E : PointwiseMixedGramEnvelope P N p T)
    (L Z H : ℕ) : GramMismatchSupplier P N L Z H p T where
  budget := weightedEnvelopeBudget P N L Z H p T E
  budget_nonnegative := weightedEnvelopeBudget_nonnegative P N L Z H p T E
  controls := gramMismatchSum_le_weightedEnvelopeBudget P N L Z H p T E

/-- The canonical unconditional envelope.  It records the full absolute mixed
Gram and therefore deliberately claims no cancellation. -/
def absoluteMixedGramEnvelope
    (P : List ℕ) (N p : ℕ) (T : ℝ) :
    PointwiseMixedGramEnvelope P N p T where
  bound := fun m n => |mixedGram P p T m n|
  controls := by
    intro m _hm n _hn
    exact le_rfl

/-- The exact weighted absolute budget for the first residual sector. -/
def gramMismatchAbsoluteBudget
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) : ℝ :=
  weightedEnvelopeBudget P N L Z H p T
    (absoluteMixedGramEnvelope P N p T)

/-- Unconditional source-facing bound by the weighted absolute mixed-Gram cost. -/
theorem gramMismatchSum_le_absoluteBudget
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) :
    gramMismatchSum P N L Z H p T ≤
      gramMismatchAbsoluteBudget P N L Z H p T := by
  exact gramMismatchSum_le_weightedEnvelopeBudget P N L Z H p T
    (absoluteMixedGramEnvelope P N p T)

/-- The canonical absolute envelope packaged as an existing component supplier. -/
def gramMismatchAbsoluteSupplier
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) :
    GramMismatchSupplier P N L Z H p T :=
  (absoluteMixedGramEnvelope P N p T).toSupplier L Z H

/-- Pointwise mixed-Gram control plus independent moved-indicator and atomic
suppliers gives a complete source-facing bound. -/
theorem transportedDivisorMask_le_of_pointwiseMixedGramEnvelope
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p)
    (E : PointwiseMixedGramEnvelope P N p T)
    (I : IndicatorMismatchSupplier P N L Z H p T)
    (A : AtomicDenominatorSupplier P N L Z H p T) :
    transportedDivisorMask P N L Z H p T ≤
      weightedEnvelopeBudget P N L Z H p T E + I.budget + A.budget := by
  let S : CompleteChannelSupplier P N L Z H p T :=
    { gram := E.toSupplier L Z H
      indicator := I
      atomic := A }
  simpa [S, CompleteChannelSupplier.totalBudget] using
    (transportedDivisorMask_le_of_completeChannelSupplier
      P N L Z H p T hpFresh hZp S)

/-- Hostile control: a pointwise envelope that omits even one source cell cannot
be converted into this interface without an additional theorem for that cell. -/
theorem omitted_cell_can_escape_envelope (B : ℝ) :
    ∃ actual claimed : ℝ, claimed ≤ B ∧ B < actual := by
  exact ⟨B + 1, B, le_rfl, by linarith⟩

end GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedGramEnvelope
