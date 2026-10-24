/-
Weighted profiles and actual remote tails of Gaussian Schwartz seminorms.
Adapted proof shape from OpenAI math, source project author OpenAI, Apache-2.0,
commit 1581d4cbdd69a0faf34b2089614fe2a814316a6a:
lean/OAI/NumberTheory/DirichletL/Detector/GaussianTailBudget.lean,
SHA256 38f614d4aa36aff2966a4143f0fd73876902f38004d643acf22d3a41716f071b.
This is an actual finite-seminorm adaptation, not the upstream density-moment theorem.
The actual Gaussian-window and scalar-kernel suppliers are imported below.
Mathlib Gaussian, Schwartz, real-power, geometric-series and infinite-sum
individual author and Apache-2.0 notices remain retained in the imported sources.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
Released under Apache-2.0. No density, ideal, Hecke, calibration or physical-row
supplier is imported or inferred.
-/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianDyadicSummation

namespace GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianRemoteSeminorms
noncomputable section
open scoped Classical SchwartzMap
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianWindowSeminorms
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianDyadicSummation
open GRWTSK.Analysis.Series.DyadicKernel

noncomputable def gaussianSeminormProfile (S : Finset (ℕ×ℕ)) (Z : ℝ) (hZ : 0<Z) (j : ℕ) : ℝ :=
  S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j)

lemma gaussianSeminormProfile_nonneg (S : Finset (ℕ×ℕ)) (Z : ℝ) (hZ : 0<Z) (j : ℕ) :
    0≤gaussianSeminormProfile S Z hZ j := by
  unfold gaussianSeminormProfile
  positivity

noncomputable def gaussianWeightedSeminorm (S : Finset (ℕ×ℕ)) (k Z : ℝ) (hZ : 0<Z) (j : ℕ) : ℝ :=
  ((2:ℝ)^j/Z)^k*gaussianSeminormProfile S Z hZ j

lemma gaussianWeightedSeminorm_nonneg (S : Finset (ℕ×ℕ)) (k Z : ℝ) (hZ : 0<Z) (j : ℕ) :
    0≤gaussianWeightedSeminorm S k Z hZ j := by
  exact mul_nonneg (Real.rpow_nonneg (by positivity) _) (gaussianSeminormProfile_nonneg S Z hZ j)

lemma gaussianWeightedSeminorm_power_bound (S : Finset (ℕ×ℕ)) (k a : ℝ) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀j : ℕ,
      gaussianWeightedSeminorm S k Z hZ j≤C*(((2:ℝ)^j/Z)^(-a)) := by
  obtain ⟨C,hC,hb⟩ := gaussianDyadicSchwartz_finite_seminorm (a+k) S
  refine ⟨C,hC,?_⟩
  intro Z hZ j
  have hr : 0<(2:ℝ)^j/Z := div_pos (by positivity) hZ
  have hh := mul_le_mul_of_nonneg_left (hb Z hZ j) (Real.rpow_nonneg hr.le k)
  change ((2:ℝ)^j/Z)^k*gaussianSeminormProfile S Z hZ j≤_
  calc
    _ ≤ ((2:ℝ)^j/Z)^k*(C*(((2:ℝ)^j/Z)^(-(a+k)))) := hh
    _ = C*(((2:ℝ)^j/Z)^(-a)) := by
      rw [←mul_assoc,mul_comm (_^k) C,mul_assoc,←Real.rpow_add hr]
      congr 2
      ring

lemma gaussianWeightedSeminorm_polynomial_decay (S : Finset (ℕ×ℕ)) (k : ℝ) (N : ℕ) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀j : ℕ,
      gaussianWeightedSeminorm S k Z hZ j≤
        C/(1+(2:ℝ)^j/Z)^N := by
  obtain ⟨B,hB,hzero⟩ := gaussianWeightedSeminorm_power_bound S k 0
  obtain ⟨C,hC,hdecay⟩ := gaussianWeightedSeminorm_power_bound S k (N:ℝ)
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

