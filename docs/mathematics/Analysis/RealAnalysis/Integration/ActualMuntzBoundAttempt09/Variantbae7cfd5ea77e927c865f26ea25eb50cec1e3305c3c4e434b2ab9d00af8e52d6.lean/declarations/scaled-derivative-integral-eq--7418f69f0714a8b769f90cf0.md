# scaled_derivative_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4ea4f85-88a1-6c88-1c65-652dd5186b6f",
  "kind": "theorem",
  "lexical_name": "scaled_derivative_integral_eq",
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
  "slug": "scaled-derivative-integral-eq--7418f69f0714a8b769f90cf0",
  "source": {
    "blob": "6ed0fdc3b39e91d3f0e9a60cd4d66c462fe079c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variantbae7cfd5ea77e927c865f26ea25eb50cec1e3305c3c4e434b2ab9d00af8e52d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7418f69f0714a8b769f90cf0e99033c34f42e190b5f9d3fd3f9695b414c86e76",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variantbae7cfd5ea77e927c865f26ea25eb50cec1e3305c3c4e434b2ab9d00af8e52d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4ea4f85-88a1-6c88-1c65-652dd5186b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_derivative_integral_eq {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    (∫ t in Set.Ioc 0 (Real.exp A/x), |deriv (fun u : ℝ => actualLogSource A (x*u)) t|) =
      ∫ u in (0 : ℝ)..Real.exp A, |deriv (actualLogSource A) u| := by
  have he (t : ℝ) : deriv (fun u : ℝ => actualLogSource A (x*u)) t =
      x*deriv (actualLogSource A) (x*t) := by
    have h := ((actualLogSource_contDiff (show 0<A by linarith)).differentiable (by norm_num) (x*t)).hasDerivAt.comp t
      ((hasDerivAt_id t).const_mul x)
    simpa [Function.comp_def,mul_comm] using h.deriv
  rw [←intervalIntegral.integral_of_le (div_nonneg (Real.exp_pos A).le hx.le)]
  simp_rw [he,abs_mul,abs_of_pos hx]
  rw [intervalIntegral.integral_const_mul]
  have hs := intervalIntegral.smul_integral_comp_mul_left
    (f:=fun u : ℝ => |deriv (actualLogSource A) u|)
    (a:=0) (b:=Real.exp A/x) x
  simpa only [smul_eq_mul,mul_zero,mul_div_cancel₀ _ hx.ne'] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variantbae7cfd5ea77e927c865f26ea25eb50cec1e3305c3c4e434b2ab9d00af8e52d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variantbae7cfd5ea77e927c865f26ea25eb50cec1e3305c3c4e434b2ab9d00af8e52d6.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed0fdc3b39e91d3f0e9a60cd4d66c462fe079c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
