# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticIdentity.Variant8ba25afdcd18a5f932f34c4c2c1107028df96d94dcac7da1ec0f7efebae79cbd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0cc0f13401ef6c959044419d8f425c07b16a116` · SHA-256 `e59e94a49b4e0635e4df505c778886b94cd1fb02a943c684150fba4ff3dabffe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticIdentityInput.Variant1b469bcc2ae461e0b215a237ad12c30ff61e552c4a6210ba00a399cce71d8fbb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b469bcc2ae461e0b215a237ad12c30ff61e552c4a6210ba00a399cce71d8fbb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SemanticIdentityInput.Variant1b469bcc2ae461e0b215a237ad12c30ff61e552c4a6210ba00a399cce71d8fbb","mathematical_subject":"Foundations.Unclassified","original_sha256":"1b469bcc2ae461e0b215a237ad12c30ff61e552c4a6210ba00a399cce71d8fbb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Core/SemanticIdentity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-!
# Semantic identity

The framework distinguishes semantic objects from source elements, compiled
declarations, representations, runtime bindings, and storage locations.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticIdentityInput.Variant1b469bcc2ae461e0b215a237ad12c30ff61e552c4a6210ba00a399cce71d8fbb

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

/-!
The identities below deliberately have no coercions between them.  A semantic
element, a permanent external route, immutable stored bytes, and an exact
compiler invocation are different objects even when an implementation uses a
256-bit representation for more than one of them.
-/

/-- Permanent externally allocated position.  It is not a content digest. -/
structure RigidKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

/-- Address of one immutable canonical object envelope. -/
structure ObjectAddress where
  bits : BitVec 256
  deriving DecidableEq, Repr

/--
Stable identity of one source module. It excludes source bytes and imported
interfaces, so it is distinct from a request to compile that module.
-/
structure ModuleKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

/-- Exact key of one compiler request, including all imported interfaces. -/
structure CompileKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

/-- Identity of a proposal-only neural observation. -/
structure ActivationKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

end Mathematics
```
