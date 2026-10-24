# explicit_normalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9e770000f539bb4cba06ee1bbfa7013177e7a8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd33f76b-fca5-fbae-677d-916a994bf78c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f3e2f1d-c50e-cd54-53c7-7cc7ad300e1b",
  "kind": "theorem",
  "lexical_name": "explicit_normalization",
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
  "slug": "explicit-normalization--42459129dde67423b62de2b2",
  "source": {
    "blob": "d9e770000f539bb4cba06ee1bbfa7013177e7a8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42459129dde67423b62de2b21f680954d0b71e2b78923b71ee758577546d4330",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f3e2f1d-c50e-cd54-53c7-7cc7ad300e1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicit_normalization (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, dilationTest explicitSecondDerivative A x ^ 2) = sourceNormalization A := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hne : A ≠ 0 := ne_of_gt hpos
  have hfun : (fun x ↦ dilationTest explicitSecondDerivative A x ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ (secondInterior A x - bumpInterior A x / 4) ^ 2) := by
    rw [explicit_dilationTest_eq_indicator A hpos]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  rw [hfun, zeroExtension_integral _ (-A) A (by linarith)]
  simp_rw [interior_square_scaling A _ hpos]
  rw [intervalIntegral.integral_div,
    intervalIntegral.integral_comp_div
      (fun x ↦ (unitSecond x / A ^ 2 - unitBump x / 4) ^ 2) hne]
  simp only [neg_div, div_self hne, smul_eq_mul, unit_dilation_square_integral]
  exact mul_div_cancel_left₀ _ hne

/-- Normalization preserves actual square integrability; a totalized integral is not used
as a substitute for this analytic premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9e770000f539bb4cba06ee1bbfa7013177e7a8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