theorem gaussianWeightedSeminorm_summed (S : Finset (ℕ×ℕ)) (k s : ℝ) (hs : 0<s) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,
      Summable (fun j : ℕ=>((2:ℝ)^j)^s*
        gaussianWeightedSeminorm S k Z hZ j) ∧
      (∑'j : ℕ,((2:ℝ)^j)^s*
        gaussianWeightedSeminorm S k Z hZ j)≤C*Z^s := by
  obtain ⟨N,hN⟩ := exists_nat_gt s
  obtain ⟨B,hB,hbound⟩ := gaussianWeightedSeminorm_polynomial_decay S k N
  obtain ⟨C,hC,hkernel⟩ := kernel_sum_bound s (N:ℝ) hs hN
  refine ⟨B*C,by positivity,?_⟩
  intro Z hZ
  obtain ⟨hks,hkt⟩ := hkernel Z⁻¹ (inv_pos.mpr hZ)
  have hb (j : ℕ) : ((2:ℝ)^j)^s*
      gaussianWeightedSeminorm S k Z hZ j≤
      B*kernelTerm Z⁻¹ s (N:ℝ) j := by
    have hh := mul_le_mul_of_nonneg_left (hbound Z hZ j) (Real.rpow_nonneg (by positivity : (0:ℝ)≤2^j) s)
    simpa only [kernelTerm,Real.rpow_natCast,div_eq_mul_inv,mul_assoc,mul_left_comm,mul_comm] using hh
  have hnon (j : ℕ) : 0≤((2:ℝ)^j)^s*
      gaussianWeightedSeminorm S k Z hZ j :=
    mul_nonneg (Real.rpow_nonneg (by positivity) _) (gaussianWeightedSeminorm_nonneg S k Z hZ j)
  have hsum := Summable.of_nonneg_of_le hnon hb (hks.mul_left B)
  refine ⟨hsum,?_⟩
  calc
    _ ≤ ∑'j : ℕ,B*kernelTerm Z⁻¹ s (N:ℝ) j := hsum.tsum_le_tsum hb (hks.mul_left B)
    _ = B*∑'j : ℕ,kernelTerm Z⁻¹ s (N:ℝ) j := tsum_mul_left
    _ ≤ B*(C*(Z⁻¹)^(-s)) := mul_le_mul_of_nonneg_left hkt hB.le
    _ = (B*C)*Z^s := by rw [Real.inv_rpow hZ.le,Real.rpow_neg hZ.le,inv_inv]; ring

noncomputable def gaussianRemoteSeminorm (S : Finset (ℕ×ℕ)) (s Z : ℝ) (hZ : 0<Z) (A : ℝ) (j : ℕ) : ℝ :=
  if (2:ℝ)^j/Z≤A⁻¹ ∨ A≤(2:ℝ)^j/Z then
    ((2:ℝ)^j)^s*gaussianSeminormProfile S Z hZ j
  else 0

