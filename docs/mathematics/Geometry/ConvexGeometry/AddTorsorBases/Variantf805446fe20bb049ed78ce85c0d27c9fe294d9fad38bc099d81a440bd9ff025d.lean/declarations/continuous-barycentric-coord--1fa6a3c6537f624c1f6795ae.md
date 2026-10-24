# continuous_barycentric_coord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f0335fe-6e01-6e77-5561-98f5f0686aa4",
  "kind": "theorem",
  "lexical_name": "continuous_barycentric_coord",
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
  "slug": "continuous-barycentric-coord--1fa6a3c6537f624c1f6795ae",
  "source": {
    "blob": "8d36115b5f0eb58a062e6483ab0c7e794b469b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fa6a3c6537f624c1f6795ae7c314ecdf7b09aa26b7c79f3ce275032ab0d1219",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f0335fe-6e01-6e77-5561-98f5f0686aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_barycentric_coord (i : ι) : Continuous (b.coord i) :=
  (b.coord i).continuous_of_finiteDimensional

end Barycentric

open Set

/-- Given a finite-dimensional normed real vector space, the interior of the convex hull of an
affine basis is the set of points whose barycentric coordinates are strictly positive with respect
to this basis.

TODO Restate this result for affine spaces (instead of vector spaces) once the definition of
convexity is generalised to this setting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d36115b5f0eb58a062e6483ab0c7e794b469b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
