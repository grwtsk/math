# actual_prime_two_boundary_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b80e175af464edba9adb95e9d037102913f6eb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8496be47-cc72-4074-29a2-a18b28f0a12a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58b62ad0-dc5f-b24d-5dd5-5f50238ef06c",
  "kind": "theorem",
  "lexical_name": "actual_prime_two_boundary_abs_le",
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
  "slug": "actual-prime-two-boundary-abs-le--8aa15a083d592953639d46d3",
  "source": {
    "blob": "0b80e175af464edba9adb95e9d037102913f6eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aa15a083d592953639d46d333de8a6885a5a6af0a9146eb2d4cff8205a62ed2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58b62ad0-dc5f-b24d-5dd5-5f50238ef06c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_two_boundary_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |primeTwoBoundary explicitSecondDerivative A| ≤ 2 * Real.sqrt 2 := by
  have h := actual_correlation_abs_le_one A lowerEndpoint hA
  rw [primeTwoBoundary, abs_mul]
  have hcoef : |(-2 : ℝ) * Real.sqrt 2| = 2 * Real.sqrt 2 := by
    simp [abs_mul, Real.sqrt_nonneg]
  rw [hcoef]
  nlinarith [Real.sqrt_nonneg (2 : ℝ)]

#print axioms actual_correlation_at_zero
#print axioms actual_correlation_abs_le_one
#print axioms actual_prime_two_boundary_abs_le

end EstimateCorrelationProbe
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b80e175af464edba9adb95e9d037102913f6eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
