# mem_transvections_pow_mul_dilatransvections_of_fixedReduce_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c09ebf517eda0c3de8a5828a1bbe938f71e700f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3049034a-e9f5-07f7-90c9-ad85e0b60b6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32d6ca19-b664-bbcd-86f3-bb3541da26ac",
  "kind": "theorem",
  "lexical_name": "mem_transvections_pow_mul_dilatransvections_of_fixedReduce_eq_one",
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
  "slug": "mem-transvections-pow-mul-dilatransvections-of-fixedreduce-eq-one--40776b5379fcc3462c84d8e3",
  "source": {
    "blob": "c09ebf517eda0c3de8a5828a1bbe938f71e700f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 217,
    "path": "GRWTSK/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40776b5379fcc3462c84d8e3710025815c2f901111a8cdc44eede235b18544d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32d6ca19-b664-bbcd-86f3-bb3541da26ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_transvections_pow_mul_dilatransvections_of_fixedReduce_eq_one
    {e : V ≃ₗ[K] V} (he : e.fixedReduce = 1) :
    e ∈ transvections K V ^ (finrank K (V ⧸ e.fixedSubmodule) - 1) * dilatransvections K V := by
  induction h : finrank K (V ⧸ e.fixedSubmodule) generalizing e he with
  | zero => simp [mem_dilatransvections_iff_finrank_quotient, h]
  | succ n hind =>
    match n with
    | 0 => simp [mem_dilatransvections_iff_finrank_quotient, h]
    | n + 1 =>
      simp only [add_assoc, Nat.reduceAdd] at h
      simp only [add_tsub_cancel_right] at hind
      simp only [add_tsub_cancel_right, pow_succ', mul_assoc, Set.mem_mul]
      /- We construct a linear form `f` which vanishes on `e.fixedSubmodule`,
        and a vector `v` such that `f v = 1`.
        Consider the transvection `t = transvection f v`.
        Then `t * e` satisfies the induction hypothesis and
        the relation `e = t⁻¹ * (t * e)` implies that `e` satisfies the theorem.
        This transvection is given by `auxTransvection`. -/
      have : ∃ f : Dual K V, ∃ v : V, e.fixedSubmodule ≤ ker f ∧ f v = 1 := by
        have : ∃ u : V, u ∉ e.fixedSubmodule := by
          by_contra! he
          rw [← Submodule.eq_top_iff'] at he
          rw [he, ← Nat.add_left_inj, Submodule.finrank_quotient_add_finrank, finrank_top] at h
          simp at h
        obtain ⟨u, hu⟩ := this
        obtain ⟨f, hfu, hf⟩ := Submodule.exists_dual_map_eq_bot_of_notMem hu inferInstance
        let v := (f u)⁻¹ • u
        have hv : f v = 1 := by simp [v, inv_mul_cancel₀ hfu]
        exact ⟨f, v, by rwa [LinearMap.le_ker_iff_map], hv⟩
      obtain ⟨f, v, hf, hv⟩ := this
      -- We have chosen `f` and `v`.
      -- Since `f v = 1`, one has `v ∉ e.fixedSubmodule`.
      have hv_notMem : v ∉ e.fixedSubmodule := fun hv' ↦ by
        apply one_ne_zero' K
        rw [← hv, ← LinearMap.mem_ker]
        exact hf hv'
      -- Using that `e.fixedReduce = 1`, we have `v - e v ∈ e.fixedSubmodule`.
      have hv' : v - e v ∈ e.fixedSubmodule := by
        rw [← e.fixedSubmodule.ker_mkQ, LinearMap.mem_ker,
          map_sub, sub_eq_zero]
        simp [← fixedReduce_mk, he]
      set t := auxTransvection (e := e) (f := f) (u := v) (by
        simpa [hf] using hf (sub_mem_comm_iff.mp hv')) with ht
      refine ⟨t⁻¹, ?_, t * e, ?_, by simp⟩
      · -- We prove that `t⁻¹` is a transvection
        rw [inv_mem_transvections_iff, ht]
        apply mem_transvections
      -- It remains to prove that `t * e` satisfies the induction hypothesis
      apply hind
      · -- We prove that `(t * e).fixedReduce = 1`.
        simp only [ht, one_eq_refl, fixedReduce_eq_one, auxTransvection_mul_fixed hv] at he ⊢
        intro w
        simp only [auxTransvection, LinearEquiv.mul_apply, transvection.apply,
          add_sub_right_comm]
        apply mem_sup_left
        apply Submodule.add_mem _ (he w)
        exact smul_mem _ _ hv'
      · -- `finrank` condition
        rw [← Nat.add_left_inj, finrank_mod_auxTransvection_mul_fixed hv hv_notMem, h]

/- Private lemmas for the second non-exceptional case. -/

omit [Module.Finite K V] in
variable {e} in
/-- If the images of `u` and `e u` in `V ⧸ e.fixedSubmodule` are linearly independent,
then `e u` does not belong to `e.fixedSubmodule ⊔ K ∙ (e u - u)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09ebf517eda0c3de8a5828a1bbe938f71e700f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
