# actual_critical_baseline_upper_strip_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e0edb60-5da3-1caf-d6c3-a37f5a883187",
  "kind": "theorem",
  "lexical_name": "actual_critical_baseline_upper_strip_lower",
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
  "slug": "actual-critical-baseline-upper-strip-lower--eb3746b1b81647322511ac96",
  "source": {
    "blob": "8b34e870707a406e0c41c798cd6dc2f8a492f661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb3746b1b81647322511ac967c3792999bfacfa44ae86470c619b193c6f5109c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e0edb60-5da3-1caf-d6c3-a37f5a883187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_critical_baseline_upper_strip_lower (A : ℝ) (hA : 4 ≤ A) :
    Real.exp (A - 1 / 2) / (30 * A ^ 9) ≤
      ∫ t in (2 * A - 1)..2 * A, baselineLogKernel A t := by
  have hp : 0 < A := by linarith
  have hf := criticalPrimeTest_contDiff A hp
  have he : baselineLogKernel A = fun t =>
      criticalPrimeTest A t - deriv (criticalPrimeTest A) t := by
    funext t
    rw [criticalPrimeTest_deriv A t hp]
    unfold baselineLogKernel criticalPrimeTest criticalWeight
    ring
  have hi : (∫ t in (2 * A - 1)..2 * A, baselineLogKernel A t) =
      (∫ t in (2 * A - 1)..2 * A, criticalPrimeTest A t) +
        criticalPrimeTest A (2 * A - 1) := by
    rw [he, intervalIntegral.integral_sub
      (hf.continuous.intervalIntegrable _ _) (hf.continuous_deriv_one.intervalIntegrable _ _),
      intervalIntegral.integral_deriv_eq_sub]
    · rw [criticalPrimeTest_at_upper A hp]
      ring
    · intro t _
      exact hf.differentiable (by norm_num) t
    · exact hf.continuous_deriv_one.intervalIntegrable _ _
  have hn : 0 ≤ ∫ t in (2 * A - 1)..2 * A, criticalPrimeTest A t := by
    apply intervalIntegral.integral_nonneg (by linarith)
    intro t ht
    have hh0 : 0 ≤ 2 * A - t := by linarith [ht.2]
    have hh1 : 2 * A - t ≤ 1 := by linarith [ht.1]
    have hc := actual_correlation_upper_strip_lower A (2 * A - t) hA hh0 hh1
    rw [show 2 * A - (2 * A - t) = t by ring] at hc
    have hc0 : 0 ≤ sourceCorrelation explicitSecondDerivative A t :=
      (by positivity : 0 ≤ (2 * A - t) ^ 5 / (30 * A ^ 9)).trans hc
    exact mul_nonneg (Real.exp_pos _).le hc0
  have hc := actual_correlation_upper_strip_lower A 1 hA (by norm_num) (by norm_num)
  have hb : Real.exp (A - 1 / 2) / (30 * A ^ 9) ≤
      criticalPrimeTest A (2 * A - 1) := by
    unfold criticalPrimeTest
    have he : (2 * A - 1) / 2 = A - 1 / 2 := by ring
    rw [he]
    have hx := mul_le_mul_of_nonneg_left hc (Real.exp_pos (A - 1 / 2)).le
    simpa only [one_pow, mul_one_div] using hx
  rw [hi]
  linarith

/-- Taking absolute values already incurs this actual positive support-edge budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b34e870707a406e0c41c798cd6dc2f8a492f661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
