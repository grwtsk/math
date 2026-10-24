# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ParameterProfile.Variante22e76c36271e53c00905563d90a37b4cac097a5bb87b2ccf70edad88684e4d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab63a6758bb595e1aa1f02bb44656e76de37bcd8` · SHA-256 `7395b72ebc36c48bdcf7310ffbfb8fbfa3e18e754c82315caab838043f31318a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.GeometryCapability.Variant647230f575c6851716cca7c75cd4b697d39f11eb4e2e61e86dda38ef636f3cc6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"647230f575c6851716cca7c75cd4b697d39f11eb4e2e61e86dda38ef636f3cc6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.GeometryCapability.Variant647230f575c6851716cca7c75cd4b697d39f11eb4e2e61e86dda38ef636f3cc6","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"647230f575c6851716cca7c75cd4b697d39f11eb4e2e61e86dda38ef636f3cc6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/GammaBridge/ParameterProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GammaBridge.Regularity

/-! # Banach/Hilbert capability separation -/


namespace GRWTSK.Analysis.FunctionalAnalysis.GeometryCapability.Variant647230f575c6851716cca7c75cd4b697d39f11eb4e2e61e86dda38ef636f3cc6

namespace Mathematics.GammaBridge

inductive GeometryCapability
  | banach
  | hilbert
  deriving DecidableEq, Repr

def GeometryCapability.hasInnerProduct : GeometryCapability → Bool
  | .banach => false
  | .hilbert => true

@[simp] theorem banach_does_not_supply_inner_product :
    GeometryCapability.banach.hasInnerProduct = false := rfl

structure ParameterProfile where
  id : InterpretationProfileId
  digest : Digest
  geometry : GeometryCapability
  regularity : RegularityRequest
  deriving DecidableEq, Repr

end Mathematics.GammaBridge
```
