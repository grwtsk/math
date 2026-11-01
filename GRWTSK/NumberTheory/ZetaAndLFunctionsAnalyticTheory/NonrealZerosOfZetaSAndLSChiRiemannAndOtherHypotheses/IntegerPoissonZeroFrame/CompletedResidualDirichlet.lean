/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.SevenEighthsStrip
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.RiemannZetaLogDeriv
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma
import Mathlib

/-!
# Completed residual and finite centered Dirichlet truncation

The finite seven-eighths frame controls the uncredited positive-height zero
sample. This module records the correct completed-log-derivative comparison:
a certified positive-height set is subtracted, while every other nontrivial
zero, including the first outer collar and the remote tail, remains in one
nonnegative completed residual. The outer collar is therefore not discarded
as an error.

The prime side is written at `s_k = 9/8 + i k`. Mathlib already identifies
the von Mangoldt L-series with `-ζ'/ζ` on `Re s > 1`. The finite prime
polynomial can equivalently be written as a single signed transform of the
unit-window centered coefficients `(1 - Λ(n))/2`; all cross-window terms are
retained until the final square.

The finite energy transfer below is proved. The Hadamard-product domination,
the explicit von Mangoldt tail estimate, and its scheduled numerical bound are
kept as named propositions. The mathematical review gives their complete
ordinary derivations. No unconditional cofinal arithmetic estimate, RH
conclusion, compilation, or kernel audit is supplied.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction.vonMangoldt LSeries.notation

namespace GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame

open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open CofinalTwoUnitEffectiveRateBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam
open PadicMobiusCofinalTwoUnitBridge
open Complex

/-- Complete canonical finite-head sample on the seven-eighths line. -/
def canonicalHeightPoissonSample (Z k : ℕ) : ℝ :=
  ∑ z ∈ heightHead (Z : ℝ),
    (multiplicity z : ℝ) * poissonKernelAtSevenEighths z k

/-- Contribution of a certified positive-height inventory. -/
def knownSevenEighthsPoissonSample
    (known : Finset ZeroPoint) (k : ℕ) : ℝ :=
  ∑ z ∈ known,
    (multiplicity z : ℝ) * poissonKernelAtSevenEighths z k

/-- The exact finite canonical-head residual after subtracting only `known`. -/
def finiteHeightPoissonResidualSample
    (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) : ℝ :=
  canonicalHeightPoissonSample Z k - knownSevenEighthsPoissonSample known k

/-- The finite canonical residual is a sum over the set difference. -/
theorem finiteHeightPoissonResidualSample_eq_sdiff
    (Z : ℕ) (known : Finset ZeroPoint)
    (hknown : known ⊆ heightHead (Z : ℝ)) (k : ℕ) :
    finiteHeightPoissonResidualSample Z known k =
      ∑ z ∈ heightHead (Z : ℝ) \ known,
        (multiplicity z : ℝ) * poissonKernelAtSevenEighths z k := by
  classical
  unfold finiteHeightPoissonResidualSample canonicalHeightPoissonSample
    knownSevenEighthsPoissonSample
  rw [← Finset.sum_sdiff hknown]

/-- Every uncredited positive-height point is retained by the complete finite
head after the certified inventory is removed. -/
theorem unknownPositiveHead_subset_heightHead_sdiff
    (Z : ℕ) (known : Finset ZeroPoint) :
    unknownPositiveHead Z known ⊆ heightHead (Z : ℝ) \ known := by
  intro z hz
  have hz' := Finset.mem_sdiff.mp hz
  exact Finset.mem_sdiff.mpr
    ⟨positiveHeightHead_subset_heightHead (Z : ℝ) hz'.1, hz'.2⟩

/-- Finite-head domination. No outer-zero estimate is involved: this theorem
uses only set inclusion and positivity of the Poisson kernel. -/
theorem sevenEighthsSample_le_finiteHeightResidual
    (hstrip : SevenEighthsSymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint)
    (hknown : known ⊆ positiveHeightHead (Z : ℝ)) (k : ℕ) :
    sevenEighthsPoissonSample Z known k ≤
      finiteHeightPoissonResidualSample Z known k := by
  classical
  rw [finiteHeightPoissonResidualSample_eq_sdiff Z known
    (hknown.trans (positiveHeightHead_subset_heightHead (Z : ℝ))) k]
  unfold sevenEighthsPoissonSample unknownPositiveHead
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (unknownPositiveHead_subset_heightHead_sdiff Z known)
    (fun z _ _ => mul_nonneg (Nat.cast_nonneg (multiplicity z))
      (poissonKernelAtSevenEighths_nonneg hstrip z k))

/-- Integer sample point on the adapted line `Re s = 9/8`. -/
def sevenEighthsSamplePoint (k : ℕ) : ℂ :=
  (9 / 8 : ℂ) + (k : ℂ) * Complex.I

