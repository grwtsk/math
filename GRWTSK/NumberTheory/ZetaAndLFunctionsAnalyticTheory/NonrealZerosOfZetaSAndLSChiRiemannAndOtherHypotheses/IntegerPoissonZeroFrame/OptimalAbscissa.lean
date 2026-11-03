/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.PadicCertificates
import Mathlib

/-!
# Optimal absolute-convergence abscissa for the integer Poisson zero frame

The predecessor frame sampled the positive Poisson kernel on `Re s = 2`.
For nearest-integer frequency bins the best uniform vertical line still in
`Re s > 1` is

  sigma_* = (1 + sqrt 2) / 2.

For every nontrivial zeta zero `rho = beta + i gamma`, the open critical
strip and nearest-integer distance give

  (sigma_* - beta) /
    ((sigma_* - beta)^2 + (nearest gamma - gamma)^2) >= 1 / sqrt 2.

Consequently the complete uncredited analytic multiplicity `D_Z` and the
new finite sample energy `E_Z^*` satisfy

  D_Z <= 2 * E_Z^*.

An arithmetic energy below one therefore has absolute one-zero resolution.
For the exact p-adic prime-window source, the existing identity
`primeWindowFamilyEnergy = 4 * centeredPacketFamilyEnergy` changes the
centered threshold from `32/289` to the clean value `1/4`, conditional on
the separately visible source comparison from the optimal zero energy.

No completed explicit-formula comparison, centered p-adic upper bound,
cofinal numerical inventory, RH conclusion, compilation, or kernel audit is
supplied unconditionally.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame

open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open CofinalTwoUnitEffectiveRateBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam
open PadicMobiusCofinalTwoUnitBridge

/-- The optimal vertical line for nearest-integer Poisson sampling while
remaining strictly inside the absolutely convergent half-plane. -/
def optimalPoissonAbscissa : ℝ := (1 + Real.sqrt 2) / 2

/-- Positive Poisson kernel sampled on the optimal absolute-convergence line. -/
def poissonKernelAtOptimal (z : ZeroPoint) (k : ℕ) : ℝ :=
  (optimalPoissonAbscissa - z.1.re) /
    ((optimalPoissonAbscissa - z.1.re) ^ 2 +
      ((k : ℝ) - z.1.im) ^ 2)

/-- Multiplicity-weighted optimal-line sample. -/
def optimalPoissonSample
    (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) : ℝ :=
  ∑ z ∈ unknownPositiveHead Z known,
    (multiplicity z : ℝ) * poissonKernelAtOptimal z k

/-- Complete finite optimal-line sample energy. -/
def optimalPoissonEnergy (Z : ℕ) (known : Finset ZeroPoint) : ℝ :=
  ∑ k ∈ Finset.range (Z + 1), optimalPoissonSample Z known k ^ 2

theorem sqrt_two_pos : 0 < Real.sqrt 2 := by
  exact Real.sqrt_pos.2 (by norm_num)

theorem sqrt_two_sq : (Real.sqrt 2) ^ 2 = 2 := by
  simpa using Real.sq_sqrt (show (0 : ℝ) ≤ 2 by norm_num)

theorem optimalPoissonAbscissa_gt_one : 1 < optimalPoissonAbscissa := by
  have hs : 1 < Real.sqrt 2 := by
    have hn := Real.sqrt_nonneg (2 : ℝ)
    have hsq := sqrt_two_sq
    nlinarith
  unfold optimalPoissonAbscissa
  linarith

theorem poissonKernelAtOptimal_nonneg (z : ZeroPoint) (k : ℕ) :
    0 ≤ poissonKernelAtOptimal z k := by
  have hs := point_mem_strip z
  have ha : 0 < optimalPoissonAbscissa - z.1.re := by
    linarith [optimalPoissonAbscissa_gt_one]
  unfold poissonKernelAtOptimal
  exact div_nonneg (le_of_lt ha)
    (add_nonneg (sq_nonneg _) (sq_nonneg _))

