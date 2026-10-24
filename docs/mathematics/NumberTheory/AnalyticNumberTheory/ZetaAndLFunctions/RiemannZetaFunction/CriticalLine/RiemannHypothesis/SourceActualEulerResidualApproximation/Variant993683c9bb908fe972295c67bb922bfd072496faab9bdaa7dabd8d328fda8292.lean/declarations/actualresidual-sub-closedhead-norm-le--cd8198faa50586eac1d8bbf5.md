# actualResidual_sub_closedHead_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cda8cde-266f-fe5f-477b-05bb014a3193",
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
  "slug": "actualresidual-sub-closedhead-norm-le--cd8198faa50586eac1d8bbf5",
  "source": {
    "blob": "66c79774e49d5c3bbc1d7d74f5610357787ee1c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant993683c9bb908fe972295c67bb922bfd072496faab9bdaa7dabd8d328fda8292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd8198faa50586eac1d8bbf50a5663915baa53bb93b90186d3a3267f84adeec1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant993683c9bb908fe972295c67bb922bfd072496faab9bdaa7dabd8d328fda8292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cda8cde-266f-fe5f-477b-05bb014a3193`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–36.

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
        actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ :=
        norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ actualBumpMovingTailConstant c / A ^ 9 +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A) / A ^ 9 :=
      add_le_add (actualMertensResidual_sub_head_norm_le hA (by linarith))
        (actualClosedPrimeHead_moving_error_le A c d hA hd hdc)
    _ = _ := by ring

/-- The actual finite Euler replacement error vanishes without scaling. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant993683c9bb908fe972295c67bb922bfd072496faab9bdaa7dabd8d328fda8292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant993683c9bb908fe972295c67bb922bfd072496faab9bdaa7dabd8d328fda8292.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66c79774e49d5c3bbc1d7d74f5610357787ee1c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
