# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sieve.Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ca26291db3f473af52243c57230f07eb35ae74c` · SHA-256 `60dd241fc09abfcd137289c0de365e925d2949e3b74e6524b8c080e2454bcb66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SieveDecision.Variantaf40fb4b7fc331feb9971f6b8cf0b64d8139708cfcc029a15759bb1686a8b9c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af40fb4b7fc331feb9971f6b8cf0b64d8139708cfcc029a15759bb1686a8b9c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SieveDecision.Variantaf40fb4b7fc331feb9971f6b8cf0b64d8139708cfcc029a15759bb1686a8b9c3","mathematical_subject":"Foundations.Unclassified","original_sha256":"af40fb4b7fc331feb9971f6b8cf0b64d8139708cfcc029a15759bb1686a8b9c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Sieve.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Coordinate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SieveDecision.Variantaf40fb4b7fc331feb9971f6b8cf0b64d8139708cfcc029a15759bb1686a8b9c3

universe uCoordinate

namespace FCRS.Transport

/-- Three-way operational result; indeterminate is not rejection. -/
inductive SieveDecision where
  | Accepted
  | Rejected
  | Indeterminate
deriving Repr, DecidableEq

/-- Versioned extensional acceptance relation over coordinate pairs. -/
structure SieveSpecification (Coordinate : Type uCoordinate) where
  version : ArtifactRef .sieveSpecification
  accepts : Coordinate → Coordinate → Prop

/-- Executable procedure is distinct from specification and evidence theory. -/
structure SieveProcedure
    {Coordinate : Type uCoordinate}
    (specification : SieveSpecification Coordinate) where
  version : ArtifactRef .sieveProcedure
  evaluate : Coordinate → Coordinate → SieveDecision

/-- Independent soundness contract for one exact procedure. -/
structure SieveSoundness
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    (procedure : SieveProcedure specification) where
  evidenceArtifact : ArtifactRef .sieveSoundness
  sound :
    ∀ left right,
      procedure.evaluate left right = .Accepted →
        specification.accepts left right

/-- Independent completeness contract; soundness does not imply it. -/
structure SieveCompleteness
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    (procedure : SieveProcedure specification) where
  evidenceArtifact : ArtifactRef .sieveCompleteness
  complete :
    ∀ left right,
      specification.accepts left right →
        procedure.evaluate left right = .Accepted

/-- Termination evidence on an explicitly declared scope. -/
structure SieveTermination
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    (procedure : SieveProcedure specification) where
  evidenceArtifact : ArtifactRef .sieveTermination
  scope : Coordinate → Coordinate → Prop
  terminates :
    ∀ left right, scope left right →
      ∃ decision, procedure.evaluate left right = decision

/--
One immutable, nonempty evidence-theory version. Soundness, completeness, and
termination are independently optional law records; consumers must request the
exact laws their claims use instead of obtaining one law from another.
-/
structure SieveEvidenceTheoryVersion
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    (soundness : Option (SieveSoundness procedure))
    (completeness : Option (SieveCompleteness procedure)) where
  version : ArtifactRef .sieveEvidenceTheory
  terminationEvidence : Option (SieveTermination procedure)
  nonemptyLawInventory :
    soundness.isSome ∨ completeness.isSome ∨ terminationEvidence.isSome

/-- Positive witness that a sound-only evidence-theory version is representable. -/
def SieveEvidenceTheoryVersion.soundOnly
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    (soundness : SieveSoundness procedure)
    (version : ArtifactRef .sieveEvidenceTheory) :
    SieveEvidenceTheoryVersion (some soundness) none where
  version := version
  terminationEvidence := none
  nonemptyLawInventory := Or.inl rfl

/--
An optional, separately proved factorization-closure claim.  Merely having a
sieve or an evidence-theory version does not supply this structure.
-/
structure SieveClosureClaim
    {Coordinate : Type uCoordinate}
    (specification : SieveSpecification Coordinate) where
  claimArtifact : ArtifactRef .sieveClosureClaim
  proofArtifact : ArtifactRef .theoremProof
  furtherFactor : Coordinate → Coordinate → Coordinate → Prop
  acceptedFactorizationClosed :
    ∀ source intermediate target,
      specification.accepts source intermediate →
      furtherFactor source intermediate target →
        specification.accepts source target

/-- Result artifact, separate from the execution event that produced it. -/
structure SieveEvaluationResult
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    (procedure : SieveProcedure specification)
    (left right : Coordinate) where
  resultArtifact : ArtifactRef .sieveResult
  decision : SieveDecision
  resultMatches : decision = procedure.evaluate left right

/-- One exact execution event referring to one exact result. -/
structure SieveEvaluation
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    (procedure : SieveProcedure specification)
    (left right : Coordinate) where
  evaluationEvent : ArtifactRef .sieveEvaluation
  result : SieveEvaluationResult procedure left right

/-- Certification of one accepted evaluation under exact soundness evidence. -/
structure SieveWitness
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    (soundness : SieveSoundness procedure)
    {left right : Coordinate}
    (evaluation : SieveEvaluation procedure left right) where
  witnessArtifact : ArtifactRef .sieveWitness
  accepted : evaluation.result.decision = .Accepted

/-- Constraint-to-extensional-sieve preservation, independent of execution. -/
structure ConstraintSieveBridge
    {Coordinate : Type uCoordinate}
    (constraint : BinaryConstraint Coordinate)
    (specification : SieveSpecification Coordinate) where
  version : ArtifactRef .constraintSieveBridge
  proofArtifact : ArtifactRef .theoremProof
  certifiedAcceptance :
    ∀ left right,
      constraint.holds left right → specification.accepts left right

/-- Explicit sieve converse; it is not inferred from soundness/completeness. -/
structure SieveReflection
    {Coordinate : Type uCoordinate}
    (constraint : BinaryConstraint Coordinate)
    (specification : SieveSpecification Coordinate) where
  version : ArtifactRef .sieveReflection
  reflects :
    ∀ left right,
      specification.accepts left right → constraint.holds left right

end FCRS.Transport
```
