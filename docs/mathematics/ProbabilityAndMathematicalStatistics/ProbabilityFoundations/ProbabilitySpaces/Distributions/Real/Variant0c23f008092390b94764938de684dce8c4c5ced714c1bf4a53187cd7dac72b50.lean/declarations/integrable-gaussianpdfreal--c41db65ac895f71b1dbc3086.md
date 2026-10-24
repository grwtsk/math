# integrable_gaussianPDFReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08a88e08-6e79-d5e3-35a2-566379056d7e",
  "kind": "lemma",
  "lexical_name": "integrable_gaussianPDFReal",
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
  "slug": "integrable-gaussianpdfreal--c41db65ac895f71b1dbc3086",
  "source": {
    "blob": "a73616cd867487e32bb70b077d764bc71cc2e187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 86,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant0c23f008092390b94764938de684dce8c4c5ced714c1bf4a53187cd7dac72b50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c41db65ac895f71b1dbc3086b46c844bb8a664f608919e46bd9ea91424ee9264",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant0c23f008092390b94764938de684dce8c4c5ced714c1bf4a53187cd7dac72b50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08a88e08-6e79-d5e3-35a2-566379056d7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_gaussianPDFReal (μ : ℝ) (v : ℝ≥0) :
    Integrable (gaussianPDFReal μ v) := by
  rw [gaussianPDFReal_def]
  by_cases hv : v = 0
  · simp [hv]
  let g : ℝ → ℝ := fun x ↦ (√(2 * π * v))⁻¹ * rexp (- x ^ 2 / (2 * v))
  have hg : Integrable g := by
    suffices g = fun x ↦ (√(2 * π * v))⁻¹ * rexp (- (2 * v)⁻¹ * x ^ 2) by
      rw [this]
      refine (integrable_exp_neg_mul_sq ?_).const_mul (√(2 * π * v))⁻¹
      simp [lt_of_le_of_ne (zero_le _) (Ne.symm hv)]
    ext x
    simp only [g, zero_lt_two, mul_nonneg_iff_of_pos_left, NNReal.zero_le_coe, Real.sqrt_mul',
      mul_inv_rev, NNReal.coe_mul, NNReal.coe_inv, NNReal.coe_ofNat, neg_mul, mul_eq_mul_left_iff,
      Real.exp_eq_exp, mul_eq_zero, inv_eq_zero, Real.sqrt_eq_zero, NNReal.coe_eq_zero, hv,
      false_or]
    rw [mul_comm]
    left
    field_simp
  exact Integrable.comp_sub_right hg μ

/-- The gaussian distribution pdf integrates to 1 when the variance is not zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant0c23f008092390b94764938de684dce8c4c5ced714c1bf4a53187cd7dac72b50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant0c23f008092390b94764938de684dce8c4c5ced714c1bf4a53187cd7dac72b50.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a73616cd867487e32bb70b077d764bc71cc2e187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
