# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.FCRSTransport.Variantd29ee5b5f2af5be11022ea9d8841c69c01ce0632a6ca29361a6e2436cbcd6e95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88dda3e7c127f364089cfa38c55a19c98e781d41` · SHA-256 `364cae52b0580a0dc219ef10e60f1d5cb9054ad2e54f3e7f49dca1e6b8792505`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.TypedArtifactVersion.Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.TypedArtifactVersion.Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810","mathematical_subject":"Logic.ModelTheory","original_sha256":"bb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/TheoremTransfer/Adapters/FCRSTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Core
import FCRS.Transport.Theorem

/-!
Adapter from the existing `FCRS.Transport` interval-profile layer into the
domain-neutral theorem-transfer kernel.

An exact profile becomes a theory whose proposition type is its input type and
whose indexed semantics are `ProfileClaimAt profile input`. `ProfileRefines`
supplies pointwise forward preservation; no reflection or equivalence is
manufactured.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.TypedArtifactVersion.Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810

namespace FCRS.TheoremTransfer.Adapters.FCRSTransport

open FCRS.Transport

universe uInput uWitness

/-- Role-indexed conversion of an existing nominal artifact reference. -/
structure TypedArtifactVersion (kind : ArtifactKind) where
  identity : VersionId
deriving Repr, DecidableEq

/-- Stable, injective code for every closed predecessor artifact role. -/
def artifactKindCode : ArtifactKind → Nat
  | .intervalProfile => 0
  | .domainPredicate => 1
  | .endpointFunction => 2
  | .assumptionSet => 3
  | .theoremProof => 4
  | .theoremArtifact => 5
  | .formalDeclaration => 6
  | .kernelBuildEvidence => 7
  | .normalizationAdapter => 8
  | .theoremApplication => 9
  | .existenceEvidence => 10
  | .selectionMethod => 11
  | .selectionEvent => 12
  | .arithmeticWitness => 13
  | .coordinateSystem => 14
  | .coordinateDenotation => 15
  | .coordinateConstraint => 16
  | .binaryInterpretation => 17
  | .interpretationBridge => 18
  | .interpretationReflection => 19
  | .interpretationEvent => 20
  | .constraintEvidence => 21
  | .sieveSpecification => 22
  | .sieveProcedure => 23
  | .sieveEvidenceTheory => 24
  | .sieveClosureClaim => 25
  | .sieveSoundness => 26
  | .sieveCompleteness => 27
  | .sieveTermination => 28
  | .sieveEvaluation => 29
  | .sieveResult => 30
  | .sieveWitness => 31
  | .constraintSieveBridge => 32
  | .sieveReflection => 33
  | .graphVersion => 34
  | .vertexOccurrence => 35
  | .edgeOccurrence => 36
  | .realizationRule => 37
  | .realizationEvent => 38
  | .realizationRecord => 39
  | .realizationReflection => 40
  | .graphPropertySchema => 41
  | .graphConsequence => 42
  | .consequenceProof => 43
  | .graphInvariant => 44
  | .isomorphismWitness => 45
  | .intensionalSemantics => 46
  | .theoremDerivedEdgeDeclaration => 47
  | .transportDerivation => 48
  | .validationExecution => 49
  | .validationResult => 50
  | .acceptanceDecision => 51
  | .agent => 52
  | .commitmentReason => 53
  | .commitmentAdoptionEvent => 54
  | .commitmentSupersessionEvent => 55
  | .commitmentWithdrawalEvent => 56
  | .operationalCommitment => 57

/-- Conversion preserves the predecessor artifact kind in type and identity. -/
def versionOfArtifact
    {kind : ArtifactKind} (artifact : ArtifactRef kind) :
    TypedArtifactVersion kind :=
  ⟨.roleTagged "FCRS.Transport.ArtifactKind" (artifactKindCode kind)
    (.atomic {
      authority := artifact.authority
      localName := artifact.localName
      version := artifact.version
      digest := artifact.digest
    })⟩

/-- Boundary projection retains a structural role tag in the universal ID. -/
def eraseArtifactVersion
    {kind : ArtifactKind} (artifact : ArtifactRef kind) : VersionId :=
  (versionOfArtifact artifact).identity

