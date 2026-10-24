# actualResidual_fixed_center_area_paid_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37a3482f-4586-d8a7-daab-4f6c8cfb4307",
  "kind": "theorem",
  "lexical_name": "actualResidual_fixed_center_area_paid_bound",
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
  "slug": "actualresidual-fixed-center-area-paid-bound--6154024b23e23ada4c585c30",
  "source": {
    "blob": "9529983da4c5c923a6d6e21e881e3856f9d418cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedAreaEstimate/Variantb8831ed27a25f72fd0b7635ddd400d3c030b443eded3389f7050de90a8725c92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6154024b23e23ada4c585c3019c5029407c1c7f29aade91379ed4783afda1e00",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedAreaEstimate/Variantb8831ed27a25f72fd0b7635ddd400d3c030b443eded3389f7050de90a8725c92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37a3482f-4586-d8a7-daab-4f6c8cfb4307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_fixed_center_area_paid_bound {A : ℝ} (hA : 91 ≤ A) (b : ℝ) :
    |mertensResidual A - archimedeanMultiplier 0 / 2| ≤
      (5 / A ^ 2) * (∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) +
        56 / A ^ 2 := by
  have hA1 : 1 ≤ A := by linarith
  have hp := actualRiesz_finite_center_payment_bound (show 0 < A by linarith)
  have hu := actualFixedCenteredMangoldtRiesz_area_bound hA b
  calc
    _ = |(∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        actualFixedCenteredMangoldtRieszPrimitive b t) +
      (actualRieszLimitingLinearCenter - actualRieszLinearCenter A)| := by
        rw [actualFixedCenteredMangoldtRiesz_readout hA1 b]
        congr 1
        ring
    _ ≤ |(∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        actualFixedCenteredMangoldtRieszPrimitive b t)| +
      |actualRieszLimitingLinearCenter - actualRieszLinearCenter A| := abs_add_le _ _
    _ ≤ _ := by rw [abs_of_nonneg hp.1]; linarith [hu,hp.2]

/-- A supplied quadratic absolute area budget yields this one-sided actual residual bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedAreaEstimate/Variantb8831ed27a25f72fd0b7635ddd400d3c030b443eded3389f7050de90a8725c92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedAreaEstimate/Variantb8831ed27a25f72fd0b7635ddd400d3c030b443eded3389f7050de90a8725c92.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9529983da4c5c923a6d6e21e881e3856f9d418cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
