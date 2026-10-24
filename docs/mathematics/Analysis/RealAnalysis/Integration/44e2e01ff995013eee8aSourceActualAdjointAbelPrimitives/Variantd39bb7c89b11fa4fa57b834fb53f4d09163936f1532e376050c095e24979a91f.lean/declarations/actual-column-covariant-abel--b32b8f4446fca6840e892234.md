# actual_column_covariant_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ce0cd89-38dc-4295-880b-74cf1ab13f2d",
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
  "slug": "actual-column-covariant-abel--b32b8f4446fca6840e892234",
  "source": {
    "blob": "b81cdac6df9c80ebbe1260f6688800d6981a660d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 317,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b32b8f4446fca6840e8922342d2ba3c1e6493b5c8ba61f260871d2406e01be1c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ce0cd89-38dc-4295-880b-74cf1ab13f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–353.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b81cdac6df9c80ebbe1260f6688800d6981a660d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
