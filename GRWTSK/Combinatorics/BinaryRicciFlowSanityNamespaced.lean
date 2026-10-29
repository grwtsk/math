-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DGammaNonneg.Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DGammaNonneg.Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/DiscreteGeometry/BinaryRicciFlowSanity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.DiscreteGeometry.BinaryRicciFlow

/-!
# Folder.Rebuild.DiscreteGeometry.BinaryRicciFlowSanity

Sanity theorems for the weighted bit-state graph layer.

This module certifies basic metric/kernel behavior before any curvature-specific
definition is selected.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DGammaNonneg.Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db

namespace Folder
namespace Rebuild
namespace DiscreteGeometry

noncomputable section

open scoped BigOperators

theorem dGamma_nonneg
    (Γ : GammaWeight)
    (x y : PaddedBitState) :
    0 ≤ dGamma Γ x y := by
  unfold dGamma
  exact Finset.sum_nonneg fun i _ =>
    mul_nonneg (le_of_lt (Γ.pos i)) (abs_nonneg _)

theorem dGamma_symm
    (Γ : GammaWeight)
    (x y : PaddedBitState) :
    dGamma Γ x y = dGamma Γ y x := by
  unfold dGamma
  rw [Nat.max_comm]
  refine Finset.sum_congr rfl ?_
  intro i hi
  rw [abs_sub_comm]

theorem kernel_pos
    (Γ : GammaWeight)
    (ε : ℝ)
    (x y : PaddedBitState) :
    0 < kernel Γ ε x y := by
  unfold kernel
  exact Real.exp_pos _

theorem kernel_symm
    (Γ : GammaWeight)
    (ε : ℝ)
    (x y : PaddedBitState) :
    kernel Γ ε x y = kernel Γ ε y x := by
  unfold kernel
  rw [dGamma_symm Γ x y]

theorem dGamma_eq_sum_range_of_supports_le
    (Γ : GammaWeight)
    (x y : PaddedBitState)
    {N : Nat}
    (hx : supportBound x ≤ N)
    (hy : supportBound y ≤ N) :
    dGamma Γ x y =
      ∑ i ∈ Finset.range N,
        Γ.w i * |bitReal (x.1 i) - bitReal (y.1 i)| := by
  unfold dGamma
  have hmax : max (supportBound x) (supportBound y) ≤ N :=
    max_le hx hy
  refine Finset.sum_subset ?hsubset ?hzero
  · intro i hi
    exact Finset.mem_range.mpr ((Finset.mem_range.mp hi).trans_le hmax)
  · intro i hiN hiNot
    have hge : max (supportBound x) (supportBound y) ≤ i := by
      exact Nat.le_of_not_gt (by simpa [Finset.mem_range] using hiNot)
    have hxi : x.1 i = 0 :=
      supportBound_spec x i ((le_max_left _ _).trans hge)
    have hyi : y.1 i = 0 :=
      supportBound_spec y i ((le_max_right _ _).trans hge)
    simp [hxi, hyi, bitReal]

