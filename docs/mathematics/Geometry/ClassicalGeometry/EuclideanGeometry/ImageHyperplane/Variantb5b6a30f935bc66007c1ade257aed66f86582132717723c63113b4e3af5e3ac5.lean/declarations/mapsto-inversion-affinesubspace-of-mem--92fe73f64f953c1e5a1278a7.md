# mapsTo_inversion_affineSubspace_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2017430a-9b21-21c9-4598-bae9f328b879",
  "kind": "theorem",
  "lexical_name": "mapsTo_inversion_affineSubspace_of_mem",
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
  "slug": "mapsto-inversion-affinesubspace-of-mem--92fe73f64f953c1e5a1278a7",
  "source": {
    "blob": "44a1c1f6c026f678d36c1d5b9b09d3a02ad48514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 88,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92fe73f64f953c1e5a1278a7d1b0d55ae3adadb7c9d30ec6dd47cbbab8c445b6",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2017430a-9b21-21c9-4598-bae9f328b879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapsTo_inversion_affineSubspace_of_mem {p : AffineSubspace ℝ P} (hp : c ∈ p) :
    MapsTo (inversion c R) p p := fun _ ↦ AffineMap.lineMap_mem _ hp

/-- Inversion sends an affine subspace passing through the center to itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a1c1f6c026f678d36c1d5b9b09d3a02ad48514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
