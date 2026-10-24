# base_affine_hasPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee8a736e1c61ef30c7e99ad01bff016f903a1860b68ba847e176b4f6785f7160",
  "kind": "instance",
  "lexical_name": "base_affine_hasPullback",
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
  "slug": "base-affine-haspullback--67cf1299f55ff95ca66c1736",
  "source": {
    "blob": "96bf1633e40505d8f53aaf1a59b25241d52d9b1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 443,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variante2b8f4b66b6600dc3f564463cf467fadcf57885667cce2915414cb582d7b7c6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67cf1299f55ff95ca66c1736c0bfe271a0188725598bb26ab293747a1e36acb6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variante2b8f4b66b6600dc3f564463cf467fadcf57885667cce2915414cb582d7b7c6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee8a736e1c61ef30c7e99ad01bff016f903a1860b68ba847e176b4f6785f7160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance base_affine_hasPullback {C : CommRingCat} {X Y : Scheme} (f : X ⟶ Spec C)
    (g : Y ⟶ Spec C) : HasPullback f g :=
  @hasPullback_symmetry _ _ _ _ _ _ _
    (@hasPullback_of_cover _ _ _ Y.affineCover g f fun _ =>
      @hasPullback_symmetry _ _ _ _ _ _ _ <| affine_affine_hasPullback _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variante2b8f4b66b6600dc3f564463cf467fadcf57885667cce2915414cb582d7b7c6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variante2b8f4b66b6600dc3f564463cf467fadcf57885667cce2915414cb582d7b7c6a.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96bf1633e40505d8f53aaf1a59b25241d52d9b1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
