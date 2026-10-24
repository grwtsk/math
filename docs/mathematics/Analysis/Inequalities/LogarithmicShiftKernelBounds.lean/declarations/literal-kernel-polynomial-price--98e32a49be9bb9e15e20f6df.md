# literal_kernel_polynomial_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccf31228-5133-baf8-d2de-062dc726f322",
  "kind": "theorem",
  "lexical_name": "literal_kernel_polynomial_price",
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
  "slug": "literal-kernel-polynomial-price--98e32a49be9bb9e15e20f6df",
  "source": {
    "blob": "27e4f29026913080cc07f33f35aa67b7c19c80df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 30,
    "path": "GRWTSK/Analysis/Inequalities/LogarithmicShiftKernelBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98e32a49be9bb9e15e20f6df7234ddf58fdfaa7fe4b9f7c98cef6411200f2544",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/LogarithmicShiftKernelBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccf31228-5133-baf8-d2de-062dc726f322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_kernel_polynomial_price {A t : ℝ} (hA : 1 ≤ A) (ht : 0 ≤ t) :
    |polarityKernel A t| ≤ 20 / A + 1628260 / (7623 * A ^ 2) + 528 / A ^ 3 := by
  have positive : 0 < A := by linarith
  obtain ⟨admitted, fullZero⟩ :=
    CompactProfileLogarithmicMoment.actual_logarithmic_integral_zero hA t
  have regular : ContDiff ℝ 1 (fun x : ℝ ↦ Real.log x / Real.sqrt x *
      (deriv (deriv (correlation A)) (t + Real.log x) -
        (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log x))) :=
    (CompactProfileLogarithmicRegularity.actual_logarithmic_profile_contDiff_two
      positive t).of_le (by norm_num)
  have differentiable : Differentiable ℝ (fun u : ℝ ↦
      deriv (deriv (correlation A)) u - (1 / 2 : ℝ) * deriv (correlation A) u) :=
    fun u ↦ (CompactProfileDifferentialBounds.differential_hasDerivAt positive u).differentiableAt
  have complete := FiniteLogarithmicProfileBounds.finite_logarithmic_profile_price
    (U := 2 * A) regular differentiable
    (CompactProfileDifferentialBounds.differential_abs_le hA)
    (CompactProfileDifferentialBounds.differential_derivative_abs_le hA)
    admitted fullZero (fun u hu ↦ CompactProfileDifferentialBounds.differential_zero_upper
      positive hu) (by linarith : 0 ≤ 2 * A) ht
  change |polarityKernel A t| ≤
    8 * (162826 / (7623 * A ^ 2) + (5 / A) / 2) +
      4 * (132 / A ^ 3 + (162826 / (7623 * A ^ 2)) / 2) at complete
  exact complete.trans_eq (by ring)

/-- The original window inherits the full literal price, without any polarity assertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/LogarithmicShiftKernelBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/LogarithmicShiftKernelBounds.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27e4f29026913080cc07f33f35aa67b7c19c80df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
