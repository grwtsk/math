-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CorpusIdentity.Variant03ab3db33c5490d8b6b2fd7da4e621b30a7641d872395e5b20196d0aafb3f722","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03ab3db33c5490d8b6b2fd7da4e621b30a7641d872395e5b20196d0aafb3f722","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.CorpusIdentity.Variant03ab3db33c5490d8b6b2fd7da4e621b30a7641d872395e5b20196d0aafb3f722","mathematical_subject":"Logic.SetTheory","original_sha256":"03ab3db33c5490d8b6b2fd7da4e621b30a7641d872395e5b20196d0aafb3f722","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Discovery/Corpus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-!
# External mathematical corpus provenance

Corpus locations are immutable evidence addresses.  A subsumption link is
proposal-only: it can guide reconstruction, but cannot construct theorem
authority or certify that informal source prose has been translated correctly.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CorpusIdentity.Variant03ab3db33c5490d8b6b2fd7da4e621b30a7641d872395e5b20196d0aafb3f722

namespace Mathematics.Discovery

open Mathematics

/-- One content-addressed external corpus inventory. -/
structure CorpusIdentity where
  corpusId : StableId
  corpusId_valid : corpusId.Valid
  sourceDigest : Digest
  sourceDigest_valid : sourceDigest.Valid
  inventoryDigest : Digest
  inventoryDigest_valid : inventoryDigest.Valid
  moduleCount : Nat
  deriving Repr

/-- Declaration kinds observed by the corpus parser without elaboration. -/
inductive CorpusDeclarationKind
  | structure
  | definition
  | theorem
  | lemma
  | inductive
  | class
  | instance
  | abbrev
  | opaque
  | axiom
  | other
  deriving DecidableEq, Repr

/--
An exact module-and-declaration coordinate in a content-addressed corpus.
Ordinals are zero based, matching the retained Rust inventory.
-/
structure CorpusDeclarationAddress where
  corpus : CorpusIdentity
  moduleOrdinal : Nat
  modulePath : String
  modulePath_nonempty : modulePath ≠ ""
  moduleDigest : Digest
  moduleDigest_valid : moduleDigest.Valid
  declarationOrdinal : Nat
  declarationName : String
  declarationName_nonempty : declarationName ≠ ""
  declarationKind : CorpusDeclarationKind
  declarationDigest : Digest
  declarationDigest_valid : declarationDigest.Valid
  deriving Repr

/--
The module-level part of a corpus address.  This is the reusable router prefix
for element-sized declaration links from one retained source module.
-/
structure CorpusModuleAddress where
  corpus : CorpusIdentity
  moduleOrdinal : Nat
  modulePath : String
  modulePath_nonempty : modulePath ≠ ""
  moduleDigest : Digest
  moduleDigest_valid : moduleDigest.Valid
  deriving Repr

/-- Extend a certified module prefix by one exact declaration coordinate. -/
def CorpusModuleAddress.declaration
    (module : CorpusModuleAddress)
    (declarationOrdinal : Nat)
    (declarationName : String)
    (declarationName_nonempty : declarationName ≠ "")
    (declarationKind : CorpusDeclarationKind)
    (declarationDigest : Digest)
    (declarationDigest_valid : declarationDigest.Valid) :
    CorpusDeclarationAddress where
  corpus := module.corpus
  moduleOrdinal := module.moduleOrdinal
  modulePath := module.modulePath
  modulePath_nonempty := module.modulePath_nonempty
  moduleDigest := module.moduleDigest
  moduleDigest_valid := module.moduleDigest_valid
  declarationOrdinal := declarationOrdinal
  declarationName := declarationName
  declarationName_nonempty := declarationName_nonempty
  declarationKind := declarationKind
  declarationDigest := declarationDigest
  declarationDigest_valid := declarationDigest_valid

/-- What kind of reconstruction is proposed for one observed declaration. -/
inductive CorpusSubsumptionRelation
  | carrierReconstruction
  | definitionReconstruction
  | theoremReconstruction
  | semanticCorrection
  | rejection
  deriving DecidableEq, Repr

/-- Corpus links carry no constructor other than proposal-only authority. -/
inductive CorpusLinkAuthority
  | proposalOnly
  deriving DecidableEq, Repr

/--
Nonauthoritative routing from a corpus address to a compiled Lean declaration.
Kernel authority, when present, belongs to the target declaration itself.
-/
structure CorpusSubsumptionLink where
  linkId : StableId
  linkId_valid : linkId.Valid
  source : CorpusDeclarationAddress
  targetDeclaration : String
  targetDeclaration_nonempty : targetDeclaration ≠ ""
  relation : CorpusSubsumptionRelation
  rationale : String
  authority : CorpusLinkAuthority := .proposalOnly
  deriving Repr

/--
Construct one proposal-only subsumption link from a reusable module router
prefix.  The target remains a name; theorem authority belongs only to the
compiled target declaration.
-/
def CorpusModuleAddress.subsumption
    (module : CorpusModuleAddress)
    (linkId : StableId)
    (linkId_valid : linkId.Valid)
    (declarationOrdinal : Nat)
    (declarationName : String)
    (declarationName_nonempty : declarationName ≠ "")
    (declarationKind : CorpusDeclarationKind)
    (declarationDigest : Digest)
    (declarationDigest_valid : declarationDigest.Valid)
    (targetDeclaration : String)
    (targetDeclaration_nonempty : targetDeclaration ≠ "")
    (relation : CorpusSubsumptionRelation)
    (rationale : String) :
    CorpusSubsumptionLink where
  linkId := linkId
  linkId_valid := linkId_valid
  source := module.declaration
    declarationOrdinal
    declarationName
    declarationName_nonempty
    declarationKind
    declarationDigest
    declarationDigest_valid
  targetDeclaration := targetDeclaration
  targetDeclaration_nonempty := targetDeclaration_nonempty
  relation := relation
  rationale := rationale

@[simp] theorem CorpusSubsumptionLink.authority_is_proposal_only
    (link : CorpusSubsumptionLink) :
    link.authority = .proposalOnly := by
  cases link
  rfl

end Mathematics.Discovery
