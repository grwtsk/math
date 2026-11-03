/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.SevenEighthsStrip
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePR103FixedPower
import Mathlib

/-!
# A strictly stronger rational Poisson frame from the merged PR103 strip

The independent all-moduli Dirichlet L nonvanishing result in merged
QuasiRiemannTracker PR103 has a real-part threshold BELOW 4367/5000.
Transport to actual zeta nonvanishing and then reflection would supply
the separately named symmetric strip [633/5000,4367/5000].

For that strip, choose the strictly absolutely convergent sample line
sigma=281/250 instead of the old 9/8. At every canonical zeta zero
and nearest-integer frequency the actual Poisson kernel is >=801/1000,
strictly better than 4/5. All actual multiplicities remain intact.

The resulting finite source-correct frame is

  641601 * unknownMultiplicityDeficit <=
    1000000 * rationalPoissonEnergy.

The centered p-adic sufficient allowance is 641601/2000000,
strictly greater than the old 8/25. This is a CONDITIONAL zero-side
quantitative gain; no total-count certificate, off-line exclusion,
zero-to-prime domination, arithmetic energy upper bound, RH or local
Lean kernel acceptance is supplied.
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
open GRWTSK.NumberTheory.LiouvillePR103FixedPower

/-- Exact rational comparison against the already merged external theorem
statement; source-to-zeta transport remains a separate analytic requirement. -/
theorem externalPR103Theta_lt_rationalStrip :
    externalPR103Theta < (4367 / 5000 : ℝ) := by
  norm_num [externalPR103Theta]

theorem rationalPR103_pointwise_gain :
    (4 / 5 : ℝ) < (801 / 1000 : ℝ) := by
  norm_num

/-- Visible external zeta/reflection supplier. It is NOT proved here
from an unstated import of PR103. -/
def RationalPR103SymmetricStrip : Prop :=
  ∀ z : ZeroPoint,
    (633 / 5000 : ℝ) ≤ z.1.re ∧ z.1.re ≤ (4367 / 5000 : ℝ)

/-- Rational sampling line, still in the absolute-convergence domain. -/
def rationalPR103PoissonAbscissa : ℝ := 281 / 250

def poissonKernelAtRationalPR103 (z : ZeroPoint) (k : ℕ) : ℝ :=
  (rationalPR103PoissonAbscissa - z.1.re) /
    ((rationalPR103PoissonAbscissa - z.1.re) ^ 2 +
      ((k : ℝ) - z.1.im) ^ 2)

def rationalPR103PoissonSample
    (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) : ℝ :=
  ∑ z ∈ unknownPositiveHead Z known,
    (multiplicity z : ℝ) * poissonKernelAtRationalPR103 z k

def rationalPR103PoissonEnergy
    (Z : ℕ) (known : Finset ZeroPoint) : ℝ :=
  ∑ k ∈ Finset.range (Z + 1),
    rationalPR103PoissonSample Z known k ^ 2

theorem rationalPR103PoissonAbscissa_gt_one :
    1 < rationalPR103PoissonAbscissa := by
  norm_num [rationalPR103PoissonAbscissa]

/-- The exact scalar improvement; the endpoint margins are paid by
the positive product (a-1253/5000)*(4987/5000-a), not guessed. -/
theorem rationalPR103_scalar_kernel_ge_eight_hundred_one
    {a d : ℝ}
    (hlow : (1253 / 5000 : ℝ) ≤ a)
    (hhigh : a ≤ (4987 / 5000 : ℝ))
    (hd : d ^ 2 ≤ (1 / 4 : ℝ)) :
    (801 / 1000 : ℝ) ≤ a / (a ^ 2 + d ^ 2) := by
  have ha0 : 0 < a := by linarith
  have hprod :
      0 ≤ (a - (1253 / 5000 : ℝ)) *
        ((4987 / 5000 : ℝ) - a) :=
    mul_nonneg (sub_nonneg.mpr hlow) (sub_nonneg.mpr hhigh)
  have hl : 0 ≤ a - (1253 / 5000 : ℝ) :=
    sub_nonneg.mpr hlow
  have hquad :
      (801 / 1000 : ℝ) * (a ^ 2 + (1 / 4 : ℝ)) ≤ a := by
    nlinarith [hprod, hl]
  have hden : 0 < a ^ 2 + d ^ 2 := by
    have hasq : 0 < a ^ 2 := sq_pos_of_pos ha0
    nlinarith [sq_nonneg d]
  rw [le_div_iff₀ hden]
  nlinarith [hquad]

theorem poissonKernelAtRationalPR103_nonneg
    (hstrip : RationalPR103SymmetricStrip)
    (z : ZeroPoint) (k : ℕ) :
    0 ≤ poissonKernelAtRationalPR103 z k := by
  have hbeta := (hstrip z).2
  have ha : 0 < rationalPR103PoissonAbscissa - z.1.re := by
    dsimp [rationalPR103PoissonAbscissa]
    linarith
  unfold poissonKernelAtRationalPR103
  exact div_nonneg (le_of_lt ha)
    (add_nonneg (sq_nonneg _) (sq_nonneg _))

/-- The real part of EVERY original analytic zero remains the same;
no surrogate carrier, fabricated zero inventory or multiplicity count. -/
theorem poissonKernelAtRationalPR103_nearest_ge
    (hstrip : RationalPR103SymmetricStrip)
    {Z : ℕ} {z : ZeroPoint}
    (hz : z ∈ positiveHeightHead (Z : ℝ)) :
    (801 / 1000 : ℝ) ≤
      poissonKernelAtRationalPR103 z (nearestFrequency z) := by
  have hb := hstrip z
  have hd := nearestFrequency_distance_sq_le_quarter hz
  have hlow :
      (1253 / 5000 : ℝ) ≤
        rationalPR103PoissonAbscissa - z.1.re := by
    dsimp [rationalPR103PoissonAbscissa]
    linarith [hb.2]
  have hhigh :
      rationalPR103PoissonAbscissa - z.1.re ≤
        (4987 / 5000 : ℝ) := by
    dsimp [rationalPR103PoissonAbscissa]
    linarith [hb.1]
  exact rationalPR103_scalar_kernel_ge_eight_hundred_one
    hlow hhigh (by simpa using hd)

theorem rationalPR103PoissonSample_nonneg
    (hstrip : RationalPR103SymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) :
    0 ≤ rationalPR103PoissonSample Z known k := by
  unfold rationalPR103PoissonSample
  apply Finset.sum_nonneg
  intro z hz
  exact mul_nonneg (Nat.cast_nonneg (multiplicity z))
    (poissonKernelAtRationalPR103_nonneg hstrip z k)

/-- Every unknown analytic multiplicity, including collisions, is assigned
to its ORIGINAL nearest frequency bin with an exact positive contribution. -/
theorem rationalPR103_binMass_lower
    (hstrip : RationalPR103SymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    (801 / 1000 : ℝ) *
        (nearestFrequencyBinMass Z known k : ℝ) ≤
      rationalPR103PoissonSample Z known k := by
  classical
  rw [nearestFrequencyBinMass_cast]
  unfold rationalPR103PoissonSample
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro z hz
  have hhead : z ∈ positiveHeightHead (Z : ℝ) :=
    (Finset.mem_sdiff.mp hz).1
  by_cases hbin : k = nearestFrequency z
  · rw [if_pos hbin]
    have hkern := poissonKernelAtRationalPR103_nearest_ge
      hstrip hhead
    rw [← hbin] at hkern
    simpa [mul_comm] using
      (mul_le_mul_of_nonneg_left hkern
        (Nat.cast_nonneg (multiplicity z)))
  · rw [if_neg hbin, zero_mul]
    exact mul_nonneg (Nat.cast_nonneg (multiplicity z))
      (poissonKernelAtRationalPR103_nonneg hstrip z k)

/-- Integral analytic multiplicity strengthens the linear bin bound to a
quadratic bound. Coefficient 641601 is EXACTLY 801 squared. -/
theorem rationalPR103_binMass_square_lower
    (hstrip : RationalPR103SymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    641601 * (nearestFrequencyBinMass Z known k : ℝ) ≤
      1000000 * rationalPR103PoissonSample Z known k ^ 2 := by
  let M : ℝ := nearestFrequencyBinMass Z known k
  let S : ℝ := rationalPR103PoissonSample Z known k
  have hlin : (801 / 1000 : ℝ) * M ≤ S := by
    simpa [M, S] using rationalPR103_binMass_lower
      hstrip Z known hk
  have hS0 : 0 ≤ S := by
    simpa [S] using rationalPR103PoissonSample_nonneg hstrip Z known k
  have hM0 : 0 ≤ M := by dsimp [M]; positivity
  have hMsq : M ≤ M ^ 2 := by
    simpa [M] using natCast_le_square (nearestFrequencyBinMass Z known k)
  have hprod : 0 ≤ (S - (801 / 1000 : ℝ) * M) *
      (S + (801 / 1000 : ℝ) * M) :=
    mul_nonneg (sub_nonneg.mpr hlin)
      (add_nonneg hS0 (mul_nonneg (by norm_num) hM0))
  nlinarith

/-- Strictly stronger finite zero-side lower frame than the old 16/25.
No external numerical zero certificate or positivity of the arithmetic
prime-window residual is inferred. -/
theorem rationalPR103_zero_side_lower_frame
    (hstrip : RationalPR103SymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) :
    641601 * (unknownMultiplicityDeficit Z known : ℝ) ≤
      1000000 * rationalPR103PoissonEnergy Z known := by
  have hcast :
      (unknownMultiplicityDeficit Z known : ℝ) =
        ∑ k ∈ Finset.range (Z + 1),
          (nearestFrequencyBinMass Z known k : ℝ) := by
    rw [← Nat.cast_sum,
      sum_nearestFrequencyBinMass_eq_unknownMultiplicityDeficit]
  rw [hcast]
  unfold rationalPR103PoissonEnergy
  rw [Finset.mul_sum, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k hk
  exact rationalPR103_binMass_square_lower hstrip Z known hk

/-- New real energy threshold 1283202/1000000, larger than 32/25. -/
theorem rationalPR103_unknownDeficit_le_one
    (hstrip : RationalPR103SymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) (sample : ℕ → ℝ)
    (hdom : rationalPR103PoissonEnergy Z known ≤
      arithmeticSampleEnergy Z sample)
    (hsmall : arithmeticSampleEnergy Z sample <
      (641601 / 500000 : ℝ)) :
    unknownMultiplicityDeficit Z known ≤ 1 := by
  have hframe := rationalPR103_zero_side_lower_frame hstrip Z known
  have hdom' := mul_le_mul_of_nonneg_left hdom
    (by norm_num : (0 : ℝ) ≤ 1000000)
  have hlt : (unknownMultiplicityDeficit Z known : ℝ) < 2 := by
    nlinarith
  have hltNat : unknownMultiplicityDeficit Z known < 2 := by
    exact_mod_cast hlt
  omega

/-- The new centered 2-adic/prime-window arithmetic allowance is strictly
larger than the existing seven-eighths bound, but is NOT supplied. -/
theorem rationalPR103_centered_allowance_gain :
    (8 / 25 : ℝ) < (641601 / 2000000 : ℝ) := by
  norm_num

/-- Conditional consumer, with the ORIGINAL real prime-window energy,
complete signed source equality and missing comparison visible in the type.
No free supplier is silently filled by this definition. -/
def RationalPR103PadicPrimeWindowCertificateAt
    (Z : ℕ) (known : Finset ZeroPoint)
    (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ) : Prop :=
  RationalPR103SymmetricStrip ∧
    known ⊆ positiveHeightHead (Z : ℝ) ∧
    (∀ z ∈ known, z.1.re = 1 / 2) ∧
    positiveHeightCount (Z : ℝ) =
      mass known multiplicity + unknownMultiplicityDeficit Z known ∧
    (∀ k ∈ Finset.range (Z + 1),
      pntWindow (X k) (H k) =
        divisorLogWindow (X k) (H k)
          (fun n => u k n - 2 * v k n)) ∧
    rationalPR103PoissonEnergy Z known ≤ primeWindowFamilyEnergy Z X H ∧
    centeredPacketFamilyEnergy Z X H u v <
      (641601 / 2000000 : ℝ)

/-- One-unit upper count conditional on EXACT zeta-to-prime domination
and a real arithmetic bound at the improved explicit threshold. -/
theorem rationalPR103CertificateAt_to_oneUnit
    (Z : ℕ) (known : Finset ZeroPoint)
    (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ)
    (hcert : RationalPR103PadicPrimeWindowCertificateAt
      Z known X H u v) :
    positiveHeightCount (Z : ℝ) ≤ mass known multiplicity + 1 := by
  rcases hcert with
    ⟨hstrip, hsub, hline, hcount, hsource, hdom, hcenter⟩
  have henergy :=
    primeWindowFamilyEnergy_eq_four_centered Z X H u v hsource
  have hsmall : primeWindowFamilyEnergy Z X H <
      (641601 / 500000 : ℝ) := by
    rw [henergy]
    nlinarith
  have hdef := rationalPR103_unknownDeficit_le_one
    hstrip Z known (fun k => primeWindowResidual (X k) (H k)) hdom
    (by simpa [arithmeticSampleEnergy, primeWindowFamilyEnergy] using hsmall)
  rw [hcount]
  omega

end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
