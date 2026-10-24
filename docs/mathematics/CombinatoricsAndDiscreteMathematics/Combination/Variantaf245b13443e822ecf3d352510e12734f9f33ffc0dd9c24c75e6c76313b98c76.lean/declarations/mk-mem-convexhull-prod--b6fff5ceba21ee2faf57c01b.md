# mk_mem_convexHull_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b95499f4e25da6d40581ef8f91a895ed42cc8a21",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32755f1e-474c-21be-e22a-308489193e25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17ab68b0-0d0e-d35e-eae0-0ad38510149d",
  "kind": "theorem",
  "lexical_name": "mk_mem_convexHull_prod",
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
  "slug": "mk-mem-convexhull-prod--b6fff5ceba21ee2faf57c01b",
  "source": {
    "blob": "b95499f4e25da6d40581ef8f91a895ed42cc8a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 376,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6fff5ceba21ee2faf57c01bbaa3accd71ed0dc6f15a8af1fe12286d1545dff4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17ab68b0-0d0e-d35e-eae0-0ad38510149d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_mem_convexHull_prod {t : Set F} {x : E} {y : F} (hx : x ∈ convexHull R s)
    (hy : y ∈ convexHull R t) : (x, y) ∈ convexHull R (s ×ˢ t) := by
  rw [_root_.convexHull_eq] at hx hy ⊢
  obtain ⟨ι, a, w, S, hw, hw', hS, hSp⟩ := hx
  obtain ⟨κ, b, v, T, hv, hv', hT, hTp⟩ := hy
  have h_sum : ∑ i : ι × κ in a ×ˢ b, w i.fst * v i.snd = 1 := by
    rw [Finset.sum_product, ← hw']
    congr
    ext i
    have : ∑ y : κ in b, w i * v y = ∑ y : κ in b, v y * w i := by
      congr
      ext
      simp [mul_comm]
    rw [this, ← Finset.sum_mul, hv']
    simp
  refine'
    ⟨ι × κ, a ×ˢ b, fun p => w p.1 * v p.2, fun p => (S p.1, T p.2), fun p hp => _, h_sum,
      fun p hp => _, _⟩
  · rw [mem_product] at hp
    exact mul_nonneg (hw p.1 hp.1) (hv p.2 hp.2)
  · rw [mem_product] at hp
    exact ⟨hS p.1 hp.1, hT p.2 hp.2⟩
  ext
  · rw [← hSp, Finset.centerMass_eq_of_sum_1 _ _ hw', Finset.centerMass_eq_of_sum_1 _ _ h_sum]
    simp_rw [Prod.fst_sum, Prod.smul_mk]
    rw [Finset.sum_product]
    congr
    ext i
    have : (∑ j : κ in b, (w i * v j) • S i) = ∑ j : κ in b, v j • w i • S i := by
      congr
      ext
      rw [mul_smul, smul_comm]
    rw [this, ← Finset.sum_smul, hv', one_smul]
  · rw [← hTp, Finset.centerMass_eq_of_sum_1 _ _ hv', Finset.centerMass_eq_of_sum_1 _ _ h_sum]
    simp_rw [Prod.snd_sum, Prod.smul_mk]
    rw [Finset.sum_product, Finset.sum_comm]
    congr
    ext j
    simp_rw [mul_smul]
    rw [← Finset.sum_smul, hw', one_smul]
#align mk_mem_convex_hull_prod mk_mem_convexHull_prod

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b95499f4e25da6d40581ef8f91a895ed42cc8a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
