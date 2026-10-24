# toReal_klDiv_smul_right_eq_smul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d59d9c67-7039-3915-8520-4125fb5ca396",
  "kind": "lemma",
  "lexical_name": "toReal_klDiv_smul_right_eq_smul_left",
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
  "slug": "toreal-kldiv-smul-right-eq-smul-left--6a4ca7f8d92292dc429fd3fd",
  "source": {
    "blob": "d0ed9b931229caef19dd1626bfb1ac775a5194e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant59154718077f6639ddee2f9db77b074bc65bbc5af7f5805a4900a5b45e38ce87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a4ca7f8d92292dc429fd3fdf2dc5cab24b6e4e072d23e9cc8e27d2423a892ae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant59154718077f6639ddee2f9db77b074bc65bbc5af7f5805a4900a5b45e38ce87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d59d9c67-7039-3915-8520-4125fb5ca396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toReal_klDiv_smul_right_eq_smul_left (hμν : μ ≪ ν) (h_int : Integrable (llr μ ν) μ)
    (c : ℝ≥0) :
    (klDiv μ (c • ν)).toReal = c * (klDiv (c⁻¹ • μ) ν).toReal := by
  by_cases hc : c = 0
  · simp only [hc, zero_smul, NNReal.coe_zero, inv_zero, klDiv_zero_left, zero_mul]
    rcases eq_zero_or_neZero μ with rfl | hμ <;> simp
  have h_llr_left := llr_smul_nnreal_left hμν c⁻¹ (by simpa)
  have h_llr_right := llr_smul_nnreal_right hμν c (by simpa)
  rw [toReal_klDiv, toReal_klDiv]
  rotate_left
  · exact hμν.smul_left _
  · refine Integrable.smul_measure_nnreal ?_
    rw [integrable_congr h_llr_left]
    fun_prop
  · exact hμν.smul_right (by simpa)
  · rw [integrable_congr h_llr_right]
    fun_prop
  have h_smul (c : ℝ≥0) (a : ℝ) : c • a = c * a := rfl
  simp only [measureReal_nnreal_smul_apply, integral_smul_nnreal_measure, h_smul, NNReal.coe_inv]
  have h_llr_smul_inv := llr_smul_inv_left_eq_smul_right hμν c (by simpa) (by simp)
  simp only [← ENNReal.coe_inv hc, Measure.coe_nnreal_smul] at h_llr_smul_inv
  rw [integral_congr_ae h_llr_smul_inv, mul_sub, mul_add, mul_inv_cancel_left₀ (by simpa),
    mul_inv_cancel_left₀ (by simpa)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant59154718077f6639ddee2f9db77b074bc65bbc5af7f5805a4900a5b45e38ce87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant59154718077f6639ddee2f9db77b074bc65bbc5af7f5805a4900a5b45e38ce87.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0ed9b931229caef19dd1626bfb1ac775a5194e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
