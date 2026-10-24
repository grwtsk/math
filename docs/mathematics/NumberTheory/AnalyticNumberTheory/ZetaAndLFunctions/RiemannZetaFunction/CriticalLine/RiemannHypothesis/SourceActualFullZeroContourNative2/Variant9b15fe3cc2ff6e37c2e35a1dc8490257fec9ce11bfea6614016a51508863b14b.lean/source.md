# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualFullZeroContourNative2.Variant9b15fe3cc2ff6e37c2e35a1dc8490257fec9ce11bfea6614016a51508863b14b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38121d78649b93523b2defbcae457a42634f4b68` · SHA-256 `9b15fe3cc2ff6e37c2e35a1dc8490257fec9ce11bfea6614016a51508863b14b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualGoodHeightContour
import Zeta23.WeilEF.FullLineAssembly
import Zeta23.WeilEF.Main

/-!
Exact full zero-side dictionary for the original actual Mertens residual. Every nontrivial
zero and analytic multiplicity is retained, with the ordinary complex source weight.
The completed gamma/digamma correction is explicit and genuinely integrable. The source
pole weights at 0 and 1 vanish by the proved original s²(s−1)² multiplier. This proves no
critical-line restriction, off-axis positivity, or uniform signed zero/head estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualFullZeroContour
open MeasureTheory Set Zeta23
open SourcePairing SourceActualInitialPrimeContour SourceActualInitialPrimeLineL1
open SourceActualPrimeContourResidual SourceActualPrimeBumpDictionary
open SourceActualBumpMellinLineBudget SourceActualGoodHeightContour
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- The full actual zero carrier and analytic multiplicities, without a critical-line filter. -/
def actualFullZeroContribution (A : ℝ) : ℂ :=
  ∑' ρ : (zetaZeros zetaSeam).carrier,
    ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ

/-- The entire genuine gamma correction on the initial right line. -/
def actualArchimedeanLine (A c : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, actualInitialPrimeMellin A
    ((c : ℂ) + (t : ℂ) * Complex.I) *
      logDeriv Complex.Gammaℝ ((c : ℂ) + (t : ℂ) * Complex.I)

/-- The source's genuine even correlation gives equal reflected Mellin weights. -/
theorem actualInitialPrimeMellin_one_sub (A : ℝ) (hA : 1 ≤ A) (s : ℂ) :
    actualInitialPrimeMellin A (1 - s) = actualInitialPrimeMellin A s := by
  rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA,
    actualInitialPrimeMellin_eq_bumpMellinWeight hA]
  unfold bumpMellinWeight
  rw [show (A : ℂ) * (1 - s - 1 / 2) = -((A : ℂ) * (s - 1 / 2)) by ring,
    SourceBumpLaplace.bump_laplace_even]
  ring

/-- The actual all-zero series is genuinely absolutely summable at every real A≥1. -/
theorem actualFullZeroContribution_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
      ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ) := by
  have h := WeilEF.EF_zero_sum_summable zetaSeam
    (actualInitialPrimeKernel_contDiff A hA) (actualInitialPrimeKernel_hasCompactSupport A hA)
  simpa only [actualInitialPrimeMellin_eq_Hfn, WeilEF.Hfn, gammaOf] using h

