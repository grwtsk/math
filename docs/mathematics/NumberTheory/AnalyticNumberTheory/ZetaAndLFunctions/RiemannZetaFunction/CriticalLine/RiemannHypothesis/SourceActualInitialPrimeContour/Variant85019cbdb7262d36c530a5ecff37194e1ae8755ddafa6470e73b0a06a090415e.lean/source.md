# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualInitialPrimeContour.Variant85019cbdb7262d36c530a5ecff37194e1ae8755ddafa6470e73b0a06a090415e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a1f5769c494f5c6aa2284fcb87f199bf44b1f7a` · SHA-256 `85019cbdb7262d36c530a5ecff37194e1ae8755ddafa6470e73b0a06a090415e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import Zeta23.WeilEF.VerticalLine

/-!
Initial right-line transport of the unchanged actual normalized correlation to its complete
strict prime-power inventory. The genuine pinned C2 inversion/Fubini theorem is used only
for c>1. This proves no shifted contour, residue exclusion, or uniform signed head estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualInitialPrimeContour
open MeasureTheory Set
open SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
noncomputable section

/-- The literal actual bilateral Mellin transform, retaining the complete real source axis. -/
def actualInitialPrimeMellin (A : ℝ) (s : ℂ) : ℂ :=
  ∫ t : ℝ, (sourceCorrelation explicitSecondDerivative A t : ℂ) *
    Complex.exp ((s - 1 / 2) * (t : ℂ))

/-- Exact dictionary to the pinned angular Fourier convention, without a hidden 1/s. -/
theorem actualInitialPrimeMellin_eq_Hfn (A : ℝ) (s : ℂ) :
    actualInitialPrimeMellin A s = Zeta23.WeilEF.Hfn
      (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) s := by
  unfold actualInitialPrimeMellin Zeta23.WeilEF.Hfn Zeta23.paperFT
  apply integral_congr_ae
  filter_upwards [] with t
  congr 2
  field_simp

/-- The unchanged correlation is genuinely C2, including both touching support seams. -/
theorem actualInitialPrimeKernel_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 2 (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
  Complex.ofRealCLM.contDiff.comp (sourceCorrelation_contDiff_two (by linarith))

/-- The genuine complex kernel retains the actual compact support. -/
theorem actualInitialPrimeKernel_hasCompactSupport (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
  (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left
    (g := Complex.ofReal) rfl

/-- The closed equality atom vanishes at the actual touching endpoint. -/
theorem actualInitialPrime_cutoff_atom_zero (A : ℝ) (hA : 1 ≤ A) (n : ℕ)
    (hn : (n : ℝ) = Real.exp (2 * A)) :
    ArithmeticFunction.vonMangoldt n / Real.sqrt n *
      sourceCorrelation explicitSecondDerivative A (Real.log n) = 0 := by
  rw [hn, Real.log_exp,
    sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A) (by linarith)
      (le_abs_self _)]
  simp

/-- The all-natural-number sum equals the original strict inventory; all prime powers remain. -/
theorem actualInitialPrime_tsum_eq_strict (A : ℝ) (hA : 1 ≤ A) :
    (∑' n : ℕ, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n) : ℂ)) =
    (primePowerContribution explicitSecondDerivative A : ℂ) := by
  classical
  let S := (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
    (fun n : ℕ => (n : ℝ) < Real.exp (2 * A))
  rw [tsum_eq_sum (s := S) (fun n hn => ?_)]
  · unfold primePowerContribution
    push_cast
    rfl
  · by_cases hn2 : 2 ≤ n
    · have hcut : Real.exp (2 * A) ≤ (n : ℝ) := by
        by_contra h
        apply hn
        have hlt : (n : ℝ) < Real.exp (2 * A) := lt_of_not_ge h
        have hfloor : n ≤ ⌊Real.exp (2 * A)⌋₊ :=
          (Nat.le_floor_iff (Real.exp_pos _).le).mpr hlt.le
        exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hn2, hfloor⟩, hlt⟩
      have hlog : 2 * A ≤ Real.log n := by
        simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n)
        (by linarith) (hlog.trans (le_abs_self _))]
      simp
    · have hs : n = 0 ∨ n = 1 := by omega
      rcases hs with rfl | rfl <;> simp

/-- Exact initial right-line prime transport from actual source C2 inversion and finite support. -/
theorem actualInitialPrimeContour_eq_strict (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ,
      actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I) *
        (-deriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I) /
          riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) =
    (primePowerContribution explicitSecondDerivative A : ℂ) := by
  have hp := Zeta23.WeilEF.prime_side_line
    (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) (c := c) hc
  rw [actualInitialPrime_tsum_eq_strict A hA] at hp
  rw [← hp]
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  rw [actualInitialPrimeMellin_eq_Hfn]
  simp only [logDeriv, Pi.div_apply, neg_div]

end
end FormalResearch.RiemannHypothesis.SourceActualInitialPrimeContour
```
