# taylor_remainder_bound_c_lt_x

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 524,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41526f34-6d18-0a94-16bb-20851c0da1b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c52458b-5314-4d3e-f9aa-96a3f0da90bc",
  "kind": "theorem",
  "lexical_name": "taylor_remainder_bound_c_lt_x",
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
  "slug": "taylor-remainder-bound-c-lt-x--ba4016952a4c2231597af673",
  "source": {
    "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 524,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba4016952a4c2231597af673764275f82594e570809f2b89b0fbf0facda4d345",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c52458b-5314-4d3e-f9aa-96a3f0da90bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_remainder_bound_c_lt_x {f : ℝ → ℝ} {a b c : ℝ} {m : ℕ} {M : ℝ}
    (hca : a ≤ c)
    (hf : ContDiff ℝ (m + 1) f)
    (hM : ∀ y ∈ Set.Icc a b, ‖iteratedDeriv (m + 1) f y‖ ≤ M)
    (x : ℝ) (hx : x ∈ Set.Icc a b) (hcx : c < x) :
    ‖f x - ∑ i ∈ Finset.range (m + 1), (iteratedDeriv i f c / i.factorial) * (x - c) ^ i‖
        ≤ M * |x - c| ^ (m + 1) / (m + 1).factorial := by
  open Set Finset in
  have hcx_le : c ≤ x := le_of_lt hcx
  have hI_sub : Icc c x ⊆ Icc a b := Icc_subset_Icc hca hx.2
  have hf_on : ContDiffOn ℝ (m + 1) f (Icc c x) := hf.contDiffOn.mono hI_sub
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
  have hξ_ab : ξ ∈ Icc a b := hI_sub (Ioo_subset_Icc_self hξ_mem)
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
      exact iteratedDerivWithin_Icc_left_eq_iteratedDeriv hcx (hf.of_le hi_le)
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

/-- Taylor remainder bound for x < c case (Lagrange form via reflection).

For `x < c`, we define g(t) = f(2c - t), apply `taylor_mean_remainder_lagrange` on `[c, 2c-x]`,
then use `iteratedDeriv_reflect` to convert back to f's derivatives. The key insight is that
g's Taylor expansion at c, evaluated at 2c-x, equals f's Taylor expansion at c, evaluated at x,
because the (-1)^i factors from the derivatives cancel with the (-1)^i factors from the powers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feca7dade96cdc55e024c788dd77b2c78a3eec8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