theorem dGamma_triangle
    (Γ : GammaWeight)
    (x y z : PaddedBitState) :
    dGamma Γ x z ≤ dGamma Γ x y + dGamma Γ y z := by
  let N := max (supportBound x) (max (supportBound y) (supportBound z))
  have hx : supportBound x ≤ N := le_max_left _ _
  have hy : supportBound y ≤ N := (le_max_left _ _).trans (le_max_right _ _)
  have hz : supportBound z ≤ N := (le_max_right _ _).trans (le_max_right _ _)
  rw [dGamma_eq_sum_range_of_supports_le Γ x z hx hz,
    dGamma_eq_sum_range_of_supports_le Γ x y hx hy,
    dGamma_eq_sum_range_of_supports_le Γ y z hy hz]
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_le_sum ?_
  intro i hi
  have hw : 0 ≤ Γ.w i := le_of_lt (Γ.pos i)
  have htri :
      |bitReal (x.1 i) - bitReal (z.1 i)| ≤
        |bitReal (x.1 i) - bitReal (y.1 i)| +
          |bitReal (y.1 i) - bitReal (z.1 i)| :=
    abs_sub_le (bitReal (x.1 i)) (bitReal (y.1 i)) (bitReal (z.1 i))
  calc
    Γ.w i * |bitReal (x.1 i) - bitReal (z.1 i)|
        ≤ Γ.w i *
            (|bitReal (x.1 i) - bitReal (y.1 i)| +
              |bitReal (y.1 i) - bitReal (z.1 i)|) :=
            mul_le_mul_of_nonneg_left htri hw
    _ =
        Γ.w i * |bitReal (x.1 i) - bitReal (y.1 i)| +
          Γ.w i * |bitReal (y.1 i) - bitReal (z.1 i)| := by
            ring

theorem bitReal_injective :
    Function.Injective bitReal := by
  intro a b h
  apply Fin.ext
  unfold bitReal at h
  exact Nat.cast_inj.mp h

theorem dGamma_eq_zero_iff
    (Γ : GammaWeight)
    (x y : PaddedBitState) :
    dGamma Γ x y = 0 ↔ x = y := by
  constructor
  · intro h
    let N := max (supportBound x) (supportBound y)
    have hx : supportBound x ≤ N := le_max_left _ _
    have hy : supportBound y ≤ N := le_max_right _ _
    have hsum :
        (∑ i ∈ Finset.range N,
          Γ.w i * |bitReal (x.1 i) - bitReal (y.1 i)|) = 0 := by
      simpa [N] using
        (by
          rw [← dGamma_eq_sum_range_of_supports_le Γ x y hx hy]
          exact h)
    have hterm :
        ∀ i ∈ Finset.range N,
          Γ.w i * |bitReal (x.1 i) - bitReal (y.1 i)| = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg
        (s := Finset.range N)
        (f := fun i =>
          Γ.w i * |bitReal (x.1 i) - bitReal (y.1 i)|)
        (fun i _ => mul_nonneg (le_of_lt (Γ.pos i)) (abs_nonneg _))).mp hsum
    apply Subtype.ext
    funext i
    by_cases hi : i < N
    · have hprod := hterm i (Finset.mem_range.mpr hi)
      have habs : |bitReal (x.1 i) - bitReal (y.1 i)| = 0 := by
        rcases mul_eq_zero.mp hprod with hw | habs
        · exact False.elim ((ne_of_gt (Γ.pos i)) hw)
        · exact habs
      have hreal : bitReal (x.1 i) = bitReal (y.1 i) :=
        sub_eq_zero.mp (abs_eq_zero.mp habs)
      exact bitReal_injective hreal
    · have hge : N ≤ i := Nat.le_of_not_gt hi
      have hxi : x.1 i = 0 :=
        supportBound_spec x i (hx.trans hge)
      have hyi : y.1 i = 0 :=
        supportBound_spec y i (hy.trans hge)
      simp [hxi, hyi]
  · intro h
    rw [h]
    exact dGamma_self Γ y

theorem dGamma_metricLike
    (Γ : GammaWeight) :
    (∀ x y : PaddedBitState, 0 ≤ dGamma Γ x y) ∧
      (∀ x y : PaddedBitState, dGamma Γ x y = 0 ↔ x = y) ∧
      (∀ x y : PaddedBitState, dGamma Γ x y = dGamma Γ y x) ∧
      (∀ x y z : PaddedBitState,
        dGamma Γ x z ≤ dGamma Γ x y + dGamma Γ y z) := by
  exact ⟨dGamma_nonneg Γ, dGamma_eq_zero_iff Γ, dGamma_symm Γ, dGamma_triangle Γ⟩

end

end DiscreteGeometry
end Rebuild
end Folder
