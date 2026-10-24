# mk_mem_convexHull_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:475ace81-e888-9eb9-75b9-5b7d653ceaa9",
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
  "slug": "mk-mem-convexhull-prod--b22ea91359cf97820baa80e9",
  "source": {
    "blob": "34df82812a2bb352a11a6900f202dd878c99807e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 384,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b22ea91359cf97820baa80e9a43198fa1a6ebebd1db67b5ee21a06deba1a9936",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:475ace81-e888-9eb9-75b9-5b7d653ceaa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_mem_convexHull_prod {t : Set F} {x : E} {y : F} (hx : x ∈ convexHull R s)
    (hy : y ∈ convexHull R t) : (x, y) ∈ convexHull R (s ×ˢ t) := by
  rw [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.FinsetCenterMass.Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.convexHull_eq] at hx hy ⊢
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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34df82812a2bb352a11a6900f202dd878c99807e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
