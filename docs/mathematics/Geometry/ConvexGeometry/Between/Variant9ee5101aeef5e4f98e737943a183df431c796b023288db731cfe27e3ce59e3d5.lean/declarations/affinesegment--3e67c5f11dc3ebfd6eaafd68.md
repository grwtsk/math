# affineSegment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7048fdcd34b49c4f457f1a99cd8f8dd1d22403b06376ede57a3fb69cd95229f5",
  "kind": "def",
  "lexical_name": "affineSegment",
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
  "slug": "affinesegment--3e67c5f11dc3ebfd6eaafd68",
  "source": {
    "blob": "90cfcc91c41b613890812a3b0e00c15321c159a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 52,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e67c5f11dc3ebfd6eaafd68f107d365b0a26fd460866acebd4677c33d890224",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7048fdcd34b49c4f457f1a99cd8f8dd1d22403b06376ede57a3fb69cd95229f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def affineSegment (x y : P) :=
  lineMap x y '' Set.Icc (0 : R) 1
#align affine_segment affineSegment

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90cfcc91c41b613890812a3b0e00c15321c159a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