/-- Proof and graph references cannot alias even when all nominal fields agree. -/
theorem proof_graph_projection_distinct
    (proof : ArtifactRef .theoremProof)
    (graph : ArtifactRef .graphVersion) :
    eraseArtifactVersion proof ≠ eraseArtifactVersion graph := by
  intro equality
  cases equality

/-- Exact Lean foundation used by this adapter. -/
def leanFoundation : Foundation where
  identity := .atomic ⟨"https://w3id.org/reflexive", "lean-dependent-type-theory",
    "4.32.2", "sha256:lean4-v4.32.2"⟩
  kind := .DependentTypeTheory

/-- Exact one-input specialization of a profile's global interval claim. -/
def ProfileClaimAt
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) (input : Input) : Prop :=
  profile.domain input → ∃ witness, profile.admissible input witness

/-- One profile is one exact semantic theory instance. -/
def profileTheory
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) : Theory where
  Object := Input
  Proposition := Input
  Holds := ProfileClaimAt profile
  ProofObject := fun input => PLift (ProfileClaimAt profile input)
  proofObjectSound := fun proof => proof.down
  reifyProofObject := fun proof => ⟨proof⟩
  propositionSupport := fun input => .nonempty input []
  propositionProperty := fun input _ => ProfileClaimAt profile input

/--
Shared explicit unrestricted quantifier metadata for the profile adapter
family.  No axis is omitted behind `Unspecified`; unrestricted cardinality is
an affirmative regime rather than an unknown one.
-/
def neutralQuantifierProfile : QuantifierProfile :=
  {
    artifact := .atomic
      ⟨"https://w3id.org/reflexive", "fcrs-profile-quantifier-profile",
        "1.0.0", "sha256:fcrs-profile-quantifier-profile-v1"⟩
    cardinality := .Unrestricted
    scalarDomain := .Other
    geometry := .Discrete
    coverage := .Global
    uniformity := .Pointwise
    measureScope := .Everywhere
    existence := .Propositional
    boundedness := .Unbounded
    compactness := .Noncompact
  }

/-- Version record derived from the exact profile and its theorem metadata. -/
def profileTheoryVersion
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) :
    MathematicalTheoryVersion (profileTheory profile) leanFoundation where
  artifact := eraseArtifactVersion profile.version
  theoryIdentity := ⟨profile.version.authority, profile.version.localName⟩
  signatureVersion := eraseArtifactVersion profile.version
  axiomSetVersion := eraseArtifactVersion profile.assumptionSet
  definitionSetVersion := eraseArtifactVersion profile.domainVersion
  importedTheoryVersions := []
  semanticRegime := "FCRS.Transport.IntervalClaim"
  quantifierProfile := neutralQuantifierProfile
  formalizationArtifactVersion := eraseArtifactVersion profile.sourceTheorem
  releaseStatus := .Released
  provenance := [
    eraseArtifactVersion profile.sourceTheorem,
    eraseArtifactVersion profile.lowerVersion,
    eraseArtifactVersion profile.upperVersion
  ]

/-- The existing profile's assumption artifact indexes an explicitly empty set. -/
def profileAssumptions
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) :
    AssumptionSet (profileTheory profile) :=
  AssumptionSet.empty.{uInput, uInput, 0} _
    (eraseArtifactVersion profile.assumptionSet)

/-- Profile transport is universally object-scoped; domain coverage is in the bridge. -/
def profileScope
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) :
    TransferScope (profileTheory profile) :=
  TransferScope.universal _ (eraseArtifactVersion profile.domainVersion)

