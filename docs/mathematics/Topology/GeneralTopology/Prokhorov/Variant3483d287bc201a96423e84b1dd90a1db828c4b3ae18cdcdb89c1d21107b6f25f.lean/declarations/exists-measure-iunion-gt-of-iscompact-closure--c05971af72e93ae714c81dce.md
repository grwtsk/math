# exists_measure_iUnion_gt_of_isCompact_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a83535342af0ca8700ecacf175bec691206f6ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 573,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:935ab9b2-a863-5a10-41c9-0ea1217ba2cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c139435c-881a-3025-7140-4c5e1d580c09",
  "kind": "lemma",
  "lexical_name": "exists_measure_iUnion_gt_of_isCompact_closure",
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
  "slug": "exists-measure-iunion-gt-of-iscompact-closure--c05971af72e93ae714c81dce",
  "source": {
    "blob": "1a83535342af0ca8700ecacf175bec691206f6ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 573,
    "path": "GRWTSK/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c05971af72e93ae714c81dce5eefccef3ec591c4aee025522621ab5222f79fdb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c139435c-881a-3025-7140-4c5e1d580c09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_measure_iUnion_gt_of_isCompact_closure
    (U : ℕ → Set 𝓧) (O : ∀ i, IsOpen (U i)) (Cov : ⋃ i, U i = univ) (hcomp : IsCompact (closure S))
    (ε : ℝ≥0∞) (hε : 0 < ε) (hεbound : ε ≤ 1) :
    ∃ (k : ℕ), ∀ μ ∈ S, 1 - ε < μ (⋃ i ≤ k, U i) := by
  have εfin : ε ≠ ∞ := ne_top_of_le_ne_top (by simp) hεbound
  lift ε to ℝ≥0 using εfin
  obtain ⟨ε, hε', rfl⟩ : ∃ (ε' : ℝ) (hε' : 0 ≤ ε'), ε = .mk ε' hε' := ⟨↑ε, ε.2, rfl⟩
  simp only [ENNReal.coe_pos, ← NNReal.coe_lt_coe, NNReal.coe_zero, coe_mk, coe_le_one_iff,
      ← NNReal.coe_le_coe, NNReal.coe_one] at hε hεbound
  by_contra! nh
  choose μ hμInS hcontradiction using nh
  obtain ⟨μlim, _, sub, hsubmono, hμconverges⟩ :=
      hcomp.isSeqCompact (fun n ↦ subset_closure <| hμInS n)
  have Measurebound n : (μlim (⋃ (i ≤ n), U i) : ℝ) ≤ 1 - ε := calc
    (μlim (⋃ (i ≤ n), U i) : ℝ)
    _ ≤ liminf (fun k ↦ (μ (sub k) (⋃ (i ≤ n), U i) : ℝ)) atTop := by
      have hopen : IsOpen (⋃ i ≤ n, U i) := isOpen_biUnion fun i a ↦ O i
      have := ProbabilityMeasure.le_liminf_measure_open_of_tendsto hμconverges hopen
      simp_rw [Function.comp_apply, ← ennreal_coeFn_eq_coeFn_toMeasure] at this
      rw [← ofNNReal_liminf] at this
      · exact mod_cast this
      use 1
      simpa [eventually_map, eventually_atTop, forall_exists_index] using fun _ x h ↦
          (h x (by simp)).trans <| ProbabilityMeasure.apply_le_one (μ (sub x)) (⋃ i ≤ n, U i)
    _ ≤ liminf (fun k ↦ (μ (sub k) (⋃ (i ≤ sub k), U i) : ℝ)) atTop := by
      apply Filter.liminf_le_liminf
      · simp only [NNReal.coe_le_coe, eventually_atTop]
        use n + 1
        intro b hypo
        refine (μ (sub b)).apply_mono
            <| Set.biUnion_mono (fun i (hi : i ≤ n) ↦ hi.trans ?_) fun _ _ ↦ le_rfl
        exact le_trans (Nat.le_add_right n 1) (le_trans hypo (StrictMono.le_apply hsubmono))
      · use 0; simp
      · use 1
        simpa [eventually_map, eventually_atTop, forall_exists_index] using
            fun _ d hyp ↦ (hyp d (by simp)).trans (by simp)
    _ ≤ 1 - ε := by
      apply Filter.liminf_le_of_le
      · use 0; simp
      simp only [eventually_atTop, forall_exists_index]
      intro b c h
      apply le_trans (h c le_rfl)
      refine (ofReal_le_ofReal_iff (by rw [sub_nonneg]; exact hεbound)).mp ?_
      rw [ofReal_coe_nnreal]
      apply le_trans (hcontradiction (sub c))
      norm_cast
  have accumulation : Tendsto (fun n ↦ μlim (⋃ i ≤ n, U i)) atTop (𝓝 (μlim (⋃ i, U i))) := by
    simp_rw [← Set.accumulate_def, ProbabilityMeasure.tendsto_measure_iUnion_accumulate]
  rw [Cov, coeFn_univ, ← NNReal.tendsto_coe] at accumulation
  have exceeds_bound : ∀ᶠ n in atTop, (1 - ε / 2 : ℝ) ≤ μlim (⋃ i ≤ n, U i) :=
      Tendsto.eventually_const_le (v := 1)
        (by simp only [sub_lt_self_iff, Nat.ofNat_pos, div_pos_iff_of_pos_right]; positivity)
        accumulation
  suffices ∀ᶠ n : ℕ in atTop, False from this.exists.choose_spec
  filter_upwards [exceeds_bound] with n hn
  linarith [hn.trans <| Measurebound n]

variable [CompleteSpace 𝓧]

/-- In a second countable complete metric space, a set of probability measures with compact closure
is tight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a83535342af0ca8700ecacf175bec691206f6ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
