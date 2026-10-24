# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.009LowTimeScalarBudgetFixtures.Variantc9094fc6087296ee1167582a38314090a7c513228d59b6d5ec94f85f53e0c96d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2bde40b4e44757a07d02fca8ecae74045fd8183` · SHA-256 `5e8ee51255646f70fc93686cf32004a7ee1cd46587fa6f8fcec6447b1b33b4d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DiagonalPrefixEmpty.Variant0e29f9f029b77d6fb6de0a55936f18c95bb8e3751236d2a98935c7992bbe74f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e29f9f029b77d6fb6de0a55936f18c95bb8e3751236d2a98935c7992bbe74f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DiagonalPrefixEmpty.Variant0e29f9f029b77d6fb6de0a55936f18c95bb8e3751236d2a98935c7992bbe74f3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0e29f9f029b77d6fb6de0a55936f18c95bb8e3751236d2a98935c7992bbe74f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner79-source-reconciliation-20261007T004709Z/raw/009-LowTimeScalarBudgetFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceLowTimeScalarBudget

/-!
UNCOMPILED hostile fixtures. They protect the positive cutoff, literal U factor,
actual centered prefix and fixed numerical margin. No full work estimate follows.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DiagonalPrefixEmpty.Variant0e29f9f029b77d6fb6de0a55936f18c95bb8e3751236d2a98935c7992bbe74f3

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.LowTimeScalarBudgetFixtures

open MeasureTheory
open scoped BigOperators Interval
open SourceLowTimeScalarBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering

noncomputable section

theorem diagonal_prefix_empty (U : ℕ) :
    (∑ n ∈ Finset.Ioc U U, centeredBeta U n) = 0 := by simp

theorem empty_prefix_bound_reuses_literal_row (U : ℕ) (hU : 1 ≤ U) :
    |∑ n ∈ Finset.Ioc U U, centeredBeta U n| ≤ (U : ℝ) :=
  centered_beta_prefix_abs_le_cutoff U U hU le_rfl

theorem cutoff_zero_refutes_exponential_reconstruction :
    (∫ t in Real.log (0 : ℝ)..Real.log (1 : ℝ), Real.exp (t / 2)) ≠
      2 * (Real.sqrt (1 : ℝ) - Real.sqrt (0 : ℝ)) := by norm_num

theorem cutoff_factor_cannot_be_erased :
    1 < 2 * (3 : ℝ) / Real.sqrt ((3 + 1 : ℕ) : ℝ) := by norm_num

theorem exact_curvature_margin :
    2 * ((162826 : ℝ) / 7623 + 1 / 4) < 45 := by norm_num

theorem scale_one_margin_keeps_actual_constant :
    (Real.log 4 + 4 + Real.log 2) *
      (2 * (162826 / (7623 * (1 : ℝ) ^ 2) + 1 / 4)) ≤
      45 * (Real.log 4 + 4 + Real.log 2) :=
  error_times_twice_curvature_budget_le_margin le_rfl

end
end FormalResearch.RiemannHypothesis.LowTimeScalarBudgetFixtures
```
