# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reason.Variant30ff4ac45cf7c577e9368cf22e1faa1c0436e42c71a2f949319e5a750700cd19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b87be2bee6e1d31eef34fa4b5219536cb1bc5d0` · SHA-256 `0efb5473cd0259bed84ec1d09ef1fab020c908140bdb5057a66640a606508560`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BarrierState.Variant158d7fb6bfab1ad4dc944fdb812601a4e4b86a6addc2bf12ff3f3f99ab336526","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"158d7fb6bfab1ad4dc944fdb812601a4e4b86a6addc2bf12ff3f3f99ab336526","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BarrierState.Variant158d7fb6bfab1ad4dc944fdb812601a4e4b86a6addc2bf12ff3f3f99ab336526","mathematical_subject":"Foundations.Unclassified","original_sha256":"158d7fb6bfab1ad4dc944fdb812601a4e4b86a6addc2bf12ff3f3f99ab336526","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Element/Reason.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Element.Edge

/-! # Governed barriers and collapse reasons -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BarrierState.Variant158d7fb6bfab1ad4dc944fdb812601a4e4b86a6addc2bf12ff3f3f99ab336526

namespace Mathematics.Element

open Mathematics

inductive BarrierState
  | movable
  | movableWithContext
  | mustCoLocate
  | immovableUnderProfile
  | unresolved
  deriving DecidableEq, Repr, Inhabited

inductive CollapseReasonKind
  | mutualBlock
  | generatedFamily
  | sectionVariable
  | localDeclaration
  | privateNameCluster
  | syntaxProvider
  | macroProvider
  | notationProvider
  | optionState
  | attributeState
  | localInstance
  | scopedInstance
  | commandElaborator
  | typeclassSearchDelta
  | publicApiDelta
  | proofTermDelta
  | trustClosureDelta
  | generatedNameDelta
  | importCycle
  | parserFailure
  | elaboratorFailure
  | unreconstructableExtensionState
  deriving DecidableEq, Repr, Inhabited

structure RefactorBarrier where
  commandId : SourceCommandId
  state : BarrierState
  reason : CollapseReasonKind
  provider : Option SourceCommandId
  evidenceDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Element
```
