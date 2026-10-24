# actualXiLogPrimitive_log_eq_closed_atoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47f4a938-b066-70c8-460f-21663ac94862",
  "kind": "theorem",
  "lexical_name": "actualXiLogPrimitive_log_eq_closed_atoms",
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
  "slug": "actualxilogprimitive-log-eq-closed-atoms--ca2bef71a796e8cf7fa5b3a7",
  "source": {
    "blob": "cfeaf51ced416c8ae6abaaa09c87cd8b3339b8a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca2bef71a796e8cf7fa5b3a7ab42c8fc0e11dbe0a07863c0e27fd12910f4a01d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47f4a938-b066-70c8-460f-21663ac94862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogPrimitive_log_eq_closed_atoms (Y : ℝ) (hY : 2 ≤ Y) :
    actualXiLogPrimitive (Real.log Y) =
      2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊,
        vonMangoldt n * ((n : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) +
      2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
        ((2 : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) -
      2 * (Y ^ (1 / 2 : ℝ) - (2 : ℝ) ^ (1 / 2 : ℝ)) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hw := inverseThreeHalf_continuousOn Y
  have hb : IntervalIntegrable (fun x => (c - x) / x ^ (3 / 2 : ℝ)) volume 2 Y := by
    apply ContinuousOn.intervalIntegrable_of_Icc hY
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    exact ((continuousAt_const.sub continuousAt_id).div
      (continuousAt_id.rpow_const (Or.inl hp.ne'))
      (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x (hx : x ∈ uIcc (2 : ℝ) Y) =>
      sqrtBaselinePrimitive_hasDerivAt c x (by
        rw [uIcc_of_le hY] at hx
        linarith [hx.1])) hb
  have he : (∫ x in 2..Y, shiftedActualChebyshev x / x ^ (3 / 2 : ℝ)) =
      (∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ)) +
        ∫ x in 2..Y, (c - x) / x ^ (3 / 2 : ℝ) := by
    calc
      _ = ∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ) +
          (c - x) / x ^ (3 / 2 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro x _
        unfold shiftedActualChebyshev
        dsimp only [c]
        ring
      _ = _ := intervalIntegral.integral_add
        (psi_inverseThreeHalf_intervalIntegrable Y hY) hb
  have hsum : 2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊,
      vonMangoldt n * ((n : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) =
      2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) -
        2 * Y ^ (-1 / 2 : ℝ) * Chebyshev.psi Y := by
    rw [Chebyshev.psi_eq_sum_Icc]
    simp_rw [mul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_mul]
    ring
  rw [actualXiLogPrimitive_log_eq_physical Y hY, he,
    actual_psi_inverseThreeHalf Y hY, hi, ← hsum]
  unfold sqrtBaselinePrimitive halfAtomPrimitive
  dsimp only [c]
  ring

end FormalResearch.RiemannHypothesis.SourceActualXiSqrtClosedReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfeaf51ced416c8ae6abaaa09c87cd8b3339b8a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
