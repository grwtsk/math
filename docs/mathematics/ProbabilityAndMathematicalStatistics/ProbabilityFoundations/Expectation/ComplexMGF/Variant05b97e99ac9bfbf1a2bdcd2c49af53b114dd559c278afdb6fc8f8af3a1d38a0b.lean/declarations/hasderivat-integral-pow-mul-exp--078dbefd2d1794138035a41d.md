# hasDerivAt_integral_pow_mul_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed1ef8c34fa997efe9f80a87bf48c7ca1456c05b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4e93796-b053-6e62-de89-928bda0cfdd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3824721-9230-07ac-3157-7283b9770b39",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_integral_pow_mul_exp",
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
  "slug": "hasderivat-integral-pow-mul-exp--078dbefd2d1794138035a41d",
  "source": {
    "blob": "ed1ef8c34fa997efe9f80a87bf48c7ca1456c05b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 123,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:078dbefd2d1794138035a41d415845115741c913ecacb4ac04050a74acbde57c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3824721-9230-07ac-3157-7283b9770b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_integral_pow_mul_exp (hz : z.re ∈ interior (integrableExpSet X μ)) (n : ℕ) :
    HasDerivAt (fun z ↦ μ[fun ω ↦ X ω ^ n * cexp (z * X ω)])
        μ[fun ω ↦ X ω ^ (n + 1) * cexp (z * X ω)] z := by
  have hX : AEMeasurable X μ := aemeasurable_of_mem_interior_integrableExpSet hz
  have hz' := hz
  rw [mem_interior_iff_mem_nhds, mem_nhds_iff_exists_Ioo_subset] at hz'
  obtain ⟨l, u, hlu, h_subset⟩ := hz'
  let t := ((z.re - l) ⊓ (u - z.re)) / 2
  have h_pos : 0 < (z.re - l) ⊓ (u - z.re) := by simp [hlu.1, hlu.2]
  have ht : 0 < t := half_pos h_pos
  refine (hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (bound := fun ω ↦ |X ω| ^ (n + 1) * rexp (z.re * X ω + t / 2 * |X ω|))
    (F := fun z ω ↦ X ω ^ n * cexp (z * X ω))
    (F' := fun z ω ↦ X ω ^ (n + 1) * cexp (z * X ω)) (Metric.ball_mem_nhds _ (half_pos ht))
    ?_ ?_ ?_ ?_ ?_ ?_).2
  · exact .of_forall fun z ↦ by fun_prop
  · exact integrable_pow_mul_cexp_of_re_mem_interior_integrableExpSet hz n
  · fun_prop
  · refine ae_of_all _ fun ω ε hε ↦ ?_
    simp only [norm_mul, norm_pow, norm_real, Real.norm_eq_abs]
    rw [Complex.norm_exp]
    simp only [mul_re, ofReal_re, ofReal_im, mul_zero, sub_zero]
    gcongr
    have : ε = z + (ε - z) := by simp
    rw [this, add_re, add_mul]
    gcongr _ + ?_
    refine (le_abs_self _).trans ?_
    rw [abs_mul]
    gcongr
    refine (abs_re_le_norm _).trans ?_
    simp only [Metric.mem_ball, dist_eq_norm] at hε
    exact hε.le
  · refine integrable_pow_abs_mul_exp_add_of_integrable_exp_mul ?_ ?_ ?_ ?_ (t := t) (n + 1)
    · exact h_subset (add_half_inf_sub_mem_Ioo hlu)
    · exact h_subset (sub_half_inf_sub_mem_Ioo hlu)
    · positivity
    · exact lt_of_lt_of_le (by simp [ht]) (le_abs_self _)
  · refine ae_of_all _ fun ω ε hε ↦ ?_
    simp_rw [pow_succ, mul_assoc]
    refine HasDerivAt.const_mul _ ?_
    simp_rw [← smul_eq_mul, Complex.exp_eq_exp_ℂ]
    convert! hasDerivAt_exp_smul_const (X ω : ℂ) ε using 1
    rw [smul_eq_mul, mul_comm]

/-- For all `z : ℂ` with `z.re ∈ interior (integrableExpSet X μ)`,
`complexMGF X μ` is differentiable at `z` with derivative `μ[X * exp (z * X)]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed1ef8c34fa997efe9f80a87bf48c7ca1456c05b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
