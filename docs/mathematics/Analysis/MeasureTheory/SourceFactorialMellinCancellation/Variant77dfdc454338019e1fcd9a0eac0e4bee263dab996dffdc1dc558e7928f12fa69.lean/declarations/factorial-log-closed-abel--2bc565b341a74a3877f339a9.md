# factorial_log_closed_Abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca4ef379-0b62-e8ba-62e0-b141d50e1494",
  "kind": "theorem",
  "lexical_name": "factorial_log_closed_Abel",
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
  "slug": "factorial-log-closed-abel--2bc565b341a74a3877f339a9",
  "source": {
    "blob": "123b62375f79555934ac2133473445eb02cba697",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 39,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bc565b341a74a3877f339a949fcb412304a9513c08b2bb9b928274cfbdaa31a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca4ef379-0b62-e8ba-62e0-b141d50e1494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_log_closed_Abel {y : ℝ} (hy : 1 ≤ y) :
    Real.log (⌊y⌋₊.factorial : ℝ) =
      (⌊y⌋₊ : ℝ) * Real.log y - ∫ t in 1..y, (⌊t⌋₊ : ℝ) / t := by
  have hd : ∀ t ∈ Icc (1 : ℝ) y, DifferentiableAt ℝ Real.log t := by
    intro t ht
    exact (Real.hasDerivAt_log (by linarith [ht.1] : t ≠ 0)).differentiableAt
  have hc : ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y) := by
    exact continuousOn_id.inv₀ (fun t ht => by linarith [ht.1])
  have hi : IntegrableOn (deriv Real.log) (Icc 1 y) := by
    rw [Real.deriv_log']
    exact (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mp
      (hc.intervalIntegrable_of_Icc hy)
  have ha := sum_mul_eq_sub_integral_mul₀ positiveUnitCoefficient (by simp [positiveUnitCoefficient])
    y hd hi
  have hs : (∑ k ∈ Finset.Icc 0 ⌊y⌋₊, Real.log (k : ℝ) * positiveUnitCoefficient k) =
      Real.log (⌊y⌋₊.factorial : ℝ) := by
    rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
    simp only [positiveUnitCoefficient, if_pos rfl, mul_zero, zero_add]
    rw [← Finset.Icc_add_one_left_eq_Ioc]
    simp only [Nat.zero_add]
    rw [← sum_log_Icc_eq_log_factorial]
    apply Finset.sum_congr rfl
    intro k hk
    simp [ne_of_gt (by have := (Finset.mem_Icc.mp hk).1; omega : 0 < k)]
  rw [hs, positiveUnitCoefficient_sum, ← intervalIntegral.integral_of_le hy] at ha
  have he : (∫ t in 1..y, deriv Real.log t *
      ∑ k ∈ Finset.Icc 0 ⌊t⌋₊, positiveUnitCoefficient k) =
      ∫ t in 1..y, (⌊t⌋₊ : ℝ) / t := by
    simp_rw [Real.deriv_log, positiveUnitCoefficient_sum]
    congr 1
    funext t
    ring
  rw [he] at ha
  simpa only [mul_comm] using ha

/-- The actual signed fractional primitive retains every integer log jump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `123b62375f79555934ac2133473445eb02cba697` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
