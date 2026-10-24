# actual_fullXi_signed_primitive_derivative_cost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e73197bd-1319-17eb-3068-796bb1e05e80",
  "kind": "theorem",
  "lexical_name": "actual_fullXi_signed_primitive_derivative_cost",
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
  "slug": "actual-fullxi-signed-primitive-derivative-cost--663015d1511cadf56cdbb02a",
  "source": {
    "blob": "fd65b9e5eecdd91681adff906f95eb655ef2b547",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variantefa8b12e4299a075cf9ff307a5963258c953bd966471350f3a43c049af93f613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:663015d1511cadf56cdbb02acb2ca4e6bfa33d2ac2b1893d207687ae0f105da8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variantefa8b12e4299a075cf9ff307a5963258c953bd966471350f3a43c049af93f613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e73197bd-1319-17eb-3068-796bb1e05e80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_fullXi_signed_primitive_derivative_cost {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A, |deriv (fullXiLogWeight A) t|) ≤ (11 / 2 : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hL0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hL1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hU : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  let K : ℝ := 162826 / (7623 * A ^ 2) + 5 / A / 2
  have hK : 0 ≤ K := by dsimp only [K]; positivity
  have hm : (∫ t in Real.log 2..2 * A, |deriv (fullXiLogWeight A) t|) ≤
      ∫ t in Real.log 2..2 * A, K := by
    apply intervalIntegral.integral_mono_on hU
      ((actual_fullXiLogWeight_deriv_continuous hp).abs.intervalIntegrable _ _)
      (continuous_const.intervalIntegrable _ _)
    intro t _
    exact actual_fullXiLogWeight_deriv_abs_le hA1 t
  rw [intervalIntegral.integral_const] at hm
  simp only [smul_eq_mul] at hm
  have hstep : (2 * A - Real.log 2) * K ≤ 2 * A * K := by nlinarith
  have he : 2 * A * K = 5 + 325652 / (7623 * A) := by
    dsimp only [K]
    field_simp
    ring
  have hb : 325652 / (7623 * A) ≤ (1 / 2 : ℝ) :=
    (div_le_iff₀ (by positivity : (0 : ℝ) < 7623 * A)).mpr (by linarith)
  linarith

end FormalResearch.RiemannHypothesis.SourceFullXiSignedPrimitiveCost
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variantefa8b12e4299a075cf9ff307a5963258c953bd966471350f3a43c049af93f613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variantefa8b12e4299a075cf9ff307a5963258c953bd966471350f3a43c049af93f613.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd65b9e5eecdd91681adff906f95eb655ef2b547` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
