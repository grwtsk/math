# actualPeriodicInteriorDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c924103b-407b-7ef8-1c8c-87f58b441ac0",
  "kind": "theorem",
  "lexical_name": "actualPeriodicInteriorDensity_intervalIntegrable",
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
  "slug": "actualperiodicinteriordensity-intervalintegrable--d9112c3c930dd6182df33076",
  "source": {
    "blob": "452c065add53650edf287f94df8a46388314e032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9112c3c930dd6182df33076d153099f3c098d22493e1071061842722d9b3a64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c924103b-407b-7ef8-1c8c-87f58b441ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicInteriorDensity_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (actualPeriodicInteriorDensity A) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  let l := actualTimeLower A
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let c := actualColumnUpper A
  let P := actualAdjointTimePrimitive A 0
  let Q := actualAdjointColumnPrimitive A
  let J := covariantMixedDerivative (actualLogMixedDensity A)
  have ht : l ≤ b := time_orders hA
  have hc : a ≤ c := (column_orders hA).2
  have hPQ : IntervalIntegrable (fun t => P t * ∫ s in a..c, Q s * J t s) volume l b := by
    have hi := actualAdjointInteriorBox_integrable hA
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le ht]
    simpa only [l, b, a, c, P, Q, J, IntegrableOn,
      intervalIntegral.integral_of_le hc, integral_const_mul] using hi.integral_prod_left
  have hp := (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ ht).continuousOn
  rw [uIcc_of_le ht] at hp
  have hhom : Continuous (fun t => 2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
      (Real.exp (c / 2) * actualTwistedTimeDensity A t c -
        Real.exp (a / 2) * actualTwistedTimeDensity A t a)) := by
    exact (((twisted_time_continuous (by linarith : 0 < A) c).const_mul _).sub
      ((twisted_time_continuous (by linarith : 0 < A) a).const_mul _)).const_mul _
  have hiH : IntervalIntegrable (fun t => P t *
      (2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
        (Real.exp (c / 2) * actualTwistedTimeDensity A t c -
          Real.exp (a / 2) * actualTwistedTimeDensity A t a))) volume l b :=
    (hp.intervalIntegrable_of_Icc ht).mul_continuousOn hhom.continuousOn
  apply (hPQ.add hiH).congr_uIoo
  intro t _
  change P t * (∫ s in a..c, Q s * J t s) + P t *
    (2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
      (Real.exp (c / 2) * actualTwistedTimeDensity A t c -
        Real.exp (a / 2) * actualTwistedTimeDensity A t a)) = actualPeriodicInteriorDensity A t
  have h := adjusted_inner_eq_original_hom hA t
  rw [actual_adjusted_inner_eq_mean_periodic hA t] at h
  unfold actualPeriodicInteriorDensity
  change _ = P t * _
  rw [h]
  ring

/-- The full source interior is the same combined signed density, with no termwise deletion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452c065add53650edf287f94df8a46388314e032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
