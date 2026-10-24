# ConvexIndependent.mem_convexHull_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58369c96-a9be-6ae5-4be0-752d422153ed",
  "kind": "theorem",
  "lexical_name": "ConvexIndependent.mem_convexHull_iff",
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
  "slug": "convexindependent-mem-convexhull-iff--fbca3559e9aea09b7b4bb629",
  "source": {
    "blob": "e884c4536a14a09ea9beeff54c3be7fa7d814a80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 121,
    "path": "GRWTSK/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbca3559e9aea09b7b4bb6298facde88e76799d09535f1252015fda50fcb7100",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58369c96-a9be-6ae5-4be0-752d422153ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ConvexIndependent.mem_convexHull_iff {p : ι → E} (hc : ConvexIndependent 𝕜 p)
    (s : Set ι) (i : ι) : p i ∈ convexHull 𝕜 (p '' s) ↔ i ∈ s :=
  ⟨hc _ _, fun hi => subset_convexHull 𝕜 _ (Set.mem_image_of_mem p hi)⟩

/-- If a family is convex independent, a point in the family is not in the convex hull of the other
points. See `convexIndependent_set_iff_notMem_convexHull_diff` for the `Set` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e884c4536a14a09ea9beeff54c3be7fa7d814a80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
