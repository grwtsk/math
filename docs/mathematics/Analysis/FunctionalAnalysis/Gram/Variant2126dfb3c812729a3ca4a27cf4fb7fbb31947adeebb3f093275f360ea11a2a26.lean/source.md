# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Gram.Variant2126dfb3c812729a3ca4a27cf4fb7fbb31947adeebb3f093275f360ea11a2a26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cbd4fd33428b47525ba0d45dacfb86e9075080e` · SHA-256 `94267e96099a977d8838af10d8e188a99f7d36f28d359b2d80af7a68850d6c3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Gram.Variantd45740332bfe90da8b4d58542af51010d46ce197933e7d549eede14241eae180","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d45740332bfe90da8b4d58542af51010d46ce197933e7d549eede14241eae180","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.Gram.Variantd45740332bfe90da8b4d58542af51010d46ce197933e7d549eede14241eae180","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"d45740332bfe90da8b4d58542af51010d46ce197933e7d549eede14241eae180","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Trajectory/Gram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Trajectory.Carrier
import Mathlib.Analysis.InnerProductSpace.LinearMap

/-! # Trajectory comparison by Gram data -/


namespace GRWTSK.Analysis.FunctionalAnalysis.Gram.Variantd45740332bfe90da8b4d58542af51010d46ce197933e7d549eede14241eae180

noncomputable section

namespace Mathematics.Trajectory

variable {𝕜 E F Index : Type*}
variable [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
variable [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]

def gram (trajectory : Index → E) (left right : Index) : 𝕜 :=
  inner 𝕜 (trajectory left) (trajectory right)

theorem gram_equality_of_unitary_transport
    (transport : E ≃ₗᵢ[𝕜] F)
    (trajectory : Index → E)
    (left right : Index) :
    gram (𝕜 := 𝕜) (E := F) (fun index ↦ transport (trajectory index)) left right =
      gram (𝕜 := 𝕜) (E := E) trajectory left right := by
  exact transport.inner_map_map (trajectory left) (trajectory right)

end Mathematics.Trajectory
```
