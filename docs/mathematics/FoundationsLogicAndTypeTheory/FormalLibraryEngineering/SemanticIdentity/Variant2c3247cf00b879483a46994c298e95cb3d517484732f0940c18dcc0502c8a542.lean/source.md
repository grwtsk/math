# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticIdentity.Variant2c3247cf00b879483a46994c298e95cb3d517484732f0940c18dcc0502c8a542

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9469b8b4405c4f7659b0c97761b0943afa82752` · SHA-256 `747ee01f15e96a35c372d16d4c7912f35bf916f4c790fd196ae77e11fe79872a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticIdentityInput.Variantc51846f5f21272f7146e6b656a090f0e411802fccc3a5b5633040e88318adca4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c51846f5f21272f7146e6b656a090f0e411802fccc3a5b5633040e88318adca4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SemanticIdentityInput.Variantc51846f5f21272f7146e6b656a090f0e411802fccc3a5b5633040e88318adca4","mathematical_subject":"Foundations.Unclassified","original_sha256":"c51846f5f21272f7146e6b656a090f0e411802fccc3a5b5633040e88318adca4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Core/SemanticIdentity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-!
# Semantic identity

The framework distinguishes semantic objects from source elements, compiled
declarations, representations, runtime bindings, and storage locations.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticIdentityInput.Variantc51846f5f21272f7146e6b656a090f0e411802fccc3a5b5633040e88318adca4

namespace Mathematics

abbrev ElementId := StableId
abbrev SystemId := StableId
abbrev WorkspaceId := StableId
abbrev TenantId := StableId
abbrev TransactionId := StableId
abbrev ProgressionId := StableId
abbrev ProgressionStateId := StableId
abbrev InterpretationProfileId := StableId
abbrev GammaBridgeId := StableId
abbrev TrajectoryId := StableId
abbrev SurgeryRequestId := StableId

/-- Canonical identity input. Presentation and runtime coordinates are absent. -/
structure SemanticIdentityInput where
  kind : String
  canonicalPayloadDigest : Digest
  profileDigest : Digest
  deriving DecidableEq, Repr

/-- A semantic reference carries identity only, never an object address. -/
structure ElementRef where
  id : ElementId
  deriving DecidableEq, Repr, Inhabited

end Mathematics
```
