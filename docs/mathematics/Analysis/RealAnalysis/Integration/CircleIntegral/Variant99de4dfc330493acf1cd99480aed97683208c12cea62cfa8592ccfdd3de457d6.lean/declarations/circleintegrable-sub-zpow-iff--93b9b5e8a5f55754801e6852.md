# circleIntegrable_sub_zpow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0120e5d6-ffb3-357c-9bce-2c3407ba76c7",
  "kind": "theorem",
  "lexical_name": "circleIntegrable_sub_zpow_iff",
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
  "slug": "circleintegrable-sub-zpow-iff--93b9b5e8a5f55754801e6852",
  "source": {
    "blob": "49d5b9cb9f0b055378ce106546db3baf19691401",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 309,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant99de4dfc330493acf1cd99480aed97683208c12cea62cfa8592ccfdd3de457d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93b9b5e8a5f55754801e685234dd571c8a59ac343377c9ffe02b30e9353e0541",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variant99de4dfc330493acf1cd99480aed97683208c12cea62cfa8592ccfdd3de457d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0120e5d6-ffb3-357c-9bce-2c3407ba76c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegrable_sub_zpow_iff {c w : ℂ} {R : ℝ} {n : ℤ} :
    CircleIntegrable (fun z => (z - w) ^ n) c R ↔ R = 0 ∨ 0 ≤ n ∨ w ∉ sphere c |R| := by
  constructor
  · intro h; contrapose! h; rcases h with ⟨hR, hn, hw⟩
    simp only [circleIntegrable_iff R, deriv_circleMap]
    rw [← image_circleMap_Ioc] at hw; rcases hw with ⟨θ, hθ, rfl⟩
    replace hθ : θ ∈ [[0, 2 * π]]; exact Icc_subset_uIcc (Ioc_subset_Icc_self hθ)
    refine' not_intervalIntegrable_of_sub_inv_isBigO_punctured _ Real.two_pi_pos.ne hθ
    set f : ℝ → ℂ := fun θ' => circleMap c R θ' - circleMap c R θ
    have : ∀ᶠ θ' in 𝓝[≠] θ, f θ' ∈ ball (0 : ℂ) 1 \ {0} := by
      suffices : ∀ᶠ z in 𝓝[≠] circleMap c R θ, z - circleMap c R θ ∈ ball (0 : ℂ) 1 \ {0}
      exact ((differentiable_circleMap c R θ).hasDerivAt.tendsto_punctured_nhds
        (deriv_circleMap_ne_zero hR)).eventually this
      filter_upwards [self_mem_nhdsWithin, mem_nhdsWithin_of_mem_nhds (ball_mem_nhds _ zero_lt_one)]
      simp_all [dist_eq, sub_eq_zero]
    refine' (((hasDerivAt_circleMap c R θ).isBigO_sub.mono inf_le_left).inv_rev
      (this.mono fun θ' h₁ h₂ => absurd h₂ h₁.2)).trans _
    refine' IsBigO.of_bound |R|⁻¹ (this.mono fun θ' hθ' => _)
    set x := abs (f θ')
    suffices x⁻¹ ≤ x ^ n by
      simpa only [inv_mul_cancel_left₀, abs_eq_zero.not.2 hR, norm_eq_abs, map_inv₀,
        Algebra.id.smul_eq_mul, map_mul, abs_circleMap_zero, abs_I, mul_one, abs_zpow, Ne.def,
        not_false_iff] using this
    have : x ∈ Ioo (0 : ℝ) 1 := by simpa [and_comm] using hθ'
    rw [← zpow_neg_one]
    refine' (zpow_strictAnti this.1 this.2).le_iff_le.2 (Int.lt_add_one_iff.1 _); exact hn
  · rintro (rfl | H)
    exacts [circleIntegrable_zero_radius,
      ((continuousOn_id.sub continuousOn_const).zpow₀ _ fun z hz =>
        H.symm.imp_left fun (hw : w ∉ sphere c |R|) =>
          sub_ne_zero.2 <| ne_of_mem_of_not_mem hz hw).circleIntegrable']
#align circle_integrable_sub_zpow_iff circleIntegrable_sub_zpow_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variant99de4dfc330493acf1cd99480aed97683208c12cea62cfa8592ccfdd3de457d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant99de4dfc330493acf1cd99480aed97683208c12cea62cfa8592ccfdd3de457d6.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d5b9cb9f0b055378ce106546db3baf19691401` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
