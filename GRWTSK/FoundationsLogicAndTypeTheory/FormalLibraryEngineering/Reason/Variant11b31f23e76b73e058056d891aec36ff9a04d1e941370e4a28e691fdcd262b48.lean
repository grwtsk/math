-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BarrierState.Variant8de8f9233a352ad24bba34ff1d4ea2c26a270da0455aa75878fc6e19da8bf7ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8de8f9233a352ad24bba34ff1d4ea2c26a270da0455aa75878fc6e19da8bf7ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BarrierState.Variant8de8f9233a352ad24bba34ff1d4ea2c26a270da0455aa75878fc6e19da8bf7ac","mathematical_subject":"Foundations.Unclassified","original_sha256":"8de8f9233a352ad24bba34ff1d4ea2c26a270da0455aa75878fc6e19da8bf7ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Atom/Reason.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Atom.Edge

/-! # Governed barriers and collapse reasons -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BarrierState.Variant8de8f9233a352ad24bba34ff1d4ea2c26a270da0455aa75878fc6e19da8bf7ac

namespace MathDiscovery.Atom

open MathDiscovery

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

end MathDiscovery.Atom
