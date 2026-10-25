# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenElement.Variant7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1df9133d2d69d180116f1c5e58cd31aab2d1307` · SHA-256 `7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Discovery.Index
import Mathematics.Authority.Kernel

/-!
# Typed proposal-only conjecture elements

The proposition is a type index, not a mutable field.  Operational digests and
dependency cones are attached only by an extracted kernel-audit envelope.
Evidence is predecessor-bound and cannot mutate the seed into a theorem.
-/

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
```
