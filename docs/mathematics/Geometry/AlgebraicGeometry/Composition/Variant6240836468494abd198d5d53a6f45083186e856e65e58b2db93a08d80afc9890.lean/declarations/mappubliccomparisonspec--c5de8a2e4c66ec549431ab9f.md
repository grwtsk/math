# mapPublicComparisonSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a33006d71f1b531871ec0b05493690c48b04ec38155b2c57da47817cab83cd1",
  "kind": "def",
  "lexical_name": "mapPublicComparisonSpec",
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
  "slug": "mappubliccomparisonspec--c5de8a2e4c66ec549431ab9f",
  "source": {
    "blob": "51faf2997e62b52fe9c63c88cba4d6e3a0dc6cd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 356,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Composition/Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5de8a2e4c66ec549431ab9f3e05f3ff6556ed0eda708145189eb332040b690c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Composition/Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a33006d71f1b531871ec0b05493690c48b04ec38155b2c57da47817cab83cd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapPublicComparisonSpec
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : RefinementUpgrade W₀ W₁)
    (p : G.ProjectId) :
    Comparison.Spec (W₀.Export p) (W₁.Export p) :=
  U.toWorkspaceUpgrade.mapPublicComparisonSpec p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Composition/Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Composition/Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51faf2997e62b52fe9c63c88cba4d6e3a0dc6cd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
