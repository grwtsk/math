import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCriticalPrimeErrorMajorant

set_option autoImplicit false

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateCriticalPrimeError EstimateMertensResidual EstimatePrimeSmoothDefect

example (A : ℝ) (hA : 1 ≤ A) :
    primeSmoothDefect A = normalizedCriticalPrimeError A :=
  primeSmoothDefect_eq_normalizedCriticalPrimeError A hA

example : CriticalPrimeErrorTailUpperBound ↔ MertensResidualTailUpperBound :=
  critical_prime_error_tail_iff_mertens_residual_tail

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (criticalWeight A)
      ((deriv (EstimateNormalizedSourceProfile.unitCorrelation A) (Real.log x / A) / A -
        EstimateNormalizedSourceProfile.unitCorrelation A (Real.log x / A) / 2) /
          (x * Real.sqrt x)) x :=
  criticalWeight_hasDerivAt A x (by linarith) hx

example (A : ℝ) (hA : 1 ≤ A) :
    normalizedCriticalPrimeError A = 2 * criticalWeight A 2 -
      ∫ x in (2 : ℝ)..Real.exp (2 * A),
        FormalResearch.RiemannHypothesis.SourcePairing.chebyshevError x *
          deriv (criticalWeight A) x :=
  EstimateCriticalPrimeErrorAbel.criticalPrimeError_eq_chebyshev_integral A hA

example : EstimateCriticalPrimeErrorAbel.CriticalSignedChebyshevTailLowerBound ↔
    MertensResidualTailUpperBound :=
  EstimateCriticalPrimeErrorAbel.critical_signed_tail_iff_mertens_residual_tail

open EstimateCriticalPrimeErrorMajorant MeasureTheory Set

example (A θ C : ℝ) (L : ℝ → ℝ) (hA : 1 ≤ A) (hC : 0 ≤ C)
    (hL : ∀ x ∈ Icc (2 : ℝ) (Real.exp (2 * A)), 0 ≤ L x)
    (hE : ∀ x ∈ Icc (2 : ℝ) (Real.exp (2 * A)),
      |FormalResearch.RiemannHypothesis.SourcePairing.chebyshevError x| ≤ C * x ^ θ * L x)
    (hM : IntervalIntegrable (powerErrorMajorant A θ L) volume
      FormalResearch.RiemannHypothesis.SourcePairing.lowerEndpoint (2 * A)) :
    |normalizedCriticalPrimeError A - 2 * criticalWeight A 2| ≤
      C * ∫ t in FormalResearch.RiemannHypothesis.SourcePairing.lowerEndpoint..2 * A,
        powerErrorMajorant A θ L t :=
  critical_prime_error_abs_le_power_majorant A θ C L hA hC hL hE hM
