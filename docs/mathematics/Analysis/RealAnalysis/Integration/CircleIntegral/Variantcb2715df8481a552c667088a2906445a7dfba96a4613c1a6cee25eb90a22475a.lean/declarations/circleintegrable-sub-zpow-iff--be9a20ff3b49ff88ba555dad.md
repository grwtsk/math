# circleIntegrable_sub_zpow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07f05442-0a46-32d6-9f85-7bb83cbf071c",
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
  "slug": "circleintegrable-sub-zpow-iff--be9a20ff3b49ff88ba555dad",
  "source": {
    "blob": "9bf325246cf83f7d0712dfc65aa77cb722bd98ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 384,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be9a20ff3b49ff88ba555dadd485ab0d08bce3b9fa7c131c94ac338f2acd57fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07f05442-0a46-32d6-9f85-7bb83cbf071c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegrable_sub_zpow_iff {c w : ℂ} {R : ℝ} {n : ℤ} :
    CircleIntegrable (fun z => (z - w) ^ n) c R ↔ R = 0 ∨ 0 ≤ n ∨ w ∉ sphere c |R| := by
  constructor
  · intro h; contrapose! h; rcases h with ⟨hR, hn, hw⟩
    simp only [circleIntegrable_iff R, deriv_circleMap]
    rw [← image_circleMap_Ioc] at hw; rcases hw with ⟨θ, hθ, rfl⟩
    replace hθ : θ ∈ [[0, 2 * π]] := Icc_subset_uIcc (Ioc_subset_Icc_self hθ)
    refine not_intervalIntegrable_of_sub_inv_isBigO_punctured ?_ Real.two_pi_pos.ne hθ
    set f : ℝ → ℂ := fun θ' => circleMap c R θ' - circleMap c R θ
    have : ∀ᶠ θ' in 𝓝[≠] θ, f θ' ∈ ball (0 : ℂ) 1 \ {0} := by
      suffices ∀ᶠ z in 𝓝[≠] circleMap c R θ, z - circleMap c R θ ∈ ball (0 : ℂ) 1 \ {0} from
        ((differentiable_circleMap c R θ).hasDerivAt.tendsto_nhdsNE
          (deriv_circleMap_ne_zero hR)).eventually this
      filter_upwards [self_mem_nhdsWithin, mem_nhdsWithin_of_mem_nhds (ball_mem_nhds _ zero_lt_one)]
      simp_all [dist_eq, sub_eq_zero]
    refine (((hasDerivAt_circleMap c R θ).isBigO_sub.mono inf_le_left).inv_rev
      (this.mono fun θ' h₁ h₂ => absurd h₂ h₁.2)).trans ?_
    refine IsBigO.of_bound |R|⁻¹ (this.mono fun θ' hθ' => ?_)
    set x := ‖f θ'‖
    suffices x⁻¹ ≤ x ^ n by
      simp only [smul_eq_mul, norm_mul,
        norm_inv, norm_I, mul_one]
      simpa only [norm_circleMap_zero, norm_zpow, Ne, abs_eq_zero.not.2 hR, not_false_iff,
        inv_mul_cancel_left₀] using this
    have : x ∈ Ioo (0 : ℝ) 1 := by simpa [x, and_comm] using hθ'
    rw [← zpow_neg_one]
    refine (zpow_right_strictAnti₀ this.1 this.2).le_iff_ge.2 (Int.lt_add_one_iff.1 ?_); exact hn
  · rintro (rfl | H)
    exacts [circleIntegrable_zero_radius,
      ((continuousOn_id.sub continuousOn_const).zpow₀ _ fun z hz =>
        H.symm.imp_left fun (hw : w ∉ sphere c |R|) =>
          sub_ne_zero.2 <| ne_of_mem_of_not_mem hz hw).circleIntegrable']

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf325246cf83f7d0712dfc65aa77cb722bd98ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
