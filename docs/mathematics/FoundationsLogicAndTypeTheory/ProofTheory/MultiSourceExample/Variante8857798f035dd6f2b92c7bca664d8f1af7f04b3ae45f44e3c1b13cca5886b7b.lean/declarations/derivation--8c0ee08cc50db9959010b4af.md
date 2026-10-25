# derivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52336f25659753e826365978341f6b3fbbf3f358a2d3e10b1200a9866fe22c4f",
  "kind": "def",
  "lexical_name": "derivation",
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
  "slug": "derivation--8c0ee08cc50db9959010b4af",
  "source": {
    "blob": "ac2afd2a94950a8c5ac07d817908762231a5f4cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 297,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c0ee08cc50db9959010b4afbb48788b8113d50d8a4094c8a710d72985c0f779",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52336f25659753e826365978341f6b3fbbf3f358a2d3e10b1200a9866fe22c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derivation : MultiSourceTheoremTransferDerivation
    targetVersion targetAssumptions targetScope where
  derivationArtifact := version "fan-in-derivation"
  SourceIndex := Bool
  sourceHasFanIn := ⟨false, true, by decide⟩
  sourceTheory := sourceTheory
  sourceFoundation := fun _ => foundation
  sourceVersion := sourceVersion
  sourceAssumptions := sourceAssumptions
  sourceScope := sourceScope
  sourceTheorem := sourceTheorem
  sourcePropositionInScope := by
    intro index
    cases index <;>
      simp [PropositionWithinScope, sourceTheory, sourceTheorem,
        propositionTheory, sourceScope, TransferScope.universal,
        PropositionSupport.Within]
  SourceObjectIndex := fun _ => Unit
  sourceObjectIndexNonempty := fun _ => ⟨()⟩
  sourceObjectInstance := fun index _ => sourceObject index
  sourceObjectInScope := by intros; trivial
  SourceWitnessIndex := fun _ => Unit
  sourceWitnessIndexNonempty := fun _ => ⟨()⟩
  sourceWitnessInstance := fun index _ => sourceObject index
  sourceWitnessInScope := by intros; trivial
  translation := sourceTranslation
  translationApplicationEvent := fun index => version (if index then
    "right-translation-application" else "left-translation-application")
  translatedObject := fun _ _ => ()
  translatedObjectExact := by intros; rfl
  translationEvidenceArtifacts := fun index => [
    (sourceTranslation index).artifact,
    (sourcePreservation index).evidenceArtifact]
  translationEvidenceNonempty := by intros; simp
  preservation := sourcePreservation
  reflection := fun _ => none
  TargetObjectIndex := Unit
  targetObjectIndexNonempty := ⟨()⟩
  targetObject := fun _ => ()
  targetObjectInScope := by intros; trivial
  targetProposition := True ∧ True
  targetPropositionInScope := by
    simp [PropositionWithinScope, targetTheory, propositionTheory,
      targetScope, TransferScope.universal, PropositionSupport.Within]
  jointInferenceArtifact := version "joint-inference"
  jointInferenceExpression := jointInferenceExpression
  targetEvidenceArtifacts := [targetTheorem.proofArtifact,
    version "joint-inference"]
  targetEvidenceNonempty := by simp
  derivedTheorem := targetTheorem
  derivedPropositionExact := rfl
  derivedProofObjectExact := by intros; rfl
  dependencyGraph := dependencyGraph
  sourceNode := .source
  sourceNodeInjective := by intro left right equality; cases equality; rfl
  targetNode := .target
  sourceLeafDependency := fun index => {
    expressionUsesSource := ⟨index, rfl⟩
    dependency := match index with
      | false => .left
      | true => .right
  }
  sourceTheoryVersionExact := by intro index; cases index <;> rfl
  sourceTheoremArtifactExact := by intro index; cases index <;> rfl
  sourcePropositionArtifactExact := by intro index; cases index <;> rfl
  targetTheoryVersionExact := rfl
  targetTheoremArtifactExact := rfl
  targetPropositionArtifactExact := rfl
  edgeKindExact := by intro index; cases index <;> rfl
  bridgeArtifactExact := by intro index; cases index <;> rfl
  evidenceArtifactExact := by intro index; cases index <;> rfl
  declaredInformationLoss := fun index => (sourceTranslation index).informationLoss
  informationLossExact := by intros; rfl
  informationLossAssessment := by
    intro _ profile _membership
    exact .declaredMetadata profile
  equivalenceRegime := none
  validationLifecycle := {
    ledgerArtifact := version "fan-in-validation-lifecycle"
    states := [.Draft, .StructurallyValidated]
    statesNonempty := by simp
    evidenceArtifacts := [version "fan-in-node-validation"]
    evidenceNonempty := by simp
  }
  operationalAdoption := {
    adoptionArtifact := version "fan-in-operational-adoption"
    status := .NotAdopted
    evidenceArtifacts := [version "fan-in-not-adopted-record"]
    evidenceNonempty := by simp
  }
  completenessAssertions := [{
    assertionArtifact := version "fan-in-completeness"
    assertedScope := "the two declared source indices and their target"
    coverageCriterion := "both source dependencies are retained"
    status := .VerifiedForDeclaredFiniteInventory
    evidenceArtifacts := [version "fan-in-completeness-proof"]
    evidenceNonempty := by simp
    knownOmissions := []
  }]
  completenessAssertionsNonempty := by simp
  auditRecords := [{
    auditArtifact := version "fan-in-audit"
    status := .Resolved
    evidenceArtifacts := [version "fan-in-audit-evidence"]
    evidenceNonempty := by simp
    residualRisk := none
  }]
  auditRecordsNonempty := by simp

/-- Positive lock: the concrete value exposes two distinct incoming dependencies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac2afd2a94950a8c5ac07d817908762231a5f4cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
