/-
Polynomial decay and actual weighted dyadic summation of Gaussian-window seminorms.
Adapted from OpenAI math, source project author OpenAI, Apache-2.0, commit
1581d4cbdd69a0faf34b2089614fe2a814316a6a:
lean/OAI/NumberTheory/DirichletL/Detector/GaussianSummation.lean,
SHA256 8cbdf3603586c4d8f8da6f22fcbbcc8d4521d19b7977da4a2db8c7b5e537e196.
The actual scalar kernel supplier has its own Analysis/Series module.
Imported Gaussian, Schwartz, power and geometric-series author/license notices remain retained.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
Released under Apache-2.0. No surrounding ideal/Hecke/calibration/physical detector is imported.
-/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianWindowSeminorms
import GRWTSK.Analysis.Series.DyadicKernel

namespace GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianDyadicSummation
noncomputable section
open scoped Classical SchwartzMap
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianWindowSeminorms
open GRWTSK.Analysis.Series.DyadicKernel

lemma gaussianDyadicSchwartz_polynomial_decay (N : ℕ) (S : Finset (ℕ×ℕ)) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀j : ℕ,
      S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j)≤
        C/(1+(2:ℝ)^j/Z)^N := by
  obtain ⟨B,hB,hzero⟩ := gaussianDyadicSchwartz_finite_seminorm 0 S
  obtain ⟨C,hC,hdecay⟩ := gaussianDyadicSchwartz_finite_seminorm (N:ℝ) S
  refine ⟨(B+C)*(2:ℝ)^N,by positivity,?_⟩
  intro Z hZ j
  let r := (2:ℝ)^j/Z
  have hr : 0<r := div_pos (by positivity) hZ
  have hden : 0<(1+r)^N := pow_pos (by linarith) _
  change _≤(B+C)*(2:ℝ)^N/(1+r)^N
  by_cases hr1 : r≤1
  · have hh := hzero Z hZ j
    simp only [neg_zero,Real.rpow_zero,mul_one] at hh
    apply hh.trans
    apply (le_div_iff₀ hden).mpr
    have hp : (1+r)^N≤(2:ℝ)^N := pow_le_pow_left₀ (by linarith) (by linarith) _
    have hb := mul_le_mul_of_nonneg_left hp hB.le
    nlinarith [mul_nonneg hC.le (pow_nonneg (by norm_num : (0:ℝ)≤2) N)]
  · have hh := hdecay Z hZ j
    change _≤C*r^(-(N:ℝ)) at hh
    rw [Real.rpow_neg hr.le,Real.rpow_natCast] at hh
    apply hh.trans
    apply (le_div_iff₀ hden).mpr
    have hp : (1+r)^N≤(2*r)^N := pow_le_pow_left₀ (by linarith) (by linarith) _
    have hi : 0≤C*(r^N)⁻¹ := by positivity
    have hm := mul_le_mul_of_nonneg_left hp hi
    rw [mul_pow] at hm
    have hn : r^N≠0 := ne_of_gt (pow_pos hr _)
    have he : (C*(r^N)⁻¹)*((2:ℝ)^N*r^N)=C*(2:ℝ)^N := by field_simp
    rw [he] at hm
    exact hm.trans (by nlinarith [mul_nonneg hB.le (pow_nonneg (by norm_num : (0:ℝ)≤2) N)])

theorem gaussianDyadicSchwartz_summed (s : ℝ) (hs : 0<s) (S : Finset (ℕ×ℕ)) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,
      Summable (fun j : ℕ=>((2:ℝ)^j)^s*
        S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j)) ∧
      (∑'j : ℕ,((2:ℝ)^j)^s*
        S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j))≤C*Z^s := by
  obtain ⟨N,hN⟩ := exists_nat_gt s
  obtain ⟨B,hB,hbound⟩ := gaussianDyadicSchwartz_polynomial_decay N S
  obtain ⟨C,hC,hkernel⟩ := kernel_sum_bound s (N:ℝ) hs hN
  refine ⟨B*C,by positivity,?_⟩
  intro Z hZ
  obtain ⟨hks,hkt⟩ := hkernel Z⁻¹ (inv_pos.mpr hZ)
  have hb (j : ℕ) : ((2:ℝ)^j)^s*
      S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j)≤
      B*kernelTerm Z⁻¹ s (N:ℝ) j := by
    have hh := mul_le_mul_of_nonneg_left (hbound Z hZ j) (Real.rpow_nonneg (by positivity : (0:ℝ)≤2^j) s)
    simpa only [kernelTerm,Real.rpow_natCast,div_eq_mul_inv,mul_assoc,mul_left_comm,mul_comm] using hh
  have hnon (j : ℕ) : 0≤((2:ℝ)^j)^s*
      S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j) := by positivity
  have hsum := Summable.of_nonneg_of_le hnon hb (hks.mul_left B)
  refine ⟨hsum,?_⟩
  calc
    _ ≤ ∑'j : ℕ,B*kernelTerm Z⁻¹ s (N:ℝ) j := hsum.tsum_le_tsum hb (hks.mul_left B)
    _ = B*∑'j : ℕ,kernelTerm Z⁻¹ s (N:ℝ) j := tsum_mul_left
    _ ≤ B*(C*(Z⁻¹)^(-s)) := mul_le_mul_of_nonneg_left hkt hB.le
    _ = (B*C)*Z^s := by rw [Real.inv_rpow hZ.le,Real.rpow_neg hZ.le,inv_inv]; ring


/-- An actual value-level consumer; its one constant also works for every real y. -/
theorem gaussianDyadicProfile_values_summed (s : ℝ) (hs : 0<s) :
    ∃ C : ℝ, 0<C ∧ ∀ Z : ℝ, 0<Z → ∀ y : ℝ,
      Summable (fun j : ℕ => ((2:ℝ)^j)^s*‖gaussianDyadicProfile Z j y‖) ∧
      (∑' j : ℕ, ((2:ℝ)^j)^s*‖gaussianDyadicProfile Z j y‖) ≤ C*Z^s := by
  obtain ⟨C,hC,h⟩ := gaussianDyadicSchwartz_summed s hs ({(0,0)} : Finset (ℕ×ℕ))
  refine ⟨C,hC,?_⟩
  intro Z hZ y
  obtain ⟨hsm,hbd⟩ := h Z hZ
  simp only [Finset.sup_singleton] at hsm hbd
  have hb (j : ℕ) : ((2:ℝ)^j)^s*‖gaussianDyadicProfile Z j y‖ ≤
      ((2:ℝ)^j)^s*SchwartzMap.seminorm ℝ 0 0 (gaussianDyadicSchwartz Z hZ j) := by
    apply mul_le_mul_of_nonneg_left _ (by positivity)
    have hh := SchwartzMap.le_seminorm' ℝ 0 0 (gaussianDyadicSchwartz Z hZ j) y
    simpa only [pow_zero, one_mul, iteratedDeriv_zero, gaussianDyadicSchwartz_apply] using hh
  have hv := hsm.of_nonneg_of_le (fun _ => by positivity) hb
  exact ⟨hv,(hv.tsum_le_tsum hb hsm).trans hbd⟩

end
end GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianDyadicSummation
