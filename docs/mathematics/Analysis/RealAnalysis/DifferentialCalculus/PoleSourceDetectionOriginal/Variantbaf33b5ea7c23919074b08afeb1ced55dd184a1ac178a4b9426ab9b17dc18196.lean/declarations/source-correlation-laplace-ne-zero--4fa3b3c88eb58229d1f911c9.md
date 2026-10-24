# source_correlation_laplace_ne_zero

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
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/baf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8ffc798-9cd4-1546-6e48-444eb9ba34a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef03295b-bc26-0960-cac8-3133c840a486",
  "kind": "theorem",
  "lexical_name": "source_correlation_laplace_ne_zero",
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
  "slug": "source-correlation-laplace-ne-zero--4fa3b3c88eb58229d1f911c9",
  "source": {
    "blob": "6be8797ffc479e6ce1d03bee18bebed964290699",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 213,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fa3b3c88eb58229d1f911c9dabce86ff4826498503754d27c943d0a58b64a87",
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

Occurrence: `result:ef03295b-bc26-0960-cac8-3133c840a486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_correlation_laplace_ne_zero (A : ℝ) (hA : 0 < A) (z : ℂ)
    (hre : z.re ≠ 0) (hpole : z ^ 2 ≠ 1 / 4) :
    bilateralLaplace (sourceCorrelation explicitSecondDerivative A) z ≠ 0 := by
  rw [source_correlation_bilateral_laplace A hA z]
  have ha : (A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hA
  have hz : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (source_normalization_pos_of_pos A hA)
  have hq : z ^ 2 - 1 / 4 ≠ 0 := sub_ne_zero.mpr hpole
  have hb : bumpLaplace ((A : ℂ) * z) ≠ 0 := bump_laplace_scaled_ne_zero A hA z hre
  exact mul_ne_zero (mul_ne_zero (div_ne_zero ha hz) (pow_ne_zero _ hq)) (pow_ne_zero _ hb)

/-- T6 detects every off-line strip parameter at every positive radius, without a zeta predicate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6be8797ffc479e6ce1d03bee18bebed964290699` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
