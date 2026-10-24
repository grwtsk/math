# mem_transvections_pow_mul_dilatransvections_of_fixedReduce_ne_smul_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1392f177-dce6-87be-fd81-edaa913a98dc",
  "kind": "theorem",
  "lexical_name": "mem_transvections_pow_mul_dilatransvections_of_fixedReduce_ne_smul_id",
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
  "slug": "mem-transvections-pow-mul-dilatransvections-of-fixedreduce-ne-smul-id--151dc5fc55249fd161ca956e",
  "source": {
    "blob": "25f131af9a73adb314d09ac209d2f389d8587063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 425,
    "path": "GRWTSK/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:151dc5fc55249fd161ca956e450b0c727c17df50d215043e56f36afe5558c325",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1392f177-dce6-87be-fd81-edaa913a98dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_transvections_pow_mul_dilatransvections_of_fixedReduce_ne_smul_id
    {e : V ≃ₗ[K] V}
    (he : ∀ a : K, ∃ x, e.fixedReduce x ≠ a • x) :
    e ∈ transvections K V ^ (finrank K (V ⧸ e.fixedSubmodule) - 1) * dilatransvections K V := by
  induction h : finrank K (V ⧸ e.fixedSubmodule) generalizing e he with
  | zero => simp [mem_dilatransvections_iff_finrank_quotient, h]
  | succ n hind =>
    match n with
    | 0 => simp [mem_dilatransvections_iff_finrank_quotient, h]
    | n + 1 =>
      simp only [ne_eq, add_tsub_cancel_right] at hind ⊢
      simp only [add_assoc, Nat.reduceAdd] at h
      rw [pow_succ', mul_assoc, Set.mem_mul]
      /- The strategy is similar to the first non-exceptional case:
        we construct `f : Dual K V` and `v : V` such that,
        setting `t = auxTransvection hf`, we have `e = t⁻¹ * (t * e)`
        and `t * e` satisfies the induction hypothesis,
        after possibly replacing `f` by `f + g` for a suitable `g`. -/
      obtain ⟨f, v, hv, hf, hfv⟩ := exists_dual_of_fixedReduce_ne_smul he (by omega)
      have hv_notMem : v ∉ e.fixedSubmodule := by
        simpa [Submodule.Quotient.mk_eq_zero] using hv.ne_zero 0
      have hrank : finrank K (V ⧸ (e.fixedSubmodule ⊔ K ∙ v)) = n + 1 := by
        have := finrank_quotient_sup_span_singleton hv_notMem
        omega
      -- The case `n = 0` is easy
      rcases Nat.eq_zero_or_pos n with hn0 | hn_pos
      · simp only [hn0, pow_zero, one_mul]
        refine ⟨(auxTransvection hf)⁻¹, ?_, auxTransvection hf * e, ?_, by simp⟩
        · rw [inv_mem_transvections_iff]
          apply mem_transvections
        · rw [mem_dilatransvections_iff_finrank_quotient,
            auxTransvection_mul_fixed hfv, hrank, hn0, zero_add]
      by_cases he' : auxTransvection hf * e ∈ transvections K V ^ n * dilatransvections K V
      · -- This is the easy case where one knows that `auxTransvection hf * e` is
        -- the product of at most `n + 1` transvections
        refine ⟨(auxTransvection hf)⁻¹, ?_, auxTransvection hf * e, he', by simp⟩
        rw [inv_mem_transvections_iff]
        apply mem_transvections
      -- Otherwise, we will need to modify `auxTransvection hf` by changing `f`.
      have hne_top : e.fixedSubmodule ⊔ K ∙ (e v - v) ⊔ K ∙ v < ⊤ := by
        rw [sup_right_comm]
        exact sup_span_singleton_lt_top _ (by rw [hrank]; omega)
      obtain ⟨g : Dual K V, hg0 : g ≠ 0, hg2⟩ :=
        Submodule.exists_dual_map_eq_bot_of_lt_top hne_top inferInstance
      rw [← le_ker_iff_map] at hg2
      have hg : e.fixedSubmodule ⊔ K ∙ (e v - v) ≤ ker (f + g) := fun x hx ↦ by
        rw [mem_ker, LinearMap.add_apply, mem_ker.mp (hf hx),
          mem_ker.mp (hg2 (mem_sup_left hx)), add_zero]
      have hfgv : (f + g) v = 1 := by
        rw [LinearMap.add_apply, hfv,
          mem_ker.mp (hg2 (mem_sup_right (mem_span_singleton_self v))), add_zero]
      refine ⟨(auxTransvection hg)⁻¹, ?_, auxTransvection hg * e, ?_, by simp⟩
      · rw [inv_mem_transvections_iff]
        apply mem_transvections
      -- It remains to prove that `auxTransvection hg * e` satisfies the induction hypothesis
      apply hind ?_ (by rw [auxTransvection_mul_fixed hfgv, hrank])
      -- The induction hypothesis implies that `(auxTransvection hf * e).fixedReduce`
      -- is a homothety, for otherwise the previous case would apply.
      obtain ⟨a, ha⟩ : ∃ a : K, ∀ x, (auxTransvection hf * e).fixedReduce x = a • x := by
        contrapose! he'
        exact hind he' (by rw [auxTransvection_mul_fixed hfv, hrank])
      -- Then `(auxTransvection hg * e).fixedReduce` cannot also be a homothety.
      intro b
      by_contra! hb
      exact not_forall_fixedReduce_eq_smul hv hfv hfgv hg0 hne_top ha hb

/-- If an element `e : V ≃ₗ[K] V` is not exceptional,
then it is the product of at most `finrank K (V ⧸ e.fixedSubmodule)` dilatransvections.

This is the non-exceptional case in Dieudonné's theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f131af9a73adb314d09ac209d2f389d8587063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
