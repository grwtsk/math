# actualResidual_sub_logBulk_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed475c5e-c190-a817-b86b-b815bd207c7c",
  "kind": "theorem",
  "lexical_name": "actualResidual_sub_logBulk_norm_le",
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
  "slug": "actualresidual-sub-logbulk-norm-le--32541e3fde59aae6327c3de1",
  "source": {
    "blob": "67594fb7b414ad54b2c8173a08438177a6fc111d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerLogarithmicResidual/Variante8062946d194d78755024f5219db2dfce696de08f9d560525a7e52631e418dca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32541e3fde59aae6327c3de18785658889b974a40d3a550381dddd8528b80ac8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerLogarithmicResidual/Variante8062946d194d78755024f5219db2dfce696de08f9d560525a7e52631e418dca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed475c5e-c190-a817-b86b-b815bd207c7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_sub_logBulk_norm_le (A c d : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    ‖(mertensResidual A:ℂ) -
      actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c)‖ ≤
      (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d*Real.exp (-2*(c-d)*A) +
        actualEulerLogBoundaryConstant c*Real.exp (-((2*c-1)*A/5))) / A^9 := by
  have hi : actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
      actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c) =
        actualClosedPrimeLogBoundary A c (actualBumpMovingHeight A c) := by
    rw [actualClosedPrimeHead_eq_logBulk_add_boundary A c _ hA, add_sub_cancel_left]
  calc
    _ ≤ ‖(mertensResidual A:ℂ) -
          actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ +
        ‖actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
          actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c)‖ :=
      norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d*Real.exp (-2*(c-d)*A))/A^9 +
        actualEulerLogBoundaryConstant c*Real.exp (-((2*c-1)*A/5))/A^9 := by
      rw [hi]
      exact add_le_add (actualResidual_sub_closedHead_norm_le A c d hA hd hdc)
        (actualClosedPrimeLogBoundary_moving_norm_le A c hA (by linarith))
    _ = _ := by ring

/-- The complete original residual-minus-logarithmic-bulk tends0 at every real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerLogarithmicResidual/Variante8062946d194d78755024f5219db2dfce696de08f9d560525a7e52631e418dca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerLogarithmicResidual/Variante8062946d194d78755024f5219db2dfce696de08f9d560525a7e52631e418dca.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67594fb7b414ad54b2c8173a08438177a6fc111d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
