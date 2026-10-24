# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.F39ba5921290f1103fbdSourcePeanoSignedShortJet.Variantf39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `981226b7204ae9d3e81b1cd49069b6fed79b89b5` · SHA-256 `f39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePeanoUpperContinuousRow
import SourceUpperCubicKappa

/-!
# Signed Peano and four-kappa short divisor assembly

AI attribution: OpenAI Codex. Both local source functions are independently
specified before comparison. The entire 1..U Moebius-weighted short sector is
kept. All four signed kappa jets accompany the actual local Peano profile.
The exact positivity threshold applies to the unweighted continuous row;
no sign or bound is inferred for the Moebius sum or the complementary L.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourcePeanoSignedShortJet
open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourcePrimitivePrimeInteraction SourcePositivePeanoPrimitive
open SourcePeanoProfileTransport SourceOmegaContinuousSector SourcePeanoUpperContinuousRow
open SourceCubicSignedUpperCoefficients SourceUpperCubicKappa
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

noncomputable section

/-- Actual local source profile with the exponential conjugation removed. -/
def actualLocalPeanoProfile (A t : ℝ) : ℝ :=
  deriv (deriv (primitiveCorrelationZero A)) t - deriv (primitiveCorrelationZero A) t +
    primitiveCorrelationZero A t / 4

/-- All four independent upper-cell kappa jets, with their exact factorial factors. -/
def actualFourKappaJet (A t : ℝ) : ℝ :=
  ∑ j ∈ Finset.range 4, upperCubicKappa (j + 1) / (j.factorial : ℝ) *
    iteratedDeriv j (sourceCorrelation explicitSecondDerivative A) t

/-- Independent full short signed arithmetic sector, before comparison with I and P. -/
def actualSignedPeanoKappaShortSector (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
    (actualLocalPeanoProfile A (Real.log (d : ℝ)) + actualFourKappaJet A (Real.log (d : ℝ)))

theorem actualLocalPeanoProfile_eq_conjugated (A t : ℝ) :
    sourcePeanoPrimitive A t = Real.exp (t / 2) * actualLocalPeanoProfile A t := rfl

/-- The genuine upper continuous row is the actual local profile divided by sqrt(d). -/
theorem actual_upper_continuous_row_eq_local_profile {A d : ℝ} (hA : 1 ≤ A)
    (hd : 0 < d) (hdX : d ≤ Real.exp (2 * A)) :
    upperContinuousDivisorIntegral A d = actualLocalPeanoProfile A (Real.log d) / Real.sqrt d := by
  rw [actual_upper_continuous_row_eq_Peano hA hd hdX,
    actualLocalPeanoProfile_eq_conjugated, Real.exp_half, Real.exp_log hd]
  have hs : Real.sqrt d ≠ 0 := (Real.sqrt_pos.2 hd).ne'
  have hsq := Real.sq_sqrt hd.le
  have hfrac : Real.sqrt d / d = 1 / Real.sqrt d := by
    field_simp
    exact hsq
  calc
    _ = (Real.sqrt d / d) * actualLocalPeanoProfile A (Real.log d) := by ring
    _ = _ := by rw [hfrac]; ring

/-- Closed-half-support identification retains the exact physical polynomial profile. -/
theorem actualLocalPeanoProfile_eq_polynomial {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    actualLocalPeanoProfile A t =
      SourceBumpPeano.peanoNumerator A (t / A) / sourceNormalization A := by
  have hp := sourcePeanoPrimitive_eq_profile hA ht0 ht2
  rw [actualLocalPeanoProfile_eq_conjugated] at hp
  apply mul_left_cancel₀ (Real.exp_ne_zero (t / 2))
  calc
    _ = Real.exp (t / 2) / sourceNormalization A *
        SourceBumpPeano.peanoNumerator A (t / A) := hp
    _ = _ := by ring

/-- Positivity is retained only before Moebius weighting, at its sharp source threshold. -/
theorem actualLocalPeanoProfile_nonneg {A t : ℝ} (hA : 0 < A)
    (hthreshold : (136 / 7 : ℝ) ≤ A ^ 2) (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    0 ≤ actualLocalPeanoProfile A t := by
  have hp := sourcePeanoPrimitive_nonneg hA hthreshold ht0 ht2
  rw [actualLocalPeanoProfile_eq_conjugated] at hp
  exact (mul_nonneg_iff_of_pos_left (Real.exp_pos (t / 2))).mp hp

/-- The full literal I sector is its unchanged signed local source sum. -/
theorem literal_I_eq_actual_local_profile_sum (A : ℝ) (hA : 1 ≤ A) :
    literalOmegaIntegralSector A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        actualLocalPeanoProfile A (Real.log (d : ℝ)) := by
  rw [← full_short_continuous_sector_eq_literal_I A hA]
  apply Finset.sum_congr rfl
  intro d hd
  have hdp : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  have hdN : d ≤ sourceKernelCutoff A :=
    (Finset.mem_Icc.mp hd).2.trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hdX : (d : ℝ) ≤ Real.exp (2 * A) :=
    (by exact_mod_cast hdN : (d : ℝ) ≤ sourceKernelCutoff A).trans
      (Nat.floor_le (Real.exp_pos (2 * A)).le)
  rw [actual_upper_continuous_row_eq_local_profile hA hdp hdX]
  ring

/-- Every source cubic coefficient equals the independently specified four-kappa jet. -/
theorem cubicUpperMainTerm_eq_actualFourKappaJet (A d : ℝ) :
    cubicUpperMainTerm A d = actualFourKappaJet A (Real.log d) / Real.sqrt d :=
  cubicUpperMainTerm_eq_kappa_jet A d

/-- Genuine assembly combines I and all four signed jets before the complete Moebius sum. -/
theorem literal_I_add_cubic_main_eq_signed_Peano_kappa (A : ℝ) (hA : 1 ≤ A) :
    literalOmegaIntegralSector A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * cubicUpperMainTerm A (d : ℝ)) =
        actualSignedPeanoKappaShortSector A := by
  rw [literal_I_eq_actual_local_profile_sum A hA]
  simp_rw [cubicUpperMainTerm_eq_actualFourKappaJet]
  unfold actualSignedPeanoKappaShortSector
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  ring

end
end FormalResearch.RiemannHypothesis.SourcePeanoSignedShortJet
```
