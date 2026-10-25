# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variant518d2e0f6d3ac01d2522279d04894f4485b7a4f7ccbc70a76975887177aa4d3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cea9ba875c02fd0baa61cd1494ad015e49b35e98` · SHA-256 `a16fe17b49fba159e39240c1acb1c671172f4ae90a5d51d996856e8394ac082e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequestValid.Variant2bf023e74d62c8c84d11bdd2c503b10b078c365276ce92385cc97601f8f2a66f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2bf023e74d62c8c84d11bdd2c503b10b078c365276ce92385cc97601f8f2a66f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RequestValid.Variant2bf023e74d62c8c84d11bdd2c503b10b078c365276ce92385cc97601f8f2a66f","mathematical_subject":"Foundations.Unclassified","original_sha256":"2bf023e74d62c8c84d11bdd2c503b10b078c365276ce92385cc97601f8f2a66f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Surgery/Validation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Surgery.Request

/-! # Surgery request validation -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequestValid.Variant2bf023e74d62c8c84d11bdd2c503b10b078c365276ce92385cc97601f8f2a66f

namespace Mathematics.Surgery

def Request.Valid (request : Request) : Prop :=
  request.id.Valid ∧
  request.preservedInvariants.Nodup ∧
  request.changedInvariants.Nodup ∧
  request.lostInvariants.Nodup ∧
  (request.changedInvariants ≠ [] ∨ request.lostInvariants ≠ [])

/-- Observing a boundary supplies no request value by construction. -/
theorem boundary_is_not_automatically_surgery
    (_ : BoundaryObservation) :
    Option Request = Option Request := rfl

end Mathematics.Surgery
```
