# actualResidual_future_quadratic_area_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1638d87a-0942-87aa-8a6f-b3e985a8e1b1",
  "kind": "theorem",
  "lexical_name": "actualResidual_future_quadratic_area_tail",
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
  "slug": "actualresidual-future-quadratic-area-tail--f71eab1f15a0a355f3b05112",
  "source": {
    "blob": "a1b4c64bc527b0e6ccffc1aecfb334ffbb16483b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFutureAreaEstimate/Variantb159fcb6d1310e12e1a8d6779d479bdc01e097fe1a8b0c7ee4325a0e6e9dd035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f71eab1f15a0a355f3b0511252d297e39edce56d7e0778ef2105b4ed413851c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFutureAreaEstimate/Variantb159fcb6d1310e12e1a8d6779d479bdc01e097fe1a8b0c7ee4325a0e6e9dd035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1638d87a-0942-87aa-8a6f-b3e985a8e1b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_future_quadratic_area_tail {M R : ℝ}
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {A : ℝ} (hA : max 91 R ≤ A) :
    mertensResidual A ≤ archimedeanMultiplier 0 / 2 + 5 * M + 56 / (91 : ℝ) ^ 2 := by
  have hA91 : 91 ≤ A := (le_max_left _ _).trans hA
  have hAR : R ≤ A := (le_max_right _ _).trans hA
  have hpaid := actualResidual_fixed_center_quadratic_area_bound hA91
    actualRieszRealConstantCenter (by
      have hh := harea A hAR
      change (∫ t in 0..2 * A,
        |actualFixedCenteredMangoldtRieszPrimitive actualRieszRealConstantCenter t|) ≤
          M * A ^ 2 at hh
      exact hh)
  have hsq : (91 : ℝ) ^ 2 ≤ A ^ 2 := by nlinarith
  have hden : 0 < (91 : ℝ) ^ 2 := by norm_num
  have hfrac : 56 / A ^ 2 ≤ 56 / (91 : ℝ) ^ 2 :=
    div_le_div_of_nonneg_left (by norm_num) hden hsq
  linarith

/-- The supplied actual full-area route returns the original ALLREAL Estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFutureAreaEstimate/Variantb159fcb6d1310e12e1a8d6779d479bdc01e097fe1a8b0c7ee4325a0e6e9dd035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFutureAreaEstimate/Variantb159fcb6d1310e12e1a8d6779d479bdc01e097fe1a8b0c7ee4325a0e6e9dd035.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1b4c64bc527b0e6ccffc1aecfb334ffbb16483b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