/-- Uniform nearest-bin kernel bound at the optimized line. -/
theorem poissonKernelAtOptimal_nearest_ge_inv_sqrt_two
    {Z : ℕ} {z : ZeroPoint}
    (hz : z ∈ positiveHeightHead (Z : ℝ)) :
    (1 / Real.sqrt 2 : ℝ) ≤
      poissonKernelAtOptimal z (nearestFrequency z) := by
  have hs := point_mem_strip z
  have hd2 := nearestFrequency_distance_sq_le_quarter hz
  let r : ℝ := Real.sqrt 2
  let a : ℝ := optimalPoissonAbscissa - z.1.re
  let d : ℝ := (nearestFrequency z : ℝ) - z.1.im
  have hr0 : 0 < r := by simpa [r] using sqrt_two_pos
  have hr2 : r ^ 2 = 2 := by simpa [r] using sqrt_two_sq
  have haLower : (r - 1) / 2 < a := by
    dsimp [a, r, optimalPoissonAbscissa]
    linarith
  have haUpper : a < (r + 1) / 2 := by
    dsimp [a, r, optimalPoissonAbscissa]
    linarith
  have hprod :
      0 ≤ (a - (r - 1) / 2) * ((r + 1) / 2 - a) :=
    mul_nonneg (le_of_lt haLower) (le_of_lt haUpper)
  have hquad : a ^ 2 + 1 / 4 ≤ r * a := by
    nlinarith
  have hdenle : a ^ 2 + d ^ 2 ≤ r * a := by
    dsimp [d] at hd2
    nlinarith
  have ha0 : 0 < a := by
    dsimp [a]
    linarith [optimalPoissonAbscissa_gt_one]
  have hden0 : 0 < a ^ 2 + d ^ 2 := by
    have hasq : 0 < a ^ 2 := sq_pos_of_pos ha0
    nlinarith [sq_nonneg d]
  unfold poissonKernelAtOptimal
  change (1 / r : ℝ) ≤ a / (a ^ 2 + d ^ 2)
  rw [le_div_iff₀ hden0]
  calc
    (1 / r) * (a ^ 2 + d ^ 2) ≤ (1 / r) * (r * a) := by
      exact mul_le_mul_of_nonneg_left hdenle (by positivity)
    _ = a := by
      field_simp [ne_of_gt hr0]

theorem optimalPoissonSample_nonneg
    (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) :
    0 ≤ optimalPoissonSample Z known k := by
  unfold optimalPoissonSample
  apply Finset.sum_nonneg
  intro z hz
  exact mul_nonneg (Nat.cast_nonneg (multiplicity z))
    (poissonKernelAtOptimal_nonneg z k)

/-- The optimal-line sample dominates its assigned nearest-bin mass. -/
theorem inv_sqrt_two_binMass_le_optimalSample
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    (1 / Real.sqrt 2 : ℝ) *
        (nearestFrequencyBinMass Z known k : ℝ) ≤
      optimalPoissonSample Z known k := by
  classical
  rw [nearestFrequencyBinMass_cast]
  unfold optimalPoissonSample
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro z hz
  have hhead : z ∈ positiveHeightHead (Z : ℝ) :=
    (Finset.mem_sdiff.mp hz).1
  by_cases hbin : k = nearestFrequency z
  · rw [if_pos hbin]
    have hkern := poissonKernelAtOptimal_nearest_ge_inv_sqrt_two hhead
    rw [← hbin] at hkern
    simpa [mul_comm] using
      (mul_le_mul_of_nonneg_left hkern
        (Nat.cast_nonneg (multiplicity z)))
  · rw [if_neg hbin, zero_mul]
    exact mul_nonneg (Nat.cast_nonneg (multiplicity z))
      (poissonKernelAtOptimal_nonneg z k)

/-- One optimal nearest bin pays at least half the square energy needed for
its complete integer multiplicity. -/
theorem nearestBinMass_le_two_optimalSample_sq
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    (nearestFrequencyBinMass Z known k : ℝ) ≤
      2 * optimalPoissonSample Z known k ^ 2 := by
  let M : ℝ := nearestFrequencyBinMass Z known k
  let S : ℝ := optimalPoissonSample Z known k
  let r : ℝ := Real.sqrt 2
  have hr0 : 0 < r := by simpa [r] using sqrt_two_pos
  have hr2 : r ^ 2 = 2 := by simpa [r] using sqrt_two_sq
  have hlin : (1 / r : ℝ) * M ≤ S := by
    simpa [M, S, r] using
      inv_sqrt_two_binMass_le_optimalSample Z known hk
  have hMS : M ≤ r * S := by
    have hm := mul_le_mul_of_nonneg_left hlin (le_of_lt hr0)
    calc
      M = r * ((1 / r) * M) := by
        field_simp [ne_of_gt hr0]
      _ ≤ r * S := hm
  have hS0 : 0 ≤ S := by
    simpa [S] using optimalPoissonSample_nonneg Z known k
  have hM0 : 0 ≤ M := by dsimp [M]; positivity
  have hMsq : M ≤ M ^ 2 := by
    simpa [M] using natCast_le_square (nearestFrequencyBinMass Z known k)
  have hprod : 0 ≤ (r * S - M) * (r * S + M) :=
    mul_nonneg (sub_nonneg.mpr hMS)
      (add_nonneg (mul_nonneg (le_of_lt hr0) hS0) hM0)
  nlinarith

