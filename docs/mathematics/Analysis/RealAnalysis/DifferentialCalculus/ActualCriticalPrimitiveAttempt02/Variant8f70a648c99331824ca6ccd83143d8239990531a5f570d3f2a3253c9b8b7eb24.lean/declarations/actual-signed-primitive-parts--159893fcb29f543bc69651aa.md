# actual_signed_primitive_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:276be1a8-0db1-2920-0650-045146e3cdbe",
  "kind": "theorem",
  "lexical_name": "actual_signed_primitive_parts",
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
  "slug": "actual-signed-primitive-parts--159893fcb29f543bc69651aa",
  "source": {
    "blob": "2b2d94ef4752a1861b1fb7d72f1442110ea5a3d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:159893fcb29f543bc69651aaaa7c0045b0e052f3ea8d0a047617f887b04ecba1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:276be1a8-0db1-2920-0650-045146e3cdbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_primitive_parts (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, (mangoldtLogError t + Real.eulerMascheroniConstant) *
      deriv (criticalPrimeTest A) t) =
      -(∫ t in 0..2 * A, criticalPrimitive t * deriv (criticalKernel A) t) := by
  have hp : 0 < A := by linarith
  have hF := criticalPrimitive_absolutelyContinuous (2 * A) (by linarith)
  have hk := (criticalKernel_contDiff A hp).contDiffOn.absolutelyContinuousOnInterval
    (a := 0) (b := 2 * A)
  have hibp := hF.integral_mul_deriv_eq_deriv_mul hk
  rw [criticalPrimitive_zero, criticalKernel_at_upper A hA] at hibp
  simp only [mul_zero, zero_mul, sub_self, zero_sub] at hibp
  have hi : (∫ t in 0..2 * A, deriv criticalPrimitive t * criticalKernel A t) =
      ∫ t in 0..2 * A, primitiveDensity t * criticalKernel A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalPrimitive_ae_hasDerivAt (2 * A) (by linarith)] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv]
  rw [hi] at hibp
  have he : (∫ t in 0..2 * A, (mangoldtLogError t + Real.eulerMascheroniConstant) *
      deriv (criticalPrimeTest A) t) =
      ∫ t in 0..2 * A, primitiveDensity t * criticalKernel A t := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [criticalPrimeTest_deriv A t hp]
    unfold primitiveDensity criticalKernel
    ring
  rw [he]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2d94ef4752a1861b1fb7d72f1442110ea5a3d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
