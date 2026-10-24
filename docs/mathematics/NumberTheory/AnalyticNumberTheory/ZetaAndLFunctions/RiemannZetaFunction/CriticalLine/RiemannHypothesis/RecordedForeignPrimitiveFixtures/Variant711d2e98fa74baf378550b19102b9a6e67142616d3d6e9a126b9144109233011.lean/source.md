# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RecordedForeignPrimitiveFixtures.Variant711d2e98fa74baf378550b19102b9a6e67142616d3d6e9a126b9144109233011

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daabe5c4a7fa525f64ab6e12b154f7e44fc7063d` · SHA-256 `89e9ea0496db20a427bb72a78d6541ab5b025486402ed1e5deb213809564d505`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimitiveFiveNonnegOnClosedSupport.Variant64718a801ba5f8d1e95cf11a4639e2ce004536d1bee9611b4ca5fa0f975dbb96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64718a801ba5f8d1e95cf11a4639e2ce004536d1bee9611b4ca5fa0f975dbb96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PrimitiveFiveNonnegOnClosedSupport.Variant64718a801ba5f8d1e95cf11a4639e2ce004536d1bee9611b4ca5fa0f975dbb96","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"64718a801ba5f8d1e95cf11a4639e2ce004536d1bee9611b4ca5fa0f975dbb96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/regent-origin/recorded-peano-replay-v1/RecordedForeignPrimitiveFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCorrelationSignChange
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport

/-!
Prospective recorded-scope foreign primitive controls only. UNCOMPILED here.
The root sign2 proof has no dependency on these foreign modules. These fixtures
do not replay or integrate the foreign packet or identify a literal prime atom.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimitiveFiveNonnegOnClosedSupport.Variant64718a801ba5f8d1e95cf11a4639e2ce004536d1bee9611b4ca5fa0f975dbb96

set_option autoImplicit false
noncomputable section
namespace Cycle24RecordedForeignPrimitiveFixtures

open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationSignChange SourceMangoldtInteraction
open SourcePositivePeanoPrimitive SourcePeanoProfileTransport
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem primitive_five_nonneg_on_closed_support :
    ∀ t : ℝ, 0 ≤ t → t ≤ 10 → 0 ≤ sourcePeanoPrimitive 5 t := by
  intro t ht0 ht10
  have he : (2 : ℝ) * 5 = 10 := by norm_num
  exact sourcePeanoPrimitive_nonneg (by norm_num) (by norm_num) ht0 (by rw [he]; exact ht10)

theorem primitive_five_second_derivative_negative_inside :
    ∃ t : ℝ, 0 < t ∧ t < 10 ∧ deriv (deriv (sourcePeanoPrimitive 5)) t < 0 := by
  obtain ⟨t, ht0, ht2, ht⟩ :=
    sourceCorrelation_exists_neg_in_half_support (A := 5) (by norm_num)
  have he : (2 : ℝ) * 5 = 10 := by norm_num
  rw [he] at ht2
  refine ⟨t, ht0, ht2, ?_⟩
  rw [sourcePeanoPrimitive_second_deriv (by norm_num : (0 : ℝ) < 5)]
  exact mul_neg_of_pos_of_neg (Real.exp_pos _) ht

theorem primitive_five_second_derivative_at_zero_one :
    deriv (deriv (sourcePeanoPrimitive 5)) 0 = 1 := by
  rw [sourcePeanoPrimitive_second_deriv (by norm_num : (0 : ℝ) < 5),
    sourceCorrelation_zero (by norm_num : (0 : ℝ) < 5)]
  norm_num

end Cycle24RecordedForeignPrimitiveFixtures
```
