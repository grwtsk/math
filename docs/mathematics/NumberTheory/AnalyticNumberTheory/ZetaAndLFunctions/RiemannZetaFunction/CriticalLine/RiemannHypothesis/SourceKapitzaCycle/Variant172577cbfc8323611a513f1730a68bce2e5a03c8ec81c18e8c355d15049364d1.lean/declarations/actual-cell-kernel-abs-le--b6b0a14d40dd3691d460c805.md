# actual_cell_kernel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0adbe777-e40a-0006-ada7-58caaf015dd9",
  "kind": "theorem",
  "lexical_name": "actual_cell_kernel_abs_le",
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
  "slug": "actual-cell-kernel-abs-le--b6b0a14d40dd3691d460c805",
  "source": {
    "blob": "5838f023131742f86e767f424c92d70f74ad4fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant172577cbfc8323611a513f1730a68bce2e5a03c8ec81c18e8c355d15049364d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6b0a14d40dd3691d460c805f86464cc56b1fbad95fd36a4f3c06efed2065988",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant172577cbfc8323611a513f1730a68bce2e5a03c8ec81c18e8c355d15049364d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0adbe777-e40a-0006-ada7-58caaf015dd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cell_kernel_abs_le (A s : ℝ) (hA : 1 ≤ A) :
    |SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A s / 2 -
      deriv (SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A) s| ≤
      (11 / 2 : ℝ) := by
  have hC := EstimateCorrelation.actual_correlation_abs_le_one A s hA
  have hd := SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA s
  have hpos : 0 < A := by linarith
  have hratio : (5 : ℝ) / A ≤ 5 := (div_le_iff₀ hpos).mpr (by linarith)
  have htriangle := abs_add_le
    (SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A s / 2)
    (-deriv (SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A) s)
  simp only [← sub_eq_add_neg, abs_neg] at htriangle
  rw [abs_div, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)] at htriangle
  linarith

/-- The original full closed source count equals the native Chebyshev function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant172577cbfc8323611a513f1730a68bce2e5a03c8ec81c18e8c355d15049364d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant172577cbfc8323611a513f1730a68bce2e5a03c8ec81c18e8c355d15049364d1.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5838f023131742f86e767f424c92d70f74ad4fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