/-- The exact generic translation induced by an existing refinement adapter. -/
def profileRefinementTranslation
    {Input : Type uInput} {Witness : Type uWitness}
    {refined broader : IntervalProfile Input Witness}
    (adapter : ProfileRefines refined broader) :
    Translation (profileTheory refined) (profileTheory broader)
      (profileTheoryVersion refined) (profileTheoryVersion broader)
      (profileAssumptions refined) (profileAssumptions broader)
      (profileScope refined) (profileScope broader) where
  artifact := eraseArtifactVersion adapter.adapterArtifact
  lineage := .atomic (eraseArtifactVersion adapter.adapterArtifact)
  lineageArtifactExact := rfl
  foundationInterpretation := FoundationInterpretation.identity
    leanFoundation (eraseArtifactVersion adapter.proofArtifact)
  mapObject := fun input => input
  mapProposition := fun proposition => proposition
  assumptionTranslation := {
    artifact := eraseArtifactVersion adapter.comparisonScope
    mapIndex := fun index => nomatch index.down
    propositionExact := by
      intro index
      exact nomatch index.down
  }
  targetAssumptionPartition := {
    classify := fun index => nomatch index.down
  }
  scopeTranslation := {
    mapsScope := by
      intro _ _
      trivial
  }
  propositionScopeTranslation := by
    intro _ _
    exact ⟨True.intro, by intros; trivial⟩
  quantifierTransform := {
    artifact := eraseArtifactVersion adapter.proofArtifact
    sourceProfile := neutralQuantifierProfile
    targetProfile := neutralQuantifierProfile
    profileExact := rfl
    unspecifiedCompatibility := .fullySpecified
      (by simp [neutralQuantifierProfile, QuantifierProfile.HasUnspecified])
      (by simp [neutralQuantifierProfile, QuantifierProfile.HasUnspecified])
      (.carrierEquivalent (QuantifierCarrierEquivalence.refl Input) rfl)
      [eraseArtifactVersion adapter.proofArtifact]
      (by simp)
  }
  quantifierSourceExact := rfl
  quantifierTargetExact := rfl
  informationLoss := [{
    artifact := eraseArtifactVersion adapter.proofArtifact
    classification := .UnknownInformationLoss
    declaredScope := "ProfileRefines comparison scope"
    forgottenInformation := [
      "ProfileRefines supplies forward preservation but no reflection law"
    ]
    assessmentArtifact := eraseArtifactVersion adapter.proofArtifact
  }]
  informationLossNonempty := by simp
  canonicality := [{
    artifact := eraseArtifactVersion adapter.adapterArtifact
    canonicality := .Canonical
    conclusionDependence := .ChoiceIndependent
  }]

/-- `ProfileRefines` supplies the pointwise laws used by this preservation theorem. -/
theorem profileRefinementPreserves
    {Input : Type uInput} {Witness : Type uWitness}
    {refined broader : IntervalProfile Input Witness}
    (adapter : ProfileRefines refined broader) :
    PreservesTruth (profileRefinementTranslation adapter) := by
  refine { sound := ?_ }
  intro input _sourceInScope sourceProof _targetAssumptions
  intro broaderDomain
  obtain ⟨witness, admissible⟩ :=
    sourceProof (AssumptionSet.empty_holds _ _)
      (adapter.domainCoverage input broaderDomain)
  exact ⟨witness,
    adapter.admissiblePreserved input witness broaderDomain admissible⟩

/-- Artifact-bearing preservation wrapper for generic derivations. -/
def profileRefinementPreservation
    {Input : Type uInput} {Witness : Type uWitness}
    {refined broader : IntervalProfile Input Witness}
    (adapter : ProfileRefines refined broader) :
    PreservationTheorem (profileRefinementTranslation adapter) where
  evidenceArtifact := eraseArtifactVersion adapter.proofArtifact
  law := profileRefinementPreserves adapter

/-- Existing certified theorem data becomes an exact generic theorem artifact. -/
def certifiedIntervalTheorem
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    (certified : CertifiedIntervalTheorem profile)
    (input : Input) :
    CertifiedTheorem (profileTheoryVersion profile)
      (profileAssumptions profile) where
  theoremArtifact := eraseArtifactVersion certified.theoremArtifact
  propositionArtifact := eraseArtifactVersion certified.formalDeclaration
  proofArtifact := eraseArtifactVersion certified.proofArtifact
  proposition := input
  proofObject := fun _ => ⟨certified.claim input⟩

/-- Canonical generic target theorem produced by the existing refinement. -/
def transportCertifiedIntervalTheorem
    {Input : Type uInput} {Witness : Type uWitness}
    {refined broader : IntervalProfile Input Witness}
    (adapter : ProfileRefines refined broader)
    (certified : CertifiedIntervalTheorem refined)
    (input : Input) :
    CertifiedTheorem (profileTheoryVersion broader)
      (profileAssumptions broader) :=
  transport_theorem
    (profileRefinementTranslation adapter)
    (profileRefinementPreservation adapter)
    (certifiedIntervalTheorem certified input)
    ⟨True.intro, by intros; trivial⟩

end FCRS.TheoremTransfer.Adapters.FCRSTransport
```