/-- Genuine gamma-line L1, before any split of the completed contour. -/
theorem actualArchimedeanLine_integrable (A c : ℝ) (hA : 1 ≤ A)
    (hc : 1 < c) (hc2 : c ≤ 3 / 2) :
    Integrable (fun t : ℝ => actualInitialPrimeMellin A
      ((c : ℂ) + (t : ℂ) * Complex.I) *
        logDeriv Complex.Gammaℝ ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  simpa only [actualInitialPrimeMellin_eq_Hfn] using
    WeilEF.integrable_Hfn_mul_logDeriv_Gammaℝ
      (actualInitialPrimeKernel_contDiff A hA) (actualInitialPrimeKernel_hasCompactSupport A hA)
      (show 1 / 2 ≤ c by linarith) hc2

/-- The original gamma correction includes both −logπ/2 and half the genuine digamma. -/
theorem actualArchimedeanLine_eq_digamma (A c : ℝ) (hc : 0 < c) :
    actualArchimedeanLine A c = (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ,
      actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I) *
        (-((Real.log Real.pi : ℝ) : ℂ) / 2 +
          (1 / 2) * Complex.digamma (((c : ℂ) + (t : ℂ) * Complex.I) / 2)) := by
  unfold actualArchimedeanLine
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  rw [WeilEF.logDeriv_Gammaℝ (by simpa using hc)]

/-- The complete source full-line equation retains every zero and the full gamma correction. -/
theorem actualFullZeroContribution_eq_arch_sub_residual (A c : ℝ) (hA : 1 ≤ A)
    (hc : 1 < c) (hc2 : c ≤ 3 / 2) :
    actualFullZeroContribution A = 2 * actualArchimedeanLine A c -
      2 * (mertensResidual A : ℂ) := by
  have hfull := WeilEF.full_line_identity zetaSeam
    (actualInitialPrimeKernel_contDiff A hA) (actualInitialPrimeKernel_hasCompactSupport A hA)
    hc hc2
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hfull
  have hzero := actualInitialPrimeMellin_poles_zero A hA
  rw [hzero.1, hzero.2, sub_zero, sub_zero] at hfull
  have hg := actualArchimedeanLine_integrable A c hA hc hc2
  have hz := actualInitialPrimeDensity_integrable A c hA hc
  have heq : (fun t : ℝ =>
      (actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I) +
        actualInitialPrimeMellin A (1 - c - (t : ℂ) * Complex.I)) *
          logDeriv completedRiemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) =
      (fun t : ℝ => 2 * (actualInitialPrimeMellin A
        ((c : ℂ) + (t : ℂ) * Complex.I) *
          logDeriv Complex.Gammaℝ ((c : ℂ) + (t : ℂ) * Complex.I)) -
        2 * actualInitialPrimeDensity A c t) := by
    funext t
    rw [show (1 : ℂ) - c - (t : ℂ) * Complex.I =
      1 - ((c : ℂ) + (t : ℂ) * Complex.I) by ring,
      actualInitialPrimeMellin_one_sub A hA,
      WeilEF.logDeriv_completedZeta_line hc]
    unfold actualInitialPrimeDensity
    rw [logDeriv_apply]
    ring
  rw [heq, integral_sub (hg.const_mul 2) (hz.const_mul 2),
    integral_const_mul, integral_const_mul] at hfull
  have hr := actualInitialPrimeContour_eq_mertensResidual A c hA hc
  change (1 / (2 * Real.pi) : ℂ) * (2 * _ - 2 * _) = actualFullZeroContribution A at hfull
  unfold actualArchimedeanLine
  rw [← hr]
  linear_combination -hfull

/-- The unchanged original residual equals the full gamma correction minus half the zero sum. -/
theorem actual_mertensResidual_eq_arch_sub_half_zero (A c : ℝ) (hA : 1 ≤ A)
    (hc : 1 < c) (hc2 : c ≤ 3 / 2) :
    (mertensResidual A : ℂ) =
      actualArchimedeanLine A c - actualFullZeroContribution A / 2 := by
  have h := actualFullZeroContribution_eq_arch_sub_residual A c hA hc hc2
  linear_combination h / 2

/-- The real upper-target retains the real part of the ordinary complex zero weights. -/
theorem actual_mertensResidual_eq_arch_re_sub_half_zero_re (A c : ℝ) (hA : 1 ≤ A)
    (hc : 1 < c) (hc2 : c ≤ 3 / 2) :
    mertensResidual A =
      (actualArchimedeanLine A c).re - (actualFullZeroContribution A).re / 2 := by
  have h := congrArg Complex.re
    (actual_mertensResidual_eq_arch_sub_half_zero A c hA hc hc2)
  simpa using h

end
end FormalResearch.RiemannHypothesis.SourceActualFullZeroContour
```
