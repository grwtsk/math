-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenConjectureAuthority.Variant7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OpenConjectureAuthority.Variant7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d","mathematical_subject":"Foundations.Unclassified","original_sha256":"7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Discovery/OpenElement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.Index
import Mathematics.Authority.Kernel

/-!
# Typed proposal-only conjecture elements

The proposition is a type index, not a mutable field.  Operational digests and
dependency cones are attached only by an extracted kernel-audit envelope.
Evidence is predecessor-bound and cannot mutate the seed into a theorem.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenConjectureAuthority.Variant7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d

namespace Mathematics.Discovery

open Mathematics.Authority

/-- The only authority carried by a conjecture seed. -/
inductive OpenConjectureAuthority
  | proposalOnly
  deriving DecidableEq, Repr

/-- One closed formal proposition proposed by the discovery system. -/
structure OpenConjectureElement (statement : Prop) where
  elementId : ElementRef
  elementId_valid : elementId.id.Valid
  name : String
  name_nonempty : name ≠ ""
  leanDeclarationName : String
  leanDeclarationName_nonempty : leanDeclarationName ≠ ""
  authority : OpenConjectureAuthority := .proposalOnly

/--
A distinct proof-bearing theorem element derived from an immutable seed.
Compiling this value checks `proof` in Lean; operational release authority is
added separately by an extracted kernel-audit envelope.
-/
structure LeanTheoremElement
    {statement : Prop}
    (seed : OpenConjectureElement statement) where
  theoremElementId : ElementRef
  theoremElementId_valid : theoremElementId.id.Valid
  sourceSeedId : ElementId
  sourceSeed_bound : sourceSeedId = seed.elementId.id
  proof : statement

/--
Operational extraction binds the typed seed to the elaborated declaration,
frozen environment, exact dependency cone, and retained source object.
-/
structure ExtractedOpenConjectureEnvelope
    {statement : Prop}
    (seed : OpenConjectureElement statement)
    (environment : FrozenKernelEnvironment) where
  declaration : KernelDeclarationIdentity
  declarationName_bound :
    declaration.declarationName = seed.leanDeclarationName
  dependencyCone : DependencyCone declaration
  sourceObject : ObjectAddress
  sourceModule : ModuleKey
  envelopeAddress : ObjectAddress

/-- Nonauthoritative producer classes; there is no theorem constructor. -/
inductive OpenEvidenceProducer
  | human
  | externalModel
  | localModel
  | symbolicSearch
  | finiteComputation
  | counterexampleSearch
  | heat
  | spectralDiffusion
  deriving DecidableEq, Repr

/-- One evidence payload bound to a seed and extracted statement identity. -/
structure OpenConjectureEvidence
    {statement : Prop}
    {seed : OpenConjectureElement statement}
    {environment : FrozenKernelEnvironment}
    (envelope : ExtractedOpenConjectureEnvelope seed environment) where
  evidenceId : ObjectAddress
  elementId : ElementId
  element_bound : elementId = seed.elementId.id
  statementDigest : Digest
  statement_bound :
    statementDigest = envelope.declaration.statementDigest
  producer : OpenEvidenceProducer
  payloadDigest : Digest
  description : String
  predecessorEvent : Option ObjectAddress
  eventAddress : ObjectAddress

/-- Append-only evidence history with an explicit predecessor at each step. -/
inductive OpenConjectureEvidenceHistory
    {statement : Prop}
    {seed : OpenConjectureElement statement}
    {environment : FrozenKernelEnvironment}
    (envelope : ExtractedOpenConjectureEnvelope seed environment) :
    ObjectAddress → Type
  | genesis (eventChainRoot : ObjectAddress) :
      OpenConjectureEvidenceHistory envelope eventChainRoot
  | append
      {previousHead : ObjectAddress}
      (previous :
        OpenConjectureEvidenceHistory envelope previousHead)
      (evidence : OpenConjectureEvidence envelope)
      (predecessor_bound :
        evidence.predecessorEvent = some previousHead) :
      OpenConjectureEvidenceHistory envelope evidence.eventAddress

/--
Proof creates a distinct theorem element linked to the immutable seed.  It
does not rewrite or retrospectively call the seed “unproved.”
-/
structure KernelCertifiedTheoremElement
    {statement : Prop}
    (seed : OpenConjectureElement statement)
    (environment : FrozenKernelEnvironment) where
  theoremElement : LeanTheoremElement seed
  certificate : AcceptedKernelCertificate environment statement
  proof_bound :
    theoremElement.proof = certificate.proves

end Mathematics.Discovery
