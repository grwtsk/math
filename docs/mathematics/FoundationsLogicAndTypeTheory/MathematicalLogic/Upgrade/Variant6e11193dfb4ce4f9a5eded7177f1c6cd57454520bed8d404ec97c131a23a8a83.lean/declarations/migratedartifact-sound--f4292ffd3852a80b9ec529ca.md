# migratedArtifact_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37f1a8e7-a676-b1d5-82c0-3d7f7304338d",
  "kind": "theorem",
  "lexical_name": "migratedArtifact_sound",
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
  "slug": "migratedartifact-sound--f4292ffd3852a80b9ec529ca",
  "source": {
    "blob": "2c4bf023c359d03b40d18ac68ca27021bb54ebe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 194,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4292ffd3852a80b9ec529ca43973b4b755d358bc5fc08f9139798cb1b100326",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37f1a8e7-a676-b1d5-82c0-3d7f7304338d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem migratedArtifact_sound
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    {U : WorkspaceUpgrade W₀ W₁}
    {p : G.ProjectId}
    (migration : WorkspaceArtifactMigration U p)
    (env : DependencyEnv G W₀.Export p)
    (artifact : (W₀.node p).Artifact)
    (hvalid : (W₀.node p).ValidArtifact env artifact) :
    (W₁.node p).denote (migration.migrate artifact) =
      (W₁.node p).semantics (Upgrade.mapDependencyEnv U p env) := by
  calc
    (W₁.node p).denote (migration.migrate artifact) =
        U.mapPublic p ((W₀.node p).denote artifact) :=
      migration.denote_natural env artifact hvalid
    _ = U.mapPublic p ((W₀.node p).semantics env) := by
      rw [(W₀.node p).artifact_sound env artifact hvalid]
    _ = (W₁.node p).semantics (Upgrade.mapDependencyEnv U p env) :=
      U.semantics_natural p env

end WorkspaceArtifactMigration

/-! ## Explicit upgrade strengths -/

/-- A workspace upgrade whose public map is an equivalence at every node. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4bf023c359d03b40d18ac68ca27021bb54ebe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
