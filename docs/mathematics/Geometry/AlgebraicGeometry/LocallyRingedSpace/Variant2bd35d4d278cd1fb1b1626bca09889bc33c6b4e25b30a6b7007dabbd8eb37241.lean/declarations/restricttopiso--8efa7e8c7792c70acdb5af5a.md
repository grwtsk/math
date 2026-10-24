# restrictTopIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ab0677dc0f9108b6a2f1d5b77954b10a4343267844f3c91f0e19e562bedcd93",
  "kind": "def",
  "lexical_name": "restrictTopIso",
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
  "slug": "restricttopiso--8efa7e8c7792c70acdb5af5a",
  "source": {
    "blob": "ce4ea7f71d7dad78c0d01fbceff61dae69d65437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 263,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8efa7e8c7792c70acdb5af5a4429dcc55c2ef86ff61ebeec3dced2217202fb86",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ab0677dc0f9108b6a2f1d5b77954b10a4343267844f3c91f0e19e562bedcd93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictTopIso (X : LocallyRingedSpace) : X.restrict (Opens.openEmbedding ⊤) ≅ X :=
  @isoOfSheafedSpaceIso (X.restrict (Opens.openEmbedding ⊤)) X X.toSheafedSpace.restrictTopIso
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.LocallyRingedSpace.restrict_top_iso AlgebraicGeometry.LocallyRingedSpace.restrictTopIso

/-- The global sections, notated Gamma.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4ea7f71d7dad78c0d01fbceff61dae69d65437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
