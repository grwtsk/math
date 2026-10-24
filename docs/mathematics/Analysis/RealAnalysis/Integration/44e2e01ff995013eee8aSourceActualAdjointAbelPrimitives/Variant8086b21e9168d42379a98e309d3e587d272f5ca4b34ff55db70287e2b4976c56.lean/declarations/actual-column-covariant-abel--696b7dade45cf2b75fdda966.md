# actual_column_covariant_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40b82ee9-fa0e-8da2-e840-b28a03c35dac",
  "kind": "theorem",
  "lexical_name": "actual_column_covariant_abel",
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
  "slug": "actual-column-covariant-abel--696b7dade45cf2b75fdda966",
  "source": {
    "blob": "d31f2c5844cf54b223ce90a262b822d69a748d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 325,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:696b7dade45cf2b75fdda96645daf35f67e623ddf0273173f562ea6a23e79c3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40b82ee9-fa0e-8da2-e840-b28a03c35dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_column_covariant_abel {A l : ℝ} (hA : 1 ≤ A)
    (hl : actualTimeLower A ≤ l) (hlb : l ≤ actualColumnUpper A)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ s in l..actualColumnUpper A, actualLogColumnPrefix A s * F s) =
      -actualAdjointColumnPrimitive A l * F l -
        ∫ s in l..actualColumnUpper A,
          actualAdjointColumnPrimitive A s * (deriv F s + F s / 2) := by
  have hQ := actualAdjointColumnPrimitive_absolutelyContinuous hA hl hlb
  have hFc : AbsolutelyContinuousOnInterval F l (actualColumnUpper A) :=
    hF.contDiffOn.absolutelyContinuousOnInterval
  have hi1 : IntervalIntegrable (fun s => actualLogColumnPrefix A s * F s)
      volume l (actualColumnUpper A) :=
    (column_intervalIntegrable hA hl hlb).mul_continuousOn hF.continuous.continuousOn
  have hi2 : IntervalIntegrable (fun s => actualAdjointColumnPrimitive A s *
      (deriv F s + F s / 2)) volume l (actualColumnUpper A) := by
    have hc : ContinuousOn (fun s => actualAdjointColumnPrimitive A s *
        (deriv F s + F s / 2)) (Icc l (actualColumnUpper A)) := by
      simpa only [uIcc_of_le hlb] using hQ.continuousOn.fun_mul
        (hF.continuous_deriv_one.fun_add (hF.continuous.div_const 2)).continuousOn
    exact hc.intervalIntegrable_of_Icc hlb
  have heq : (∫ s in l..actualColumnUpper A,
      deriv (actualAdjointColumnPrimitive A) s * F s +
        actualAdjointColumnPrimitive A s * deriv F s) =
      (∫ s in l..actualColumnUpper A, actualLogColumnPrefix A s * F s) +
        ∫ s in l..actualColumnUpper A,
          actualAdjointColumnPrimitive A s * (deriv F s + F s / 2) := by
    rw [← intervalIntegral.integral_add hi1 hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualAdjointColumnPrimitive_ae_hasDerivAt hA hl hlb] with s hs hm
    rw [(hs (uIoc_subset_uIcc hm)).deriv]
    ring
  have h := hQ.integral_deriv_mul_eq_sub hFc
  rw [heq, actualAdjointColumnPrimitive_at_upper] at h
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualAdjointAbelPrimitives
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31f2c5844cf54b223ce90a262b822d69a748d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
