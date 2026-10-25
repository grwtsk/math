# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NegativeChecks.Variant4b958e49004b933399d2f5f2ec40cd98bc33c09d95fdcbadb12cdeec31dd5a9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48b903e0a6e6ceaa512948ba4312cc66d5c5a08c` · SHA-256 `4cb3374c1e764278b7d065456194f3195e607a2ba849eb7f215aa1b958de17b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Derivation.Variantb222a06abe7f22f6b8a84a8fedd92937aadd20e0d9090015b0c73e54a0bb0c02","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b222a06abe7f22f6b8a84a8fedd92937aadd20e0d9090015b0c73e54a0bb0c02","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Derivation.Variantb222a06abe7f22f6b8a84a8fedd92937aadd20e0d9090015b0c73e54a0bb0c02","mathematical_subject":"Foundations.Unclassified","original_sha256":"b222a06abe7f22f6b8a84a8fedd92937aadd20e0d9090015b0c73e54a0bb0c02","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/NegativeChecks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Derivation

/-!
Kernel-checked negative fixtures for temporal commitment integrity.

Each `fail_if_success` block succeeds only when the forbidden construction is
rejected by elaboration.  These checks exercise the same types retained by
`TransportDerivation.operationalCommitment`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Derivation.Variantb222a06abe7f22f6b8a84a8fedd92937aadd20e0d9090015b0c73e54a0bb0c02

namespace FCRS.Transport.NegativeChecks

universe uCoordinate

/-!
These projection checks are kernel-elaborated positive fixtures: the result of
TT-08/TT-12 carries equalities for the full selected witness, every stage
artifact, and each dependent lifecycle value.  They would not elaborate if
the arguments were merely consumed opaquely during construction.
-/

#check TransportDerivationRetains.theoremApplicationArtifactExact
#check TransportDerivationRetains.selectedIntervalWitnessExact
#check TransportDerivationRetains.interpretationEventArtifactExact
#check TransportDerivationRetains.sourceDenotationArtifactExact
#check TransportDerivationRetains.sieveEvaluationEventExact
#check TransportDerivationRetains.realizationEventArtifactExact
#check TransportDerivationRetains.validationResultArtifactExact
#check TransportDerivationRetains.adoptionEventExact
#check TransportDerivationRetains.predecessorCommitmentExact
#check TransportDerivationRetains.commitmentStateExact
#check ProfileRefines.transportClaim
#check ReflectiveRecoveryProvenance.occurrenceExact
#check ReflectiveRecoveryProvenance.declarationExact
#check SieveEvidenceTheoryVersion.soundOnly

/-- Unlabeled isomorphism is sufficient for a purely structural consequence. -/
example :
    IsomorphismRegime.Unlabeled.supports GraphPropertySensitivity.Structural := by
  trivial

/-- An unlabeled regime cannot justify preservation of a label-sensitive consequence. -/
example : True := by
  fail_if_success
    exact
      (by trivial :
        IsomorphismRegime.Unlabeled.supports GraphPropertySensitivity.LabelSensitive)
  trivial

/-- Soundness is independently representable without completeness. -/
example
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    (soundness : SieveSoundness procedure)
    (version : ArtifactRef .sieveEvidenceTheory) :
    Nonempty (SieveEvidenceTheoryVersion (some soundness) none) :=
  ⟨SieveEvidenceTheoryVersion.soundOnly soundness version⟩

/--
Factorization closure is independently constructible from its own proof over
the extensional specification; no procedure, soundness, completeness, or
evidence-theory value is an argument.
-/
example
    {Coordinate : Type uCoordinate}
    (specification : SieveSpecification Coordinate)
    (claimArtifact : ArtifactRef .sieveClosureClaim)
    (proofArtifact : ArtifactRef .theoremProof)
    (furtherFactor : Coordinate → Coordinate → Coordinate → Prop)
    (closed :
      ∀ source intermediate target,
        specification.accepts source intermediate →
        furtherFactor source intermediate target →
        specification.accepts source target) :
    Nonempty (SieveClosureClaim specification) :=
  ⟨{
    claimArtifact := claimArtifact
    proofArtifact := proofArtifact
    furtherFactor := furtherFactor
    acceptedFactorizationClosed := closed
  }⟩

/--
A theory indexed without soundness cannot fill the soundness-required theory
slot used by an accepted transport derivation, even though completeness itself
is optional.
-/
example
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    (_soundness : SieveSoundness procedure)
    (completeness : Option (SieveCompleteness procedure))
    (_theory : SieveEvidenceTheoryVersion none completeness) : True := by
  fail_if_success
    exact
      (_theory :
        SieveEvidenceTheoryVersion (some _soundness) completeness)
  trivial

/-- A theory with no soundness, completeness, or termination law cannot be built. -/
example
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    {_procedure : SieveProcedure specification}
    (_version : ArtifactRef .sieveEvidenceTheory) : True := by
  fail_if_success
    exact
      ({ version := _version
         terminationEvidence := none
         nonemptyLawInventory := by decide } :
        SieveEvidenceTheoryVersion (procedure := _procedure) none none)
  trivial

/-- A raw lexical value cannot stand in for a typed temporal instant. -/
example : True := by
  fail_if_success
    exact ("not-a-time" : TemporalInstant)
  trivial

/-- A finite half-open interval cannot be constructed with an earlier end. -/
example : True := by
  fail_if_success
    exact
      ({ effectiveFrom := ⟨10⟩
         effectiveUntil := some ⟨9⟩
         endAfterStart := by decide } : HalfOpenTemporalInterval)
  trivial

/-- Nominal stage indices prevent one retained artifact role replacing another. -/
example (_identity : TransportDerivationIdentity) : True := by
  fail_if_success
    exact
      (rfl : _identity.applicationArtifact = _identity.existenceArtifact)
  trivial

/-- A retained lifecycle state cannot be reinterpreted at another status. -/
example
    (interval : HalfOpenTemporalInterval)
    (successor : ArtifactRef .operationalCommitment)
    (_state : OperationalCommitmentState
      interval .Superseded (some successor)) : True := by
  fail_if_success
    exact
      (_state : OperationalCommitmentState interval .Adopted none)
  trivial

end FCRS.Transport.NegativeChecks
```
