# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residual.Variantd95f1956e6578ae4fe2b696d6f41ad7f275325480d649662956f03be2bdac201

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b0112883f469ba3a3da7233647541ebd49e25e5` · SHA-256 `2e45f3c8fcb3d7169f59c90bc9af2d47022c3883fcc900e778d9b5cb83b3741d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residual.Variant5e920d5da9be7f3b05cc62c51df5e851249b3a4b6602b0cd2bcddd00df9eddea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e920d5da9be7f3b05cc62c51df5e851249b3a4b6602b0cd2bcddd00df9eddea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Residual.Variant5e920d5da9be7f3b05cc62c51df5e851249b3a4b6602b0cd2bcddd00df9eddea","mathematical_subject":"Foundations.Unclassified","original_sha256":"5e920d5da9be7f3b05cc62c51df5e851249b3a4b6602b0cd2bcddd00df9eddea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Trajectory/Residual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Trajectory.Carrier

/-! # Channel-separated trajectory residuals -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residual.Variant5e920d5da9be7f3b05cc62c51df5e851249b3a4b6602b0cd2bcddd00df9eddea

namespace Mathematics.Trajectory

structure Residual where
  localResidual : ℝ
  coverageResidual : ℝ
  sparseSynthesisResidual : ℝ
  basisSpanResidual : ℝ
  eventCycleResidual : ℝ
  twistedCohomologyResidual : ℝ

def Residual.total (residual : Residual) : ℝ :=
  residual.localResidual +
  residual.coverageResidual +
  residual.sparseSynthesisResidual +
  residual.basisSpanResidual +
  residual.eventCycleResidual +
  residual.twistedCohomologyResidual

def Residual.Nonnegative (residual : Residual) : Prop :=
  0 ≤ residual.localResidual ∧
  0 ≤ residual.coverageResidual ∧
  0 ≤ residual.sparseSynthesisResidual ∧
  0 ≤ residual.basisSpanResidual ∧
  0 ≤ residual.eventCycleResidual ∧
  0 ≤ residual.twistedCohomologyResidual

end Mathematics.Trajectory
```
