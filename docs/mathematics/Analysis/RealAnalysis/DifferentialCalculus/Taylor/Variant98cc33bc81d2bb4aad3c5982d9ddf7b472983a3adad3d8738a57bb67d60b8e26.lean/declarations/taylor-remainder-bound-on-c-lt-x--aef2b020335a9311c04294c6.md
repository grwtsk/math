# taylor_remainder_bound_on_c_lt_x

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff38f359-daf0-8cc0-d99d-c8d979fe8c6f",
  "kind": "theorem",
  "lexical_name": "taylor_remainder_bound_on_c_lt_x",
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
  "slug": "taylor-remainder-bound-on-c-lt-x--aef2b020335a9311c04294c6",
  "source": {
    "blob": "daa674e10401043ad9a6d9d86250f10900fcc053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aef2b020335a9311c04294c68b4013be1bfa1bfa5d310731f1f838799aee9e69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff38f359-daf0-8cc0-d99d-c8d979fe8c6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_remainder_bound_on_c_lt_x {f : ℝ → ℝ} {a b c : ℝ} {m : ℕ} {M : ℝ} {U : Set ℝ}
    (hU_open : IsOpen U) (hI_sub : Set.Icc a b ⊆ U)
    (hca : a ≤ c)
    (hf : ContDiffOn ℝ (m + 1) f U)
    (hM : ∀ y ∈ Set.Icc a b, ‖iteratedDeriv (m + 1) f y‖ ≤ M)
    (x : ℝ) (hx : x ∈ Set.Icc a b) (hcx : c < x) :
    ‖f x - ∑ i ∈ Finset.range (m + 1), (iteratedDeriv i f c / i.factorial) * (x - c) ^ i‖
        ≤ M * |x - c| ^ (m + 1) / (m + 1).factorial := by
  open Set Finset in
  have hcx_le : c ≤ x := le_of_lt hcx
  have hcI : c ∈ Icc a b := ⟨hca, le_trans hcx_le hx.2⟩
  have hI_sub' : Icc c x ⊆ Icc a b := Icc_subset_Icc hca hx.2
  have hI_sub_U : Icc c x ⊆ U := fun y hy => hI_sub (hI_sub' hy)
  have hcU : c ∈ U := hI_sub hcI
  have hf_on : ContDiffOn ℝ (m + 1) f (Icc c x) := hf.mono hI_sub_U
  have hf_on_m : ContDiffOn ℝ m f (Icc c x) := by
    have hm_le : (m : WithTop ℕ∞) ≤ (m + 1 : ℕ) := by simp
    exact hf_on.of_le hm_le
  have hf_diff : DifferentiableOn ℝ (iteratedDerivWithin m f (Icc c x)) (Ioo c x) := by
    have huniq := uniqueDiffOn_Icc hcx
    have hm_lt : (m : WithTop ℕ∞) < (m + 1 : ℕ) := by
      have : (m : ℕ) < m + 1 := Nat.lt_succ_self m
      exact_mod_cast this
    have hdiff := hf_on.differentiableOn_iteratedDerivWithin hm_lt huniq
    exact hdiff.mono Ioo_subset_Icc_self
  obtain ⟨ξ, hξ_mem, hLagrange⟩ := taylor_mean_remainder_lagrange hcx hf_on_m hf_diff
  have hξ_ab : ξ ∈ Icc a b := hI_sub' (Ioo_subset_Icc_self hξ_mem)
  have hderiv_ξ : iteratedDerivWithin (m + 1) f (Icc c x) ξ = iteratedDeriv (m + 1) f ξ :=
    iteratedDerivWithin_Icc_interior_eq hcx hξ_mem
  have hsum_eq : ∑ i ∈ range (m + 1), (iteratedDeriv i f c / i.factorial) * (x - c) ^ i =
                 taylorWithinEval f m (Icc c x) c x := by
    rw [taylor_within_apply]
    apply sum_congr rfl
    intro i hi
    have hderiv_c : iteratedDerivWithin i f (Icc c x) c = iteratedDeriv i f c := by
      have hi_lt : i < m + 1 := mem_range.mp hi
      have hi_le : (i : WithTop ℕ∞) ≤ (m + 1 : ℕ) := by
        have : (i : ℕ) ≤ m := Nat.lt_succ_iff.mp hi_lt
        exact le_of_lt (by exact_mod_cast Nat.lt_add_one_of_le this)
      exact iteratedDerivWithin_Icc_left_eq_iteratedDeriv_of_isOpen hU_open hcU hcx hI_sub_U (hf.of_le hi_le)
    rw [hderiv_c]
    simp only [smul_eq_mul]
    ring
  rw [hsum_eq, hLagrange, hderiv_ξ]
  rw [norm_div, norm_mul, Real.norm_eq_abs, Real.norm_eq_abs, Real.norm_eq_abs]
  have hfact_pos : (0 : ℝ) < ((m + 1).factorial : ℝ) := Nat.cast_pos.mpr (Nat.factorial_pos _)
  rw [abs_of_pos hfact_pos]
  have hxc_pos : 0 < x - c := sub_pos.mpr hcx
  rw [abs_pow, abs_of_pos hxc_pos]
  have hbound := hM ξ hξ_ab
  have h_pow_fact_pos : 0 < (x - c) ^ (m + 1) / (m + 1).factorial := by
    apply div_pos
    · exact pow_pos hxc_pos _
    · exact hfact_pos
  calc |iteratedDeriv (m + 1) f ξ| * (x - c) ^ (m + 1) / ↑(m + 1).factorial
      = |iteratedDeriv (m + 1) f ξ| * ((x - c) ^ (m + 1) / ↑(m + 1).factorial) := by ring
    _ ≤ M * ((x - c) ^ (m + 1) / ↑(m + 1).factorial) := by
        apply mul_le_mul_of_nonneg_right hbound (le_of_lt h_pow_fact_pos)
    _ = M * (x - c) ^ (m + 1) / ↑(m + 1).factorial := by ring

/-- Helper: translation invariance of iteratedDeriv for ContDiffOn on open sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa674e10401043ad9a6d9d86250f10900fcc053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
