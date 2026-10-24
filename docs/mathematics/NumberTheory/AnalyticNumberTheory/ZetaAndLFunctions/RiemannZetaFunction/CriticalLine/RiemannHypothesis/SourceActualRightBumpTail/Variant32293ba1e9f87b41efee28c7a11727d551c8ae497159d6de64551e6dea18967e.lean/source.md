# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualRightBumpTail.Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c724d16fe29ff0153591b571a7830e05f9c25c3` · SHA-256 `29d6d7dac3b90e61aa786e13bc8fe76c96801a8c6fddadf2ab776173a5db98a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMangoldtCoefficients.Variant651d139a1e6ef0005707e0373eba14b546988dff08e8ca9b09f1c4dd637ffbce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"651d139a1e6ef0005707e0373eba14b546988dff08e8ca9b09f1c4dd637ffbce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualMangoldtCoefficients.Variant651d139a1e6ef0005707e0373eba14b546988dff08e8ca9b09f1c4dd637ffbce","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"651d139a1e6ef0005707e0373eba14b546988dff08e8ca9b09f1c4dd637ffbce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/SourceActualRightBumpTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualBumpMellinLineBudget
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
Actual Mangoldt coefficients on the initial right line, and the literal #381 bump weight.
This module never identifies a different contour or assumes a signed head witness.
AI attribution: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMangoldtCoefficients.Variant651d139a1e6ef0005707e0373eba14b546988dff08e8ca9b09f1c4dd637ffbce

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualRightBumpTail
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceBumpLaplace
open FormalResearch.RiemannHypothesis.SourceActualBumpMellinLineBudget
noncomputable section

/-- Full actual Mangoldt coefficients, retaining every prime power and the unit zero. -/
def actualMangoldtCoefficients (n : ℕ) : ℂ := (ArithmeticFunction.vonMangoldt n : ℝ)

/-- The absolutely convergent actual Dirichlet mass on the original right line. -/
def actualRightLineMass (c : ℝ) : ℝ :=
  ∑' n : ℕ, ‖LSeries.term actualMangoldtCoefficients (c : ℂ) n‖

/-- Genuine absolute convergence is used only in the initial domain c>1. -/
theorem actualRightLineMass_summable (c : ℝ) (hc : 1 < c) :
    Summable (fun n : ℕ => ‖LSeries.term actualMangoldtCoefficients (c : ℂ) n‖) := by
  have h := ArithmeticFunction.LSeriesSummable_vonMangoldt
    (show 1 < (c : ℂ).re by simpa using hc)
  exact h.norm

/-- The mass is the literal real actual Mangoldt/rpow series, including guarded zero. -/
theorem actualRightLineMass_eq_real_series (c : ℝ) :
    actualRightLineMass c =
      ∑' n : ℕ, if n = 0 then 0 else ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ c := by
  unfold actualRightLineMass
  congr 1
  funext n
  simp [LSeries.norm_term_eq, actualMangoldtCoefficients,
    abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]

/-- Nonnegativity follows from the full actual coefficients, not a surrogate majorant. -/
theorem actualRightLineMass_nonneg (c : ℝ) : 0 ≤ actualRightLineMass c :=
  tsum_nonneg fun _ => norm_nonneg _

/-- On the original line the actual zeta logarithmic derivative obeys the same real mass. -/
theorem actual_zeta_logDeriv_on_line_norm_le (c t : ℝ) (hc : 1 < c) :
    ‖-deriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I) /
        riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)‖ ≤ actualRightLineMass c := by
  have hs : 1 < ((c : ℂ) + (t : ℂ) * Complex.I).re := by simpa using hc
  rw [← ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs]
  change ‖∑' n, LSeries.term actualMangoldtCoefficients
    ((c : ℂ) + (t : ℂ) * Complex.I) n‖ ≤ _
  have hn : Summable (fun n => ‖LSeries.term actualMangoldtCoefficients
      ((c : ℂ) + (t : ℂ) * Complex.I) n‖) := by
    exact (ArithmeticFunction.LSeriesSummable_vonMangoldt hs).norm
  calc
    _ ≤ ∑' n, ‖LSeries.term actualMangoldtCoefficients
        ((c : ℂ) + (t : ℂ) * Complex.I) n‖ := norm_tsum_le_tsum_norm hn
    _ = _ := by
      unfold actualRightLineMass
      congr 1
      funext n
      simp only [LSeries.norm_term_eq, Complex.add_re, Complex.ofReal_re,
        Complex.mul_re, Complex.I_re, Complex.I_im, Complex.ofReal_im, mul_zero,
        zero_mul, sub_zero, add_zero]

/-- The prescribed ordinary-square contour density, with the actual initial Dirichlet source. -/
def actualRightBumpDensity (A c t : ℝ) : ℂ :=
  LSeries actualMangoldtCoefficients ((c : ℂ) + (t : ℂ) * Complex.I) *
    bumpMellinWeight A ((c : ℂ) + (t : ℂ) * Complex.I)

/-- This line density retains the combined actual -ζ′/ζ multiplier. -/
theorem actualRightBumpDensity_eq_logDeriv (A c t : ℝ) (hc : 1 < c) :
    actualRightBumpDensity A c t =
      (-deriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I) /
        riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) *
      bumpMellinWeight A ((c : ℂ) + (t : ℂ) * Complex.I) := by
  unfold actualRightBumpDensity actualMangoldtCoefficients
  rw [ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div
    (show 1 < ((c : ℂ) + (t : ℂ) * Complex.I).re by simpa using hc)]

/-- The exact #383 high-frequency numerator before two-tail integration. -/
def actualRightBumpTailNumerator (A c : ℝ) : ℝ :=
  actualRightLineMass c * (204288 : ℝ) ^ 2 / sourceNormalization A *
    (1 + c ^ 2) * (1 + (c - 1) ^ 2) * Real.exp ((2 * c - 1) * A) / A ^ 9

/-- Every actual high-frequency point has the paper's |t|⁻⁶ budget. -/
theorem actualRightBumpDensity_norm_le (A c t : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (ht : 1 ≤ |t|) :
    ‖actualRightBumpDensity A c t‖ ≤ actualRightBumpTailNumerator A c / |t| ^ 6 := by
  have hD := actual_zeta_logDeriv_on_line_norm_le c t hc
  have hH := bumpMellinWeight_on_line_norm_le A c t hA hc ht
  have hMass0 := actualRightLineMass_nonneg c
  rw [actualRightBumpDensity_eq_logDeriv A c t hc, norm_mul]
  calc
    _ ≤ actualRightLineMass c *
      ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) *
        (1 + (c - 1) ^ 2) * Real.exp ((2 * c - 1) * A) / (A ^ 9 * |t| ^ 6)) := by
      gcongr
    _ = _ := by unfold actualRightBumpTailNumerator; ring

end
end FormalResearch.RiemannHypothesis.SourceActualRightBumpTail
```
