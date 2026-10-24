# actual_kernel_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10bc8de5-9bdf-36a5-99d6-f425736752a7",
  "kind": "theorem",
  "lexical_name": "actual_kernel_lower",
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
  "slug": "actual-kernel-lower--b51dde6aa24a543de3a50a71",
  "source": {
    "blob": "830cc440c74384e6dee11e348bbed4619b4a5e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b51dde6aa24a543de3a50a7184996f87ffdca47ae072459374d8bf9ac2932209",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10bc8de5-9bdf-36a5-99d6-f425736752a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_kernel_lower (A s : ℝ) (hA : 80 ≤ A) (hs : s ∈ Icc 0 2) :
    (3 / 8 : ℝ) ≤ kapitzaKernel A s := by
  have hA1 : 1 ≤ A := by linarith
  have hpos : 0 < A := by linarith
  have hc := sourceCorrelation_contDiff A hpos
  have hD := hc.differentiable (by norm_num)
  have hmv := norm_image_sub_le_of_norm_deriv_le_segment'
    (f := sourceCorrelation explicitSecondDerivative A)
    (f' := deriv (sourceCorrelation explicitSecondDerivative A))
    (a := (0 : ℝ)) (b := s) (C := 5 / A)
    (fun x _ => (hD x).hasDerivAt.hasDerivWithinAt)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA1 x)
    s ⟨hs.1, le_rfl⟩
  rw [actual_correlation_at_zero A hA1, Real.norm_eq_abs, sub_zero] at hmv
  have hclow := (abs_le.mp hmv).1
  have hdlow := (abs_le.mp
    (SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA1 s)).2
  have hratio : (5 : ℝ) / A ≤ 1 / 16 := (div_le_iff₀ hpos).mpr (by linarith)
  have hmul : 5 / A * s ≤ 1 / 8 := by
    have hn : 0 ≤ (5 : ℝ) / A := by positivity
    calc
      5 / A * s ≤ 5 / A * 2 := mul_le_mul_of_nonneg_left hs.2 hn
      _ ≤ 1 / 8 := by linarith
  unfold kapitzaKernel
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830cc440c74384e6dee11e348bbed4619b4a5e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
