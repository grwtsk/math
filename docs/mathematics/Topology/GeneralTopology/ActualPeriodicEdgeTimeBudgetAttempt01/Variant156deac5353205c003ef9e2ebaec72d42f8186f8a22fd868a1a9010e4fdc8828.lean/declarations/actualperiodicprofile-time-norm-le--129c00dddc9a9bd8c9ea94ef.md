# actualPeriodicProfile_time_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c11dba0a-22b7-7cb6-47c2-f9886770ffc7",
  "kind": "theorem",
  "lexical_name": "actualPeriodicProfile_time_norm_le",
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
  "slug": "actualperiodicprofile-time-norm-le--129c00dddc9a9bd8c9ea94ef",
  "source": {
    "blob": "87b628732d034d12da3d45da58d01278899dc1e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant156deac5353205c003ef9e2ebaec72d42f8186f8a22fd868a1a9010e4fdc8828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:129c00dddc9a9bd8c9ea94efee746839612dde9aa702ce281400ef8da6314bbd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant156deac5353205c003ef9e2ebaec72d42f8186f8a22fd868a1a9010e4fdc8828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c11dba0a-22b7-7cb6-47c2-f9886770ffc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicProfile_time_norm_le {A u : ℝ} (hA : 91 ≤ A) (hu : 2 ≤ u) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      |actualPeriodicPhysicalCellProfile A t u|) ≤
        536 * Real.exp A / (A ^ 4 * u ^ 2) := by
  have hup : 0 < u := by linarith
  apply restrict_supported_time_norm (by linarith : 1 ≤ A) hu
    (fun t => actualPeriodicPhysicalCellProfile A t u)
    (profile_time_continuous (by linarith : 0 < A) u)
    (fun t ht => actualPeriodicPhysicalCellProfile_zero_right
      (by linarith : 1 ≤ A) (by linarith)) (by positivity)
  intro L hLe hL
  have heq : (∫ t in 0..L, 67 / A ^ 4 / u * Real.exp (-Real.log u / 2) *
      ((L - t) + (L - t) ^ 3 / 24) * Real.exp (t / 2)) =
      67 / A ^ 4 / u * Real.exp (-Real.log u / 2) *
        ((∫ t in 0..L, (L - t) ^ 1 * Real.exp (t / 2)) +
          (∫ t in 0..L, (L - t) ^ 3 * Real.exp (t / 2)) / 24) := by
    rw [← intervalIntegral.integral_div,
      ← intervalIntegral.integral_add ((by fun_prop : Continuous (fun t : ℝ =>
        (L - t) ^ 1 * Real.exp (t / 2))).intervalIntegrable 0 L)
        ((by fun_prop : Continuous (fun t : ℝ =>
          (L - t) ^ 3 * Real.exp (t / 2) / 24)).intervalIntegrable 0 L),
      ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    ring
  have hm := intervalIntegral.integral_mono_on (μ := volume) hL
    ((profile_time_continuous (by linarith : 0 < A) u).abs.intervalIntegrable 0 L)
    ((by fun_prop : Continuous (fun t : ℝ => 67 / A ^ 4 / u *
      Real.exp (-Real.log u / 2) * ((L - t) + (L - t) ^ 3 / 24) *
        Real.exp (t / 2))).intervalIntegrable 0 L) (fun t ht => by
      have hz : t + Real.log u ≤ 2 * A := by linarith [ht.2]
      have h3 := actual_correlation_third_edge_abs_le (z := t + Real.log u) hA hz
      have h1 := actual_correlation_first_edge_abs_le (z := t + Real.log u) hA hz
      simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h1 ⊢
      have hh := abs_sub (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A)
        (t + Real.log u)) (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)
          (t + Real.log u) / 4)
      rw [abs_div, abs_of_pos (by norm_num : 0 < (4 : ℝ))] at hh
      have hj : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A)
          (t + Real.log u) - iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)
          (t + Real.log u) / 4| ≤ 67 / A ^ 4 * ((L - t) + (L - t) ^ 3 / 24) := by
        simp only [iteratedDeriv_succ, iteratedDeriv_zero] at hh ⊢
        rw [show 2 * A - (t + Real.log u) = L - t by rw [hLe]; ring] at h3 h1
        linarith
      unfold actualPeriodicPhysicalCellProfile actualTwistedTimeDensity
      rw [abs_div, abs_mul, abs_of_pos (by positivity :
        0 < Real.exp (t / 2) * Real.exp (-Real.log u / 2)), abs_of_pos hup]
      calc
        _ ≤ (Real.exp (t / 2) * Real.exp (-Real.log u / 2) *
          (67 / A ^ 4 * ((L - t) + (L - t) ^ 3 / 24))) / u :=
            div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hj (by positivity)) hup.le
        _ = _ := by ring)
  rw [heq] at hm
  have h1 := exponential_truncated_moment_le 1 hL
  have h3 := exponential_truncated_moment_le 3 hL
  norm_num only [Nat.factorial, Nat.cast_ofNat] at h1 h3
  have hb : (∫ t in 0..L, |actualPeriodicPhysicalCellProfile A t u|) ≤
      536 / A ^ 4 / u * Real.exp (-Real.log u / 2) * Real.exp (L / 2) := by
    apply hm.trans
    calc
      _ ≤ 67 / A ^ 4 / u * Real.exp (-Real.log u / 2) *
          (Real.exp (L / 2) * 4 + Real.exp (L / 2) * 96 / 24) := by
        apply mul_le_mul_of_nonneg_left _ (by positivity)
        exact add_le_add h1 (div_le_div_of_nonneg_right h3 (by norm_num))
      _ = _ := by ring
  apply hb.trans_eq
  rw [hLe, Real.exp_sub, Real.exp_sub, Real.exp_log hup]
  have he : Real.exp (A - Real.log u / 2) =
      Real.exp A / Real.exp (Real.log u / 2) := Real.exp_sub _ _
  have he2 : Real.exp (Real.log u / 2) * Real.exp (Real.log u / 2) = u := by
    rw [← Real.exp_add, add_halves, Real.exp_log hup]
  have hLhalf : (2 * A - Real.log u) / 2 = A - Real.log u / 2 := by ring
  rw [hLhalf, he, Real.exp_neg]
  field_simp
  nlinarith [he2]

end
end FormalResearch.RiemannHypothesis.ActualPeriodicEdgeTimeBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant156deac5353205c003ef9e2ebaec72d42f8186f8a22fd868a1a9010e4fdc8828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant156deac5353205c003ef9e2ebaec72d42f8186f8a22fd868a1a9010e4fdc8828.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b628732d034d12da3d45da58d01278899dc1e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
