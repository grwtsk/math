# actualLaplace_continuousOn_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1df1015c-42b1-8f6e-cbc2-fb18b33c9ba1",
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
  "slug": "actuallaplace-continuouson-closed--4a3e64b9ae70d52b2f781581",
  "source": {
    "blob": "991519039bf960982e1a59d91077e1fc227e57d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 434,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a3e64b9ae70d52b2f7815819206d1e8b5e85442cecaa6bbfade28ae6b8144a6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1df1015c-42b1-8f6e-cbc2-fb18b33c9ba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–459.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991519039bf960982e1a59d91077e1fc227e57d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
