# sum_eq_integral_add_frac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55b9bce0-56c9-ea9f-5ee3-920b489dd9ed",
  "kind": "theorem",
  "lexical_name": "sum_eq_integral_add_frac",
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
  "slug": "sum-eq-integral-add-frac--090e698d6a23eff6d8eef38b",
  "source": {
    "blob": "3a54bb0cea427c5004c5a044593ff393f2572576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:090e698d6a23eff6d8eef38b6b891d22aacfd4d347a4bd3aca19c84e2bad058d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55b9bce0-56c9-ea9f-5ee3-920b489dd9ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eq_integral_add_frac {g : ℝ → ℝ} (hg : ContDiff ℝ 1 g)
    {Y : ℝ} (hY : 1 ≤ Y) :
    (∑ n ∈ Finset.Icc 1 ⌊Y⌋₊, g n) =
      (∫ y in (1 : ℝ)..Y, g y) +
      (∫ y in (1 : ℝ)..Y, fracPlus y * deriv g y) +
      g 1 - fracPlus Y * g Y := by
  have hd : IntegrableOn (deriv g) (Icc 1 Y) :=
    (hg.continuous_deriv (by norm_num)).integrableOn_Icc
  have habel := sum_mul_eq_sub_integral_mul₀ unitCoeff (by simp [unitCoeff]) Y
    (fun y _ => hg.differentiable (by norm_num) y) hd
  rw [unitCoeff_weighted_sum] at habel
  simp only [unitCoeff_sum] at habel
  rw [← intervalIntegral.integral_of_le hY] at habel
  have hfloor : IntervalIntegrable (fun y => deriv g y * (⌊y⌋₊ : ℝ)) volume 1 Y := by
    apply (intervalIntegrable_iff_integrableOn_Icc_of_le hY).mpr
    simpa only [unitCoeff_sum] using
      (integrableOn_mul_sum_Icc unitCoeff (m := 0) zero_le_one hd)
  have hx : IntervalIntegrable (fun y => y * deriv g y) volume 1 Y :=
    ((hg.continuous_deriv (by norm_num)).intervalIntegrable 1 Y).continuousOn_mul
      continuous_id.continuousOn
  have hfrac : (∫ y in (1 : ℝ)..Y, fracPlus y * deriv g y) =
      (∫ y in (1 : ℝ)..Y, y * deriv g y) -
      (∫ y in (1 : ℝ)..Y, deriv g y * (⌊y⌋₊ : ℝ)) := by
    rw [← intervalIntegral.integral_sub hx hfloor]
    apply intervalIntegral.integral_congr
    intro y _
    dsimp [fracPlus]
    ring
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (1 : ℝ)) (b := Y)
    (u := fun y : ℝ => y) (u' := fun _ : ℝ => (1 : ℝ))
    (v := g) (v' := deriv g)
    (fun y _ => hasDerivAt_id y)
    (fun y _ => (hg.differentiable (by norm_num) y).hasDerivAt)
    (continuous_const.intervalIntegrable _ _)
    ((hg.continuous_deriv (by norm_num)).intervalIntegrable _ _)
  simp only [one_mul] at hparts
  rw [hfrac]
  dsimp [fracPlus]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a54bb0cea427c5004c5a044593ff393f2572576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