/-- Pole, gamma and conductor part of the completed logarithmic derivative. -/
def completedArchimedeanTerm (s : ℂ) : ℂ :=
  1 / s + 1 / (s - 1) - (Real.log Real.pi : ℂ) / 2 +
    Complex.digamma (s / 2) / 2

/-- The actual completed logarithmic-derivative sample. -/
def completedLogDerivativeSample (k : ℕ) : ℝ :=
  (completedArchimedeanTerm (sevenEighthsSamplePoint k) +
    logDeriv riemannZeta (sevenEighthsSamplePoint k)).re

/-- Subtract only the certified positive-height zero contribution. -/
def completedPoissonResidualSample
    (known : Finset ZeroPoint) (k : ℕ) : ℝ :=
  completedLogDerivativeSample k - knownSevenEighthsPoissonSample known k

/-- Classical Hadamard-product content required by the source comparison.
It states both positivity of the completed residual and domination of the
finite uncredited positive-height sample. It is a named proposition, not a hidden
assumption or an unrestricted remainder. -/
def CompletedPoissonDomination
    (Z : ℕ) (known : Finset ZeroPoint) : Prop :=
  ∀ k ∈ Finset.range (Z + 1),
    0 ≤ completedPoissonResidualSample known k ∧
      sevenEighthsPoissonSample Z known k ≤
        completedPoissonResidualSample known k

/-- The source-specific centered coefficient of one unit prime window. -/
def centeredUnitCoefficient (n : ℕ) : ℝ :=
  (1 - ArithmeticFunction.vonMangoldt n) / 2

/-- Pure coefficient algebra. -/
theorem neg_vonMangoldt_eq_two_centered_sub_one (n : ℕ) :
    -(ArithmeticFunction.vonMangoldt n) =
      2 * centeredUnitCoefficient n - 1 := by
  unfold centeredUnitCoefficient
  ring