theorem gaussianRemoteSeminorm_summed (S : Finset (ℕ×ℕ)) (N : ℕ) (s : ℝ) (hs : 0<s) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀A : ℝ,1≤A→
      Summable (gaussianRemoteSeminorm S s Z hZ A) ∧
      (∑'j : ℕ,gaussianRemoteSeminorm S s Z hZ A j)≤C*Z^s/A^N := by
  obtain ⟨Cm,hCm,hm⟩ := gaussianWeightedSeminorm_summed S (-(N:ℝ)) s hs
  obtain ⟨Cp,hCp,hp⟩ := gaussianWeightedSeminorm_summed S (N:ℝ) s hs
  refine ⟨Cm+Cp,by positivity,?_⟩
  intro Z hZ A hA
  have hAp : 0<A := lt_of_lt_of_le zero_lt_one hA
  have hAN : 0<A^N := pow_pos hAp N
  obtain ⟨hsm,htm⟩ := hm Z hZ
  obtain ⟨hsp,htp⟩ := hp Z hZ
  let U : ℕ→ℝ := fun j=>
    (((2:ℝ)^j)^s*gaussianWeightedSeminorm S (-(N:ℝ)) Z hZ j+
      ((2:ℝ)^j)^s*gaussianWeightedSeminorm S (N:ℝ) Z hZ j)/A^N
  have hU : Summable U := (hsm.add hsp).div_const _
  have hnon (j : ℕ) : 0≤gaussianRemoteSeminorm S s Z hZ A j := by
    unfold gaussianRemoteSeminorm
    split_ifs
    · exact mul_nonneg (Real.rpow_nonneg (by positivity) _) (gaussianSeminormProfile_nonneg S Z hZ j)
    · rfl
  have hb (j : ℕ) : gaussianRemoteSeminorm S s Z hZ A j≤U j := by
    let R := (2:ℝ)^j/Z
    have hR : 0<R := div_pos (by positivity) hZ
    have hM : 0≤gaussianSeminormProfile S Z hZ j := gaussianSeminormProfile_nonneg S Z hZ j
    unfold gaussianRemoteSeminorm
    split_ifs with hj
    · have he : A^N≤R^(-(N:ℝ))+R^(N:ℝ) := by
        rcases hj with hlo|hhi
        · have hra : R*A≤1 := (le_div_iff₀ hAp).mp (by simpa only [one_div,R] using hlo)
          have hh := pow_le_pow_left₀ (by positivity : 0≤R*A) hra N
          rw [mul_pow,one_pow] at hh
          have hi : A^N≤R^(-(N:ℝ)) := by
            rw [Real.rpow_neg hR.le,Real.rpow_natCast]
            rw [←one_div]
            exact (le_div_iff₀ (pow_pos hR N)).mpr (by simpa only [mul_comm] using hh)
          exact hi.trans (le_add_of_nonneg_right (Real.rpow_nonneg hR.le _))
        · have hi : A^N≤R^(N:ℝ) := by
            rw [Real.rpow_natCast]
            exact pow_le_pow_left₀ hAp.le hhi N
          exact hi.trans (le_add_of_nonneg_left (Real.rpow_nonneg hR.le _))
      change ((2:ℝ)^j)^s*gaussianSeminormProfile S Z hZ j≤_
      dsimp only [U]
      apply (le_div_iff₀ hAN).mpr
      calc
        _ ≤ (((2:ℝ)^j)^s*gaussianSeminormProfile S Z hZ j)*(R^(-(N:ℝ))+R^(N:ℝ)) :=
          mul_le_mul_of_nonneg_left he (mul_nonneg (Real.rpow_nonneg (by positivity) _) hM)
        _ = _ := by unfold gaussianWeightedSeminorm;dsimp only [R];ring
    · dsimp only [U]
      apply div_nonneg _ hAN.le
      exact add_nonneg
        (mul_nonneg (Real.rpow_nonneg (by positivity) _) (gaussianWeightedSeminorm_nonneg S _ Z hZ j))
        (mul_nonneg (Real.rpow_nonneg (by positivity) _) (gaussianWeightedSeminorm_nonneg S _ Z hZ j))
  have hsum := Summable.of_nonneg_of_le hnon hb hU
  refine ⟨hsum,?_⟩
  calc
    _ ≤ ∑'j : ℕ,U j := hsum.tsum_le_tsum hb hU
    _ = ((∑'j : ℕ,((2:ℝ)^j)^s*gaussianWeightedSeminorm S (-(N:ℝ)) Z hZ j)+
        (∑'j : ℕ,((2:ℝ)^j)^s*gaussianWeightedSeminorm S (N:ℝ) Z hZ j))/A^N := by
      dsimp only [U]
      rw [tsum_div_const,hsm.tsum_add hsp]
    _ ≤ (Cm*Z^s+Cp*Z^s)/A^N := div_le_div_of_nonneg_right (add_le_add htm htp) hAN.le
    _ = _ := by ring


/-- Totalized remote values; the positive-scale theorem does not construct a Schwartz map at zero. -/
noncomputable def gaussianRemoteValue (s Z A y : ℝ) (j : ℕ) : ℝ :=
  if (2:ℝ)^j/Z≤A⁻¹ ∨ A≤(2:ℝ)^j/Z then
    ((2:ℝ)^j)^s*‖gaussianDyadicProfile Z j y‖
  else 0

lemma gaussianRemoteValue_nonneg (s Z A y : ℝ) (j : ℕ) : 0≤gaussianRemoteValue s Z A y j := by
  unfold gaussianRemoteValue
  split_ifs <;> positivity

/-- One remote-tail constant works for every real evaluation point. -/
theorem gaussianRemoteValue_summed (N : ℕ) (s : ℝ) (hs : 0<s) :
    ∃ C : ℝ,0<C ∧ ∀Z : ℝ,0<Z→∀A : ℝ,1≤A→∀y : ℝ,
      Summable (gaussianRemoteValue s Z A y) ∧
      (∑'j : ℕ,gaussianRemoteValue s Z A y j)≤C*Z^s/A^N := by
  obtain ⟨C,hC,h⟩ := gaussianRemoteSeminorm_summed ({(0,0)} : Finset (ℕ×ℕ)) N s hs
  refine ⟨C,hC,?_⟩
  intro Z hZ A hA y
  obtain ⟨hsm,hbd⟩ := h Z hZ A hA
  have hb (j : ℕ) : gaussianRemoteValue s Z A y j ≤
      gaussianRemoteSeminorm ({(0,0)} : Finset (ℕ×ℕ)) s Z hZ A j := by
    unfold gaussianRemoteValue gaussianRemoteSeminorm
    split_ifs
    · apply mul_le_mul_of_nonneg_left _ (by positivity)
      unfold gaussianSeminormProfile
      simp only [Finset.sup_singleton]
      change ‖gaussianDyadicProfile Z j y‖ ≤ SchwartzMap.seminorm ℝ 0 0 (gaussianDyadicSchwartz Z hZ j)
      have hh := SchwartzMap.le_seminorm' ℝ 0 0 (gaussianDyadicSchwartz Z hZ j) y
      simpa only [pow_zero,one_mul,iteratedDeriv_zero,gaussianDyadicSchwartz_apply] using hh
    · rfl
  have hv := hsm.of_nonneg_of_le (gaussianRemoteValue_nonneg s Z A y) hb
  exact ⟨hv,(hv.tsum_le_tsum hb hsm).trans hbd⟩

end
end GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianRemoteSeminorms
