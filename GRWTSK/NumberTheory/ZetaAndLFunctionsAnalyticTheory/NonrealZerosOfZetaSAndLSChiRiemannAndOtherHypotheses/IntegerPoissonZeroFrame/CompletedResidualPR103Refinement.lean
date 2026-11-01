/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.CompletedResidualDirichlet
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.PR103RationalStripFrame
import Mathlib

/-!
# PR103 refinement on the existing completed-residual line

The completed residual already samples at `Re s = 9/8`, where the prime-side
tail has the clean exponent `1/8`.  The independently supplied PR103 symmetric
strip is narrower than `[1/8,7/8]`.  Keeping the SAME completed residual and
the SAME prime truncation, that narrower strip improves the nearest-bin kernel
from `4/5` to the rational lower bound `8007/10000`.

The resulting frame is

  64112049 * D_Z <= 100000000 * E_Z^(9/8).

Together with the existing `1/100` tail budget, a finite completed-residual
energy below `631/1000` suffices for one-zero resolution.  This improves the
previous finite target `3/5` without changing any arithmetic source, sample
line, certified-zero subtraction, outer-zero treatment, or tail schedule.

This module also proves the literal unit-window singleton identity
`pntWindow (n-1) 1 = Λ(n)`, removing one named interface from the p-adic
reassembly.

No PR103-to-zeta transport, completed Hadamard domination, tail integral,
finite energy estimate, cofinal witness, RH conclusion, compilation, or kernel
audit is supplied unconditionally.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction.vonMangoldt

namespace GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame

open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open CofinalTwoUnitEffectiveRateBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam
open PadicMobiusCofinalTwoUnitBridge

/-- The PR103 strip is contained in the earlier seven-eighths strip. -/
theorem rationalPR103Strip_to_sevenEighths
    (hstrip : RationalPR103SymmetricStrip) :
    SevenEighthsSymmetricStrip := by
  intro z
  have hz := hstrip z
  constructor <;> linarith

/-- Scalar nearest-grid gain on the unchanged line `Re s = 9/8`.
The constant is deliberately rational and leaves a strict margin at both
endpoints of the PR103 strip. -/
theorem pr103_nineEighths_scalar_kernel_ge
    {a d : ℝ}
    (hlow : (629 / 2500 : ℝ) ≤ a)
    (hhigh : a ≤ (624 / 625 : ℝ))
    (hd : d ^ 2 ≤ (1 / 4 : ℝ)) :
    (8007 / 10000 : ℝ) ≤ a / (a ^ 2 + d ^ 2) := by
  have ha0 : 0 < a := by linarith
  have hprod :
      0 ≤ (a - (629 / 2500 : ℝ)) *
        ((624 / 625 : ℝ) - a) :=
    mul_nonneg (sub_nonneg.mpr hlow) (sub_nonneg.mpr hhigh)
  have hquad :
      (8007 / 10000 : ℝ) * (a ^ 2 + (1 / 4 : ℝ)) ≤ a := by
    nlinarith [hprod]
  have hden : 0 < a ^ 2 + d ^ 2 := by
    have hasq : 0 < a ^ 2 := sq_pos_of_pos ha0
    nlinarith [sq_nonneg d]
  rw [le_div_iff₀ hden]
  nlinarith [hquad]

/-- The unchanged `9/8` Poisson sample gains a strict rational improvement
from the narrower PR103 strip. -/
theorem poissonKernelAtSevenEighths_nearest_ge_pr103
    (hstrip : RationalPR103SymmetricStrip)
    {Z : ℕ} {z : ZeroPoint}
    (hz : z ∈ positiveHeightHead (Z : ℝ)) :
    (8007 / 10000 : ℝ) ≤
      poissonKernelAtSevenEighths z (nearestFrequency z) := by
  have hb := hstrip z
  have hd := nearestFrequency_distance_sq_le_quarter hz
  have hlow :
      (629 / 2500 : ℝ) ≤ (9 / 8 : ℝ) - z.1.re := by
    linarith [hb.2]
  have hhigh :
      (9 / 8 : ℝ) - z.1.re ≤ (624 / 625 : ℝ) := by
    linarith [hb.1]
  simpa [poissonKernelAtSevenEighths, sevenEighthsPoissonAbscissa] using
    (pr103_nineEighths_scalar_kernel_ge
      (a := (9 / 8 : ℝ) - z.1.re)
      (d := (nearestFrequency z : ℝ) - z.1.im)
      hlow hhigh (by simpa using hd))

