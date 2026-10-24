# source_laplace_eq_bump_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6be8797ffc479e6ce1d03bee18bebed964290699",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/baf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7ef1f4e-1b14-0cff-faca-9b89dc83f1aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:395a957d-0f67-9d45-1740-9a9df0ae7218",
  "kind": "theorem",
  "lexical_name": "source_laplace_eq_bump_square",
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
  "slug": "source-laplace-eq-bump-square--54ff4599dabf7e757a9a8394",
  "source": {
    "blob": "6be8797ffc479e6ce1d03bee18bebed964290699",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54ff4599dabf7e757a9a8394fcd55cdc329e181f846db5decf25a2f74793689c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:395a957d-0f67-9d45-1740-9a9df0ae7218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_laplace_eq_bump_square (A : ℝ) (hA : 0 < A) (z : ℂ) :
    sourceLaplace A z = (A : ℂ) / (sourceNormalization A : ℂ) *
      (z ^ 2 - 1 / 4) ^ 2 * bumpLaplace ((A : ℂ) * z) ^ 2 := by
  have hZpos := source_normalization_pos_of_pos A hA
  have hAsqrt : (Real.sqrt A : ℂ) ^ 2 = (A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hA.le
  have hZsqrt : (Real.sqrt (sourceNormalization A) : ℂ) ^ 2 =
      (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZpos.le
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (Real.sqrt_pos.mpr hZpos)
  have hz : (sourceNormalization A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hZpos
  rw [source_laplace_eq_test_product A hA z, normalized_test_laplace A hA z,
    normalized_test_laplace A hA (-z), mul_neg, bump_laplace_even]
  simp only [neg_sq]
  field_simp [hs, hz]
  rw [hAsqrt, hZsqrt]
  ring

/-- T1 in the requested native bilateral form, with the unchanged actual source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6be8797ffc479e6ce1d03bee18bebed964290699` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
