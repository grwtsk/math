# MarkedBindingConclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bf41ee44b2df683a390e3c47870b9b2b61ba90e5efde7cea754c1824d7a9b5f",
  "kind": "structure",
  "lexical_name": "MarkedBindingConclusion",
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
  "slug": "markedbindingconclusion--02b9cd07e31c7b45cfa033af",
  "source": {
    "blob": "396666a1d4c00525d6f081576987fe906c24b8b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02b9cd07e31c7b45cfa033af4edec89692299a58991f7851773250f9a9fb38fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bf41ee44b2df683a390e3c47870b9b2b61ba90e5efde7cea754c1824d7a9b5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MarkedBindingConclusion
    (point : MarkedRhetoricalRealization)
    (obligation : RepositoryObligation)
    (bindingAt : RecordId → Option EvidenceBinding) : Prop where
  repositorySnapshotBound : point.repositorySnapshot = obligation.repositorySnapshot
  profileBound : point.profile = obligation.profile
  obligationBound : point.obligation = obligation.id
  artifactBound : point.artifact = obligation.artifact
  spanBound : point.sourceSpan = obligation.sourceSpan
  spanContentPresent : point.sourceSpan.contentHash.IsPresent
  terminalDispositionRequired : obligation.requiresTerminalDisposition = true
  obligationScopePresent : obligation.scope ≠ ""
  markingPresent : point.marking ≠ ""
  coordinateProfileBound : point.coordinates.profile = point.profile
  coordinateObligationBound : point.coordinates.obligation = point.obligation
  coordinateArtifactBound : point.coordinates.artifact = point.artifact
  coordinateSpanBound : point.coordinates.sourceSpan = point.sourceSpan
  coordinateRoleBound : point.coordinates.artifactRole = obligation.artifactRole
  coordinateKindBound : point.coordinates.claimKind = obligation.kind
  coordinateModalityBound : point.coordinates.modality = obligation.modality
  coordinateScopeBound : point.coordinates.scope = obligation.scope
  coordinateVersionBound : point.coordinates.version = obligation.versionContext
  coordinateAuthorityBound : point.coordinates.authorityStatus = obligation.authorityContext
  admittedBindingExact :
    match point.admittedBinding with
    | none => True
    | some bindingId =>
        ∃ binding,
          bindingAt bindingId = some binding ∧
          binding.id = bindingId ∧
          binding.sourceObligation = point.obligation ∧
          binding.profile = point.profile ∧
          binding.admissionStatus = .admitted ∧
          binding.NonEscalating

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396666a1d4c00525d6f081576987fe906c24b8b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
