# inf_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3691fcbf2a82639d18d48f77dd6d4c43709ddb91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db16c1d4da1a847e39b56aa74f86af27dad28419c94a34e9905e1d4ba8459251.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d664ef8-78a2-7500-4ffb-db51c18fb920",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ba8c5e5-dbc4-7fb8-8ce0-241186e77a64",
  "kind": "lemma",
  "lexical_name": "inf_apply",
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
  "slug": "inf-apply--74bb333b092c22dcbb2facb6",
  "source": {
    "blob": "3691fcbf2a82639d18d48f77dd6d4c43709ddb91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 136,
    "path": "GRWTSK/Analysis/MeasureTheory/CompleteLattice/Variantdb16c1d4da1a847e39b56aa74f86af27dad28419c94a34e9905e1d4ba8459251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74bb333b092c22dcbb2facb60a19fc03158d682c4ab116b037f3942f5dfb10ac",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompleteLattice/Variantdb16c1d4da1a847e39b56aa74f86af27dad28419c94a34e9905e1d4ba8459251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ba8c5e5-dbc4-7fb8-8ce0-241186e77a64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inf_apply {s : Set α} (hs : MeasurableSet s) :
    (μ ⊓ ν) s = sInf {m | ∃ t, m = μ (t ∩ s) + ν (tᶜ ∩ s)} := by
  -- `(μ ⊓ ν) s` is defined as `⊓ (t : ℕ → Set α) (ht : s ⊆ ⋃ n, t n), ∑' n, μ (t n) ⊓ ν (t n)`
  rw [← sInf_pair, Measure.sInf_apply hs, OuterMeasure.sInf_apply
    (image_nonempty.2 <| insert_nonempty μ {ν})]
  refine le_antisymm (le_sInf fun m ⟨t, ht₁⟩ ↦ ?_) (le_iInf₂ fun t' ht' ↦ ?_)
  · subst ht₁
    -- We first show `(μ ⊓ ν) s ≤ μ (t ∩ s) + ν (tᶜ ∩ s)` for any `t : Set α`
    -- For this, define the sequence `t' : ℕ → Set α` where `t' 0 = t ∩ s`, `t' 1 = tᶜ ∩ s` and
    -- `∅` otherwise. Then, we have by construction
    -- `(μ ⊓ ν) s ≤ ∑' n, μ (t' n) ⊓ ν (t' n) ≤ μ (t' 0) + ν (t' 1) = μ (t ∩ s) + ν (tᶜ ∩ s)`.
    set t' : ℕ → Set α := fun n ↦ if n = 0 then t ∩ s else if n = 1 then tᶜ ∩ s else ∅ with ht'
    refine (iInf₂_le t' fun x hx ↦ ?_).trans ?_
    · by_cases hxt : x ∈ t
      · refine mem_iUnion.2 ⟨0, ?_⟩
        simp [hx, hxt]
      · refine mem_iUnion.2 ⟨1, ?_⟩
        simp [hx, hxt]
    · simp only [iInf_image, coe_toOuterMeasure, iInf_pair]
      rw [tsum_eq_add_tsum_ite 0, tsum_eq_add_tsum_ite 1, ite_eq_right zero_ne_one.symm,
        ENNReal.summable.tsum_eq_zero_iff.2 _, add_zero]
      · exact add_le_add (inf_le_left.trans <| by simp [ht']) (inf_le_right.trans <| by simp [ht'])
      · simp only [ite_eq_left_iff]
        intro n hn₁ hn₀
        simp only [ht', ite_eq_right hn₀, ite_eq_right hn₁, measure_empty, le_refl, inf_of_le_left]
  · simp only [iInf_image, coe_toOuterMeasure, iInf_pair]
    -- Conversely, fixing `t' : ℕ → Set α` such that `s ⊆ ⋃ n, t' n`, we construct `t : Set α`
    -- for which `μ (t ∩ s) + ν (tᶜ ∩ s) ≤ ∑' n, μ (t' n) ⊓ ν (t' n)`.
    -- Denoting `I := {n | μ (t' n) ≤ ν (t' n)}`, we set `t = ⋃ n ∈ I, t' n`.
    -- Clearly `μ (t ∩ s) ≤ ∑' n ∈ I, μ (t' n)` and `ν (tᶜ ∩ s) ≤ ∑' n ∉ I, ν (t' n)`, so
    -- `μ (t ∩ s) + ν (tᶜ ∩ s) ≤ ∑' n ∈ I, μ (t' n) + ∑' n ∉ I, ν (t' n)`
    -- where the RHS equals `∑' n, μ (t' n) ⊓ ν (t' n)` by the choice of `I`.
    set t := ⋃ n ∈ {k : ℕ | μ (t' k) ≤ ν (t' k)}, t' n with ht
    suffices hadd : μ (t ∩ s) + ν (tᶜ ∩ s) ≤ ∑' n, μ (t' n) ⊓ ν (t' n) by
      exact le_trans (sInf_le ⟨t, rfl⟩) hadd
    have hle₁ : μ (t ∩ s) ≤ ∑' (n : {k | μ (t' k) ≤ ν (t' k)}), μ (t' n) :=
      (measure_mono inter_subset_left).trans <| measure_biUnion_le _ (to_countable _) _
    have hcap : tᶜ ∩ s ⊆ ⋃ n ∈ {k | ν (t' k) < μ (t' k)}, t' n := by
      simp_rw [ht, compl_iUnion]
      refine fun x ⟨hx₁, hx₂⟩ ↦ mem_iUnion₂.2 ?_
      obtain ⟨i, hi⟩ := mem_iUnion.1 <| ht' hx₂
      refine ⟨i, ?_, hi⟩
      by_contra h
      simp only [mem_ofPred_eq, not_lt] at h
      exact mem_iInter₂.1 hx₁ i h hi
    have hle₂ : ν (tᶜ ∩ s) ≤ ∑' (n : {k | ν (t' k) < μ (t' k)}), ν (t' n) :=
      (measure_mono hcap).trans (measure_biUnion_le ν (to_countable {k | ν (t' k) < μ (t' k)}) _)
    refine (add_le_add hle₁ hle₂).trans ?_
    have heq : {k | μ (t' k) ≤ ν (t' k)} ∪ {k | ν (t' k) < μ (t' k)} = univ := by
      ext k; simp [le_or_gt]
    conv in ∑' (n : ℕ), μ (t' n) ⊓ ν (t' n) => rw [← tsum_univ, ← heq]
    rw [ENNReal.summable.tsum_union_disjoint (f := fun n ↦ μ (t' n) ⊓ ν (t' n)) ?_ ENNReal.summable]
    · refine add_le_add (tsum_congr ?_).le (tsum_congr ?_).le
      · rw [Subtype.forall]
        intro n hn; simpa
      · rw [Subtype.forall]
        intro n hn
        rw [mem_ofPred_eq] at hn
        simp [le_of_lt hn]
    · rw [Set.disjoint_iff]
      rintro k ⟨hk₁, hk₂⟩
      rw [mem_ofPred_eq] at hk₁ hk₂
      exact False.elim <| hk₂.not_ge hk₁

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompleteLattice/Variantdb16c1d4da1a847e39b56aa74f86af27dad28419c94a34e9905e1d4ba8459251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompleteLattice/Variantdb16c1d4da1a847e39b56aa74f86af27dad28419c94a34e9905e1d4ba8459251.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3691fcbf2a82639d18d48f77dd6d4c43709ddb91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
