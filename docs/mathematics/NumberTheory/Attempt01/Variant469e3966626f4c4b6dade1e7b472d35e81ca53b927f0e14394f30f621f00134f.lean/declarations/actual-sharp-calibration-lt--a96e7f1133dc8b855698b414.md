# actual_sharp_calibration_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa2efec1-3560-650b-5845-dda6eae08e7f",
  "kind": "theorem",
  "lexical_name": "actual_sharp_calibration_lt",
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
  "slug": "actual-sharp-calibration-lt--a96e7f1133dc8b855698b414",
  "source": {
    "blob": "9a08eca9f241541ff9afa308462f1c0beac1acad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a96e7f1133dc8b855698b414e0bc5d21a5425cedec50146c26db4cee90d40c6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa2efec1-3560-650b-5845-dda6eae08e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sharp_calibration_lt : calibrationConstant < 11 := by
  have hs : (162826/7623:ℝ)/2 ≤ 65/6 := by norm_num
  have hn : 0 ≤ (Real.log 2)^3/Real.sqrt 2+(Real.log 3)^3/Real.sqrt 3 := by positivity
  unfold calibrationConstant
  exact (mul_le_mul_of_nonneg_right hs hn).trans_lt actual_coarse_calibration_lt

#print axioms log_pi_lower
#print axioms actual_endpoint_lt
#print axioms sqrt_two_bounds
#print axioms sqrt_three_bounds
#print axioms fixed_prime_sum_gt
#print axioms actual_coarse_calibration_lt
#print axioms actual_sharp_calibration_lt
end ContinuousResearch.NumericMeanBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a08eca9f241541ff9afa308462f1c0beac1acad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
