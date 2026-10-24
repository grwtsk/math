# continuous_barycentric_coord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17588209-77aa-77b3-47e1-a909690751a6",
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
  "slug": "continuous-barycentric-coord--1df4b8d245d6f4c16dd5a6fe",
  "source": {
    "blob": "773f51dba62388939314ee7f4964e90ef202f9c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant4277f78d164e30fb88d1349de6f404f0207427bcb86309d27cd2b545872733e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1df4b8d245d6f4c16dd5a6fe414a16899ddf540f9a9730e00defddb0b96960b0",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AddTorsorBases/Variant4277f78d164e30fb88d1349de6f404f0207427bcb86309d27cd2b545872733e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17588209-77aa-77b3-47e1-a909690751a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

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

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AddTorsorBases/Variant4277f78d164e30fb88d1349de6f404f0207427bcb86309d27cd2b545872733e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant4277f78d164e30fb88d1349de6f404f0207427bcb86309d27cd2b545872733e8.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `773f51dba62388939314ee7f4964e90ef202f9c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
