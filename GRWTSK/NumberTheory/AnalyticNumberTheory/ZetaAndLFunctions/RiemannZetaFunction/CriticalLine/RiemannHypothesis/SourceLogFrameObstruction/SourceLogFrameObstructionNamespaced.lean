-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCorrelationZero.Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceCorrelationZero.Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-hilbert-cycle-20261006/finite-energy-replays/hilbert-replay/SourceLogFrameObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
import Mathlib.Tactic

/-!
The literal normalized source with coefficient-space ell-two weights 1/sqrt(n).
This local candidate proves finite source-band lower bounds only. Long-inventory
band inclusion and unbounded harmonic growth are separate paper applications.
The theorem does not assert an obstruction to the actual compensated arithmetic vector.
AI attribution: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCorrelationZero.Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceLogFrameObstruction
open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization
noncomputable section

private theorem sourceCorrelation_zero (A : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A 0 = 1 := by
  change (∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
    normalizedTest explicitSecondDerivative A (x - 0)) = 1
  simp only [sub_zero, ← pow_two]
  exact normalized_square_integral A hA

/-- The source's existing scale-explicit derivative bound keeps a whole log band correlated. -/
theorem sourceCorrelation_ge_three_quarters {A s : ℝ} (hA : 1 ≤ A)
    (hs : |s| ≤ A / 20) :
    (3 / 4 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A s := by
  have hpos : 0 < A := by linarith
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := sourceCorrelation explicitSecondDerivative A)
    (fun x _ => (sourceCorrelation_contDiff A hpos).differentiable (by norm_num) x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      sourceCorrelation_deriv_abs_le_five_div hA x)
    convex_univ (mem_univ 0) (mem_univ s)
  have hv' : |sourceCorrelation explicitSecondDerivative A s - 1| ≤ (5 / A) * |s| := by
    simpa only [Real.norm_eq_abs, sub_zero, sourceCorrelation_zero A hA] using hv
  have he : (5 / A) * |s| ≤ (1 / 4 : ℝ) := by
    have he' := mul_le_mul_of_nonneg_left hs (show 0 ≤ 5 / A by positivity)
    have hm : (5 / A) * (A / 20) = (1 / 4 : ℝ) := by field_simp; ring
    exact hm ▸ he'
  have h := (abs_le.mp (hv'.trans he)).1
  linarith

/-- Exact finite lower bound for the source's 1/sqrt(n) translation-frame test. -/
theorem valueFrame_band_lower {A : ℝ} (hA : 1 ≤ A) (I : Finset ℕ)
    (hpos : ∀ n ∈ I, 0 < n)
    (hband : ∀ n ∈ I, |Real.log (n : ℝ) - A| ≤ A / 20) :
    (9 / 16 : ℝ) * (∑ n ∈ I, (1 : ℝ) / (n : ℝ)) ≤
      ∑ n ∈ I,
        (sourceCorrelation explicitSecondDerivative A (Real.log (n : ℝ) - A)) ^ 2 /
          (n : ℝ) := by
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro n hn
  have hc := sourceCorrelation_ge_three_quarters hA (hband n hn)
  have hn0 : (0 : ℝ) < (n : ℝ) := by exact_mod_cast hpos n hn
  have hsq : (9 / 16 : ℝ) ≤
      (sourceCorrelation explicitSecondDerivative A (Real.log (n : ℝ) - A)) ^ 2 := by
    nlinarith
  simpa only [mul_one_div] using (div_le_div_of_nonneg_right hsq hn0.le)

/-- Every proposed frame constant must pay this literal finite source band. -/
theorem frame_constant_ge_band {A B : ℝ} (hA : 1 ≤ A) (I : Finset ℕ)
    (hpos : ∀ n ∈ I, 0 < n)
    (hband : ∀ n ∈ I, |Real.log (n : ℝ) - A| ≤ A / 20)
    (hframe : (∑ n ∈ I,
      (sourceCorrelation explicitSecondDerivative A (Real.log (n : ℝ) - A)) ^ 2 /
        (n : ℝ)) ≤ B) :
    (9 / 16 : ℝ) * (∑ n ∈ I, (1 : ℝ) / (n : ℝ)) ≤ B :=
  (valueFrame_band_lower hA I hpos hband).trans hframe

end
end FormalResearch.RiemannHypothesis.SourceLogFrameObstruction
