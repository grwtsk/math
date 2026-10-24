# smoothedTest_form_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee9e77c03bd217e332ba043f0f14f746105af77c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e43e9940-e7f5-f27d-ae5a-38ab1075e74c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8bc8595-c3cf-138a-247e-b41c1e17660c",
  "kind": "theorem",
  "lexical_name": "smoothedTest_form_error_le",
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
  "slug": "smoothedtest-form-error-le--fe7ba444c12b0322dd6a2ad2",
  "source": {
    "blob": "ee9e77c03bd217e332ba043f0f14f746105af77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7ba444c12b0322dd6a2ad2c5d7a58284a905a15bb32025b55447347efdf4e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8bc8595-c3cf-138a-247e-b41c1e17660c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedTest_form_error_le (A ε : ℝ) (hA : 1 ≤ A)
    (hε : 0 < ε) (hε1 : ε ≤ 1) :
    |realArithmeticForm (A + 1) (smoothedTest A ε hε) -
      realArithmeticForm (A + 1) (actualTest A)| ≤
      formCoefficient (A + 1) *
        logarithmicNorm (fun x ↦ smoothedTest A ε hε x - actualTest A x) *
        (logarithmicNorm (fun x ↦ smoothedTest A ε hε x - actualTest A x) +
          2 * logarithmicNorm (actualTest A)) := by
  apply (realArithmeticForm_sub_abs_le
    (smoothedTest_integrable A ε hA hε) (actualTest_integrable A hA)
    (smoothedTest_memLp_two A ε hA hε) (actualTest_memLp_two A hA)
    (smoothedTest_support_common A ε hA hε hε1) (actualTest_support_common A hA)
    (smoothedTest_logarithmic_integrable A ε hA hε)
    (actualTest_logarithmic_integrable A hA)
    (testError_logarithmic_integrable A ε hA hε)).trans
  apply mul_le_mul_of_nonneg_left _
    (mul_nonneg (formCoefficient_nonneg _) (logarithmicNorm_nonneg _))
  linarith [smoothedTest_logarithmicNorm_le A ε hA hε]

/-- Logarithmic convergence on the proved common support yields convergence of the entire
source arithmetic form for every positive scale family tending to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee9e77c03bd217e332ba043f0f14f746105af77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
