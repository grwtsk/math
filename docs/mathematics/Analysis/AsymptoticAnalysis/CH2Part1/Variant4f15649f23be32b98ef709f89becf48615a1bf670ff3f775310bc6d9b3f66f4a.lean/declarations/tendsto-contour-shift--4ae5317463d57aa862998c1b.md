# tendsto_contour_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e68c68ef-5a63-15fe-d746-97b543cc1b56",
  "kind": "lemma",
  "lexical_name": "tendsto_contour_shift",
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
  "slug": "tendsto-contour-shift--4ae5317463d57aa862998c1b",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2870,
    "line": 2824,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ae5317463d57aa862998c1b3c8c77e53f2feaec066e44938525cc44d8de10a9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e68c68ef-5a63-15fe-d746-97b543cc1b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2824–2870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_contour_shift {σ σ' : ℝ} {f : ℂ → ℂ}
    (h_anal : ∀ (U : ℝ), U ≥ 0 → HolomorphicOn f (Rectangle σ (σ' + I * U)))
    (htop : Filter.Tendsto (fun (y : ℝ) ↦ ∫ x in σ..σ', f (x + y * I)) Filter.atTop (nhds 0))
    (hleft : IntegrableOn (fun (y : ℝ) ↦ f (σ + y * I)) (Set.Ici 0))
    (hright : IntegrableOn (fun (y : ℝ) ↦ f (σ' + y * I)) (Set.Ici 0)) :
    Filter.Tendsto (fun (U : ℝ) ↦ (I * ∫ t in Set.Icc 0 U, f (σ + I * t)) - (I * ∫ t in Set.Icc 0 U, f (σ' + I * t)))
      Filter.atTop (nhds (∫ x in σ..σ', f x)) := by
  have h_rect (U : ℝ) (hU : 0 ≤ U) :
      RectangleIntegral f σ (σ' + I * U) =
      (∫ x in σ..σ', f x) - (∫ x in σ..σ', f (x + U * I)) + (I * ∫ y in Set.Icc 0 U, f (σ' + I * y)) - (I * ∫ y in Set.Icc 0 U, f (σ + I * y)) := by
    dsimp [RectangleIntegral, HIntegral, VIntegral]
    have h1 : ∫ (x : ℝ) in σ..σ' + (0 * U - 1 * 0), f (↑x + 0 * I) = ∫ x in σ..σ', f ↑x := by
      rw [show σ' + (0 * U - 1 * 0) = σ' by ring]; apply intervalIntegral.integral_congr; intro x _; simp
    have h2 : ∫ (x : ℝ) in σ..σ' + (0 * U - 1 * 0), f (↑x + ↑(0 + (0 * 0 + 1 * U)) * I) = ∫ x in σ..σ', f (↑x + ↑U * I) := by
      rw [show σ' + (0 * U - 1 * 0) = σ' by ring]; apply intervalIntegral.integral_congr; intro x _; ring_nf
    have h3 : ∫ (y : ℝ) in 0..0 + (0 * 0 + 1 * U), f (↑(σ' + (0 * U - 1 * 0)) + ↑y * I) =
        ∫ y in Set.Icc 0 U, f (↑σ' + I * ↑y) := by
      rw [show 0 + (0 * 0 + 1 * U) = U by ring, show σ' + (0 * U - 1 * 0) = σ' by ring]
      rw [intervalIntegral.integral_of_le hU, MeasureTheory.integral_Icc_eq_integral_Ioc]
      congr 1; funext y; congr 1; ring
    have h4 : ∫ (y : ℝ) in 0..0 + (0 * 0 + 1 * U), f (↑σ + ↑y * I) = ∫ y in Set.Icc 0 U, f (↑σ + I * ↑y) := by
      rw [show 0 + (0 * 0 + 1 * U) = U by ring]
      rw [intervalIntegral.integral_of_le hU, MeasureTheory.integral_Icc_eq_integral_Ioc]
      congr 1; funext y; congr 1; ring
    rw [h1, h2, h3, h4]
  have h_UpperU_zero : UpperUIntegral f σ σ' 0 = 0 := by
    have h1 := RectangleIntegral_tendsTo_UpperU' htop hleft hright
    have e : (↑σ + I * ↑(0:ℝ) : ℂ) = ↑σ := by simp
    simp_rw [e] at h1
    have h2 : Filter.Tendsto (fun (U : ℝ) ↦ RectangleIntegral f σ (σ' + I * U)) Filter.atTop (nhds 0) := by
      apply tendsto_const_nhds.congr'
      filter_upwards [Filter.eventually_ge_atTop 0] with U hU
      exact (HolomorphicOn.vanishesOnRectangle (h_anal U hU) subset_rfl).symm
    exact tendsto_nhds_unique h1 h2
  have h_zero : Filter.Tendsto (fun (U : ℝ) ↦ RectangleIntegral f σ (σ' + I * U)) Filter.atTop (nhds 0) := by
    have h1 := RectangleIntegral_tendsTo_UpperU' htop hleft hright
    have e : (↑σ + I * ↑(0:ℝ) : ℂ) = ↑σ := by simp
    simp_rw [e, h_UpperU_zero] at h1
    exact h1
  have h_lim := (tendsto_const_nhds (x := ∫ x in σ..σ', f x)).sub htop
  have h_all := h_lim.sub h_zero
  simp only [sub_zero] at h_all
  refine Filter.Tendsto.congr' ?_ h_all
  filter_upwards [Filter.eventually_ge_atTop 0] with U hU
  rw [h_rect U hU]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L2824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
