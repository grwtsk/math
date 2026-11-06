/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.ProbabilityTheoryAndStochasticProcesses.FiniteBiasedNoiseRecovery
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueParseval

/-!
# Biased-noise reconstruction of the ORIGINAL complex causal source

Use the exact preexisting F.mobius coefficients, endpointIndex T,
pickupResponse n u, familyFiniteResponseEnergy and familyDiagonal.
For genuine Dirichlet characters F=dirichletCharacterCoefficients chi,
this retains mu(n)*chi(n), squareful/nonunit zeros and complex phases.
The random multipliers are INTEGER-indexed, not a prime-indexed
multiplicative family. Their specified joint second moments are required.

The finite expectation commutes with the integral because every original
positive-index response is continuous. The exact identity is
  Q_F(T)=rho^2 E_F(T)+(1-rho^2) D_F(T).
With m=card(endpointIndex T), the sharp finite-vector comparison gives
  E_F(T) <= m/(1+(m-1)*rho^2) * Q_F(T),  T>=0.
This is an unconditional source comparison under explicit finite-law
moments, not an unconditional all-positive-rate energy estimate.

At zero bias Q_F=D_F, but the full inventory cost remains. At nonzero
fixed bias rho^2 E_F <= Q_F, so bounding Q_F still controls the original
arithmetic energy: it has not been removed by mixing. The consumer is
FixedConductorHodgeAllRateEquivalence.fullPositiveResidue_allGrid_iff_every_character,
whose character energy is EXACTLY the one compared here. The family
prefix reconstruction and reciprocal-L/zero-exclusion consumers retain
their own scopes. This module makes no global RH or GRH claim.

External comparison: Marco Aymone, arXiv:2009.09240v1, Theorem 1.2 and
section 3.5, studies prime-independent squarefree multiplicative values
with a beta-dependent arithmetic weight. That theorem is RH-equivalent;
it supplies neither our integer-indexed moment hypothesis nor an
independent all-rate estimate for Q_F. Its Euler-product comparison is
a separate next route, not a dependency of these finite proofs.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

namespace GRWTSK.NumberTheory.Moebius.LFunctionBiasedNoiseRecovery

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.ProbabilityAndMathematicalStatistics.FiniteBiasedNoiseRecovery

variable {Ω : Type*}

private def sourceAmplitude (F : NormalizedCoefficients) (n : ℕ) (u : ℝ) : ℂ :=
  F.mobius n * (pickupResponse n u : ℂ)

private theorem sourceAmplitude_continuous
    (F : NormalizedCoefficients) (n : ℕ) (hn : 0 < n) :
    Continuous (sourceAmplitude F n) :=
  continuous_const.mul (Complex.continuous_ofReal.comp (pickupResponse_continuous hn))

private theorem source_index_positive (T : ℝ) (n : ℕ)
    (hn : n ∈ endpointIndex T) : 0 < n :=
  (Finset.mem_Icc.mp hn).1

private theorem response_continuous (F : NormalizedCoefficients) (T : ℝ) :
    Continuous (familyFiniteResponse F T) := by
  exact continuous_finsetSum (endpointIndex T)
    (fun n hn => sourceAmplitude_continuous F n (source_index_positive T n hn))

private theorem diagonal_continuous (F : NormalizedCoefficients) (T : ℝ) :
    Continuous (fun u => ∑ n ∈ endpointIndex T, ‖sourceAmplitude F n u‖ ^ 2) :=
  continuous_finsetSum (endpointIndex T)
    (fun n hn => (sourceAmplitude_continuous F n
      (source_index_positive T n hn)).norm.pow 2)

private theorem noise_continuous (F : NormalizedCoefficients)
    (O : Finset Ω) (p : Ω → ℝ) (η : Ω → ℕ → ℝ) (T : ℝ) :
    Continuous (fun u => complexChoiceMeanSquare O p η (endpointIndex T)
      (fun n => sourceAmplitude F n u)) := by
  unfold complexChoiceMeanSquare
  apply continuous_finsetSum O
  intro ω hω
  apply continuous_const.mul
  exact (continuous_finsetSum (endpointIndex T) (fun n hn =>
    continuous_const.mul (sourceAmplitude_continuous F n
      (source_index_positive T n hn)))).norm.pow 2

