/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.OptimalAbscissa
import Mathlib

/-!
# Seven-eighths strip adaptation of the integer Poisson zero frame

The independently published quasi-RH input says that nontrivial zeta zeros
have real part at most `7/8`; critical reflection gives the matching lower
bound `1/8`.  This module keeps that external analytic statement as the
visible proposition `SevenEighthsSymmetricStrip` and derives the exact finite
frame consequences without importing it as an axiom.

At nearest-integer frequency distance at most one half, the line `Re s = 9/8`
balances the two endpoints `beta=1/8` and `beta=7/8`.  The pointwise Poisson
kernel is at least `4/5`, so the complete unknown analytic multiplicity and
sample energy satisfy

  16 * D_Z <= 25 * E_Z^(7/8).

An arithmetic energy below `32/25` therefore leaves at most one uncredited
multiplicity unit.  For the source-exact p-adic identity
`primeWindowFamilyEnergy = 4 * centeredPacketFamilyEnergy`, the centered
allowance becomes `8/25`.

The final section proves a boundary-collar obstruction.  A reflected pair
located one half frequency unit above a truncation boundary contributes at
least `64/25` at the adjacent sample, already exceeding the entire `32/25`
one-zero budget.  Therefore a completed-log-derivative comparison must pay or
remove the first outer collar; positivity alone cannot treat it as a small
error.

No external seven-eighths proof replay, zero-to-prime comparison, centered
p-adic upper bound, cofinal numerical inventory, RH conclusion, compilation,
or kernel audit is supplied here.
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

/-- Source-visible symmetric strip premise.  It is a consequence of an upper
zero-free boundary `Re rho <= 7/8` together with critical reflection, but that
external theorem is not silently imported here. -/
def SevenEighthsSymmetricStrip : Prop :=
  ∀ z : ZeroPoint, (1 / 8 : ℝ) ≤ z.1.re ∧ z.1.re ≤ (7 / 8 : ℝ)

/-- The endpoint-balanced vertical line for the symmetric strip `[1/8,7/8]`. -/
def sevenEighthsPoissonAbscissa : ℝ := 9 / 8

/-- Positive Poisson kernel on the seven-eighths-adapted line. -/
def poissonKernelAtSevenEighths (z : ZeroPoint) (k : ℕ) : ℝ :=
  (sevenEighthsPoissonAbscissa - z.1.re) /
    ((sevenEighthsPoissonAbscissa - z.1.re) ^ 2 +
      ((k : ℝ) - z.1.im) ^ 2)

/-- Multiplicity-weighted strip-adapted sample. -/
def sevenEighthsPoissonSample
    (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) : ℝ :=
  ∑ z ∈ unknownPositiveHead Z known,
    (multiplicity z : ℝ) * poissonKernelAtSevenEighths z k

/-- Complete finite strip-adapted energy on the existing integer grid. -/
def sevenEighthsPoissonEnergy (Z : ℕ) (known : Finset ZeroPoint) : ℝ :=
  ∑ k ∈ Finset.range (Z + 1),
    sevenEighthsPoissonSample Z known k ^ 2

theorem sevenEighthsPoissonAbscissa_gt_one :
    1 < sevenEighthsPoissonAbscissa := by
  norm_num [sevenEighthsPoissonAbscissa]

theorem poissonKernelAtSevenEighths_nonneg
    (hstrip : SevenEighthsSymmetricStrip)
    (z : ZeroPoint) (k : ℕ) :
    0 ≤ poissonKernelAtSevenEighths z k := by
  have hz := hstrip z
  have ha : 0 < sevenEighthsPoissonAbscissa - z.1.re := by
    dsimp [sevenEighthsPoissonAbscissa]
    linarith [hz.2]
  unfold poissonKernelAtSevenEighths
  exact div_nonneg (le_of_lt ha)
    (add_nonneg (sq_nonneg _) (sq_nonneg _))