/-- The unchanged sample dominates `8007/10000` times its nearest-bin
multiplicity. -/
theorem pr103_nineEighths_binMass_lower
    (hstrip : RationalPR103SymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    (8007 / 10000 : ℝ) *
        (nearestFrequencyBinMass Z known k : ℝ) ≤
      sevenEighthsPoissonSample Z known k := by
  classical
  have h78 := rationalPR103Strip_to_sevenEighths hstrip
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
      poissonKernelAtSevenEighths_nearest_ge_pr103 hstrip hhead
    rw [← hbin] at hkern
    simpa [mul_comm] using
      (mul_le_mul_of_nonneg_left hkern
        (Nat.cast_nonneg (multiplicity z)))
  · rw [if_neg hbin, zero_mul]
    exact mul_nonneg (Nat.cast_nonneg (multiplicity z))
      (poissonKernelAtSevenEighths_nonneg h78 z k)

/-- Integral multiplicity converts the linear bin bound into the exact
quadratic integer-cleared estimate. -/
theorem pr103_nineEighths_binMass_square_lower
    (hstrip : RationalPR103SymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    64112049 * (nearestFrequencyBinMass Z known k : ℝ) ≤
      100000000 * sevenEighthsPoissonSample Z known k ^ 2 := by
  let M : ℝ := nearestFrequencyBinMass Z known k
  let S : ℝ := sevenEighthsPoissonSample Z known k
  have h78 := rationalPR103Strip_to_sevenEighths hstrip
  have hlin : (8007 / 10000 : ℝ) * M ≤ S := by
    simpa [M, S] using
      pr103_nineEighths_binMass_lower hstrip Z known hk
  have hS0 : 0 ≤ S := by
    simpa [S] using sevenEighthsPoissonSample_nonneg h78 Z known k
  have hM0 : 0 ≤ M := by
    dsimp [M]
    positivity
  have hMsq : M ≤ M ^ 2 := by
    simpa [M] using natCast_le_square (nearestFrequencyBinMass Z known k)
  have hprod :
      0 ≤ (S - (8007 / 10000 : ℝ) * M) *
        (S + (8007 / 10000 : ℝ) * M) :=
    mul_nonneg (sub_nonneg.mpr hlin)
      (add_nonneg hS0 (mul_nonneg (by norm_num) hM0))
  nlinarith

/-- Strict improvement of the existing `9/8` zero-side frame while retaining
the same completed residual and prime-side truncation. -/
theorem pr103_nineEighths_zero_side_lower_frame
    (hstrip : RationalPR103SymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) :
    64112049 * (unknownMultiplicityDeficit Z known : ℝ) ≤
      100000000 * sevenEighthsPoissonEnergy Z known := by
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
  exact pr103_nineEighths_binMass_square_lower hstrip Z known hk

/-- Exact one-zero threshold for the improved same-line frame. -/
theorem pr103_nineEighths_unknownDeficit_le_one
    (hstrip : RationalPR103SymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) (sample : ℕ → ℝ)
    (hdom : sevenEighthsPoissonEnergy Z known ≤
      arithmeticSampleEnergy Z sample)
    (hsmall : arithmeticSampleEnergy Z sample <
      (64112049 / 50000000 : ℝ)) :
    unknownMultiplicityDeficit Z known ≤ 1 := by
  have hframe :=
    pr103_nineEighths_zero_side_lower_frame hstrip Z known
  have hdom' := mul_le_mul_of_nonneg_left hdom
    (by norm_num : (0 : ℝ) ≤ 100000000)
  have hlt : (unknownMultiplicityDeficit Z known : ℝ) < 2 := by
    nlinarith
  have hltNat : unknownMultiplicityDeficit Z known < 2 := by
    exact_mod_cast hlt
  omega

/-- The literal unit window `(n-1,n]` contains exactly `n`. -/
theorem pntWindow_pred_one_eq_vonMangoldt
    (n : ℕ) (hn : 1 ≤ n) :
    pntWindow (n - 1) 1 = ArithmeticFunction.vonMangoldt n := by
  unfold pntWindow
  have htop : n - 1 + 1 = n := Nat.sub_add_cancel hn
  rw [htop]
  have hIoc : Finset.Ioc (n - 1) n = {n} := by
    ext m
    simp only [Finset.mem_Ioc, Finset.mem_singleton]
    omega
  rw [hIoc]
  simp

/-- The previously named singleton-window interface is now supplied. -/
theorem unitPrimeWindowSingletonIdentity_proved (N : ℕ) :
    UnitPrimeWindowSingletonIdentity N := by
  intro n hn
  exact pntWindow_pred_one_eq_vonMangoldt n
    (Finset.mem_Icc.mp hn).1

/-- The p-adic finite transform no longer needs an independent singleton
window premise. -/
theorem finiteCenteredPacketPolynomial_eq_padic_of_source
    (N k : ℕ) (u v : ℕ → ℕ → ℝ)
    (hsource : UnitWindowCenteredSource N u v) :
    finiteCenteredPacketPolynomial N k =
      finitePadicCenteredPacketPolynomial N k u v :=
  finiteCenteredPacketPolynomial_eq_padic N k u v hsource
    (unitPrimeWindowSingletonIdentity_proved N)

/-- The fixed truncation used by the completed-residual source lies in the
proved tail range. -/
theorem completedResidualTruncation_ge_three
    (Z : ℕ) (hZ : 1 ≤ Z) :
    3 ≤ completedResidualTruncation Z := by
  unfold completedResidualTruncation
  have hb : 2 ≤ Z + 1 := by omega
  calc
    3 ≤ 2 ^ 128 := by norm_num
    _ ≤ (Z + 1) ^ 128 := Nat.pow_le_pow_left hb 128

/-- The PR103 strip raises the admissible finite completed-residual energy
from `3/5` to `631/1000`, without changing the line, tail or arithmetic
sample. -/
theorem unknownDeficit_le_one_of_pr103_completedResidual_truncation
    (hstrip : RationalPR103SymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) (N : ℕ) (tau : ℝ)
    (hdom : CompletedPoissonDomination Z known)
    (herr : ∀ k ∈ Finset.range (Z + 1),
      (completedPoissonResidualSample known k -
        finiteCompletedResidualSample known N k) ^ 2 ≤ tau ^ 2)
    (hfinite : finiteCompletedResidualEnergy Z known N <
      (631 / 1000 : ℝ))
    (htail : ((Z + 1 : ℕ) : ℝ) * tau ^ 2 < (1 / 100 : ℝ)) :
    unknownMultiplicityDeficit Z known ≤ 1 := by
  have h78 := rationalPR103Strip_to_sevenEighths hstrip
  have hzeroEnergy :=
    sevenEighthsEnergy_le_completedResidualEnergy h78 Z known hdom
  have hcompleted :=
    sampleEnergy_le_two_approx_add_two_uniformError
      Z (completedPoissonResidualSample known)
        (finiteCompletedResidualSample known N) tau herr
  have hsmall :
      sevenEighthsPoissonEnergy Z known <
        (64112049 / 50000000 : ℝ) := by
    unfold finiteCompletedResidualEnergy at hfinite
    linarith
  have hframe :=
    pr103_nineEighths_zero_side_lower_frame hstrip Z known
  have hlt : (unknownMultiplicityDeficit Z known : ℝ) < 2 := by
    nlinarith
  have hltNat : unknownMultiplicityDeficit Z known < 2 := by
    exact_mod_cast hlt
  omega

/-- Source-visible finite certificate at the improved rational threshold. -/
def PR103CompletedResidualFiniteCertificateAt
    (Z : ℕ) (known : Finset ZeroPoint) : Prop :=
  RationalPR103SymmetricStrip ∧
    known ⊆ positiveHeightHead (Z : ℝ) ∧
    (∀ z ∈ known, z.1.re = 1 / 2) ∧
    positiveHeightCount (Z : ℝ) =
      mass known multiplicity + unknownMultiplicityDeficit Z known ∧
    CompletedPoissonDomination Z known ∧
    (∀ k ∈ Finset.range (Z + 1),
      (completedPoissonResidualSample known k -
        finiteCompletedResidualSample known
          (completedResidualTruncation Z) k) ^ 2 ≤
        nineEighthsVonMangoldtTail
          (completedResidualTruncation Z) ^ 2) ∧
    ((Z + 1 : ℕ) : ℝ) *
      nineEighthsVonMangoldtTail
        (completedResidualTruncation Z) ^ 2 < (1 / 100 : ℝ) ∧
    finiteCompletedResidualEnergy Z known
      (completedResidualTruncation Z) < (631 / 1000 : ℝ)

/-- The improved finite certificate gives the same exact one-unit count
conclusion. -/
theorem pr103CompletedResidualFiniteCertificateAt_to_oneUnit
    (Z : ℕ) (known : Finset ZeroPoint)
    (hcert : PR103CompletedResidualFiniteCertificateAt Z known) :
    positiveHeightCount (Z : ℝ) ≤ mass known multiplicity + 1 := by
  rcases hcert with
    ⟨hstrip, _hsub, _hline, hcount, hdom, herr, htail, hfinite⟩
  have hdef :=
    unknownDeficit_le_one_of_pr103_completedResidual_truncation
      hstrip Z known (completedResidualTruncation Z)
        (nineEighthsVonMangoldtTail (completedResidualTruncation Z))
        hdom herr hfinite htail
  rw [hcount]
  omega

def CofinalPR103CompletedResidualFiniteCertificate : Prop :=
  ∀ B : ℕ, ∃ (Z : ℕ) (known : Finset ZeroPoint),
    B ≤ Z ∧ PR103CompletedResidualFiniteCertificateAt Z known

/-- Conditional final return through the existing absolute one-unit criterion. -/
theorem riemannHypothesis_of_cofinalPR103CompletedResidualFinite
    (h : CofinalPR103CompletedResidualFiniteCertificate) :
    _root_.RiemannHypothesis := by
  apply absolute_one_unit_iff_riemannHypothesis.mp
  intro B
  obtain ⟨Z, known, hBZ, hcert⟩ := h B
  rcases hcert with
    ⟨hstrip, hsub, hline, hcount, hdom, herr, htail, hfinite⟩
  refine ⟨Z, hBZ, known, hsub, hline, ?_⟩
  exact pr103CompletedResidualFiniteCertificateAt_to_oneUnit Z known
    ⟨hstrip, hsub, hline, hcount, hdom, herr, htail, hfinite⟩

end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
