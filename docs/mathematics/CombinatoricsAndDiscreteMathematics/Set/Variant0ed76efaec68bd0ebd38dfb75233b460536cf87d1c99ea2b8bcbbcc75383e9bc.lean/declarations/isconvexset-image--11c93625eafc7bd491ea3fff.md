# IsConvexSet.image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae067634-6228-d22f-09c7-1722bd76655a",
  "kind": "lemma",
  "lexical_name": "IsConvexSet.image",
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
  "slug": "isconvexset-image--11c93625eafc7bd491ea3fff",
  "source": {
    "blob": "03bc2ffa6a3e1e23da6b4041ed6a8993e8701b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11c93625eafc7bd491ea3fff6b2e52f0ce5c9ba38bd9dee068c073ede7ffe97b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae067634-6228-d22f-09c7-1722bd76655a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsConvexSet.image (hf : IsAffineMap R f) (hs : IsConvexSet R s) :
    IsConvexSet R (f '' s) := by
  classical
  rintro w hw
  obtain ⟨u, hus, hfu, huw⟩ := Finset.exists_subset_injOn_image_eq_of_surjOn _ _ hw
  refine ⟨sConvexComb {
      weights := .onFinset u (fun x ↦ if x ∈ u then w.weights (f x) else 0) <| by simp +contextual
      nonneg x := by simp; split <;> simp
      total := by
        simp only [implies_true, sum_onFinset, Finset.sum_ite_mem, Finset.inter_self,
        ← Finset.sum_image hfu, huw]
        exact w.total
    }, hs.sConvexComb_mem <| by grw [support_onFinset_subset, hus], ?_⟩
  rw [hf.map_sConvexComb]
  congr
  ext y
  rw [StdSimplex.weights_map]
  by_cases hy : y ∈ w.weights.support
  · rw [← huw, Finset.mem_image] at hy
    obtain ⟨x, hx, rfl⟩ := hy
    convert mapDomain_apply' _ _ support_onFinset_subset hfu hx
    exact (ite_eq_left hx).symm
  · rw [mapDomain_of_not_mem_image_support (by simp [← huw] at ⊢ hy; tauto)]
    simp_all

/-- A convex subset of a convex space is a convex space. -/
@[expose, implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03bc2ffa6a3e1e23da6b4041ed6a8993e8701b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