/-- The seven-eighths strip improves the nearest-bin kernel constant from
`1/sqrt 2` to the exact rational value `4/5`. -/
theorem poissonKernelAtSevenEighths_nearest_ge_four_fifths
    (hstrip : SevenEighthsSymmetricStrip)
    {Z : ℕ} {z : ZeroPoint}
    (hz : z ∈ positiveHeightHead (Z : ℝ)) :
    (4 / 5 : ℝ) ≤
      poissonKernelAtSevenEighths z (nearestFrequency z) := by
  have hbeta := hstrip z
  have hd2 := nearestFrequency_distance_sq_le_quarter hz
  let a : ℝ := sevenEighthsPoissonAbscissa - z.1.re
  let d : ℝ := (nearestFrequency z : ℝ) - z.1.im
  have haLower : (1 / 4 : ℝ) ≤ a := by
    dsimp [a, sevenEighthsPoissonAbscissa]
    linarith [hbeta.2]
  have haUpper : a ≤ (1 : ℝ) := by
    dsimp [a, sevenEighthsPoissonAbscissa]
    linarith [hbeta.1]
  have hprod : (4 * a - 1) * (a - 1) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by linarith) (by linarith)
  have hquad : 4 * (a ^ 2 + d ^ 2) ≤ 5 * a := by
    dsimp [d] at hd2
    nlinarith
  have ha0 : 0 < a :=
    lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1 / 4) haLower
  have hden0 : 0 < a ^ 2 + d ^ 2 := by
    have hasq : 0 < a ^ 2 := sq_pos_of_pos ha0
    nlinarith [sq_nonneg d]
  unfold poissonKernelAtSevenEighths
  change (4 / 5 : ℝ) ≤ a / (a ^ 2 + d ^ 2)
  rw [le_div_iff₀ hden0]
  nlinarith

theorem sevenEighthsPoissonSample_nonneg
    (hstrip : SevenEighthsSymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) :
    0 ≤ sevenEighthsPoissonSample Z known k := by
  unfold sevenEighthsPoissonSample
  apply Finset.sum_nonneg
  intro z hz
  exact mul_nonneg (Nat.cast_nonneg (multiplicity z))
    (poissonKernelAtSevenEighths_nonneg hstrip z k)

