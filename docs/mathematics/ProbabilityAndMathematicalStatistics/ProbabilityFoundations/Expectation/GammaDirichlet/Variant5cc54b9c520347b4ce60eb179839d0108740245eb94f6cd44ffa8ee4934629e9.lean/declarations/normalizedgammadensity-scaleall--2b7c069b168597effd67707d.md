# normalizedGammaDensity_scaleAll

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
      "line": 438,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e58a20e-5f2e-b54a-4eda-64b47aac8f6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:243ee1b3-c4ae-5d13-a9f4-c348e47b7959",
  "kind": "theorem",
  "lexical_name": "normalizedGammaDensity_scaleAll",
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
  "slug": "normalizedgammadensity-scaleall--2b7c069b168597effd67707d",
  "source": {
    "blob": "1fbdb1fee145a8837e7422afa9a2fe8c0464c20f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 438,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b7c069b168597effd67707d8451c77f3025eef6afd1735a1de0d333e21fdaeb",
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

Occurrence: `result:243ee1b3-c4ae-5d13-a9f4-c348e47b7959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedGammaDensity_scaleAll [Fintype I] [Nonempty I]
    (parameters : Parameters I)
    (factor : ℝ) (positive : 0 < factor)
    (point : InteriorSimplexPoint I) :
    normalizedGammaDensity (parameters.scaleAll factor positive) point =
      normalizedGammaDensity parameters point := by
  classical
  have factorProduct :
      (∏ i : I, factor ^ (-parameters.shape i)) =
        factor ^ (-parameters.total) := by
    calc
      (∏ i : I, factor ^ (-parameters.shape i)) =
          factor ^ ∑ i : I, -parameters.shape i :=
        prod_rpow_eq_rpow_sum factor positive _
      _ = factor ^ (-parameters.total) := by
        congr 1
        simp [DirichletParameters.total]
  have weightedSum :
      weightedInverseScaleSum (parameters.scaleAll factor positive) point =
        weightedInverseScaleSum parameters point / factor := by
    unfold weightedInverseScaleSum
    change (∑ i, point i / (factor * parameters.scale i)) = _
    calc
      (∑ i, point i / (factor * parameters.scale i)) =
          ∑ i, (point i / parameters.scale i) / factor := by
        apply Finset.sum_congr rfl
        intro i _
        field_simp [positive.ne', (parameters.scalePositive i).ne']
      _ = (∑ i, point i / parameters.scale i) / factor :=
        (Finset.sum_div Finset.univ
          (fun i => point i / parameters.scale i) factor).symm
  have productScaling :
      (∏ i : I, point i ^ (parameters.shape i - 1) *
        (factor * parameters.scale i) ^ (-parameters.shape i)) =
      factor ^ (-parameters.total) *
        ∏ i : I, point i ^ (parameters.shape i - 1) *
          parameters.scale i ^ (-parameters.shape i) := by
    calc
      (∏ i : I, point i ^ (parameters.shape i - 1) *
          (factor * parameters.scale i) ^ (-parameters.shape i)) =
        ∏ i : I, factor ^ (-parameters.shape i) *
          (point i ^ (parameters.shape i - 1) *
            parameters.scale i ^ (-parameters.shape i)) := by
          apply Finset.prod_congr rfl
          intro i _
          rw [Real.mul_rpow positive.le (parameters.scalePositive i).le]
          ring
      _ = (∏ i : I, factor ^ (-parameters.shape i)) *
          ∏ i : I, point i ^ (parameters.shape i - 1) *
            parameters.scale i ^ (-parameters.shape i) :=
        Finset.prod_mul_distrib
      _ = factor ^ (-parameters.total) *
          ∏ i : I, point i ^ (parameters.shape i - 1) *
            parameters.scale i ^ (-parameters.shape i) := by
        rw [factorProduct]
  have denominatorScaling :
      weightedInverseScaleSum (parameters.scaleAll factor positive) point ^
          parameters.total =
        weightedInverseScaleSum parameters point ^ parameters.total /
          factor ^ parameters.total := by
    rw [weightedSum]
    exact Real.div_rpow
      (weightedInverseScaleSum_pos parameters point).le positive.le _
  have factorPower_ne_zero : factor ^ parameters.total ≠ 0 :=
    (Real.rpow_pos_of_pos positive _).ne'
  have denominator_ne_zero :
      weightedInverseScaleSum parameters point ^ parameters.total ≠ 0 :=
    (Real.rpow_pos_of_pos (weightedInverseScaleSum_pos parameters point) _).ne'
  unfold normalizedGammaDensity
  change
    (Real.Gamma parameters.total / parameters.gammaProduct) *
        (∏ i, point i ^ (parameters.shape i - 1) *
          (factor * parameters.scale i) ^ (-parameters.shape i)) /
      weightedInverseScaleSum (parameters.scaleAll factor positive) point ^
        parameters.total = _
  rw [productScaling, denominatorScaling,
    Real.rpow_neg positive.le parameters.total]
  field_simp

/-- Pointwise Radon--Nikodym candidate between two strictly positive density
profiles on the same index type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fbdb1fee145a8837e7422afa9a2fe8c0464c20f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
