# MeasureTheory.aemeasurable_of_exist_almost_disjoint_supersets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a12106b70a2eeb479fae910d042cd91631d3baff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f28c973412c5f98c8efc35ac843d86c94be2c47bedf08795a2007b1fb60c0a01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52a2db38-8ae1-6a19-6a96-6c80c1a80417",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6113fe80-d866-2e24-970b-5875e96b3d5c",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.aemeasurable_of_exist_almost_disjoint_supersets",
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
  "slug": "measuretheory-aemeasurable-of-exist-almost-disjoint-supersets--d1455f1bde26e672f0f5920e",
  "source": {
    "blob": "a12106b70a2eeb479fae910d042cd91631d3baff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 31,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableOrder/Variantf28c973412c5f98c8efc35ac843d86c94be2c47bedf08795a2007b1fb60c0a01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1455f1bde26e672f0f5920ed5060eb52225a24a5651ce730cd1557f9a2dc996",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurableOrder/Variantf28c973412c5f98c8efc35ac843d86c94be2c47bedf08795a2007b1fb60c0a01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6113fe80-d866-2e24-970b-5875e96b3d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.aemeasurable_of_exist_almost_disjoint_supersets {α : Type*}
    {m : MeasurableSpace α} (μ : Measure α) {β : Type*} [CompleteLinearOrder β] [DenselyOrdered β]
    [TopologicalSpace β] [OrderTopology β] [SecondCountableTopology β] [MeasurableSpace β]
    [BorelSpace β] (s : Set β) (s_count : s.Countable) (s_dense : Dense s) (f : α → β)
    (h : ∀ p ∈ s, ∀ q ∈ s, p < q → ∃ u v, MeasurableSet u ∧ MeasurableSet v ∧
      { x | f x < p } ⊆ u ∧ { x | q < f x } ⊆ v ∧ μ (u ∩ v) = 0) :
    AEMeasurable f μ := by
  classical
  haveI : Encodable s := s_count.toEncodable
  have h' : ∀ p q, ∃ u v, MeasurableSet u ∧ MeasurableSet v ∧
      { x | f x < p } ⊆ u ∧ { x | q < f x } ⊆ v ∧ (p ∈ s → q ∈ s → p < q → μ (u ∩ v) = 0) := by
    intro p q
    by_cases H : p ∈ s ∧ q ∈ s ∧ p < q
    · rcases h p H.1 q H.2.1 H.2.2 with ⟨u, v, hu, hv, h'u, h'v, hμ⟩
      exact ⟨u, v, hu, hv, h'u, h'v, fun _ _ _ => hμ⟩
    · refine
        ⟨univ, univ, MeasurableSet.univ, MeasurableSet.univ, subset_univ _, subset_univ _,
          fun ps qs pq => ?_⟩
      simp only [not_and] at H
      exact (H ps qs pq).elim
  choose! u v huv using h'
  let u' : β → Set α := fun p => ⋂ q ∈ s ∩ Ioi p, u p q
  have u'_meas : ∀ i, MeasurableSet (u' i) := by
    intro i
    exact MeasurableSet.biInter (s_count.mono inter_subset_left) fun b _ => (huv i b).1
  let f' : α → β := fun x => ⨅ i : s, piecewise (u' i) (fun _ => (i : β)) (fun _ => (⊤ : β)) x
  have f'_meas : Measurable f' := by fun_prop (disch := aesop)
  let t := ⋃ (p : s) (q : ↥(s ∩ Ioi p)), u' p ∩ v p q
  have μt : μ t ≤ 0 :=
    calc
      μ t ≤ ∑' (p : s) (q : ↥(s ∩ Ioi p)), μ (u' p ∩ v p q) := by
        refine (measure_iUnion_le _).trans ?_
        refine ENNReal.tsum_le_tsum fun p => ?_
        haveI := (s_count.mono (s.inter_subset_left (t := Ioi ↑p))).to_subtype
        apply measure_iUnion_le
      _ ≤ ∑' (p : s) (q : ↥(s ∩ Ioi p)), μ (u p q ∩ v p q) := by
        gcongr with p q
        exact biInter_subset_of_mem q.2
      _ = ∑' (p : s) (_ : ↥(s ∩ Ioi p)), (0 : ℝ≥0∞) := by
        congr
        ext1 p
        congr
        ext1 q
        exact (huv p q).2.2.2.2 p.2 q.2.1 q.2.2
      _ = 0 := by simp only [tsum_zero]
  have ff' : ∀ᵐ x ∂μ, f x = f' x := by
    have : ∀ᵐ x ∂μ, x ∉ t := by
      have : μ t = 0 := le_antisymm μt bot_le
      change μ _ = 0
      convert this
      ext y
      simp only [not_exists, exists_prop, mem_setOf_eq, mem_compl_iff, not_notMem]
    filter_upwards [this] with x hx
    apply (iInf_eq_of_forall_ge_of_forall_gt_exists_lt _ _).symm
    · intro i
      by_cases H : x ∈ u' i
      swap
      · simp only [H, le_top, not_false_iff, piecewise_eq_of_notMem]
      simp only [H, piecewise_eq_of_mem]
      contrapose! hx
      obtain ⟨r, ⟨xr, rq⟩, rs⟩ : ∃ r, r ∈ Ioo (i : β) (f x) ∩ s :=
        dense_iff_inter_open.1 s_dense (Ioo i (f x)) isOpen_Ioo (nonempty_Ioo.2 hx)
      have A : x ∈ v i r := (huv i r).2.2.2.1 rq
      refine mem_iUnion.2 ⟨i, ?_⟩
      refine mem_iUnion.2 ⟨⟨r, ⟨rs, xr⟩⟩, ?_⟩
      exact ⟨H, A⟩
    · intro q hq
      obtain ⟨r, ⟨xr, rq⟩, rs⟩ : ∃ r, r ∈ Ioo (f x) q ∩ s :=
        dense_iff_inter_open.1 s_dense (Ioo (f x) q) isOpen_Ioo (nonempty_Ioo.2 hq)
      refine ⟨⟨r, rs⟩, ?_⟩
      have A : x ∈ u' r := mem_biInter fun i _ => (huv r i).2.2.1 xr
      simp only [A, rq, piecewise_eq_of_mem, Subtype.coe_mk]
  exact ⟨f', f'_meas, ff'⟩

/-- If a function `f : α → ℝ≥0∞` is such that the level sets `{f < p}` and `{q < f}` have measurable
supersets which are disjoint up to measure zero when `p` and `q` are finite numbers satisfying
`p < q`, then `f` is almost-everywhere measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurableOrder/Variantf28c973412c5f98c8efc35ac843d86c94be2c47bedf08795a2007b1fb60c0a01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurableOrder/Variantf28c973412c5f98c8efc35ac843d86c94be2c47bedf08795a2007b1fb60c0a01.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a12106b70a2eeb479fae910d042cd91631d3baff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
