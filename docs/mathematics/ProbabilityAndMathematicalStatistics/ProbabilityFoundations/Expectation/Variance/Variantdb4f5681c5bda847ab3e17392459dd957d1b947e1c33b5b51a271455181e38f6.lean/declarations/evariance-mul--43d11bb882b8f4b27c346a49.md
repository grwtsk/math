# evariance_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4634dff20022dc3647faa5c663f097a747d0e26d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d136727-7b65-5ca6-0e8e-5785b1cfbc6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83dbab0e-bef8-e33c-08ef-ffdf73c5517e",
  "kind": "theorem",
  "lexical_name": "evariance_mul",
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
  "slug": "evariance-mul--43d11bb882b8f4b27c346a49",
  "source": {
    "blob": "4634dff20022dc3647faa5c663f097a747d0e26d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 162,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43d11bb882b8f4b27c346a4956f4365183f28e41abaee43c3d2a5d63cc978dae",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83dbab0e-bef8-e33c-08ef-ffdf73c5517e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evariance_mul (c : ℝ) (X : Ω → ℝ) (μ : Measure Ω) :
    evariance (fun ω => c * X ω) μ = ENNReal.ofReal (c ^ 2) * evariance X μ := by
  rw [evariance, evariance, ← lintegral_const_mul' _ _ ENNReal.ofReal_lt_top.ne]
  congr
  ext1 ω
  rw [ENNReal.ofReal, ← ENNReal.coe_pow, ← ENNReal.coe_pow, ← ENNReal.coe_mul]
  congr
  rw [← sq_abs, ← Real.rpow_two, Real.toNNReal_rpow_of_nonneg (abs_nonneg _), NNReal.rpow_two,
    ← mul_pow, Real.toNNReal_mul_nnnorm _ (abs_nonneg _)]
  conv_rhs => rw [← nnnorm_norm, norm_mul, norm_abs_eq_norm, ← norm_mul, nnnorm_norm, mul_sub]
  congr
  rw [mul_comm]
  simp_rw [← smul_eq_mul, ← integral_smul_const, smul_eq_mul, mul_comm]
#align probability_theory.evariance_mul ProbabilityTheory.evariance_mul

scoped notation "eVar[" X "]" => ProbabilityTheory.evariance X MeasureTheory.MeasureSpace.volume

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4634dff20022dc3647faa5c663f097a747d0e26d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
