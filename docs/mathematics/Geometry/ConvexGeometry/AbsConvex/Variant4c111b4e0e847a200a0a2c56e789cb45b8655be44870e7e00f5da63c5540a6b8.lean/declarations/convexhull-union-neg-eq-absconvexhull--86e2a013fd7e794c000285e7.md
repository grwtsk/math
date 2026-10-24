# convexHull_union_neg_eq_absConvexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6537fae-0f78-2189-113c-ac76a97c96db",
  "kind": "theorem",
  "lexical_name": "convexHull_union_neg_eq_absConvexHull",
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
  "slug": "convexhull-union-neg-eq-absconvexhull--86e2a013fd7e794c000285e7",
  "source": {
    "blob": "44fbe20c5e022798256863825fa17f175e9d80db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 294,
    "path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86e2a013fd7e794c000285e7faa0ba67e7e2b4143b7748d4414b434fc72d6df0",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6537fae-0f78-2189-113c-ac76a97c96db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexHull_union_neg_eq_absConvexHull {s : Set E} :
    convexHull ℝ (s ∪ -s) = absConvexHull ℝ s := by
  rw [absConvexHull_eq_convexHull_balancedHull]
  exact le_antisymm (convexHull_mono (union_subset (subset_balancedHull ℝ)
    (fun _ _ => by rw [mem_balancedHull_iff]; use -1; aesop)))
    (by
      rw [← Convex.convexHull_eq (convex_convexHull ℝ (s ∪ -s))]
      exact convexHull_mono balancedHull_subset_convexHull_union_neg)

variable (E 𝕜) {s : Set E}
variable [NontriviallyNormedField 𝕜] [Module 𝕜 E] [SMulCommClass ℝ 𝕜 E]
variable [UniformSpace E] [IsUniformAddGroup E] [lcs : LocallyConvexSpace ℝ E] [ContinuousSMul ℝ E]

-- TVS II.25 Prop3
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44fbe20c5e022798256863825fa17f175e9d80db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
