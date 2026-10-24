# actual_physical_prefix_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:043a8362-6b3b-75c2-e450-04df698e620f",
  "kind": "theorem",
  "lexical_name": "actual_physical_prefix_abel",
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
  "slug": "actual-physical-prefix-abel--197366243b55771962bb2093",
  "source": {
    "blob": "2bc07155b3b37b4d116bfd82b488756576395ef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 232,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant389badc9c05c38ed8201bda50a58b002d6ba523587801cb8a06cb5d7f13fef39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:197366243b55771962bb20938ab40dcaf799ce89f782dd2d707db13cb6838519",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variant389badc9c05c38ed8201bda50a58b002d6ba523587801cb8a06cb5d7f13fef39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:043a8362-6b3b-75c2-e450-04df698e620f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_physical_prefix_abel (U : ℕ) {l b : ℝ} (hU : 1 ≤ U)
    (hl : (U : ℝ) ≤ l) (hlb : l ≤ b) (F : ℝ → ℝ)
    (hF : ContDiffOn ℝ 1 F (uIcc l b)) :
    (∫ x in l..b,
      ((∑ n ∈ Finset.Ioc U (Nat.floor x), centeredBeta U n) - actualCenteredPrefixPeriodMean U) * F x) =
      actualPhysicalPeriodicPrimitive U b * F b - actualPhysicalPeriodicPrimitive U l * F l -
        ∫ x in l..b, actualPhysicalPeriodicPrimitive U x * deriv F x := by
  have hl0 : 0 ≤ l := (Nat.cast_nonneg U).trans hl
  have hS := actualPhysicalPeriodicPrimitive_absolutelyContinuous U hl0 hlb
  have hFA : AbsolutelyContinuousOnInterval F l b := hF.absolutelyContinuousOnInterval
  have hi1 : IntervalIntegrable (fun x => actualPhysicalPeriodicDensity U x * F x) volume l b :=
    (actualPhysicalPeriodicDensity_intervalIntegrable U l b).mul_continuousOn hFA.continuousOn
  have hi2 : IntervalIntegrable (fun x => actualPhysicalPeriodicPrimitive U x * deriv F x)
      volume l b := hFA.intervalIntegrable_deriv.continuousOn_mul hS.continuousOn
  have he : (∫ x in l..b, deriv (actualPhysicalPeriodicPrimitive U) x * F x +
      actualPhysicalPeriodicPrimitive U x * deriv F x) =
      (∫ x in l..b,
        ((∑ n ∈ Finset.Ioc U (Nat.floor x), centeredBeta U n) - actualCenteredPrefixPeriodMean U) * F x) +
        ∫ x in l..b, actualPhysicalPeriodicPrimitive U x * deriv F x := by
    rw [← intervalIntegral.integral_add (by
      apply hi1.congr_uIoo
      intro x hx
      rw [uIoo_of_le hlb] at hx
      rw [actualPhysicalPeriodicDensity_eq_original_prefix U x hU (hl.trans hx.1.le)]) hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualPhysicalPeriodicPrimitive_ae_hasDerivAt U hl0 hlb] with x hx hm
    rw [(hx (uIoc_subset_uIcc hm)).deriv]
    have hxu : (U : ℝ) ≤ x := by
      rw [uIoc_of_le hlb] at hm
      exact hl.trans hm.1.le
    rw [actualPhysicalPeriodicDensity_eq_original_prefix U x hU hxu]
  have h := hS.integral_deriv_mul_eq_sub hFA
  rw [he] at h
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualPhysicalPeriodicPrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variant389badc9c05c38ed8201bda50a58b002d6ba523587801cb8a06cb5d7f13fef39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant389badc9c05c38ed8201bda50a58b002d6ba523587801cb8a06cb5d7f13fef39.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bc07155b3b37b4d116bfd82b488756576395ef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
