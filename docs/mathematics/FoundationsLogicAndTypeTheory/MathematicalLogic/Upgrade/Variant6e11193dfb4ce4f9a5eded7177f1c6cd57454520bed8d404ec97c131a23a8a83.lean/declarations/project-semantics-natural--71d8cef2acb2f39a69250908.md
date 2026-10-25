# project_semantics_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:448f8fa4-6d75-3eea-52d0-feccb6bf5ca7",
  "kind": "theorem",
  "lexical_name": "project_semantics_natural",
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
  "slug": "project-semantics-natural--71d8cef2acb2f39a69250908",
  "source": {
    "blob": "2c4bf023c359d03b40d18ac68ca27021bb54ebe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71d8cef2acb2f39a6925090855c30537b4e65f3c31dd6cf573b48d7f1f8adf04",
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

Occurrence: `result:448f8fa4-6d75-3eea-52d0-feccb6bf5ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem project_semantics_natural
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId)
    (env : DependencyEnv G W₀.Export p) :
    U.mapPublic p ((W₀.node p).semantics env) =
      (W₁.node p).semantics (mapDependencyEnv U p env) :=
  U.semantics_natural p env

/-- Naturality extends from one node to recursively evaluated workspace exports. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4bf023c359d03b40d18ac68ca27021bb54ebe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