/-- Integrated finite weighted second moment of the unchanged original source.
For a probability interpretation require p>=0 on O and sum_O p=1. -/
def familyNoiseEnergy (F : NormalizedCoefficients)
    (O : Finset Ω) (p : Ω → ℝ) (η : Ω → ℕ → ℝ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T,
    complexChoiceMeanSquare O p η (endpointIndex T) (fun n => sourceAmplitude F n u)

/-- Exact finite expectation/integral interchange, not an infinite limit. -/
theorem familyNoiseEnergy_eq_sum_integrals (F : NormalizedCoefficients)
    (O : Finset Ω) (p : Ω → ℝ) (η : Ω → ℕ → ℝ) (T : ℝ) :
    familyNoiseEnergy F O p η T =
      ∑ ω ∈ O, p ω * (∫ u in (0 : ℝ)..T,
        ‖∑ n ∈ endpointIndex T,
          (η ω n : ℂ) * (F.mobius n * (pickupResponse n u : ℂ))‖ ^ 2) := by
  have hc (ω : Ω) : Continuous (fun u =>
      ‖∑ n ∈ endpointIndex T, (η ω n : ℂ) * sourceAmplitude F n u‖ ^ 2) :=
    (continuous_finsetSum (endpointIndex T) (fun n hn =>
      continuous_const.mul (sourceAmplitude_continuous F n
        (source_index_positive T n hn)))).norm.pow 2
  unfold familyNoiseEnergy complexChoiceMeanSquare
  rw [intervalIntegral.integral_finsetSum
    (fun ω hω => (continuous_const.mul (hc ω)).intervalIntegrable _ _)]
  apply Finset.sum_congr rfl
  intro ω hω
  rw [intervalIntegral.integral_const_mul]
  rfl

/-- Exact source identification of the diagonal, not an abstract residual. -/
private theorem source_diagonal_integral (F : NormalizedCoefficients) (T : ℝ) :
    (∫ u in (0 : ℝ)..T,
      ∑ n ∈ endpointIndex T, ‖sourceAmplitude F n u‖ ^ 2) = familyDiagonal F T := by
  rw [intervalIntegral.integral_finsetSum (fun n hn =>
    ((sourceAmplitude_continuous F n (source_index_positive T n hn)).norm.pow 2).intervalIntegrable _ _)]
  unfold familyDiagonal
  apply Finset.sum_congr rfl
  intro n hn
  calc
    _ = ∫ u in (0 : ℝ)..T,
        ‖F.mobius n‖ ^ 2 * (pickupResponse n u * pickupResponse n u) := by
      apply intervalIntegral.integral_congr
      intro u hu
      simp [sourceAmplitude, norm_mul, mul_pow, Complex.norm_real,
        Real.norm_eq_abs, sq_abs, pow_two]
    _ = _ := by
      rw [intervalIntegral.integral_const_mul]
      rfl

/-- Source-exact complex mixture; no coherent off-diagonal terms are discarded. -/
theorem familyNoiseEnergy_eq_mixture (F : NormalizedCoefficients)
    (O : Finset Ω) (p : Ω → ℝ) (η : Ω → ℕ → ℝ) (T ρ : ℝ)
    (h : Equicorrelated O p η (endpointIndex T) ρ) :
    familyNoiseEnergy F O p η T =
      ρ ^ 2 * familyFiniteResponseEnergy F T +
        (1 - ρ ^ 2) * familyDiagonal F T := by
  have hE := ((response_continuous F T).norm.pow 2).intervalIntegrable (0 : ℝ) T
  have hD := (diagonal_continuous F T).intervalIntegrable (0 : ℝ) T
  calc
    _ = ∫ u in (0 : ℝ)..T,
        (ρ ^ 2 * ‖familyFiniteResponse F T u‖ ^ 2 +
          (1 - ρ ^ 2) * ∑ n ∈ endpointIndex T, ‖sourceAmplitude F n u‖ ^ 2) := by
      apply intervalIntegral.integral_congr
      intro u hu
      exact complexMeanSquare_eq_mixture O p η (endpointIndex T)
        (fun n => sourceAmplitude F n u) ρ h
    _ = _ := by
      rw [intervalIntegral.integral_add (hE.const_mul _) (hD.const_mul _),
        intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
        source_diagonal_integral]
      rfl

/-- Actual-source reconstruction, with the complete physical inventory paid. -/
theorem familyFiniteResponseEnergy_le_noise (F : NormalizedCoefficients)
    (O : Finset Ω) (p : Ω → ℝ) (η : Ω → ℕ → ℝ) (T ρ : ℝ)
    (hT : 0 ≤ T) (hρ : ρ ^ 2 ≤ 1)
    (h : Equicorrelated O p η (endpointIndex T) ρ) :
    familyFiniteResponseEnergy F T ≤
      (((endpointIndex T).card : ℝ) /
        (1 + (((endpointIndex T).card : ℝ) - 1) * ρ ^ 2)) *
          familyNoiseEnergy F O p η T := by
  have hE := ((response_continuous F T).norm.pow 2).intervalIntegrable (0 : ℝ) T
  have hQ := (noise_continuous F O p η T).intervalIntegrable (0 : ℝ) T
  have hb := intervalIntegral.integral_mono_on hT hE (hQ.const_mul
    (((endpointIndex T).card : ℝ) /
      (1 + (((endpointIndex T).card : ℝ) - 1) * ρ ^ 2)))
    (fun u hu => recovery O p η (endpointIndex T)
      (fun n => sourceAmplitude F n u) ρ hρ h)
  rw [intervalIntegral.integral_const_mul] at hb
  exact hb

/-- Fixed bias leaves at least rho^2 times the original arithmetic energy
inside the noisy energy. This prevents reading recovery as cancellation. -/
theorem original_energy_component_le_noise (F : NormalizedCoefficients)
    (O : Finset Ω) (p : Ω → ℝ) (η : Ω → ℕ → ℝ) (T ρ : ℝ)
    (hT : 0 ≤ T) (hρ : ρ ^ 2 ≤ 1)
    (h : Equicorrelated O p η (endpointIndex T) ρ) :
    ρ ^ 2 * familyFiniteResponseEnergy F T ≤ familyNoiseEnergy F O p η T := by
  have hD : 0 ≤ familyDiagonal F T := by
    rw [← source_diagonal_integral]
    exact intervalIntegral.integral_nonneg hT
      (fun u hu => Finset.sum_nonneg (fun n hn => sq_nonneg _))
  rw [familyNoiseEnergy_eq_mixture F O p η T ρ h]
  exact le_add_of_nonneg_right (mul_nonneg (sub_nonneg.mpr hρ) hD)

/-- The genuine character specialization, including principal and imprimitive
characters. No change to modulus, nonunit zeros or coefficients is made. -/
theorem dirichlet_character_energy_le_noise (q : ℕ) [NeZero q]
    (χ : DirichletCharacter ℂ q) (O : Finset Ω) (p : Ω → ℝ)
    (η : Ω → ℕ → ℝ) (T ρ : ℝ) (hT : 0 ≤ T) (hρ : ρ ^ 2 ≤ 1)
    (h : Equicorrelated O p η (endpointIndex T) ρ) :
    familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T ≤
      (((endpointIndex T).card : ℝ) /
        (1 + (((endpointIndex T).card : ℝ) - 1) * ρ ^ 2)) *
          familyNoiseEnergy (dirichletCharacterCoefficients χ) O p η T :=
  familyFiniteResponseEnergy_le_noise (dirichletCharacterCoefficients χ)
    O p η T ρ hT hρ h

end GRWTSK.NumberTheory.Moebius.LFunctionBiasedNoiseRecovery
