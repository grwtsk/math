# actualLogOperator_zero_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c6fa25c-4a11-c117-bcf1-5a5c63f4e060",
  "kind": "theorem",
  "lexical_name": "actualLogOperator_zero_upper",
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
  "slug": "actuallogoperator-zero-upper--664c3b8dce7c3917bc7446df",
  "source": {
    "blob": "3cc4ef73c0797d51d8f05a83cf1cd591293e7991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 53,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:664c3b8dce7c3917bc7446df37e7208b2046c52bc86d4775896605c9a49ee9f6",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c6fa25c-4a11-c117-bcf1-5a5c63f4e060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogOperator_zero_upper {A u : ℝ} (hA : 1 ≤ A) (hu : A ≤ u) :
    actualLogOperator A u = 0 := by
  rw [actualLogOperator,actualComplexOperator,
    actualMuntz_zero_outside hA (Or.inr (Real.exp_le_exp.mpr hu)),Complex.ofReal_zero,mul_zero]

end ContinuousResearch.ActualLogCoordinate

/- Complete public type, proof and trusted closure audits. -/

#check ContinuousResearch.ActualLogCoordinate.actualLogOperator
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogOperator
#print ContinuousResearch.ActualLogCoordinate.actualLogOperator

#check ContinuousResearch.ActualLogCoordinate.actualLogL2
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogL2
#print ContinuousResearch.ActualLogCoordinate.actualLogL2

#check ContinuousResearch.ActualLogCoordinate.actualLogOperator_memLp
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogOperator_memLp
#print ContinuousResearch.ActualLogCoordinate.actualLogOperator_memLp

#check ContinuousResearch.ActualLogCoordinate.actualLogL2_ae
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogL2_ae
#print ContinuousResearch.ActualLogCoordinate.actualLogL2_ae

#check ContinuousResearch.ActualLogCoordinate.actualLogL2_norm
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogL2_norm
#print ContinuousResearch.ActualLogCoordinate.actualLogL2_norm

#check ContinuousResearch.ActualLogCoordinate.actualLogL2_norm_sq
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogL2_norm_sq
#print ContinuousResearch.ActualLogCoordinate.actualLogL2_norm_sq

#check ContinuousResearch.ActualLogCoordinate.actual_dilation_log
#print axioms ContinuousResearch.ActualLogCoordinate.actual_dilation_log
#print ContinuousResearch.ActualLogCoordinate.actual_dilation_log

#check ContinuousResearch.ActualLogCoordinate.actual_integer_log
#print axioms ContinuousResearch.ActualLogCoordinate.actual_integer_log
#print ContinuousResearch.ActualLogCoordinate.actual_integer_log

#check ContinuousResearch.ActualLogCoordinate.actual_integer_log_ae
#print axioms ContinuousResearch.ActualLogCoordinate.actual_integer_log_ae
#print ContinuousResearch.ActualLogCoordinate.actual_integer_log_ae

#check ContinuousResearch.ActualLogCoordinate.actualLogOperator_zero_upper
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogOperator_zero_upper
#print ContinuousResearch.ActualLogCoordinate.actualLogOperator_zero_upper
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cc4ef73c0797d51d8f05a83cf1cd591293e7991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