/-- Finite von Mangoldt Dirichlet polynomial on the adapted sample line. -/
def finiteVonMangoldtPolynomial (N k : ℕ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N,
    (ArithmeticFunction.vonMangoldt n : ℂ) *
      (n : ℂ) ^ (-sevenEighthsSamplePoint k)

/-- Finite constant Dirichlet polynomial with the same support. -/
def finiteOnePolynomial (N k : ℕ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N,
    (n : ℂ) ^ (-sevenEighthsSamplePoint k)

/-- Complete signed transform of the centered unit-window coefficients. -/
def finiteCenteredPacketPolynomial (N k : ℕ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N,
    (centeredUnitCoefficient n : ℂ) *
      (n : ℂ) ^ (-sevenEighthsSamplePoint k)

/-- The finite prime polynomial is exactly one completed signed centered
packet transform minus the matching constant polynomial. -/
theorem neg_finiteVonMangoldt_eq_centered
    (N k : ℕ) :
    -finiteVonMangoldtPolynomial N k =
      2 * finiteCenteredPacketPolynomial N k - finiteOnePolynomial N k := by
  unfold finiteVonMangoldtPolynomial finiteCenteredPacketPolynomial finiteOnePolynomial
  rw [Finset.mul_sum, Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  push_cast [neg_vonMangoldt_eq_two_centered_sub_one]
  ring

/-- Exact singleton-window source premises needed to identify the finite
centered Dirichlet polynomial with the existing p-adic packet. -/
def UnitWindowCenteredSource
    (N : ℕ) (u v : ℕ → ℕ → ℝ) : Prop :=
  ∀ n ∈ Finset.Icc 1 N,
    pntWindow (n - 1) 1 =
      divisorLogWindow (n - 1) 1 (fun d => u n d - 2 * v n d)

/-- Elementary fact that the literal unit window contains only its terminal
integer. It is separated as a source interface until the pinned `Finset.Ioc`
normalization is qualified. -/
def UnitPrimeWindowSingletonIdentity (N : ℕ) : Prop :=
  ∀ n ∈ Finset.Icc 1 N,
    pntWindow (n - 1) 1 = ArithmeticFunction.vonMangoldt n

/-- One existing centered p-adic unit packet is exactly `(1 - Λ(n))/2`. -/
theorem centered_unit_packet_eq_coefficient
    (N n : ℕ) (u v : ℕ → ℕ → ℝ)
    (hsource : UnitWindowCenteredSource N u v)
    (hsingle : UnitPrimeWindowSingletonIdentity N)
    (hn : n ∈ Finset.Icc 1 N) :
    centeredLargePrimePacket (n - 1) 1 (u n) (v n) =
      centeredUnitCoefficient n := by
  have hseam := primeWindowResidual_eq_divisorSeam_of_source
    (n - 1) 1 (u n) (v n) (hsource n hn)
  have hcenter := divisorSeamResidual_eq_neg_two_centered
    (n - 1) 1 (u n) (v n)
  unfold primeWindowResidual at hseam
  rw [hsingle n hn, hcenter] at hseam
  unfold centeredUnitCoefficient
  linarith

/-- Finite transform written literally with the existing centered p-adic
unit-window packet. -/
def finitePadicCenteredPacketPolynomial
    (N k : ℕ) (u v : ℕ → ℕ → ℝ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N,
    (centeredLargePrimePacket (n - 1) 1 (u n) (v n) : ℂ) *
      (n : ℂ) ^ (-sevenEighthsSamplePoint k)

/-- The centered coefficient polynomial is the source-exact p-adic packet
polynomial once the singleton-window and coefficient split are supplied. -/
theorem finiteCenteredPacketPolynomial_eq_padic
    (N k : ℕ) (u v : ℕ → ℕ → ℝ)
    (hsource : UnitWindowCenteredSource N u v)
    (hsingle : UnitPrimeWindowSingletonIdentity N) :
    finiteCenteredPacketPolynomial N k =
      finitePadicCenteredPacketPolynomial N k u v := by
  unfold finiteCenteredPacketPolynomial finitePadicCenteredPacketPolynomial
  apply Finset.sum_congr rfl
  intro n hn
  rw [centered_unit_packet_eq_coefficient N n u v hsource hsingle hn]

/-- Finite completed residual: all prime powers through `N`, all deterministic
completed factors, and the exact certified-zero subtraction. -/
def finiteCompletedResidualSample
    (known : Finset ZeroPoint) (N k : ℕ) : ℝ :=
  (completedArchimedeanTerm (sevenEighthsSamplePoint k) -
    finiteVonMangoldtPolynomial N k).re -
      knownSevenEighthsPoissonSample known k

/-- Energy of the finite completed residual on the same integer grid. -/
def finiteCompletedResidualEnergy
    (Z : ℕ) (known : Finset ZeroPoint) (N : ℕ) : ℝ :=
  arithmeticSampleEnergy Z (finiteCompletedResidualSample known N)

/-- Explicit uniform tail envelope at real part `9/8`. -/
def nineEighthsVonMangoldtTail (N : ℕ) : ℝ :=
  (N : ℝ) ^ (-(1 / 8 : ℝ)) * (8 * Real.log N + 64)

/-- Large but elementary cutoff chosen so that the total squared tail on
`0,...,Z` is uniformly below `1/100` once `Z >= 1`. -/
def completedResidualTruncation (Z : ℕ) : ℕ :=
  (Z + 1) ^ 128

/-- Source-exact infinite-series tail statement. Mathlib supplies
`Λ(n) <= log n` and the absolutely convergent von Mangoldt L-series; the
review derives the displayed integral bound. -/
def NineEighthsCompletedResidualTailBound : Prop :=
  ∀ (Z : ℕ) (known : Finset ZeroPoint) (N : ℕ), 1 ≤ N →
    ∀ k ∈ Finset.range (Z + 1),
      (completedPoissonResidualSample known k -
        finiteCompletedResidualSample known N k) ^ 2 ≤
          nineEighthsVonMangoldtTail N ^ 2

/-- Scheduled numerical consequence of the explicit tail envelope. -/
def ScheduledCompletedResidualTailBudget : Prop :=
  ∀ Z : ℕ, 1 ≤ Z →
    ((Z + 1 : ℕ) : ℝ) *
      nineEighthsVonMangoldtTail (completedResidualTruncation Z) ^ 2 <
        (1 / 100 : ℝ)

/-- A finite square-energy perturbation estimate. -/
theorem sampleEnergy_le_two_approx_add_two_uniformError
    (Z : ℕ) (full approx : ℕ → ℝ) (tau : ℝ)
    (herr : ∀ k ∈ Finset.range (Z + 1),
      (full k - approx k) ^ 2 ≤ tau ^ 2) :
    arithmeticSampleEnergy Z full ≤
      2 * arithmeticSampleEnergy Z approx +
        2 * ((Z + 1 : ℕ) : ℝ) * tau ^ 2 := by
  unfold arithmeticSampleEnergy
  calc
    (∑ k ∈ Finset.range (Z + 1), full k ^ 2) ≤
        ∑ k ∈ Finset.range (Z + 1),
          (2 * approx k ^ 2 + 2 * tau ^ 2) := by
      apply Finset.sum_le_sum
      intro k hk
      have he := herr k hk
      nlinarith [sq_nonneg (2 * approx k - full k)]
    _ = 2 * (∑ k ∈ Finset.range (Z + 1), approx k ^ 2) +
        2 * ((Z + 1 : ℕ) : ℝ) * tau ^ 2 := by
      simp [Finset.sum_add_distrib, Finset.card_range, Finset.mul_sum]

/-- The completed residual dominates the unknown-zero energy. -/
theorem sevenEighthsEnergy_le_completedResidualEnergy
    (hstrip : SevenEighthsSymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint)
    (hdom : CompletedPoissonDomination Z known) :
    sevenEighthsPoissonEnergy Z known ≤
      arithmeticSampleEnergy Z (completedPoissonResidualSample known) := by
  unfold sevenEighthsPoissonEnergy arithmeticSampleEnergy
  apply Finset.sum_le_sum
  intro k hk
  have h := hdom k hk
  nlinarith [sevenEighthsPoissonSample_nonneg hstrip Z known k]

/-- Clean finite completion criterion. The constants are deliberately
rational: approximate energy below `3/5` plus total tail energy below `1/100`
leaves the completed residual below the seven-eighths one-zero threshold
`32/25`. -/
theorem unknownDeficit_le_one_of_completedResidual_truncation
    (hstrip : SevenEighthsSymmetricStrip)
    (Z : ℕ) (known : Finset ZeroPoint) (N : ℕ) (tau : ℝ)
    (hdom : CompletedPoissonDomination Z known)
    (herr : ∀ k ∈ Finset.range (Z + 1),
      (completedPoissonResidualSample known k -
        finiteCompletedResidualSample known N k) ^ 2 ≤ tau ^ 2)
    (hfinite : finiteCompletedResidualEnergy Z known N < (3 / 5 : ℝ))
    (htail : ((Z + 1 : ℕ) : ℝ) * tau ^ 2 < (1 / 100 : ℝ)) :
    unknownMultiplicityDeficit Z known ≤ 1 := by
  have hzeroEnergy := sevenEighthsEnergy_le_completedResidualEnergy hstrip Z known hdom
  have hcompleted := sampleEnergy_le_two_approx_add_two_uniformError
    Z (completedPoissonResidualSample known)
      (finiteCompletedResidualSample known N) tau herr
  have hsmall : sevenEighthsPoissonEnergy Z known < (32 / 25 : ℝ) := by
    unfold finiteCompletedResidualEnergy at hfinite
    linarith
  have hframe := sevenEighthsPoisson_zero_side_lower_frame hstrip Z known
  have hlt : (unknownMultiplicityDeficit Z known : ℝ) < 2 := by
    nlinarith
  have hltNat : unknownMultiplicityDeficit Z known < 2 := by
    exact_mod_cast hlt
  omega

/-- Source-visible finite criterion using the fixed truncation schedule. The
Hadamard domination and tail bounds remain named inputs, while the final
finite arithmetic estimate is the complete signed residual energy, not a sum
of packetwise absolute values. -/
def CompletedResidualFiniteCertificateAt
    (Z : ℕ) (known : Finset ZeroPoint) : Prop :=
  SevenEighthsSymmetricStrip ∧
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
      (completedResidualTruncation Z) < (3 / 5 : ℝ)

/-- The finite completed-residual certificate yields the exact one-unit count
conclusion. -/
theorem completedResidualFiniteCertificateAt_to_oneUnit
    (Z : ℕ) (known : Finset ZeroPoint)
    (hcert : CompletedResidualFiniteCertificateAt Z known) :
    positiveHeightCount (Z : ℝ) ≤ mass known multiplicity + 1 := by
  rcases hcert with
    ⟨hstrip, _hsub, _hline, hcount, hdom, herr, htail, hfinite⟩
  have hdef := unknownDeficit_le_one_of_completedResidual_truncation
    hstrip Z known (completedResidualTruncation Z)
      (nineEighthsVonMangoldtTail (completedResidualTruncation Z))
      hdom herr hfinite htail
  rw [hcount]
  omega

/-- Cofinal finite completed-residual certificates. -/
def CofinalCompletedResidualFiniteCertificate : Prop :=
  ∀ B : ℕ, ∃ (Z : ℕ) (known : Finset ZeroPoint),
    B ≤ Z ∧ CompletedResidualFiniteCertificateAt Z known

/-- Conditional final return through the already-published absolute one-unit
criterion. -/
theorem riemannHypothesis_of_cofinalCompletedResidualFinite
    (h : CofinalCompletedResidualFiniteCertificate) :
    _root_.RiemannHypothesis := by
  apply absolute_one_unit_iff_riemannHypothesis.mp
  intro B
  obtain ⟨Z, known, hBZ, hcert⟩ := h B
  rcases hcert with
    ⟨hstrip, hsub, hline, hcount, hdom, herr, htail, hfinite⟩
  refine ⟨Z, hBZ, known, hsub, hline, ?_⟩
  exact completedResidualFiniteCertificateAt_to_oneUnit Z known
    ⟨hstrip, hsub, hline, hcount, hdom, herr, htail, hfinite⟩

end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
