# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralBoundaryCriterion.Variant8721c20a0699fe9551912431e70cedf9970e9ff325dbe573d38c4c12722798d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe38ff684b607bbfda6047408a401786108ccc41` · SHA-256 `f26065f9c58653c787b0ceb120f2af0b3a439f9c0e45fb44d765d88b2e0f332d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PositivitySelfAdjointnessData.Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PositivitySelfAdjointnessData.Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e","mathematical_subject":"Foundations.Unclassified","original_sha256":"c338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/SpectralBoundaryCriterion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.IndexSpectralTraceIdentity

/-!
# Folder.CanonicalPath.SpectralBoundaryCriterion

Radiation role: research-boundary
BinaryMatrix spine: This module records the decisive spectral-boundary criterion.
Ontology: canonical.spectral_boundary_criterion
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PositivitySelfAdjointnessData.Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e

namespace Folder
namespace CanonicalPath

structure PositivitySelfAdjointnessData where
  OperatorData : Type
  selfAdjoint : Prop
  positivity : Prop
  noOffCriticalResonances : Prop
  noOffCriticalResonances_certified : noOffCriticalResonances
  sourceLabel : String

structure SpectralBoundaryCriterion where
  traceIdentity : IndexSpectralTraceIdentity
  positivityData : PositivitySelfAdjointnessData
  boundaryAlignment : Prop
  boundaryAlignment_certified : boundaryAlignment
  sourceLabel : String

theorem positivity_rules_out_offcritical_resonances
    (P : PositivitySelfAdjointnessData) :
    P.noOffCriticalResonances :=
  P.noOffCriticalResonances_certified

theorem spectral_boundary_alignment_if_supplied
    (B : SpectralBoundaryCriterion) :
    B.boundaryAlignment :=
  B.boundaryAlignment_certified

end CanonicalPath
end Folder
```
