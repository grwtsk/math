# MultiSourceTheoremTransferDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f909b3573b2c0569816f33e3f48840683c5ed2b4ff57a358834232baa7db34bb",
  "kind": "structure",
  "lexical_name": "MultiSourceTheoremTransferDerivation",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "multisourcetheoremtransferderivation--0f253ac91cb6b2e313e4395d",
  "source": {
    "blob": "7aed9cf8c44c5b20dbd74facbb00a3769ee52e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 628,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f253ac91cb6b2e313e4395dda1719f5a884f2af7d8e4828aa5e23d0fd7b300c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f909b3573b2c0569816f33e3f48840683c5ed2b4ff57a358834232baa7db34bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MultiSourceTheoremTransferDerivation
    {target : Theory.{uTO, uTP}}
    {targetFoundation : Foundation}
    (targetVersion : MathematicalTheoryVersion target targetFoundation)
    (targetAssumptions : AssumptionSet.{uTargetAssumption} target)
    (targetScope : TransferScope target) where
  derivationArtifact : VersionId

  SourceIndex : Type uNode
  sourceHasFanIn : ∃ left right : SourceIndex, left ≠ right
  sourceTheory : SourceIndex → Theory.{uSO, uSP}
  sourceFoundation : SourceIndex → Foundation
  sourceVersion : ∀ index,
    MathematicalTheoryVersion (sourceTheory index) (sourceFoundation index)
  sourceAssumptions : ∀ index,
    AssumptionSet.{uSourceAssumption} (sourceTheory index)
  sourceScope : ∀ index, TransferScope (sourceTheory index)
  sourceTheorem : ∀ index,
    CertifiedTheorem (sourceVersion index) (sourceAssumptions index)
  sourcePropositionInScope : ∀ index,
    PropositionWithinScope (sourceTheory index) (sourceScope index)
      (sourceTheorem index).proposition

  SourceObjectIndex : SourceIndex → Type uSourceObject
  sourceObjectIndexNonempty : ∀ index, Nonempty (SourceObjectIndex index)
  sourceObjectInstance : ∀ index,
    SourceObjectIndex index → (sourceTheory index).Object
  sourceObjectInScope : ∀ index objectIndex,
    (sourceScope index).contains (sourceObjectInstance index objectIndex)

  SourceWitnessIndex : SourceIndex → Type uSourceWitness
  sourceWitnessIndexNonempty : ∀ index, Nonempty (SourceWitnessIndex index)
  sourceWitnessInstance : ∀ index,
    SourceWitnessIndex index → (sourceTheory index).Object
  sourceWitnessInScope : ∀ index witnessIndex,
    (sourceScope index).contains (sourceWitnessInstance index witnessIndex)

  translation : ∀ index,
    Translation (sourceTheory index) target
      (sourceVersion index) targetVersion
      (sourceAssumptions index) targetAssumptions
      (sourceScope index) targetScope
  translationApplicationEvent : SourceIndex → VersionId
  translatedObject : ∀ index,
    SourceObjectIndex index → target.Object
  translatedObjectExact : ∀ index objectIndex,
    translatedObject index objectIndex =
      (translation index).mapObject (sourceObjectInstance index objectIndex)
  translationEvidenceArtifacts : SourceIndex → List VersionId
  translationEvidenceNonempty : ∀ index,
    translationEvidenceArtifacts index ≠ []
  preservation : ∀ index, PreservationTheorem (translation index)
  reflection : ∀ index, Option (ReflectionTheorem (translation index))

  TargetObjectIndex : Type uTargetObject
  targetObjectIndexNonempty : Nonempty TargetObjectIndex
  targetObject : TargetObjectIndex → target.Object
  targetObjectInScope : ∀ index, targetScope.contains (targetObject index)

  targetProposition : target.Proposition
  targetPropositionInScope :
    PropositionWithinScope target targetScope targetProposition
  jointInferenceArtifact : VersionId
  jointInferenceExpression : MultiSourceInferenceExpression SourceIndex
    (fun index =>
      (translation index).mapProposition (sourceTheorem index).proposition)
    targetProposition
  targetEvidenceArtifacts : List VersionId
  targetEvidenceNonempty : targetEvidenceArtifacts ≠ []
  derivedTheorem : CertifiedTheorem targetVersion targetAssumptions
  derivedPropositionExact : derivedTheorem.proposition = targetProposition
  derivedProofObjectExact : ∀ targetAssumptionsHold,
    Eq.mp (congrArg target.ProofObject derivedPropositionExact)
      (derivedTheorem.proofObject targetAssumptionsHold) =
      jointInferenceExpression.interpret (fun index =>
        target.reifyProofObject
          ((preservation index).law.sound
            (sourceTheorem index).proposition
            (sourcePropositionInScope index)
            (sourceTheorem index).proof
            targetAssumptionsHold))

  dependencyGraph : TransferDependencyGraph.{uNode}
  sourceNode : SourceIndex → dependencyGraph.Node
  sourceNodeInjective : Function.Injective sourceNode
  targetNode : dependencyGraph.Node
  sourceLeafDependency : ∀ index,
    MultiSourceLeafDependency jointInferenceExpression dependencyGraph
      sourceNode targetNode index
  sourceTheoryVersionExact : ∀ index,
    (dependencyGraph.node (sourceNode index)).theoryVersionArtifact.identity =
      (sourceVersion index).artifact
  sourceTheoremArtifactExact : ∀ index,
    (dependencyGraph.node (sourceNode index)).theoremArtifact =
      some ⟨(sourceTheorem index).theoremArtifact⟩
  sourcePropositionArtifactExact : ∀ index,
    (dependencyGraph.node (sourceNode index)).propositionArtifact =
      some ⟨(sourceTheorem index).propositionArtifact⟩
  targetTheoryVersionExact :
    (dependencyGraph.node targetNode).theoryVersionArtifact.identity =
      targetVersion.artifact
  targetTheoremArtifactExact :
    (dependencyGraph.node targetNode).theoremArtifact =
      some ⟨derivedTheorem.theoremArtifact⟩
  targetPropositionArtifactExact :
    (dependencyGraph.node targetNode).propositionArtifact =
      some ⟨derivedTheorem.propositionArtifact⟩
  edgeKindExact : ∀ index,
    (dependencyGraph.edge (sourceLeafDependency index).dependency).kind = .Preserves
  bridgeArtifactExact : ∀ index,
    (dependencyGraph.edge (sourceLeafDependency index).dependency).bridgeArtifact =
      (translation index).artifact
  evidenceArtifactExact : ∀ index,
    (dependencyGraph.edge (sourceLeafDependency index).dependency).evidenceArtifact =
      (preservation index).evidenceArtifact

  declaredInformationLoss : SourceIndex → List InformationLossProfile
  informationLossExact : ∀ index,
    declaredInformationLoss index = (translation index).informationLoss
  informationLossAssessment : ∀ index profile,
    profile ∈ declaredInformationLoss index →
      @InformationLossAssessment
        (sourceTheory index) target
        (sourceFoundation index) targetFoundation
        (sourceVersion index) targetVersion
        (sourceAssumptions index) targetAssumptions
        (sourceScope index) targetScope
        (translation index) profile
  equivalenceRegime : Option (EquivalenceRegime target)

  validationLifecycle : TransferLifecycleLedger
  operationalAdoption : TransferOperationalAdoption
  completenessAssertions : List TransferCompletenessAssertion
  completenessAssertionsNonempty : completenessAssertions ≠ []
  auditRecords : List TransferAuditRecord
  auditRecordsNonempty : auditRecords ≠ []

namespace MultiSourceTheoremTransferDerivation

/-- Every multi-source aggregate has two distinct dependency nodes into one target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aed9cf8c44c5b20dbd74facbb00a3769ee52e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
