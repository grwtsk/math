# homogeneity_defect_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "044e66f2f06a74fbca6adea60d670ea746addb90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df070494-6f68-d084-2989-d33dcb089742",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcfeb48a-78c0-e8e1-b42f-fbea0ead8aad",
  "kind": "theorem",
  "lexical_name": "homogeneity_defect_abs_le",
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
  "slug": "homogeneity-defect-abs-le--5e96c63975736938ea5a4fe5",
  "source": {
    "blob": "044e66f2f06a74fbca6adea60d670ea746addb90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 447,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e96c63975736938ea5a4fe5baaa0ebe50e4e7fed4637375ba4d52753ff5a911",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcfeb48a-78c0-e8e1-b42f-fbea0ead8aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homogeneity_defect_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2| ≤
      (32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  rw [homogeneity_defect_eq A q hA (by linarith)]
  exact primeTheta_add_rankOne_abs_le A q hA hq

end
end HomogeneityDefectScratch

#print axioms HomogeneityDefectScratch.correlationPrimeSample
#print axioms HomogeneityDefectScratch.correlationPrimeSample_eq
#print axioms HomogeneityDefectScratch.correlationPrimeTheta
#print axioms HomogeneityDefectScratch.correlationPrimeTheta_eq
#print axioms HomogeneityDefectScratch.homogeneity_defect_eq
#print axioms HomogeneityDefectScratch.negativePrimePrimitive
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_eq
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_contDiff
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_compact
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_abs_le
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_derivative_abs_le
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_moments
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_zero_right
#print axioms HomogeneityDefectScratch.primePrimitiveSample
#print axioms HomogeneityDefectScratch.primePrimitiveSample_eq
#print axioms HomogeneityDefectScratch.primeSample_rescaled_integrable
#print axioms HomogeneityDefectScratch.primeSample_integral_eq_primitive
#print axioms HomogeneityDefectScratch.sampling_zero
#print axioms HomogeneityDefectScratch.strict_sample_eq_padded
#print axioms HomogeneityDefectScratch.sampling_padded_endpoint_zero
#print axioms HomogeneityDefectScratch.primePrimitiveSample_add_rankOne_abs_le
#print axioms HomogeneityDefectScratch.difference_derivative_eq
#print axioms HomogeneityDefectScratch.difference_derivative_contDiff
#print axioms HomogeneityDefectScratch.difference_second_derivative_abs_le
#print axioms HomogeneityDefectScratch.difference_derivative_zero_right
#print axioms HomogeneityDefectScratch.difference_derivative_sampling_abs_le
#print axioms HomogeneityDefectScratch.primeSample_hasDerivAt
#print axioms HomogeneityDefectScratch.primeSample_derivative_abs_le
#print axioms HomogeneityDefectScratch.scaledPrimeSample_hasDerivAt
#print axioms HomogeneityDefectScratch.scaledPrimeSample_derivative_integrable
#print axioms HomogeneityDefectScratch.scaledPrimeSample_variation_le
#print axioms HomogeneityDefectScratch.primeSample_zero_of_exp_le
#print axioms HomogeneityDefectScratch.primeTheta_eq_padded_sum
#print axioms HomogeneityDefectScratch.primeTheta_sub_integral_abs_le
#print axioms HomogeneityDefectScratch.primeTheta_add_rankOne_abs_le
#print axioms HomogeneityDefectScratch.homogeneity_defect_abs_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `044e66f2f06a74fbca6adea60d670ea746addb90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
