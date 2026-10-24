# weightedVSubVSubWeights_apply_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f9d69f8-a995-1247-7d48-0e498e50351d",
  "kind": "theorem",
  "lexical_name": "weightedVSubVSubWeights_apply_of_ne",
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
  "slug": "weightedvsubvsubweights-apply-of-ne--c22cfbc1ba17d8aa49b01deb",
  "source": {
    "blob": "065af88e6049f15a6c0c15394f42a0a8b9bfbd6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 649,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c22cfbc1ba17d8aa49b01deb1e1e9b734fa9c7c2b4cce80253fd06210fd914fe",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f9d69f8-a995-1247-7d48-0e498e50351d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedVSubVSubWeights_apply_of_ne [DecidableEq ι] {i j t : ι} (hi : t ≠ i) (hj : t ≠ j) :
    weightedVSubVSubWeights k i j t = 0 := by simp [weightedVSubVSubWeights, hi, hj]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065af88e6049f15a6c0c15394f42a0a8b9bfbd6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
