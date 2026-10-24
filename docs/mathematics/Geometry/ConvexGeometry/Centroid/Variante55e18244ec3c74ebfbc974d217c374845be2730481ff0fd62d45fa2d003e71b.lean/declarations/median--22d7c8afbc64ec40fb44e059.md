# median

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e97e735593233ae58d9f3dcbfb2c0e23f30b6294653eedc13395072133a1e5c",
  "kind": "def",
  "lexical_name": "median",
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
  "slug": "median--22d7c8afbc64ec40fb44e059",
  "source": {
    "blob": "fae929affc7bbe346128209bbbae40d38f8a1aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 432,
    "path": "GRWTSK/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22d7c8afbc64ec40fb44e059afbf5601427897fc95532fdc48d86a0f3f27e84e",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e97e735593233ae58d9f3dcbfb2c0e23f30b6294653eedc13395072133a1e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def median (s : Simplex k P n) (i : Fin (n + 1)) : AffineSubspace k P :=
  line[k, s.points i, s.faceOppositeCentroid i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fae929affc7bbe346128209bbbae40d38f8a1aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
