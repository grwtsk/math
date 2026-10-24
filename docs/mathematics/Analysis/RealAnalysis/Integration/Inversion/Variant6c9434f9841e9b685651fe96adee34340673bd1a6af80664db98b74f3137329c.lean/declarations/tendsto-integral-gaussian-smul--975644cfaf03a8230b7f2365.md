# tendsto_integral_gaussian_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "863049c1be20f280fb4f1cd989fb6fec45692236",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb32e1ef-5998-d5c5-428f-364e32eae3f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f26b212e-b990-88cf-310a-7fb8230c5f4b",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_gaussian_smul'",
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
  "slug": "tendsto-integral-gaussian-smul--975644cfaf03a8230b7f2365",
  "source": {
    "blob": "863049c1be20f280fb4f1cd989fb6fec45692236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:975644cfaf03a8230b7f23653a47104bd138f45913fb0e151830c335299922d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f26b212e-b990-88cf-310a-7fb8230c5f4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_gaussian_smul' (hf : Integrable f) {v : V} (h'f : ContinuousAt f v) :
    Tendsto (fun (c : ℝ) ↦
      ∫ w : V, ((π * c : ℂ) ^ (finrank ℝ V / 2 : ℂ) * cexp (-π ^ 2 * c * ‖v - w‖ ^ 2)) • f w)
    atTop (𝓝 (f v)) := by
  let φ : V → ℝ := fun w ↦ π ^ (finrank ℝ V / 2 : ℝ) * Real.exp (-π^2 * ‖w‖^2)
  have A : Tendsto (fun (c : ℝ) ↦ ∫ w : V, (c ^ finrank ℝ V * φ (c • (v - w))) • f w)
      atTop (𝓝 (f v)) := by
    apply tendsto_integral_comp_smul_smul_of_integrable'
    · exact fun x ↦ by positivity
    · rw [integral_const_mul, GaussianFourier.integral_rexp_neg_mul_sq_norm (by positivity)]
      nth_rewrite 2 [← pow_one π]
      rw [← rpow_natCast, ← rpow_natCast, ← rpow_sub pi_pos, ← rpow_mul pi_nonneg,
        ← rpow_add pi_pos]
      ring_nf
      exact rpow_zero _
    · have A : Tendsto (fun (w : V) ↦ π^2 * ‖w‖^2) (cobounded V) atTop := by
        rw [tendsto_const_mul_atTop_of_pos (by positivity)]
        apply (tendsto_pow_atTop two_ne_zero).comp tendsto_norm_cobounded_atTop
      have B := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (finrank ℝ V / 2) 1
        zero_lt_one |>.comp A |>.const_mul (π ^ (-finrank ℝ V / 2 : ℝ))
      rw [mul_zero] at B
      convert B using 2 with x
      simp only [neg_mul, one_mul, Function.comp_apply, ← mul_assoc, ← rpow_natCast, φ]
      congr 1
      rw [mul_rpow (by positivity) (by positivity), ← rpow_mul pi_nonneg,
        ← rpow_mul (norm_nonneg _), ← mul_assoc, ← rpow_add pi_pos, mul_comm]
      congr <;> ring
    · exact hf
    · exact h'f
  have B : Tendsto
      (fun (c : ℝ) ↦ ∫ w : V, ((c^(1/2 : ℝ)) ^ finrank ℝ V * φ ((c^(1/2 : ℝ)) • (v - w))) • f w)
      atTop (𝓝 (f v)) :=
    A.comp (tendsto_rpow_atTop (by norm_num))
  apply B.congr'
  filter_upwards [Ioi_mem_atTop 0] with c (hc : 0 < c)
  congr with w
  rw [← coe_smul]
  congr
  rw [ofReal_mul, ofReal_mul, ofReal_exp, ← mul_assoc]
  congr
  · rw [mul_cpow_ofReal_nonneg pi_nonneg hc.le, ← rpow_natCast, ← rpow_mul hc.le, mul_comm,
      ofReal_cpow pi_nonneg, ofReal_cpow hc.le]
    simp [div_eq_inv_mul]
  · norm_cast
    simp only [one_div, norm_smul, Real.norm_eq_abs, mul_pow, sq_abs, neg_mul, neg_inj,
      ← rpow_natCast, ← rpow_mul hc.le, mul_assoc]
    norm_num

end Real

variable [CompleteSpace E]

/-- **Fourier inversion formula**: If a function `f` on a finite-dimensional real inner product
space is integrable, and its Fourier transform `𝓕 f` is also integrable, then `𝓕⁻ (𝓕 f) = f` at
continuity points of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `863049c1be20f280fb4f1cd989fb6fec45692236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
