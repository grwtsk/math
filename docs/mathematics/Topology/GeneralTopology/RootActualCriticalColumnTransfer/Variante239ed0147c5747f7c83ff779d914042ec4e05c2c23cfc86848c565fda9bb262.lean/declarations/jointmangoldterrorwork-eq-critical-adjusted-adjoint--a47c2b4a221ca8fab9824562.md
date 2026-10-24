# jointMangoldtErrorWork_eq_critical_adjusted_adjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49263747-cff2-0c3f-6e59-b04b880b46df",
  "kind": "theorem",
  "lexical_name": "jointMangoldtErrorWork_eq_critical_adjusted_adjoint",
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
  "slug": "jointmangoldterrorwork-eq-critical-adjusted-adjoint--a47c2b4a221ca8fab9824562",
  "source": {
    "blob": "6dbfb79e026a3521890cd2abbbba69fd8134bcf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variante239ed0147c5747f7c83ff779d914042ec4e05c2c23cfc86848c565fda9bb262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a47c2b4a221ca8fab98245629a10d46e3e779d77a7004e18de064575c4fe063a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variante239ed0147c5747f7c83ff779d914042ec4e05c2c23cfc86848c565fda9bb262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49263747-cff2-0c3f-6e59-b04b880b46df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtErrorWork_eq_critical_adjusted_adjoint {A : ℝ} (hA : 1 ≤ A) :
    SourceJointMangoldtWork.jointMangoldtErrorWork A =
      -actualCriticalAdjustedLowerColumnTrace A - actualCriticalAdjustedInterior A -
        actualCriticalUpperColumnTrace A := by
  let l := actualTimeLower A
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let c := actualColumnUpper A
  let P := actualAdjointTimePrimitive A 0
  let Q := actualAdjointColumnPrimitive A
  let J := covariantMixedDerivative (actualLogMixedDensity A)
  let coefficient := -2 * actualCenteredHalfZetaMain (vaughanCutoff A)
  obtain ⟨ht, hl, hs⟩ := actual_orders hA
  have hQ := (actualAdjointColumnPrimitive_absolutelyContinuous hA hl hs).continuousOn
  rw [uIcc_of_le hs] at hQ
  have hcol (t : ℝ) : IntervalIntegrable (fun s => Q s * J t s) volume a c := by
    exact (hQ.intervalIntegrable_of_Icc hs).mul_continuousOn
      (covariant_column_continuous (by linarith) t).continuousOn
  have hexp (t : ℝ) : IntervalIntegrable
      (fun s => coefficient * Real.exp (s / 2) * J t s) volume a c := by
    exact ((by fun_prop : Continuous (fun s : ℝ => coefficient * Real.exp (s / 2))).mul
      (covariant_column_continuous (by linarith) t)).intervalIntegrable a c
  have hinner (t : ℝ) : (∫ s in a..c, coefficient * Real.exp (s / 2) * J t s) =
      coefficient * Real.exp (c / 2) * actualTwistedTimeDensity A t c -
        coefficient * Real.exp (a / 2) * actualTwistedTimeDensity A t a := by
    simp_rw [mul_assoc, intervalIntegral.integral_const_mul]
    rw [actualHomogeneousColumnInner_eq_boundary (by linarith : 0 < A)]
    ring
  have hhom : IntervalIntegrable (fun t => P t *
      ∫ s in a..c, coefficient * Real.exp (s / 2) * J t s) volume l b := by
    simp_rw [hinner]
    have he : (fun t => P t *
        (coefficient * Real.exp (c / 2) * actualTwistedTimeDensity A t c -
          coefficient * Real.exp (a / 2) * actualTwistedTimeDensity A t a)) =
        (fun t => coefficient * Real.exp (c / 2) * (P t * actualTwistedTimeDensity A t c) -
          coefficient * Real.exp (a / 2) * (P t * actualTwistedTimeDensity A t a)) := by
      funext t
      ring
    rw [he]
    exact ((time_trace_integrable hA c).const_mul _).sub
      ((time_trace_integrable hA a).const_mul _)
  have hPQ : IntervalIntegrable (fun t => P t * ∫ s in a..c, Q s * J t s) volume l b := by
    have hi := actualAdjointInteriorBox_integrable hA
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le ht]
    simpa only [l, b, a, c, P, Q, J, IntegrableOn,
      intervalIntegral.integral_of_le hs, integral_const_mul] using hi.integral_prod_left
  have hi : actualCriticalAdjustedInterior A = actualAdjointInterior A -
      (∫ t in l..b, P t * ∫ s in a..c, coefficient * Real.exp (s / 2) * J t s) := by
    have hadj (t : ℝ) : (∫ s in a..c, actualCriticalAdjustedColumnPrimitive A s * J t s) =
        (∫ s in a..c, Q s * J t s) -
          ∫ s in a..c, coefficient * Real.exp (s / 2) * J t s := by
      have he : (fun s => actualCriticalAdjustedColumnPrimitive A s * J t s) =
          (fun s => Q s * J t s - coefficient * Real.exp (s / 2) * J t s) := by
        funext s
        unfold actualCriticalAdjustedColumnPrimitive coefficient Q
        ring
      rw [he, intervalIntegral.integral_sub (hcol t) (hexp t)]
    have ho : actualAdjointInterior A = ∫ t in l..b, P t * ∫ s in a..c, Q s * J t s := by
      unfold actualAdjointInterior
      simp_rw [← intervalIntegral.integral_const_mul]
      rfl
    unfold actualCriticalAdjustedInterior
    have he : (∫ t in l..b, ∫ s in a..c, P t * actualCriticalAdjustedColumnPrimitive A s *
        J t s) = ∫ t in l..b, P t * ∫ s in a..c,
          actualCriticalAdjustedColumnPrimitive A s * J t s := by
      simp_rw [← intervalIntegral.integral_const_mul]
      rfl
    change (∫ t in l..b, ∫ s in a..c, P t * actualCriticalAdjustedColumnPrimitive A s *
      J t s) = _
    rw [he]
    simp_rw [hadj, mul_sub]
    rw [intervalIntegral.integral_sub hPQ hhom, ho]
  have hlower : actualCriticalAdjustedLowerColumnTrace A = actualAdjointLowerColumnTrace A -
      coefficient * Real.exp (a / 2) *
        (∫ t in l..b, P t * actualTwistedTimeDensity A t a) := by
    unfold actualCriticalAdjustedLowerColumnTrace actualAdjointLowerColumnTrace
      actualCriticalAdjustedColumnPrimitive
    dsimp only [coefficient, a, P, l, b]
    ring
  have hc : actualCriticalHomogeneousColumnCompensation A =
      coefficient * Real.exp (a / 2) *
        (∫ t in l..b, P t * actualTwistedTimeDensity A t a) +
          ∫ t in l..b, P t * ∫ s in a..c, coefficient * Real.exp (s / 2) * J t s := rfl
  have hu : actualCriticalHomogeneousColumnCompensation A = actualCriticalUpperColumnTrace A :=
    actualCriticalHomogeneousColumnCompensation_eq_upper_trace hA
  rw [jointMangoldtErrorWork_eq_actual_double_adjoint hA, hlower, hi, ← hu, hc]
  ring

end
end FormalResearch.RiemannHypothesis.RootActualCriticalColumnTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variante239ed0147c5747f7c83ff779d914042ec4e05c2c23cfc86848c565fda9bb262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variante239ed0147c5747f7c83ff779d914042ec4e05c2c23cfc86848c565fda9bb262.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dbfb79e026a3521890cd2abbbba69fd8134bcf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
