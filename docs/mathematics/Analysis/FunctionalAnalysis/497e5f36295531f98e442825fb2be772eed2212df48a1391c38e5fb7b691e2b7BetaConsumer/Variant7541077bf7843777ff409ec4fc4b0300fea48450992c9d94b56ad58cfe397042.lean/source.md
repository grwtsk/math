# Complete source: GRWTSK.Analysis.FunctionalAnalysis.497e5f36295531f98e442825fb2be772eed2212df48a1391c38e5fb7b691e2b7BetaConsumer.Variant7541077bf7843777ff409ec4fc4b0300fea48450992c9d94b56ad58cfe397042

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0f4ec4f9a8c8f270b0c352323e51872d8e4b593` · SHA-256 `8eb86220150c6e23e8e852f1d40e0f722b295a136bfb6909fc9a3f73e3b88a52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.EstimateBetaCentering.Variant497e5f36295531f98e442825fb2be772eed2212df48a1391c38e5fb7b691e2b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"497e5f36295531f98e442825fb2be772eed2212df48a1391c38e5fb7b691e2b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.EstimateBetaCentering.Variant497e5f36295531f98e442825fb2be772eed2212df48a1391c38e5fb7b691e2b7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"497e5f36295531f98e442825fb2be772eed2212df48a1391c38e5fb7b691e2b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/49/497e5f36295531f98e442825fb2be772eed2212df48a1391c38e5fb7b691e2b7--BetaConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaCentering

namespace GRWTSK.Analysis.FunctionalAnalysis.EstimateBetaCentering.Variant497e5f36295531f98e442825fb2be772eed2212df48a1391c38e5fb7b691e2b7

set_option autoImplicit false
open ArithmeticFunction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering
example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, beta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (((H/d : ℕ) : ℝ)-((L/d : ℕ) : ℝ)) := beta_interval_eq_quotients U L H hU hUL hLH
example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, centeredBeta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L H d :=
  centeredBeta_interval_eq_discrepancy U L H hU hUL hLH
example (L H d : ℕ) (hd : 1 ≤ d) : |floorDiscrepancy L H d| ≤ 1 :=
  floorDiscrepancy_abs_le_one L H d hd
```
