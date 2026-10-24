# actual_correlation_upper_strip_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35384552-0e1e-d9d3-05b9-2598d14c1eb8",
  "kind": "theorem",
  "lexical_name": "actual_correlation_upper_strip_lower",
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
  "slug": "actual-correlation-upper-strip-lower--6c91f8954f38c8326f42c159",
  "source": {
    "blob": "9ae4ceb81aa718c8c586d4af4b107f69d3b838de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant97f668074d1cd0c168651b44780225370453b9a4ef90d189a2e6b51cfa2cbf6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c91f8954f38c8326f42c1599e080b8b51e888b24a861be0ad8d92836f1ef3df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant97f668074d1cd0c168651b44780225370453b9a4ef90d189a2e6b51cfa2cbf6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35384552-0e1e-d9d3-05b9-2598d14c1eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_upper_strip_lower (A h : ℝ) (hA : 4 ≤ A)
    (hh0 : 0 ≤ h) (hh1 : h ≤ 1) :
    h ^ 5 / (30 * A ^ 9) ≤ sourceCorrelation explicitSecondDerivative A (2 * A - h) := by
  have hp : 0 < A := by linarith
  let L := fun x : ℝ => (A - x) ^ 2 * (h - A + x) ^ 2 / A ^ 9
  have hLI : IntervalIntegrable L volume (A - h) A := by
    apply Continuous.intervalIntegrable
    dsimp [L]
    fun_prop
  have hqI : IntervalIntegrable (fun x => normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - (2 * A - h))) volume (A - h) A :=
    ((normalizedTest_contDiff A hp).continuous.mul
      ((normalizedTest_contDiff A hp).continuous.comp
        (continuous_id.sub continuous_const))).intervalIntegrable _ _
  have hb : (∫ x in (A - h)..A, L x) ≤
      sourceCorrelation explicitSecondDerivative A (2 * A - h) := by
    rw [actual_correlation_upper_strip_integral A h hA hh0 hh1]
    apply intervalIntegral.integral_mono_on (by linarith) hLI hqI
    intro x hx
    have hδ0 : 0 ≤ A - x := by linarith [hx.2]
    have hδ1 : A - x ≤ 1 := by linarith [hx.1]
    have hε0 : 0 ≤ h - A + x := by linarith [hx.1]
    have hε1 : h - A + x ≤ 1 := by linarith [hx.2]
    have hq0 := actual_normalized_test_right_edge_lower A (A - x) hA hδ0 hδ1
    have hq1 := actual_normalized_test_left_edge_lower A (h - A + x) hA hε0 hε1
    rw [show A - (A - x) = x by ring] at hq0
    rw [show -A + (h - A + x) = x - (2 * A - h) by ring] at hq1
    have hm := mul_le_mul hq0 hq1 (by positivity)
      ((by positivity : 0 ≤ (A - x) ^ 2 / (A ^ 4 * Real.sqrt A)).trans hq0)
    have he : (A - x) ^ 2 / (A ^ 4 * Real.sqrt A) *
        ((h - A + x) ^ 2 / (A ^ 4 * Real.sqrt A)) = L x := by
      rw [← mul_div_mul_comm, ← pow_two, mul_pow, Real.sq_sqrt hp.le]
      dsimp [L]
      ring
    rw [he] at hm
    exact hm
  have hL : (∫ x in (A - h)..A, L x) = h ^ 5 / (30 * A ^ 9) := by
    have he : (fun x : ℝ => (A - x) ^ 2 * (h - A + x) ^ 2) =
        fun x => x ^ 4 + (2 * h - 4 * A) * x ^ 3 +
          (h ^ 2 - 6 * A * h + 6 * A ^ 2) * x ^ 2 +
          (-2 * A * h ^ 2 + 6 * A ^ 2 * h - 4 * A ^ 3) * x ^ 1 +
          (A ^ 2 * h ^ 2 - 2 * A ^ 3 * h + A ^ 4) := by
      funext x
      ring
    dsimp [L]
    rw [intervalIntegral.integral_div, he]
    simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
      [intervalIntegral.integral_add, intervalIntegral.integral_const_mul,
        intervalIntegral.integral_const, integral_pow]
    ring
  rw [hL] at hb
  exact hb

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant97f668074d1cd0c168651b44780225370453b9a4ef90d189a2e6b51cfa2cbf6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant97f668074d1cd0c168651b44780225370453b9a4ef90d189a2e6b51cfa2cbf6d.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ae4ceb81aa718c8c586d4af4b107f69d3b838de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
