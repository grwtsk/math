-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SetOfLiouvilleEqIInterIUnion.Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SetOfLiouvilleEqIInterIUnion.Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/Transcendental/Liouville/Residual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.NumberTheory.Transcendental.Liouville.Basic
import Mathlib.Topology.Baire.Lemmas
import Mathlib.Topology.Baire.LocallyCompactRegular
import Mathlib.Topology.Instances.Irrational

/-!
# Density of Liouville numbers

In this file we prove that the set of Liouville numbers form a dense `Gδ` set. We also prove a
similar statement about irrational numbers.
-/



namespace GRWTSK.Topology.GeneralTopology.SetOfLiouvilleEqIInterIUnion.Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b

open scoped Filter

open Filter Set Metric

theorem setOf_liouville_eq_iInter_iUnion :
    { x | Liouville x } =
      ⋂ n : ℕ, ⋃ (a : ℤ) (b : ℤ) (_ : 1 < b),
      ball ((a : ℝ) / b) (1 / (b : ℝ) ^ n) \ {(a : ℝ) / b} := by
  ext x
  simp only [mem_iInter, mem_iUnion, Liouville, mem_setOf_eq, exists_prop, mem_diff,
    mem_singleton_iff, mem_ball, Real.dist_eq, and_comm]

theorem IsGδ.setOf_liouville : IsGδ { x | Liouville x } := by
  rw [setOf_liouville_eq_iInter_iUnion]
  refine .iInter fun n => IsOpen.isGδ ?_
  refine isOpen_iUnion fun a => isOpen_iUnion fun b => isOpen_iUnion fun _hb => ?_
  exact isOpen_ball.inter isClosed_singleton.isOpen_compl


theorem setOf_liouville_eq_irrational_inter_iInter_iUnion :
    { x | Liouville x } =
      { x | Irrational x } ∩ ⋂ n : ℕ, ⋃ (a : ℤ) (b : ℤ) (_ : 1 < b),
      ball (a / b) (1 / (b : ℝ) ^ n) := by
  refine Subset.antisymm ?_ ?_
  · refine subset_inter (fun x hx => hx.irrational) ?_
    rw [setOf_liouville_eq_iInter_iUnion]
    exact iInter_mono fun n => iUnion₂_mono fun a b => iUnion_mono fun _hb => diff_subset
  · simp only [inter_iInter, inter_iUnion, setOf_liouville_eq_iInter_iUnion]
    refine iInter_mono fun n => iUnion₂_mono fun a b => iUnion_mono fun hb => ?_
    rw [inter_comm]
    exact diff_subset_diff Subset.rfl (singleton_subset_iff.2 ⟨a / b, by norm_cast⟩)

/-- The set of Liouville numbers is a residual set. -/
theorem eventually_residual_liouville : ∀ᶠ x in residual ℝ, Liouville x := by
  rw [Filter.Eventually, setOf_liouville_eq_irrational_inter_iInter_iUnion]
  refine eventually_residual_irrational.and ?_
  refine residual_of_dense_Gδ ?_ (Rat.isDenseEmbedding_coe_real.dense.mono ?_)
  · exact .iInter fun n => IsOpen.isGδ <|
          isOpen_iUnion fun a => isOpen_iUnion fun b => isOpen_iUnion fun _hb => isOpen_ball
  · rintro _ ⟨r, rfl⟩
    simp only [mem_iInter, mem_iUnion]
    refine fun n => ⟨r.num * 2, r.den * 2, ?_, ?_⟩
    · have := r.pos; omega
    · convert @mem_ball_self ℝ _ (r : ℝ) _ _
      · push_cast
        -- Workaround for https://github.com/leanprover/lean4/pull/6438; this eliminates an
        -- `Expr.mdata` that would cause `norm_cast` to skip a numeral.
        rw [Eq.refl (2 : ℝ)]
        norm_cast
        simp [Rat.divInt_mul_right (two_ne_zero), Rat.mkRat_self]
      · refine one_div_pos.2 (pow_pos (Int.cast_pos.2 ?_) _)
        exact mul_pos (Int.natCast_pos.2 r.pos) zero_lt_two

/-- The set of Liouville numbers in dense. -/
theorem dense_liouville : Dense { x | Liouville x } :=
  dense_of_mem_residual eventually_residual_liouville
