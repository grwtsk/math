# meas_ge_le_evariance_div_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82110a39-8fb4-8a05-d345-b57669bb5eb9",
  "kind": "theorem",
  "lexical_name": "meas_ge_le_evariance_div_sq",
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
  "slug": "meas-ge-le-evariance-div-sq--d7e012060ad1dd009eda0c33",
  "source": {
    "blob": "34a4c6fa3818b09f2413169a1f56da463914c95a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 273,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7e012060ad1dd009eda0c333426fb67b704c34baaf0f1b870622fa1c0c79f08",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82110a39-8fb4-8a05-d345-b57669bb5eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meas_ge_le_evariance_div_sq {X : Ω → ℝ} (hX : AEStronglyMeasurable X ℙ) {c : ℝ≥0}
    (hc : c ≠ 0) : ℙ {ω | ↑c ≤ |X ω - 𝔼[X]|} ≤ eVar[X] / c ^ 2 := by
  have A : (c : ℝ≥0∞) ≠ 0 := by rwa [Ne.def, ENNReal.coe_eq_zero]
  have B : AEStronglyMeasurable (fun _ : Ω => 𝔼[X]) ℙ := aestronglyMeasurable_const
  convert meas_ge_le_mul_pow_snorm ℙ two_ne_zero ENNReal.two_ne_top (hX.sub B) A using 1
  · congr
    simp only [Pi.sub_apply, ENNReal.coe_le_coe, ← Real.norm_eq_abs, ← coe_nnnorm,
      NNReal.coe_le_coe, ENNReal.ofReal_coe_nnreal]
  · rw [snorm_eq_lintegral_rpow_nnnorm two_ne_zero ENNReal.two_ne_top]
    simp only [show ENNReal.some (c ^ 2) = (ENNReal.some c) ^ 2 by norm_cast, coe_two, one_div,
      Pi.sub_apply]
    rw [div_eq_mul_inv, ENNReal.inv_pow, mul_comm, ENNReal.rpow_two]
    congr
    simp_rw [← ENNReal.rpow_mul, inv_mul_cancel (two_ne_zero : (2 : ℝ) ≠ 0), ENNReal.rpow_two,
      ENNReal.rpow_one, evariance]
#align probability_theory.meas_ge_le_evariance_div_sq ProbabilityTheory.meas_ge_le_evariance_div_sq

/-- *Chebyshev's inequality* : one can control the deviation probability of a real random variable
from its expectation in terms of the variance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a4c6fa3818b09f2413169a1f56da463914c95a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
