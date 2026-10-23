/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #923. Parent: draft PR #921 at dfab98b6e02e76203848b664a7fe5d95400f7c1c.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctCancellationThreshold

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Restricted L2 energy of center amplitudes on centers valid for lag ell. -/
def parityCenteredLagLeftEnergy
    (b r ell : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ c ∈ endpointValidCenterSetAtLag b ell,
    parityCenteredIntegerCoordinateAmplitude b r H c ^ 2

/-- Restricted L2 energy of the translated center amplitudes. -/
def parityCenteredLagRightEnergy
    (b r ell : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ c ∈ endpointValidCenterSetAtLag b ell,
    parityCenteredIntegerCoordinateAmplitude b r H (c + ell) ^ 2

/-- Full integer-center second moment. -/
def parityCenteredIntegerCoordinateSecondMoment
    (b r : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ c ∈ Finset.range (b + 1),
    parityCenteredIntegerCoordinateAmplitude b r H c ^ 2

theorem parityCenteredLagLeftEnergy_le_secondMoment
    (b r ell : ℕ) (H : Finset ℕ) :
    parityCenteredLagLeftEnergy b r ell H ≤
      parityCenteredIntegerCoordinateSecondMoment b r H := by
  unfold parityCenteredLagLeftEnergy
    parityCenteredIntegerCoordinateSecondMoment
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro c hc
    exact (Finset.mem_filter.mp hc).1
  · intro c _ _
    positivity

/-- The translated valid centers inject into range(b+1), so the right
restricted energy is also bounded by the full second moment. -/
theorem parityCenteredLagRightEnergy_le_secondMoment
    (b r ell : ℕ) (H : Finset ℕ) :
    parityCenteredLagRightEnergy b r ell H ≤
      parityCenteredIntegerCoordinateSecondMoment b r H := by
  unfold parityCenteredLagRightEnergy
    parityCenteredIntegerCoordinateSecondMoment
  let f : ℕ → ℕ := fun c => c + ell
  have hinj : Set.InjOn f ↑(endpointValidCenterSetAtLag b ell) := by
    intro a ha c hc h
    exact Nat.add_right_cancel h
  change (∑ c ∈ endpointValidCenterSetAtLag b ell,
    (fun x => parityCenteredIntegerCoordinateAmplitude b r H x ^ 2) (f c)) ≤ _
  rw [← Finset.sum_image
    (f := fun x => parityCenteredIntegerCoordinateAmplitude b r H x ^ 2) hinj]
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro x hx
    rcases Finset.mem_image.mp hx with ⟨c, hc, rfl⟩
    exact Finset.mem_range.mpr (Finset.mem_filter.mp hc).2
  · intro c _ _
    positivity

/-- Center autocorrelation at one positive lag. -/
def parityCenteredLagAutocorrelation
    (b r ell : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ c ∈ endpointValidCenterSetAtLag b ell,
    parityCenteredIntegerCoordinateAmplitude b r H c *
      parityCenteredIntegerCoordinateAmplitude b r H (c + ell)

/-- Finite Cauchy-Schwarz in the center variable. -/
theorem sq_abs_parityCenteredLagAutocorrelation_le
    (b r ell : ℕ) (H : Finset ℕ) :
    |parityCenteredLagAutocorrelation b r ell H| ^ 2 ≤
      parityCenteredLagLeftEnergy b r ell H *
        parityCenteredLagRightEnergy b r ell H := by
  unfold parityCenteredLagAutocorrelation
    parityCenteredLagLeftEnergy
    parityCenteredLagRightEnergy
  simpa [pow_two] using
    Finset.sum_mul_sq_le_sq_mul_sq
      (s := endpointValidCenterSetAtLag b ell)
      (f := fun c =>
        parityCenteredIntegerCoordinateAmplitude b r H c)
      (g := fun c =>
        parityCenteredIntegerCoordinateAmplitude b r H (c + ell))

/-- Dimension-reduced bound: the square of every lag autocorrelation is at
most the square of the full center second moment. -/
theorem sq_abs_parityCenteredLagAutocorrelation_le_secondMoment_sq
    (b r ell : ℕ) (H : Finset ℕ) :
    |parityCenteredLagAutocorrelation b r ell H| ^ 2 ≤
      parityCenteredIntegerCoordinateSecondMoment b r H ^ 2 := by
  calc
    |parityCenteredLagAutocorrelation b r ell H| ^ 2 ≤
        parityCenteredLagLeftEnergy b r ell H *
          parityCenteredLagRightEnergy b r ell H :=
      sq_abs_parityCenteredLagAutocorrelation_le b r ell H
    _ ≤ parityCenteredIntegerCoordinateSecondMoment b r H *
          parityCenteredIntegerCoordinateSecondMoment b r H := by
      exact mul_le_mul
        (parityCenteredLagLeftEnergy_le_secondMoment b r ell H)
        (parityCenteredLagRightEnergy_le_secondMoment b r ell H)
        (by unfold parityCenteredLagRightEnergy; positivity)
        (by unfold parityCenteredIntegerCoordinateSecondMoment; positivity)
    _ = parityCenteredIntegerCoordinateSecondMoment b r H ^ 2 := by ring

/-- Existing zero-winding energy is exactly four times this second moment. -/
theorem parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_secondMoment
    (b r : ℕ) (H : Finset ℕ) :
    parityHalfIndexZeroWindingFiberEnergy b r H =
      4 * parityCenteredIntegerCoordinateSecondMoment b r H := by
  exact
    parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_integerCoordinateSecondMoment
      b r H

/-- Analytic interface suggested by the dimension reduction: control the
center second moment rather than raw four-point configuration count. -/
def RegularCenteredIntegerCoordinateSecondMomentEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b r : ℕ, r < 2 → ∀ H : Finset ℕ,
    H = positiveEndpointEvenShiftSet b ∨
    H = positiveEndpointOddShiftSet b →
    parityCenteredIntegerCoordinateSecondMoment b r H ≤ E b

structure RegularCenteredCauchyDimensionReductionSourceData where
  theoremStatement : Prop
  centerAutocorrelationMatched : Prop
  leftRestrictedEnergyMatched : Prop
  rightRestrictedEnergyMatched : Prop
  finiteCauchySchwarzMatched : Prop
  restrictedEnergiesBoundedBySecondMoment : Prop
  zeroWindingEnergyMatched : Prop
  rawFourPointCountBypassed : Prop
  collisionSplitBypassed : Prop
  analyticSecondMomentEnvelopeExplicit : Prop

def RegularCenteredCauchyDimensionReductionSource
    (d : RegularCenteredCauchyDimensionReductionSourceData) : Prop :=
  d.theoremStatement ∧
  d.centerAutocorrelationMatched ∧
  d.leftRestrictedEnergyMatched ∧
  d.rightRestrictedEnergyMatched ∧
  d.finiteCauchySchwarzMatched ∧
  d.restrictedEnergiesBoundedBySecondMoment ∧
  d.zeroWindingEnergyMatched ∧
  d.rawFourPointCountBypassed ∧
  d.collisionSplitBypassed ∧
  d.analyticSecondMomentEnvelopeExplicit

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
