# StieltjesFunction.ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77501f213b20f6cf60407d4d24ff8eb3c17f7cd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b9dbeac-b94a-3577-66c8-4dcfaae54107",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3bea1029-c43c-5fb9-a9b5-48fdd0897a3f",
  "kind": "theorem",
  "lexical_name": "StieltjesFunction.ae_hasDerivAt",
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
  "slug": "stieltjesfunction-ae-hasderivat--404d3583a7496e001398e834",
  "source": {
    "blob": "77501f213b20f6cf60407d4d24ff8eb3c17f7cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:404d3583a7496e001398e83433eeb22e84477111c2dfef77298d90a9fca708ba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bea1029-c43c-5fb9-a9b5-48fdd0897a3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StieltjesFunction.ae_hasDerivAt (f : StieltjesFunction) :
    ∀ᵐ x, HasDerivAt f (rnDeriv f.measure volume x).toReal x := by
  /- Denote by `μ` the Stieltjes measure associated to `f`.
    The general theorem `VitaliFamily.ae_tendsto_rnDeriv` ensures that `μ [x, y] / (y - x)` tends
    to the Radon-Nikodym derivative as `y` tends to `x` from the right. As `μ [x,y] = f y - f (x^-)`
    and `f (x^-) = f x` almost everywhere, this gives differentiability on the right.
    On the left, `μ [y, x] / (x - y)` again tends to the Radon-Nikodym derivative.
    As `μ [y, x] = f x - f (y^-)`, this is not exactly the right result, so one uses a sandwiching
    argument to deduce the convergence for `(f x - f y) / (x - y)`. -/
  filter_upwards [VitaliFamily.ae_tendsto_rnDeriv (vitaliFamily (volume : Measure ℝ) 1) f.measure,
    rnDeriv_lt_top f.measure volume, f.countable_leftLim_ne.ae_notMem volume] with x hx h'x h''x
  -- Limit on the right, following from differentiation of measures
  have L1 :
    Tendsto (fun y => (f y - f x) / (y - x)) (𝓝[>] x) (𝓝 (rnDeriv f.measure volume x).toReal) := by
    apply Tendsto.congr' _
      ((ENNReal.tendsto_toReal h'x.ne).comp (hx.comp (Real.tendsto_Icc_vitaliFamily_right x)))
    filter_upwards [self_mem_nhdsWithin]
    rintro y (hxy : x < y)
    simp only [comp_apply, StieltjesFunction.measure_Icc, Real.volume_Icc, Classical.not_not.1 h''x]
    rw [← ENNReal.ofReal_div_of_pos (sub_pos.2 hxy), ENNReal.toReal_ofReal]
    exact div_nonneg (sub_nonneg.2 (f.mono hxy.le)) (sub_pos.2 hxy).le
  -- Limit on the left, following from differentiation of measures. Its form is not exactly the one
  -- we need, due to the appearance of a left limit.
  have L2 : Tendsto (fun y => (leftLim f y - f x) / (y - x)) (𝓝[<] x)
      (𝓝 (rnDeriv f.measure volume x).toReal) := by
    apply Tendsto.congr' _
      ((ENNReal.tendsto_toReal h'x.ne).comp (hx.comp (Real.tendsto_Icc_vitaliFamily_left x)))
    filter_upwards [self_mem_nhdsWithin]
    rintro y (hxy : y < x)
    simp only [comp_apply, StieltjesFunction.measure_Icc, Real.volume_Icc]
    rw [← ENNReal.ofReal_div_of_pos (sub_pos.2 hxy), ENNReal.toReal_ofReal, ← neg_neg (y - x),
      div_neg, neg_div', neg_sub, neg_sub]
    exact div_nonneg (sub_nonneg.2 (f.mono.leftLim_le hxy.le)) (sub_pos.2 hxy).le
  -- Shifting a little bit the limit on the left, by `(y - x)^2`.
  have L3 : Tendsto (fun y => (leftLim f (y + 1 * (y - x) ^ 2) - f x) / (y - x)) (𝓝[<] x)
      (𝓝 (rnDeriv f.measure volume x).toReal) := by
    apply tendsto_apply_add_mul_sq_div_sub (nhdsLT_le_nhdsNE x) L2
    apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
    · apply Tendsto.mono_left _ nhdsWithin_le_nhds
      have : Tendsto (fun y : ℝ => y + ↑1 * (y - x) ^ 2) (𝓝 x) (𝓝 (x + ↑1 * (x - x) ^ 2)) :=
        tendsto_id.add (((tendsto_id.sub_const x).pow 2).const_mul ↑1)
      simpa using this
    · filter_upwards [Ioo_mem_nhdsLT <| show x - 1 < x by simp]
      rintro y ⟨hy : x - 1 < y, h'y : y < x⟩
      rw [mem_Iio]
      nlinarith
  -- Deduce the correct limit on the left, by sandwiching.
  have L4 :
    Tendsto (fun y => (f y - f x) / (y - x)) (𝓝[<] x) (𝓝 (rnDeriv f.measure volume x).toReal) := by
    apply tendsto_of_tendsto_of_tendsto_of_le_of_le' L3 L2
    · filter_upwards [self_mem_nhdsWithin]
      rintro y (hy : y < x)
      refine div_le_div_of_nonpos_of_le (by linarith) ((sub_le_sub_iff_right _).2 ?_)
      apply f.mono.le_leftLim
      have : ↑0 < (x - y) ^ 2 := sq_pos_of_pos (sub_pos.2 hy)
      linarith
    · filter_upwards [self_mem_nhdsWithin]
      rintro y (hy : y < x)
      refine div_le_div_of_nonpos_of_le (by linarith) ?_
      simpa only [sub_le_sub_iff_right] using f.mono.leftLim_le (le_refl y)
  -- prove the result by splitting into left and right limits.
  rw [hasDerivAt_iff_tendsto_slope, slope_fun_def_field, ← nhdsLT_sup_nhdsGT, tendsto_sup]
  exact ⟨L4, L1⟩

/-- A monotone function is almost everywhere differentiable, with derivative equal to the
Radon-Nikodym derivative of the associated Stieltjes measure with respect to Lebesgue. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77501f213b20f6cf60407d4d24ff8eb3c17f7cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
