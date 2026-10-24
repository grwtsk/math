# Finset.centroid_mem_convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc486fbc-5dff-a28a-895d-b01d5333e2f7",
  "kind": "theorem",
  "lexical_name": "Finset.centroid_mem_convexHull",
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
  "slug": "finset-centroid-mem-convexhull--63077dce70c52dc711623b6f",
  "source": {
    "blob": "abb84d7d7f8c8329734da741d0c555674487128c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 305,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63077dce70c52dc711623b6f2599162d0cb2806668e9fe6e1715b4afa85cb3a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc486fbc-5dff-a28a-895d-b01d5333e2f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.centroid_mem_convexHull (s : Finset E) (hs : s.Nonempty) :
    s.centroid R id ∈ convexHull R (s : Set E) := by
  rw [s.centroid_eq_centerMass hs]
  apply s.centerMass_id_mem_convexHull
  · simp only [inv_nonneg, imp_true_iff, Nat.cast_nonneg, Finset.centroidWeights_apply]
  · have hs_card : (#s : R) ≠ 0 := by simp [Finset.nonempty_iff_ne_empty.mp hs]
    simp only [hs_card, Finset.sum_const, nsmul_eq_mul, mul_inv_cancel₀, Ne, not_false_iff,
      Finset.centroidWeights_apply, zero_lt_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb84d7d7f8c8329734da741d0c555674487128c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
