# actualResidual_sub_closedHead_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11ac72c6-16f9-17a2-b997-45c592b7c7f8",
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
  "slug": "actualresidual-sub-closedhead-norm-le--561af10cfc5e7763c3179a50",
  "source": {
    "blob": "f06ccc11e640734bd5820858eedd5a866d86d233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant6ff1e0bd5a91edb39b0a952ec92306eb3ff4809b33b0654099f8a98ca4a58373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:561af10cfc5e7763c3179a50df5c7913d10f70ade1f5ac8cdc93bb35a9b55082",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant6ff1e0bd5a91edb39b0a952ec92306eb3ff4809b33b0654099f8a98ca4a58373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11ac72c6-16f9-17a2-b997-45c592b7c7f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–44.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant6ff1e0bd5a91edb39b0a952ec92306eb3ff4809b33b0654099f8a98ca4a58373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerResidualApproximation/Variant6ff1e0bd5a91edb39b0a952ec92306eb3ff4809b33b0654099f8a98ca4a58373.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06ccc11e640734bd5820858eedd5a866d86d233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
