# iteratedDifference_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f632fda-4e75-8533-e62f-e393c678f1fa",
  "kind": "theorem",
  "lexical_name": "iteratedDifference_derivative_abs_le",
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
  "slug": "iterateddifference-derivative-abs-le--4561dba1fa3c88f29e147f7b",
  "source": {
    "blob": "e4a262861efb523e042742a38ad42dd8bd0cea4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 393,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variante77cbd5b5d17d6b05575b16c9c3e697c704da439e549a6d6342dc2b471dcabf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4561dba1fa3c88f29e147f7ba628f2b1cc0db68ce13f577777a32d6f49c63b6f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variante77cbd5b5d17d6b05575b16c9c3e697c704da439e549a6d6342dc2b471dcabf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f632fda-4e75-8533-e62f-e393c678f1fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDifference_derivative_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (iteratedDifference A) t| ≤
      Real.sqrt (325325 / 18) / A ^ 3 + 65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / (4 * A) := by
  have he : iteratedDifference A = fun t ↦
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t +
          sourceCorrelation explicitSecondDerivative A t / 4 := by
    funext t; exact iteratedDifference_eq A t hA
  have hd := (((sourceCorrelation_second_derivative_contDiff A hA).differentiable
    (by norm_num) t).hasDerivAt.sub
    ((sourceCorrelation_derivative_contDiff A hA).differentiable (by norm_num) t).hasDerivAt).add
    ((((CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).differentiable
      (by norm_num)) t).hasDerivAt.div_const 4)
  have hd' : deriv (iteratedDifference A) t =
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t -
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t +
          deriv (sourceCorrelation explicitSecondDerivative A) t / 4 := by
    rw [he]
    exact hd.deriv
  rw [hd']
  calc
    _ ≤ |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| +
        |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 4| :=
      (abs_add_le _ _).trans (add_le_add (abs_sub _ _) le_rfl)
    _ ≤ Real.sqrt (325325 / 18) / A ^ 3 + 65 / (3 * A ^ 2) +
        (Real.sqrt (65 / 3) / A) / 4 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
      exact add_le_add (add_le_add (sourceCorrelation_third_derivative_abs_le A t hA)
        (sourceCorrelation_second_derivative_abs_le A t hA))
        (div_le_div_of_nonneg_right (DerivativeEnergy.sourceCorrelation_derivative_abs_le A t hA)
          (by norm_num))
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variante77cbd5b5d17d6b05575b16c9c3e697c704da439e549a6d6342dc2b471dcabf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variante77cbd5b5d17d6b05575b16c9c3e697c704da439e549a6d6342dc2b471dcabf6.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4a262861efb523e042742a38ad42dd8bd0cea4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
