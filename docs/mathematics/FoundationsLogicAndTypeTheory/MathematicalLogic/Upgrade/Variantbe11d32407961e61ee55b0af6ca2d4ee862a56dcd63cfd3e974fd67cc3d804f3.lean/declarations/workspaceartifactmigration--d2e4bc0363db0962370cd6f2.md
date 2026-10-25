# WorkspaceArtifactMigration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b86f9ffbee7fc952c050eba7f561f5dffcba139b317ee311aace9696288f6b0d",
  "kind": "structure",
  "lexical_name": "WorkspaceArtifactMigration",
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
  "slug": "workspaceartifactmigration--d2e4bc0363db0962370cd6f2",
  "source": {
    "blob": "ff2b8b5849d94a1559ca72acd5af1a13a3b2de32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2e4bc0363db0962370cd6f290c14b9fe6d6ffd97cc5f901e347d567686b8e82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b86f9ffbee7fc952c050eba7f561f5dffcba139b317ee311aace9696288f6b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WorkspaceArtifactMigration
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId) where
  migrate : (W₀.node p).Artifact → (W₁.node p).Artifact
  valid_migrate :
    ∀ env artifact,
      (W₀.node p).ValidArtifact env artifact →
        (W₁.node p).ValidArtifact
          (Upgrade.mapDependencyEnv U p env) (migrate artifact)
  denote_natural :
    ∀ env artifact,
      (W₀.node p).ValidArtifact env artifact →
        (W₁.node p).denote (migrate artifact) =
          U.mapPublic p ((W₀.node p).denote artifact)

namespace WorkspaceArtifactMigration

/-- The migrated artifact is certified in the upgraded dependency environment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff2b8b5849d94a1559ca72acd5af1a13a3b2de32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
