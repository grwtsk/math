# addContent_iUnion_eq_sum_of_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3759153c38316094d596b8fdc1357ca9e40373ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 372,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb536242-ec37-6591-1e71-012b35e27831",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffc7c9d2-2d93-2b25-793f-49506b9f6900",
  "kind": "theorem",
  "lexical_name": "addContent_iUnion_eq_sum_of_tendsto_zero",
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
  "slug": "addcontent-iunion-eq-sum-of-tendsto-zero--41c37456b8563195830742d4",
  "source": {
    "blob": "3759153c38316094d596b8fdc1357ca9e40373ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 372,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41c37456b8563195830742d4555a6d8c46c597b997a581a8c7ce0115b4a00713",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffc7c9d2-2d93-2b25-793f-49506b9f6900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addContent_iUnion_eq_sum_of_tendsto_zero (hC : IsSetRing C) (m : AddContent C)
    (hm_ne_top : ∀ s ∈ C, m s ≠ ∞)
    (hm_tendsto : ∀ ⦃s : ℕ → Set α⦄ (_ : ∀ n, s n ∈ C),
      Antitone s → (⋂ n, s n) = ∅ → Tendsto (fun n ↦ m (s n)) atTop (𝓝 0))
    ⦃f : ℕ → Set α⦄ (hf : ∀ i, f i ∈ C) (hUf : (⋃ i, f i) ∈ C)
    (h_disj : Pairwise (Disjoint on f)) :
    m (⋃ i, f i) = ∑' i, m (f i) := by
  -- We use the continuity of `m` at `∅` on the sequence `n ↦ (⋃ i, f i) \ (set.accumulate f n)`
  let s : ℕ → Set α := fun n ↦ (⋃ i, f i) \ Set.Accumulate f n
  have hCs n : s n ∈ C := hC.diff_mem hUf (hC.accumulate_mem hf n)
  have h_tendsto : Tendsto (fun n ↦ m (s n)) atTop (𝓝 0) := by
    refine hm_tendsto hCs ?_ ?_
    · intro i j hij x hxj
      rw [Set.mem_diff] at hxj ⊢
      exact ⟨hxj.1, fun hxi ↦ hxj.2 (Set.monotone_accumulate hij hxi)⟩
    · simp_rw [s, Set.diff_eq]
      rw [Set.iInter_inter_distrib, Set.iInter_const, ← Set.compl_iUnion, Set.iUnion_accumulate]
      exact Set.inter_compl_self _
  have hmsn n : m (s n) = m (⋃ i, f i) - ∑ i ∈ Finset.range (n + 1), m (f i) := by
    rw [addContent_diff_of_ne_top m hC hm_ne_top hUf (hC.accumulate_mem hf n)
      (Set.accumulate_subset_iUnion _), addContent_accumulate m hC h_disj hf n]
  simp_rw [hmsn] at h_tendsto
  refine tendsto_nhds_unique ?_ (ENNReal.tendsto_nat_tsum fun i ↦ m (f i))
  refine (Filter.tendsto_add_atTop_iff_nat 1).mp ?_
  rwa [ENNReal.tendsto_const_sub_nhds_zero_iff (hm_ne_top _ hUf) (fun n ↦ ?_)] at h_tendsto
  rw [← addContent_accumulate m hC h_disj hf]
  exact addContent_mono hC.isSetSemiring (hC.accumulate_mem hf n) hUf
    (Set.accumulate_subset_iUnion _)

/-- If an additive content is σ-additive on a set ring, then the content of a monotone sequence of
sets tends to the content of the union. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3759153c38316094d596b8fdc1357ca9e40373ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