/-- The adapted sample dominates four fifths of the complete multiplicity in
its nearest bin. -/
theorem four_fifths_binMass_le_sevenEighthsSample
    (hstrip : SevenEighthsSymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    (4 / 5 : ℝ) *
        (nearestFrequencyBinMass Z known k : ℝ) ≤
      sevenEighthsPoissonSample Z known k := by
  classical
  rw [nearestFrequencyBinMass_cast]
  unfold sevenEighthsPoissonSample
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro z hz
  have hhead : z ∈ positiveHeightHead (Z : ℝ) :=
    (Finset.mem_sdiff.mp hz).1
  by_cases hbin : k = nearestFrequency z
  · rw [if_pos hbin]
    have hkern :=
      poissonKernelAtSevenEighths_nearest_ge_four_fifths hstrip hhead
    rw [← hbin] at hkern
    simpa [mul_comm] using
      (mul_le_mul_of_nonneg_left hkern
        (Nat.cast_nonneg (multiplicity z)))
  · rw [if_neg hbin, zero_mul]
    exact mul_nonneg (Nat.cast_nonneg (multiplicity z))
      (poissonKernelAtSevenEighths_nonneg hstrip z k)

/-- One bin pays its entire integer multiplicity with the exact factor
`25/16`. -/
theorem sixteen_binMass_le_twentyfive_sevenEighthsSample_sq
    (hstrip : SevenEighthsSymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    16 * (nearestFrequencyBinMass Z known k : ℝ) ≤
      25 * sevenEighthsPoissonSample Z known k ^ 2 := by
  let M : ℝ := nearestFrequencyBinMass Z known k
  let S : ℝ := sevenEighthsPoissonSample Z known k
  have hlin : (4 / 5 : ℝ) * M ≤ S := by
    simpa [M, S] using
      four_fifths_binMass_le_sevenEighthsSample hstrip Z known hk
  have hS0 : 0 ≤ S := by
    simpa [S] using sevenEighthsPoissonSample_nonneg hstrip Z known k
  have hM0 : 0 ≤ M := by dsimp [M]; positivity
  have hMsq : M ≤ M ^ 2 := by
    simpa [M] using natCast_le_square (nearestFrequencyBinMass Z known k)
  have hprod : 0 ≤ (S - (4 / 5 : ℝ) * M) *
      (S + (4 / 5 : ℝ) * M) :=
    mul_nonneg (sub_nonneg.mpr hlin)
      (add_nonneg hS0 (mul_nonneg (by norm_num) hM0))
  nlinarith

/-- Fixed strip-adapted lower frame. -/
theorem sevenEighthsPoisson_zero_side_lower_frame
    (hstrip : SevenEighthsSymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) :
    16 * (unknownMultiplicityDeficit Z known : ℝ) ≤
      25 * sevenEighthsPoissonEnergy Z known := by
  have hcast :
      (unknownMultiplicityDeficit Z known : ℝ) =
        ∑ k ∈ Finset.range (Z + 1),
          (nearestFrequencyBinMass Z known k : ℝ) := by
    rw [← Nat.cast_sum,
      sum_nearestFrequencyBinMass_eq_unknownMultiplicityDeficit]
  rw [hcast]
  unfold sevenEighthsPoissonEnergy
  rw [Finset.mul_sum, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k hk
  exact sixteen_binMass_le_twentyfive_sevenEighthsSample_sq
    hstrip Z known hk

/-- Any dominating arithmetic family with energy below `32/25` has absolute
one-zero resolution. -/
theorem unknownDeficit_le_one_of_sevenEighths_dominated_energy
    (hstrip : SevenEighthsSymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) (sample : ℕ → ℝ)
    (hdom : sevenEighthsPoissonEnergy Z known ≤
      arithmeticSampleEnergy Z sample)
    (hsmall : arithmeticSampleEnergy Z sample < (32 / 25 : ℝ)) :
    unknownMultiplicityDeficit Z known ≤ 1 := by
  have hframe := sevenEighthsPoisson_zero_side_lower_frame hstrip Z known
  have hdom25 := mul_le_mul_of_nonneg_left hdom (by norm_num : (0 : ℝ) ≤ 25)
  have hlt : (unknownMultiplicityDeficit Z known : ℝ) < 2 := by
    nlinarith
  have hltNat : unknownMultiplicityDeficit Z known < 2 := by
    exact_mod_cast hlt
  omega

/-- Source-preserving p-adic certificate after inserting the independent
seven-eighths theorem.  The zero-to-prime comparison and centered arithmetic
upper bound remain explicit fields. -/
def SevenEighthsPadicPrimeWindowPoissonCertificateAt
    (Z : ℕ) (known : Finset ZeroPoint)
    (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ) : Prop :=
  SevenEighthsSymmetricStrip ∧
    known ⊆ positiveHeightHead (Z : ℝ) ∧
    (∀ z ∈ known, z.1.re = 1 / 2) ∧
    positiveHeightCount (Z : ℝ) =
      mass known multiplicity + unknownMultiplicityDeficit Z known ∧
    (∀ k ∈ Finset.range (Z + 1),
      pntWindow (X k) (H k) =
        divisorLogWindow (X k) (H k)
          (fun n => u k n - 2 * v k n)) ∧
    sevenEighthsPoissonEnergy Z known ≤ primeWindowFamilyEnergy Z X H ∧
    centeredPacketFamilyEnergy Z X H u v < (8 / 25 : ℝ)

theorem sevenEighthsPadicPrimeWindowPoissonCertificateAt_to_oneUnit
    (Z : ℕ) (known : Finset ZeroPoint)
    (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ)
    (hcert : SevenEighthsPadicPrimeWindowPoissonCertificateAt
      Z known X H u v) :
    positiveHeightCount (Z : ℝ) ≤ mass known multiplicity + 1 := by
  rcases hcert with
    ⟨hstrip, hsub, hline, hcount, hsource, hdom, hcenter⟩
  have henergy := primeWindowFamilyEnergy_eq_four_centered Z X H u v hsource
  have hsmall : primeWindowFamilyEnergy Z X H < (32 / 25 : ℝ) := by
    rw [henergy]
    nlinarith
  have hdef := unknownDeficit_le_one_of_sevenEighths_dominated_energy
    hstrip Z known (fun k => primeWindowResidual (X k) (H k)) hdom
    (by simpa [arithmeticSampleEnergy, primeWindowFamilyEnergy] using hsmall)
  rw [hcount]
  omega

def CofinalSevenEighthsPadicPrimeWindowPoissonCertificate : Prop :=
  ∀ B : ℕ, ∃ (Z : ℕ) (known : Finset ZeroPoint)
      (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ),
    B ≤ Z ∧ SevenEighthsPadicPrimeWindowPoissonCertificateAt
      Z known X H u v

theorem riemannHypothesis_of_cofinalSevenEighthsPadicPrimeWindowPoisson
    (h : CofinalSevenEighthsPadicPrimeWindowPoissonCertificate) :
    _root_.RiemannHypothesis := by
  apply absolute_one_unit_iff_riemannHypothesis.mp
  intro B
  obtain ⟨Z, known, X, H, u, v, hBZ, hcert⟩ := h B
  rcases hcert with
    ⟨hstrip, hsub, hline, hcount, hsource, hdom, hcenter⟩
  refine ⟨Z, hBZ, known, hsub, hline, ?_⟩
  exact sevenEighthsPadicPrimeWindowPoissonCertificateAt_to_oneUnit
    Z known X H u v
    ⟨hstrip, hsub, hline, hcount, hsource, hdom, hcenter⟩

/-! ## First outer-collar obstruction -/

/-- Scalar form of the same kernel at frequency displacement `d`. -/
def sevenEighthsScalarKernel (beta d : ℝ) : ℝ :=
  ((9 / 8 : ℝ) - beta) /
    (((9 / 8 : ℝ) - beta) ^ 2 + d ^ 2)

theorem sevenEighthsScalarKernel_half_ge_four_fifths
    {beta : ℝ} (hlow : (1 / 8 : ℝ) ≤ beta)
    (hhigh : beta ≤ (7 / 8 : ℝ)) :
    (4 / 5 : ℝ) ≤ sevenEighthsScalarKernel beta (1 / 2) := by
  let a : ℝ := (9 / 8 : ℝ) - beta
  have haLower : (1 / 4 : ℝ) ≤ a := by dsimp [a]; linarith
  have haUpper : a ≤ (1 : ℝ) := by dsimp [a]; linarith
  have hprod : (4 * a - 1) * (a - 1) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by linarith) (by linarith)
  have hquad : 4 * (a ^ 2 + (1 / 2 : ℝ) ^ 2) ≤ 5 * a := by
    nlinarith
  have ha0 : 0 < a :=
    lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1 / 4) haLower
  have hden0 : 0 < a ^ 2 + (1 / 2 : ℝ) ^ 2 := by nlinarith
  unfold sevenEighthsScalarKernel
  change (4 / 5 : ℝ) ≤ a / (a ^ 2 + (1 / 2 : ℝ) ^ 2)
  rw [le_div_iff₀ hden0]
  nlinarith

/-- A critical-reflection pair in the first outer half-unit collar contributes
more than the entire one-zero energy budget at the adjacent sample. -/
theorem reflected_pair_first_collar_energy_ge_sixtyfour_twentyfive
    {beta : ℝ} (hlow : (1 / 8 : ℝ) ≤ beta)
    (hhigh : beta ≤ (7 / 8 : ℝ)) :
    (64 / 25 : ℝ) ≤
      (sevenEighthsScalarKernel beta (1 / 2) +
        sevenEighthsScalarKernel (1 - beta) (1 / 2)) ^ 2 := by
  have hfirst := sevenEighthsScalarKernel_half_ge_four_fifths hlow hhigh
  have hlow' : (1 / 8 : ℝ) ≤ 1 - beta := by linarith
  have hhigh' : 1 - beta ≤ (7 / 8 : ℝ) := by linarith
  have hsecond :=
    sevenEighthsScalarKernel_half_ge_four_fifths hlow' hhigh'
  nlinarith [sq_nonneg
    (sevenEighthsScalarKernel beta (1 / 2) +
      sevenEighthsScalarKernel (1 - beta) (1 / 2))]

theorem reflected_pair_collar_exceeds_one_zero_threshold :
    (32 / 25 : ℝ) < (64 / 25 : ℝ) := by norm_num

end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
