# Monotone.ae_hasDerivAt

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
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1134b14-32c9-8f80-9fcf-a07c4a0867ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c36e9578-189f-e2c1-e90b-3d120016506b",
  "kind": "theorem",
  "lexical_name": "Monotone.ae_hasDerivAt",
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
  "slug": "monotone-ae-hasderivat--25f12139c0f0f3138a309981",
  "source": {
    "blob": "77501f213b20f6cf60407d4d24ff8eb3c17f7cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25f12139c0f0f3138a309981b8c7db0e7d9653e4da6a4c49008b46006f196d09",
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

Occurrence: `result:c36e9578-189f-e2c1-e90b-3d120016506b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monotone.ae_hasDerivAt {f : ℝ → ℝ} (hf : Monotone f) :
    ∀ᵐ x, HasDerivAt f (rnDeriv hf.stieltjesFunction.measure volume x).toReal x := by
  /- We already know that the Stieltjes function associated to `f` (i.e., `g : x ↦ f (x^+)`) is
    differentiable almost everywhere. We reduce to this statement by sandwiching values of `f` with
    values of `g`, by shifting with `(y - x)^2` (which has no influence on the relevant
    scale `y - x`.) -/
  filter_upwards [hf.stieltjesFunction.ae_hasDerivAt,
    hf.countable_not_continuousAt.ae_notMem volume] with x hx h'x
  have A : hf.stieltjesFunction x = f x := by
    rw [Classical.not_not, hf.continuousAt_iff_leftLim_eq_rightLim] at h'x
    apply le_antisymm _ (hf.le_rightLim (le_refl _))
    rw [← h'x]
    exact hf.leftLim_le (le_refl _)
  rw [hasDerivAt_iff_tendsto_slope, (nhdsLT_sup_nhdsGT x).symm, tendsto_sup,
    slope_fun_def_field, A] at hx
  -- prove differentiability on the right, by sandwiching with values of `g`
  have L1 : Tendsto (fun y => (f y - f x) / (y - x)) (𝓝[>] x)
      (𝓝 (rnDeriv hf.stieltjesFunction.measure volume x).toReal) := by
    -- limit of a helper function, with a small shift compared to `g`
    have : Tendsto (fun y => (hf.stieltjesFunction (y + -1 * (y - x) ^ 2) - f x) / (y - x)) (𝓝[>] x)
        (𝓝 (rnDeriv hf.stieltjesFunction.measure volume x).toReal) := by
      apply tendsto_apply_add_mul_sq_div_sub (nhdsGT_le_nhdsNE x) hx.2
      apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
      · apply Tendsto.mono_left _ nhdsWithin_le_nhds
        have : Tendsto (fun y : ℝ => y + -↑1 * (y - x) ^ 2) (𝓝 x) (𝓝 (x + -↑1 * (x - x) ^ 2)) :=
          tendsto_id.add (((tendsto_id.sub_const x).pow 2).const_mul (-1))
        simpa using this
      · filter_upwards [Ioo_mem_nhdsGT <| show x < x + 1 by simp]
        rintro y ⟨hy : x < y, h'y : y < x + 1⟩
        rw [mem_Ioi]
        nlinarith
    -- apply the sandwiching argument, with the helper function and `g`
    apply tendsto_of_tendsto_of_tendsto_of_le_of_le' this hx.2
    · filter_upwards [self_mem_nhdsWithin] with y hy
      rw [mem_Ioi, ← sub_pos] at hy
      gcongr
      exact hf.rightLim_le (by nlinarith)
    · filter_upwards [self_mem_nhdsWithin] with y hy
      rw [mem_Ioi, ← sub_pos] at hy
      gcongr
      exact hf.le_rightLim le_rfl
  -- prove differentiability on the left, by sandwiching with values of `g`
  have L2 : Tendsto (fun y => (f y - f x) / (y - x)) (𝓝[<] x)
      (𝓝 (rnDeriv hf.stieltjesFunction.measure volume x).toReal) := by
    -- limit of a helper function, with a small shift compared to `g`
    have : Tendsto (fun y => (hf.stieltjesFunction (y + -1 * (y - x) ^ 2) - f x) / (y - x)) (𝓝[<] x)
        (𝓝 (rnDeriv hf.stieltjesFunction.measure volume x).toReal) := by
      apply tendsto_apply_add_mul_sq_div_sub (nhdsLT_le_nhdsNE x) hx.1
      apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
      · apply Tendsto.mono_left _ nhdsWithin_le_nhds
        have : Tendsto (fun y : ℝ => y + -↑1 * (y - x) ^ 2) (𝓝 x) (𝓝 (x + -↑1 * (x - x) ^ 2)) :=
          tendsto_id.add (((tendsto_id.sub_const x).pow 2).const_mul (-1))
        simpa using this
      · filter_upwards [Ioo_mem_nhdsLT <| show x - 1 < x by simp]
        rintro y hy
        rw [mem_Ioo] at hy
        rw [mem_Iio]
        nlinarith
    -- apply the sandwiching argument, with `g` and the helper function
    apply tendsto_of_tendsto_of_tendsto_of_le_of_le' hx.1 this
    · filter_upwards [self_mem_nhdsWithin]
      rintro y hy
      rw [mem_Iio, ← sub_neg] at hy
      apply div_le_div_of_nonpos_of_le hy.le
      exact (sub_le_sub_iff_right _).2 (hf.le_rightLim (le_refl _))
    · filter_upwards [self_mem_nhdsWithin]
      rintro y hy
      rw [mem_Iio, ← sub_neg] at hy
      have : 0 < (y - x) ^ 2 := sq_pos_of_neg hy
      apply div_le_div_of_nonpos_of_le hy.le
      exact (sub_le_sub_iff_right _).2 (hf.rightLim_le (by linarith))
  -- conclude global differentiability
  rw [hasDerivAt_iff_tendsto_slope, slope_fun_def_field, ← nhdsLT_sup_nhdsGT, tendsto_sup]
  exact ⟨L2, L1⟩

/-- A monotone real function is differentiable Lebesgue-almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77501f213b20f6cf60407d4d24ff8eb3c17f7cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
