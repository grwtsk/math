# actualLaplace_continuousOn_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c1b28d2-c499-1f85-f9b9-7018d163546b",
  "kind": "theorem",
  "lexical_name": "actualLaplace_continuousOn_closed",
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
  "slug": "actuallaplace-continuouson-closed--7463f74193e2f3454634b5be",
  "source": {
    "blob": "b2320dba4608716c0425b4092fe6b348e0440a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 434,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7463f74193e2f3454634b5bea76c469a834113c55dc4f07efc752092d20a39e0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c1b28d2-c499-1f85-f9b9-7018d163546b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLaplace_continuousOn_closed :
    ContinuousOn actualLaplace {z : ℂ | 0 ≤ z.re} := by
  intro z _hz
  apply tendsto_integral_filter_of_dominated_convergence (fun t : ℝ => |fixedKernel t|)
  · exact Eventually.of_forall (fun w =>
      fixedKernel_measurable.complex_ofReal.aestronglyMeasurable.mul (by fun_prop))
  · filter_upwards [self_mem_nhdsWithin] with w hw
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have he : ‖Complex.exp ((-w) * (t : ℂ))‖ ≤ 1 := by
      rw [Complex.norm_exp]
      apply Real.exp_le_one_iff.mpr
      simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
        Complex.neg_im, Complex.ofReal_im, mul_zero, sub_zero]
      exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hw) ht.le
    calc
      ‖(fixedKernel t : ℂ) * Complex.exp ((-w) * (t : ℂ))‖ =
          |fixedKernel t| * ‖Complex.exp ((-w) * (t : ℂ))‖ := by
        rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
      _ ≤ |fixedKernel t| * 1 := mul_le_mul_of_nonneg_left he (abs_nonneg _)
      _ = _ := mul_one _
  · exact FixedKernelAdmission.fixedKernel_integrableOn_Ioi.abs
  · filter_upwards [] with t
    exact (show Continuous (fun w : ℂ =>
      (fixedKernel t : ℂ) * Complex.exp ((-w) * (t : ℂ))) by fun_prop).continuousWithinAt

/-- The unchanged arithmetic product is continuous away from its original zeta pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2320dba4608716c0425b4092fe6b348e0440a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