/-- Optimized zero-side lower frame.  The constant is exactly `1/2`, so an
arithmetic energy below one has one-zero resolution. -/
theorem optimalPoisson_zero_side_lower_frame
    (Z : ℕ) (known : Finset ZeroPoint) :
    (unknownMultiplicityDeficit Z known : ℝ) ≤
      2 * optimalPoissonEnergy Z known := by
  have hcast :
      (unknownMultiplicityDeficit Z known : ℝ) =
        ∑ k ∈ Finset.range (Z + 1),
          (nearestFrequencyBinMass Z known k : ℝ) := by
    rw [← Nat.cast_sum, sum_nearestFrequencyBinMass_eq_unknownMultiplicityDeficit]
  rw [hcast]
  unfold optimalPoissonEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k hk
  exact nearestBinMass_le_two_optimalSample_sq Z known hk

/-- Any arithmetic family dominating the optimal zero energy and having
energy below one leaves at most one uncredited multiplicity unit. -/
theorem unknownDeficit_le_one_of_optimal_dominated_energy
    (Z : ℕ) (known : Finset ZeroPoint) (sample : ℕ → ℝ)
    (hdom : optimalPoissonEnergy Z known ≤ arithmeticSampleEnergy Z sample)
    (hsmall : arithmeticSampleEnergy Z sample < 1) :
    unknownMultiplicityDeficit Z known ≤ 1 := by
  have hframe := optimalPoisson_zero_side_lower_frame Z known
  have hlt : (unknownMultiplicityDeficit Z known : ℝ) < 2 := by
    nlinarith
  have hltNat : unknownMultiplicityDeficit Z known < 2 := by
    exact_mod_cast hlt
  omega

/-- Source-preserving p-adic specialization at the optimized Poisson line. -/
def OptimalPadicPrimeWindowPoissonCertificateAt
    (Z : ℕ) (known : Finset ZeroPoint)
    (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ) : Prop :=
  known ⊆ positiveHeightHead (Z : ℝ) ∧
    (∀ z ∈ known, z.1.re = 1 / 2) ∧
    positiveHeightCount (Z : ℝ) =
      mass known multiplicity + unknownMultiplicityDeficit Z known ∧
    (∀ k ∈ Finset.range (Z + 1),
      pntWindow (X k) (H k) =
        divisorLogWindow (X k) (H k)
          (fun n => u k n - 2 * v k n)) ∧
    optimalPoissonEnergy Z known ≤ primeWindowFamilyEnergy Z X H ∧
    centeredPacketFamilyEnergy Z X H u v < (1 / 4 : ℝ)

theorem optimalPadicPrimeWindowPoissonCertificateAt_to_oneUnit
    (Z : ℕ) (known : Finset ZeroPoint)
    (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ)
    (hcert : OptimalPadicPrimeWindowPoissonCertificateAt
      Z known X H u v) :
    positiveHeightCount (Z : ℝ) ≤ mass known multiplicity + 1 := by
  rcases hcert with
    ⟨hsub, hline, hcount, hsource, hdom, hcenter⟩
  have henergy := primeWindowFamilyEnergy_eq_four_centered Z X H u v hsource
  have hsmall : primeWindowFamilyEnergy Z X H < 1 := by
    rw [henergy]
    nlinarith
  have hdef := unknownDeficit_le_one_of_optimal_dominated_energy
    Z known (fun k => primeWindowResidual (X k) (H k)) hdom
    (by simpa [arithmeticSampleEnergy, primeWindowFamilyEnergy] using hsmall)
  rw [hcount]
  omega

def CofinalOptimalPadicPrimeWindowPoissonCertificate : Prop :=
  ∀ B : ℕ, ∃ (Z : ℕ) (known : Finset ZeroPoint)
      (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ),
    B ≤ Z ∧ OptimalPadicPrimeWindowPoissonCertificateAt
      Z known X H u v

theorem riemannHypothesis_of_cofinalOptimalPadicPrimeWindowPoisson
    (h : CofinalOptimalPadicPrimeWindowPoissonCertificate) :
    _root_.RiemannHypothesis := by
  apply absolute_one_unit_iff_riemannHypothesis.mp
  intro B
  obtain ⟨Z, known, X, H, u, v, hBZ, hcert⟩ := h B
  rcases hcert with
    ⟨hsub, hline, hcount, hsource, hdom, hcenter⟩
  refine ⟨Z, hBZ, known, hsub, hline, ?_⟩
  exact optimalPadicPrimeWindowPoissonCertificateAt_to_oneUnit
    Z known X H u v
    ⟨hsub, hline, hcount, hsource, hdom, hcenter⟩

end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
