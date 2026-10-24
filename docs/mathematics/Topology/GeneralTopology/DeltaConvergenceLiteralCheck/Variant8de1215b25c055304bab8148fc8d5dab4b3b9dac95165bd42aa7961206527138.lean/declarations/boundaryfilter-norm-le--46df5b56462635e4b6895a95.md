# boundaryFilter_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:925b6876-19be-d83e-f91d-bd8ed5b5a3ee",
  "kind": "theorem",
  "lexical_name": "boundaryFilter_norm_le",
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
  "slug": "boundaryfilter-norm-le--46df5b56462635e4b6895a95",
  "source": {
    "blob": "70c261654e26f4f3187c1c46aaa3389e0c344c16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaConvergenceLiteralCheck/Variant8de1215b25c055304bab8148fc8d5dab4b3b9dac95165bd42aa7961206527138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46df5b56462635e4b6895a95357d9da19b8887247a7dedd8bc235c41cddad83c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaConvergenceLiteralCheck/Variant8de1215b25c055304bab8148fc8d5dab4b3b9dac95165bd42aa7961206527138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:925b6876-19be-d83e-f91d-bd8ed5b5a3ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryFilter_norm_le (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) :
    ‖boundaryFilter ε h t‖ ≤ 2 * Real.exp 1 / ‖1 + (t : ℂ) * Complex.I‖ := by
  have hε1 : ε ≤ 1 := by linarith
  have hd : (1 / 2 : ℝ) ≤ 1 - 4 * ε ^ 2 := by nlinarith [sq_nonneg ε]
  have hratio := W_horizontal_ratio_bound ε t hε hsmall
  have hc : Real.exp ε / (1 - 4 * ε ^ 2) ≤ 2 * Real.exp 1 := by
    have h := div_le_div₀ (Real.exp_pos 1).le (Real.exp_le_exp.mpr hε1)
      (by norm_num : (0 : ℝ) < 1 / 2) hd
    simpa [div_div, div_eq_mul_inv, mul_comm] using h
  have hsreal : 1 ≤ (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I)).re := by
    simp only [Complex.add_re, Complex.one_re, Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, Complex.I_re, Complex.I_im, mul_zero, sub_zero, add_zero,
      zero_mul]
    nlinarith
  have hs : 1 ≤ ‖1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I)‖ :=
    hsreal.trans (Complex.re_le_norm _)
  have hsinv : ‖(1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I))⁻¹ ^ 6‖ ≤ 1 := by
    rw [norm_pow, norm_inv]
    apply pow_le_one₀ (inv_nonneg.mpr (norm_nonneg _))
    simpa using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1) hs
  have hdpos : 0 < ‖1 + (t : ℂ) * Complex.I‖ :=
    norm_pos_iff.mpr (boundary_denominator_ne_zero t)
  have hden : ‖1 + (t : ℂ) * Complex.I‖ ≤
      ‖1 + (ε : ℂ) + (t : ℂ) * Complex.I‖ := by
    apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
    rw [boundary_denominator_norm_sq, ← Complex.normSq_eq_norm_sq]
    simp only [Complex.normSq_apply, Complex.add_re, Complex.one_re, Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im,
      mul_zero, sub_zero, add_zero, Complex.add_im, Complex.one_im,
      Complex.mul_im, mul_one, zero_add]
    nlinarith
  rw [boundaryFilter, norm_div, norm_mul]
  apply div_le_div₀ (by positivity : (0 : ℝ) ≤ 2 * Real.exp 1) _ hdpos hden
  calc
    _ ≤ (2 * Real.exp 1) * 1 :=
      mul_le_mul (hratio.trans hc) hsinv (norm_nonneg _) (by positivity)
    _ = _ := mul_one _

/-- The squared full boundary error is bounded by one integrable Cauchy weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaConvergenceLiteralCheck/Variant8de1215b25c055304bab8148fc8d5dab4b3b9dac95165bd42aa7961206527138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaConvergenceLiteralCheck/Variant8de1215b25c055304bab8148fc8d5dab4b3b9dac95165bd42aa7961206527138.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c261654e26f4f3187c1c46aaa3389e0c344c16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
