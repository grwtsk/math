# actualSourceCoupling_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0e8d4f7-90ac-0b09-734c-36ab508d960c",
  "kind": "theorem",
  "lexical_name": "actualSourceCoupling_lt_one",
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
  "slug": "actualsourcecoupling-lt-one--023a94a8e65f1b911143f20f",
  "source": {
    "blob": "5a8c9b15c11f169910b64f9cd5c94c1c7ef6ce22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:023a94a8e65f1b911143f20f1328fc065f7cd6aedfeba712d4b15a06a24c6f3b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0e8d4f7-90ac-0b09-734c-36ab508d960c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceCoupling_lt_one : actualSourceCoupling < 1 := by
  have hn := actual_five_eight_source_difference_norm_pos (originalSourceState 2)
    (originalSourceState_coe_ae (by norm_num))
  have hs := norm_sub_sq (𝕜 := ℂ)
    (translation (Real.log 5) (originalSourceState 2))
    (translation (Real.log 8) (originalSourceState 2))
  have hn' : 0 < ‖translation (Real.log 5) (originalSourceState 2) -
      translation (Real.log 8) (originalSourceState 2)‖ ^ 2 := by
    apply sq_pos_of_pos
    simpa only [orbitAtom, signedLog, Bool.false_eq_true, ↓reduceIte, Nat.cast_ofNat] using hn
  rw [(translation (Real.log 5)).norm_map, (translation (Real.log 8)).norm_map,
    originalSourceState_norm (by norm_num), translation_inner_stationary] at hs
  change _ = 1 ^ 2 - 2 *
    (⟪originalSourceState 2,
      translation (Real.log 8 - Real.log 5) (originalSourceState 2)⟫_ℂ).re + 1 ^ 2 at hs
  rw [← sourceCorrelation_eq_inner (by norm_num),
    ← Real.log_div (by norm_num : (8 : ℝ) ≠ 0) (by norm_num : (5 : ℝ) ≠ 0)] at hs
  change _ = 1 ^ 2 - 2 * actualSourceCoupling + 1 ^ 2 at hs
  linarith

/-- The full complex inner product is the real-valued literal source correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a8c9b15c11f169910b64f9cd5c94c1c7ef6ce22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
