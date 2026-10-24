# source_negativePart_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0149146c-6237-47c8-d6d6-3a1f8ab55dd2",
  "kind": "theorem",
  "lexical_name": "source_negativePart_comparison",
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
  "slug": "source-negativepart-comparison--a2e0bc723bb2e77d418d99a5",
  "source": {
    "blob": "538c5fc3d69fd7bb99f31096ab00d10690f241b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstPrimeReduction/Variant069072f0faff582ec509a1088767456ffde7160421d0b8cc662a1ef12e59933d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2e0bc723bb2e77d418d99a5b3deb958ce1aa269cbe48ea8cafc10da11cc80f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstPrimeReduction/Variant069072f0faff582ec509a1088767456ffde7160421d0b8cc662a1ef12e59933d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0149146c-6237-47c8-d6d6-3a1f8ab55dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_negativePart_comparison (A : ℝ) (hA : 1 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 ≤
      2 * max ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) -
        firstPrimeRemainder A) 0 +
      |archimedeanMultiplier 0 - 4 - 2 * (thetaConstant + properPowerConstant)| +
        (2 * properPowerBudget) / A ^ 2 := by
  have h := source_lower_comparison A hA
  have hm := le_max_left
    ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) - firstPrimeRemainder A) 0
  have hc := neg_le_abs
    (archimedeanMultiplier 0 - 4 - 2 * (thetaConstant + properPowerConstant))
  apply max_le
  · linarith
  · exact add_nonneg
      (add_nonneg (mul_nonneg (by norm_num) (le_max_right _ _)) (abs_nonneg _))
      (div_nonneg (mul_nonneg (by norm_num) properPowerBudget_nonneg) (sq_nonneg A))

end
end FirstPrimeReductionScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstPrimeReduction/Variant069072f0faff582ec509a1088767456ffde7160421d0b8cc662a1ef12e59933d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstPrimeReduction/Variant069072f0faff582ec509a1088767456ffde7160421d0b8cc662a1ef12e59933d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `538c5fc3d69fd7bb99f31096ab00d10690f241b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
