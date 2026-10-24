# actualResidual_sub_closedHead_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e3aadd0-49a9-d797-fba7-cbb4944d234e",
  "kind": "theorem",
  "lexical_name": "actualResidual_sub_closedHead_norm_le",
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
  "slug": "actualresidual-sub-closedhead-norm-le--1292eaf112ac26a45a5b4aac",
  "source": {
    "blob": "159e9e67dbfcf403c6db0dbbbf76e0ba27de79ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant5f130850124aabe00e96e4f249ac8d22bb636df8031a30bbbc1feb2d959dc93c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1292eaf112ac26a45a5b4aac9c9843fd6371976421acd3f19ff3242b3189fd4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant5f130850124aabe00e96e4f249ac8d22bb636df8031a30bbbc1feb2d959dc93c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e3aadd0-49a9-d797-fba7-cbb4944d234e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_sub_closedHead_norm_le (A c d : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    ‖(mertensResidual A : ℂ) - actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ ≤
      (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A)) / A ^ 9 := by
  calc
    _ ≤ ‖(mertensResidual A : ℂ) -
        actualInitialPrimeHead A c (actualBumpMovingHeight A c)‖ +
      ‖actualInitialPrimeHead A c (actualBumpMovingHeight A c) -
        actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ := norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ actualBumpMovingTailConstant c / A ^ 9 +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A) / A ^ 9 :=
      add_le_add (actualMertensResidual_sub_head_norm_le hA (by linarith))
        (actualClosedPrimeHead_moving_error_le A c d hA hd hdc)
    _ = _ := by ring

/-- The actual finite Euler head differs from the original residual by a vanishing unscaled error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant5f130850124aabe00e96e4f249ac8d22bb636df8031a30bbbc1feb2d959dc93c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant5f130850124aabe00e96e4f249ac8d22bb636df8031a30bbbc1feb2d959dc93c.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `159e9e67dbfcf403c6db0dbbbf76e0ba27de79ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
