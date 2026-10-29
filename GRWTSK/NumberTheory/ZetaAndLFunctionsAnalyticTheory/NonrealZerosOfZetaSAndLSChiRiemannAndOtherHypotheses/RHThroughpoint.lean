/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Imported GRWTSK and Mathlib authorship and licenses are retained. -/
import GRWTSK.MeasureAndIntegration.TentZeroEstimates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupOptimizationGap

/-!
# RH as a derived intermediate, with exact backward arithmetic obligations

Reuse the existing endpoint and finite-optimizer returns; do not assume RH
at the programme entry. The critical density criterion is genuinely reversible.
The signed tent defect is exactly identified with the prime-tent deficit.
An unweighted lower prime count is NOT asserted to imply RH.

Backward propagation exposes a fixed positive rate violated past every dyadic
onset if RH fails. It does not manufacture a witness of the growth bound.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Chebyshev.RHThroughpoint

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CriticalDensityCriterion
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupOptimizationGap
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open ShortIntervalPrimeCount TentPrimeConsequences TentZeroEstimates

/-- The same actual prime-count conclusion, not a replacement function. -/
def PrimeWindowConclusion : Prop :=
  ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
    Real.sqrt x < (primeCount x (x + B * Real.sqrt x * Real.log x) : ℝ)

/-- Direct source-to-consequence assembly: the RH proposition is a proved output,
while signed and norm observations retain their respective strengths. -/
theorem source_density_throughpoint (h : CriticalDensityGrowth) :
    _root_.RiemannHypothesis ∧
      (∃ K : ℝ, 0 ≤ K ∧ LogWindowSignedBound K) ∧ PrimeWindowConclusion := by
  have hzero := log_window_zero_bound_of_density_growth h
  obtain ⟨K, hK, hnet⟩ := signed_bound_of_zero_bound
    coarseSpectralConstant_nonnegative hzero
  exact ⟨density_growth_iff_riemannHypothesis.mp h,
    ⟨K, hK, hnet⟩, many_primes_of_signed_bound K hK hnet⟩

/-- The original all-positive-rate arithmetic proposition is the entry point.
No independent RH or analytic-return assumption is added. -/
theorem dyadic_arithmetic_throughpoint (h : DyadicBirthBound) :
    _root_.RiemannHypothesis ∧
      (∃ K : ℝ, 0 ≤ K ∧ LogWindowSignedBound K) ∧ PrimeWindowConclusion :=
  source_density_throughpoint
    (density_growth_iff_riemannHypothesis.mpr (riemannHypothesis_of_dyadicBirthBound h))

/-- General good-scale input reuses the exact accumulated endpoint consumer. -/
theorem endpoint_good_scales_throughpoint {G : Set ℝ}
    (hcover : AffineFrequent G) (hbound : SubexponentialOn endpointSum G) :
    _root_.RiemannHypothesis ∧
      (∃ K : ℝ, 0 ≤ K ∧ LogWindowSignedBound K) ∧ PrimeWindowConclusion :=
  source_density_throughpoint
    (density_growth_iff_riemannHypothesis.mpr
      (riemannHypothesis_of_endpoint_good_scales hcover hbound))

/-- The constructed optimizer gap supplies the SAME arithmetic interface. -/
theorem optimality_gap_throughpoint
    (h : SubexponentialOn optimalityGap dyadicScales) :
    _root_.RiemannHypothesis ∧
      (∃ K : ℝ, 0 ≤ K ∧ LogWindowSignedBound K) ∧ PrimeWindowConclusion :=
  dyadic_arithmetic_throughpoint (dyadicBirthBound_iff_optimalityGap.mpr h)

/-- A fixed positive rate fails after EVERY starting index. All constants are
quantified; one large finite sample does not establish this proposition. -/
def DyadicGrowthObstruction : Prop :=
  ∃ δ : ℝ, 0 < δ ∧ ∀ C : ℝ, 0 ≤ C → ∀ J : ℕ,
    ∃ j : ℕ, J ≤ j ∧ C * (2 : ℝ) ^ (δ * (j : ℝ)) < dyadicBirthSum j

/-- Use the existing eventual-to-all-index theorem; failure cannot be confined
to an unpaid finite prefix. This is exact quantifier negation, not numerics. -/
theorem dyadic_obstruction_iff_not_bound :
    DyadicGrowthObstruction ↔ ¬ DyadicBirthBound := by
  constructor
  · rintro ⟨δ, hδ, hb⟩ h
    obtain ⟨C, hC, hbound⟩ := h δ hδ
    obtain ⟨j, _hj, hbad⟩ := hb C hC 0
    exact (not_lt_of_ge (hbound j)) hbad
  · intro hnot
    by_contra hnone
    unfold DyadicGrowthObstruction at hnone
    push_neg at hnone
    exact hnot (dyadicBirthBound_of_eventual hnone)

/-- Reverse engineering from an actual off-line zero returns a precise,
unbounded sequence of failures of the original arithmetic estimate. -/
theorem dyadic_obstruction_of_offline_zero (z : ZeroPoint) (hz : z.1.re ≠ 1 / 2) :
    DyadicGrowthObstruction := by
  apply dyadic_obstruction_iff_not_bound.mpr
  intro h
  exact hz ((riemannHypothesis_of_dyadicBirthBound h) z.1 z.2.1 z.2.2.1 z.2.2.2)

/-- Failure of RH must reach the same arithmetic obstruction. -/
theorem dyadic_obstruction_of_not_RH (h : ¬ _root_.RiemannHypothesis) :
    DyadicGrowthObstruction :=
  dyadic_obstruction_iff_not_bound.mpr
    (fun hb => h (riemannHypothesis_of_dyadicBirthBound hb))

/-- A downstream failure can be propagated backward by CONTRAPOSITION only.
The converse PrimeWindowConclusion -> RH is not asserted. -/
theorem dyadic_obstruction_of_prime_window_failure (h : ¬ PrimeWindowConclusion) :
    DyadicGrowthObstruction :=
  dyadic_obstruction_iff_not_bound.mpr
    (fun hb => h (dyadic_arithmetic_throughpoint hb).2.2)

/-- The density bridge exposes exactly the excluded right-half-plane witness. -/
theorem density_failure_iff_right_zero :
    ¬ CriticalDensityGrowth ↔ ∃ z : ZeroPoint, 1 / 2 < z.1.re := by
  rw [density_growth_iff_riemannHypothesis]
  exact not_RH_iff_right_zero

end GRWTSK.NumberTheory.Chebyshev.RHThroughpoint
