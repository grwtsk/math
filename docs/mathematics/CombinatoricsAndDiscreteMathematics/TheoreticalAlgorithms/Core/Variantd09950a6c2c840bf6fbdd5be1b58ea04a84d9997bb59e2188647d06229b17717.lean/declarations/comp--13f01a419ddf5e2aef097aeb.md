# comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddada4ce2517b89ad9e2b1b1809bb7d3cb547d582090fb0c57aa38d329632285",
  "kind": "def",
  "lexical_name": "comp",
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
  "slug": "comp--13f01a419ddf5e2aef097aeb",
  "source": {
    "blob": "6c806c7b8e61ea23f40355751171c0dbeef12e2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13f01a419ddf5e2aef097aeb65fbe0599135d163ecff0c4c039b251aa27897df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddada4ce2517b89ad9e2b1b1809bb7d3cb547d582090fb0c57aa38d329632285`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def comp
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    (first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope)
    (second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope)
    (composedQuantifierMapEvidence : QuantifierSpecifiedMapEvidence source target
      (fun object => second.mapObject (first.mapObject object))) :
    Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope where
  artifact := VersionId.composite first.artifact second.artifact
  lineage := .uninstantiatedComposite first.lineage second.lineage
  lineageArtifactExact := by
    simp only [TranslationLineage.rootArtifact]
    rw [first.lineageArtifactExact, second.lineageArtifactExact]
  foundationInterpretation :=
    first.foundationInterpretation.comp second.foundationInterpretation
  mapObject := fun object => second.mapObject (first.mapObject object)
  mapProposition := fun proposition =>
    second.mapProposition (first.mapProposition proposition)
  assumptionTranslation := {
    artifact := VersionId.composite
      first.assumptionTranslation.artifact
      second.assumptionTranslation.artifact
    mapIndex := fun index =>
      second.assumptionTranslation.mapIndex
        (first.assumptionTranslation.mapIndex index)
    propositionExact := fun index =>
      Eq.trans
        (congrArg second.mapProposition
          (first.assumptionTranslation.propositionExact index))
          (second.assumptionTranslation.propositionExact
            (first.assumptionTranslation.mapIndex index))
  }
  targetAssumptionPartition := {
    classify := fun targetIndex =>
      match second.targetAssumptionPartition.classify targetIndex with
      | .mapped secondMapped =>
          match first.targetAssumptionPartition.classify
              secondMapped.sourceIndex with
          | .mapped firstMapped =>
              .mapped {
                sourceIndex := firstMapped.sourceIndex
                targetIndexExact := secondMapped.targetIndexExact.trans
                  (congrArg second.assumptionTranslation.mapIndex
                    firstMapped.targetIndexExact)
              }
          | .introduced firstIntroduction =>
              .introduced {
                artifact := VersionId.composite firstIntroduction.artifact
                  second.assumptionTranslation.artifact
                evidenceArtifacts := firstIntroduction.evidenceArtifacts ++
                  [second.assumptionTranslation.artifact]
                evidenceNonempty := by simp
              }
          | .discharged firstDischarge =>
              .introduced {
                artifact := VersionId.composite firstDischarge.artifact
                  second.assumptionTranslation.artifact
                evidenceArtifacts := [firstDischarge.artifact,
                  second.assumptionTranslation.artifact]
                evidenceNonempty := by simp
              }
      | .introduced secondIntroduction =>
          .introduced secondIntroduction
      | .discharged secondDischarge =>
          .discharged secondDischarge
  }
  scopeTranslation := {
    mapsScope := by
      intro object hObject
      exact second.scopeTranslation.mapsScope _
        (first.scopeTranslation.mapsScope object hObject)
  }
  propositionScopeTranslation := by
    intro proposition sourceInScope
    exact second.propositionScopeTranslation _
      (first.propositionScopeTranslation proposition sourceInScope)
  quantifierTransform := {
    artifact := VersionId.composite
      first.quantifierTransform.artifact second.quantifierTransform.artifact
    sourceProfile := first.quantifierTransform.sourceProfile
    targetProfile := second.quantifierTransform.targetProfile
    profileExact := by
      calc
        first.quantifierTransform.sourceProfile =
            first.quantifierTransform.targetProfile :=
          first.quantifierTransform.profileExact
        _ = middleVersion.quantifierProfile := first.quantifierTargetExact
        _ = second.quantifierTransform.sourceProfile :=
          second.quantifierSourceExact.symm
        _ = second.quantifierTransform.targetProfile :=
          second.quantifierTransform.profileExact
    unspecifiedCompatibility :=
      QuantifierUnspecifiedCompatibility.comp
        first.quantifierTransform.profileExact
        (first.quantifierTargetExact.trans
          second.quantifierSourceExact.symm)
        second.quantifierTransform.profileExact
        first.quantifierTransform.unspecifiedCompatibility
        second.quantifierTransform.unspecifiedCompatibility
        composedQuantifierMapEvidence
        [first.quantifierTransform.artifact, second.quantifierTransform.artifact]
        (by simp)
  }
  quantifierSourceExact := first.quantifierSourceExact
  quantifierTargetExact := second.quantifierTargetExact
  informationLoss := first.informationLoss ++ second.informationLoss
  informationLossNonempty := by
    intro hEmpty
    have lengths := congrArg List.length hEmpty
    have parts : first.informationLoss = [] ∧ second.informationLoss = [] := by
      simpa using lengths
    exact first.informationLossNonempty parts.1
  canonicality := first.canonicality ++ second.canonicality

end Translation

/-- A theorem artifact, proof, and proposition indexed by one theory version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c806c7b8e61ea23f40355751171c0dbeef12e2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
