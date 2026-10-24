# completeXiTail_eq_damped_primitive_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:061cf8e2-9c2b-15f6-2a41-408e1edfa584",
  "kind": "theorem",
  "lexical_name": "completeXiTail_eq_damped_primitive_return",
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
  "slug": "completexitail-eq-damped-primitive-return--9fc7900d98869accd5bb5805",
  "source": {
    "blob": "f66a92565b1b7538cab4f5b68cb1012f48b6b81b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variant0f3bddfdec5a67bf240f33c8ab798779a4467a2cdd2b8f2e314ba58ee16bdc78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fc7900d98869accd5bb5805a83dfcd3597d69509faf34f80021194f197ebaee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variant0f3bddfdec5a67bf240f33c8ab798779a4467a2cdd2b8f2e314ba58ee16bdc78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:061cf8e2-9c2b-15f6-2a41-408e1edfa584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_eq_damped_primitive_return {A : ℝ} (hA : 91 ≤ A) :
    completeXiTail A = ∫ t in Real.log 7..2 * A,
      actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t := by
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hp : 0 < A := by linarith
  have hJ := actualDampedXiFinitePrimitive_absolutelyContinuous hlb
  have hH := (returnTest_contDiff hp).contDiffOn.absolutelyContinuousOnInterval
    (a := Real.log 7) (b := 2 * A)
  have hi1 : IntervalIntegrable (fun t => actualAnchoredXiTailPrimitive t *
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) volume
        (Real.log 7) (2 * A) := by
    have hc := actual_correlation_contDiff_four A hp
    have hi : IntervalIntegrable actualAnchoredXiTailPrimitive volume (Real.log 7) (2 * A) :=
      (actualAnchoredXiTailPrimitive_absolutelyContinuous hlb).continuousOn.intervalIntegrable
    exact hi.mul_continuousOn
      (((hc.continuous_iteratedDeriv 2 (by norm_num)).sub
        ((first_jet_continuous hp).div_const 2)).continuousOn)
  have hi2 : IntervalIntegrable (fun t => actualDampedXiFinitePrimitive t *
      actualDampedXiReturnDensity A t) volume (Real.log 7) (2 * A) := by
    have hi := hH.intervalIntegrable_deriv.continuousOn_mul hJ.continuousOn
    have he : deriv (actualDampedXiReturnTest A) = actualDampedXiReturnDensity A :=
      funext (fun t => (actualDampedXiReturnTest_hasDerivAt A t hp).deriv)
    rwa [he] at hi
  have he : (∫ t in Real.log 7..2 * A,
      deriv actualDampedXiFinitePrimitive t * actualDampedXiReturnTest A t +
        actualDampedXiFinitePrimitive t * deriv (actualDampedXiReturnTest A) t) =
      (∫ t in Real.log 7..2 * A, actualAnchoredXiTailPrimitive t *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) +
      ∫ t in Real.log 7..2 * A, actualDampedXiFinitePrimitive t *
        actualDampedXiReturnDensity A t := by
    rw [← intervalIntegral.integral_add hi1 hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualDampedXiFinitePrimitive_ae_hasDerivAt hlb] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv,
      (actualDampedXiReturnTest_hasDerivAt A t hp).deriv]
    unfold actualDampedXiReturnTest
    have hex : Real.exp (-t / 2) * Real.exp (t / 2) = 1 := by
      rw [← Real.exp_add, show -t / 2 + t / 2 = 0 by ring, Real.exp_zero]
    calc
      _ = actualAnchoredXiTailPrimitive t * (Real.exp (-t / 2) * Real.exp (t / 2)) *
          (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
            deriv (sourceCorrelation explicitSecondDerivative A) t / 2) +
          actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t := by ring
      _ = _ := by rw [hex]; ring
  have hh := hJ.integral_deriv_mul_eq_sub hH
  rw [he, actualDampedXiReturnTest_at_upper hA, actualDampedXiFinitePrimitive_at_lower,
    mul_zero, zero_mul, sub_self] at hh
  rw [completeXiTail_eq_anchored_primitive hA]
  linarith

/-- The genuine actual third/first support-edge jets bound the returned density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variant0f3bddfdec5a67bf240f33c8ab798779a4467a2cdd2b8f2e314ba58ee16bdc78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variant0f3bddfdec5a67bf240f33c8ab798779a4467a2cdd2b8f2e314ba58ee16bdc78.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f66a92565b1b7538cab4f5b68cb1012f48b6b81b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
