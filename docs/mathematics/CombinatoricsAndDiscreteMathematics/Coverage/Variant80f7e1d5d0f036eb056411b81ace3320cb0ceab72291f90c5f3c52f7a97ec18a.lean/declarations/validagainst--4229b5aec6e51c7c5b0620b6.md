# ValidAgainst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4b094878b612d20e2dd7113edcf8d55ceaf05e2a5655ea7be1035876e042b47",
  "kind": "def",
  "lexical_name": "ValidAgainst",
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
  "slug": "validagainst--4229b5aec6e51c7c5b0620b6",
  "source": {
    "blob": "396666a1d4c00525d6f081576987fe906c24b8b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 363,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4229b5aec6e51c7c5b0620b632e72e7930720416f233fcb1518224802ffca438",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4b094878b612d20e2dd7113edcf8d55ceaf05e2a5655ea7be1035876e042b47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ValidAgainst
    (point : MarkedRhetoricalRealization)
    (obligation : RepositoryObligation)
    (bindingAt : RecordId → Option EvidenceBinding) : Prop :=
  point.repositorySnapshot = obligation.repositorySnapshot ∧
    point.profile = obligation.profile ∧
    point.obligation = obligation.id ∧
    point.artifact = obligation.artifact ∧
    point.sourceSpan = obligation.sourceSpan ∧
    point.sourceSpan.contentHash.IsPresent ∧
    obligation.requiresTerminalDisposition = true ∧
    obligation.scope ≠ "" ∧
    point.marking ≠ "" ∧
    point.coordinates.profile = point.profile ∧
    point.coordinates.obligation = point.obligation ∧
    point.coordinates.artifact = point.artifact ∧
    point.coordinates.sourceSpan = point.sourceSpan ∧
    point.coordinates.artifactRole = obligation.artifactRole ∧
    point.coordinates.claimKind = obligation.kind ∧
    point.coordinates.modality = obligation.modality ∧
    point.coordinates.scope = obligation.scope ∧
    point.coordinates.version = obligation.versionContext ∧
    point.coordinates.authorityStatus = obligation.authorityContext ∧
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

end MarkedRhetoricalRealization

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396666a1d4c00525d6f081576987fe906c24b8b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
