# differentiable_paperFT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfc4a8b030c00845c3242faa3dbec21eaae5522b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:395e34d7-fd75-38f4-b73b-3ec519ad68b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b6787f5-8d1a-2e55-0e42-edb1ce3753fe",
  "kind": "theorem",
  "lexical_name": "differentiable_paperFT",
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
  "slug": "differentiable-paperft--f32c7a98ab08e2f78ab598f6",
  "source": {
    "blob": "cfc4a8b030c00845c3242faa3dbec21eaae5522b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 497,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f32c7a98ab08e2f78ab598f6145d411dd405c620af6e97c390991e50d7fe5416",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b6787f5-8d1a-2e55-0e42-edb1ce3753fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiable_paperFT {k : ℝ → ℂ} (hk : Continuous k) (hkc : HasCompactSupport k) :
    Differentiable ℂ (paperFT k) := by
  intro z₀
  obtain ⟨Λ₁, hΛ₁⟩ := Zeta23.EF.exists_abs_le_of_hasCompactSupport hkc
  have hΛ₀ : ∀ u : ℝ, k u ≠ 0 → |u| ≤ max Λ₁ 0 := fun u hu => (hΛ₁ u hu).trans (le_max_left _ _)
  have hΛ₀0 : (0:ℝ) ≤ max Λ₁ 0 := le_max_right _ _
  have hbound_int : Integrable (fun u : ℝ => ‖k u‖
      * (max Λ₁ 0 * Real.exp ((‖z₀‖ + 1) * max Λ₁ 0))) :=
    (hk.norm.integrable_of_hasCompactSupport hkc.norm).mul_const _
  have key := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := volume) (s := Metric.ball z₀ 1) (x₀ := z₀)
    (F := fun z (u : ℝ) => k u * cexp (I * z * u))
    (F' := fun z (u : ℝ) => k u * ((I : ℂ) * u) * cexp (I * z * u))
    (bound := fun u : ℝ => ‖k u‖ * (max Λ₁ 0 * Real.exp ((‖z₀‖ + 1) * max Λ₁ 0)))
    (Metric.ball_mem_nhds z₀ one_pos)
    (Filter.Eventually.of_forall fun z => (Continuous.aestronglyMeasurable (by fun_prop)))
    ((Continuous.integrable_of_hasCompactSupport (by fun_prop) hkc.mul_right))
    (Continuous.aestronglyMeasurable (by fun_prop))
    (Filter.Eventually.of_forall fun u => fun z hz => ?_)
    hbound_int
    (Filter.Eventually.of_forall fun u => fun z hz => ?_)
  · exact ⟨_, key.2.hasFDerivAt⟩
  · rcases eq_or_ne (k u) 0 with hku | hku
    · simp [hku]
    · have hu := hΛ₀ u hku
      have hz' : ‖z‖ ≤ ‖z₀‖ + 1 := by
        have := norm_sub_norm_le z z₀
        rw [Metric.mem_ball, Complex.dist_eq] at hz
        linarith [le_of_lt hz]
      rw [norm_mul, norm_mul, Complex.norm_exp]
      have h1 : ‖(I : ℂ) * u‖ ≤ max Λ₁ 0 := by
        rw [norm_mul, Complex.norm_I, one_mul, Complex.norm_real, Real.norm_eq_abs]
        exact hu
      have h2 : (I * z * u).re ≤ (‖z₀‖ + 1) * max Λ₁ 0 := by
        have hre : (I * z * u).re = -(z.im * u) := by
          simp [Complex.mul_re, Complex.mul_im]
        rw [hre]
        calc -(z.im * u) ≤ |z.im * u| := neg_le_abs _
          _ = |z.im| * |u| := abs_mul _ _
          _ ≤ (‖z₀‖ + 1) * max Λ₁ 0 := by
              refine mul_le_mul ?_ hu (abs_nonneg _) (by positivity)
              exact (Complex.abs_im_le_norm z).trans hz'
      calc ‖k u‖ * ‖(I : ℂ) * u‖ * Real.exp ((I * z * u).re)
          ≤ ‖k u‖ * (max Λ₁ 0) * Real.exp ((‖z₀‖ + 1) * max Λ₁ 0) := by
            refine mul_le_mul (mul_le_mul le_rfl h1 (norm_nonneg _) (norm_nonneg _))
              (Real.exp_le_exp.mpr h2) (Real.exp_nonneg _) (by positivity)
        _ = ‖k u‖ * (max Λ₁ 0 * Real.exp ((‖z₀‖ + 1) * max Λ₁ 0)) := by ring
  · have h1 : HasDerivAt (fun z : ℂ => I * z * (u:ℂ)) (I * u) z := by
      have := ((hasDerivAt_id z).const_mul (I : ℂ)).mul_const ((u:ℂ))
      simpa [mul_comm, mul_assoc, mul_left_comm] using this
    have h2 := h1.cexp
    have h3 := h2.const_mul (k u)
    exact h3.congr_deriv (by ring)

/-- log(2+x)/(1+x²) ≤ 6 (1+x)^{−3/2} for x ≥ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfc4a8b030c00845c3242faa3dbec21eaae5522b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
