# normalizedGammaDensity_equalScale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fbdb1fee145a8837e7422afa9a2fe8c0464c20f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4268571-bd10-314f-dcfa-6326844c87ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:270ae0b7-422c-6576-91e7-4b5c3c54ca50",
  "kind": "theorem",
  "lexical_name": "normalizedGammaDensity_equalScale",
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
  "slug": "normalizedgammadensity-equalscale--09407bbf0f5f38c8e42528ab",
  "source": {
    "blob": "1fbdb1fee145a8837e7422afa9a2fe8c0464c20f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 390,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09407bbf0f5f38c8e42528abda029276340dc656f76cecd2cfb0273a4ff6524e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:270ae0b7-422c-6576-91e7-4b5c3c54ca50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedGammaDensity_equalScale [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I)
    (scale : ℝ) (positive : 0 < scale)
    (point : InteriorSimplexPoint I) :
    normalizedGammaDensity (Parameters.equalScale parameters scale positive) point =
      dirichletDensity parameters point := by
  classical
  have scaleProduct :
      (∏ i : I, scale ^ (-parameters.shape i)) =
        scale ^ (-parameters.total) := by
    calc
      (∏ i : I, scale ^ (-parameters.shape i)) =
          scale ^ ∑ i : I, -parameters.shape i :=
        prod_rpow_eq_rpow_sum scale positive _
      _ = scale ^ (-parameters.total) := by
        congr 1
        simp [DirichletParameters.total]
  have inverseScaleSum :
      weightedInverseScaleSum (Parameters.equalScale parameters scale positive) point =
        1 / scale := by
    unfold weightedInverseScaleSum Parameters.equalScale
    rw [← Finset.sum_div, point.normalized]
  have denominator :
      weightedInverseScaleSum (Parameters.equalScale parameters scale positive) point ^
          parameters.total =
        scale ^ (-parameters.total) := by
    rw [inverseScaleSum, one_div, Real.inv_rpow positive.le,
      Real.rpow_neg positive.le]
  have scalePower_ne_zero : scale ^ (-parameters.total) ≠ 0 :=
    (Real.rpow_pos_of_pos positive _).ne'
  have gammaProduct_ne_zero : parameters.gammaProduct ≠ 0 :=
    parameters.gammaProduct_pos.ne'
  have gammaTotal_ne_zero : Real.Gamma parameters.total ≠ 0 :=
    (Real.Gamma_pos_of_pos parameters.total_pos).ne'
  unfold normalizedGammaDensity dirichletDensity
  change
    (Real.Gamma parameters.total / parameters.gammaProduct) *
          (∏ i, point i ^ (parameters.shape i - 1) *
            scale ^ (-parameters.shape i)) /
        weightedInverseScaleSum (Parameters.equalScale parameters scale positive) point ^
          parameters.total =
      (1 / (parameters.gammaProduct / Real.Gamma parameters.total)) *
        ∏ i, point i ^ (parameters.shape i - 1)
  rw [Finset.prod_mul_distrib, scaleProduct, denominator]
  field_simp

/-- Multiplying every Gamma scale by the same positive factor leaves the
normalized-Gamma density unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fbdb1fee145a8837e7422afa9a2fe8c0464c20f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
