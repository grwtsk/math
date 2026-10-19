import LogPowerTail
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition

/-! Actual exponent-at-least-three sector with a sharp elementary numeric budget.
Direction: grwtsk contributors; scratch refinement by OpenAI Codex.
Finite inventory and coefficient normalization are the unchanged actual source.
The geometric argument refines the maintained SourcePrimePowerPartition proof. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.HigherPowerNumeric
open Finset Real LogPowerTail
open FormalResearch.RiemannHypothesis
open SourcePrimePowerPartition SourceDiagonalMainTerm WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit

theorem ratio_square (p : ℕ) :
    ((p:ℝ)^(-(1:ℝ)/2))^2=(p:ℝ)⁻¹ := by
  rw [← Real.rpow_mul_natCast (Nat.cast_nonneg p)]
  rw [show (-(1:ℝ)/2)*(2:ℕ)=(-1:ℝ) by norm_num,Real.rpow_neg_one]

theorem geometric_three (N : ℕ) (r : ℝ) (hr0 : 0 ≤ r) (hr : r < 1) :
    (∑ k ∈ Icc 3 N, r^k) ≤ r^3*(1-r)⁻¹ := by
  have hs : (∑ k ∈ Icc 3 N, r^k)=∑ j ∈ range (N-2),r^(j+3) := by
    apply sum_bij (fun k _=>k-3)
    · intro k hk
      simp only [mem_Icc] at hk
      simp only [mem_range]
      omega
    · intro x hx y hy he
      simp only [mem_Icc] at hx hy
      omega
    · intro j hj
      refine ⟨j+3,?_,by omega⟩
      simp only [mem_range] at hj
      simp only [mem_Icc]
      omega
    · intro k hk
      congr 1
      have := (mem_Icc.mp hk).1
      omega
  have ht := (summable_geometric_of_lt_one hr0 hr).sum_le_tsum (range (N-2))
    (fun j _=>pow_nonneg hr0 j)
  rw [tsum_geometric_of_lt_one hr0 hr] at ht
  rw [hs]
  simp_rw [pow_add]
  rw [← sum_mul]
  nlinarith [pow_nonneg hr0 3]

theorem two_prime_tail (N : ℕ) :
    Real.log 2*(∑ k ∈ Icc 3 N,((2:ℝ)^(-(1:ℝ)/2))^k) ≤ (7/8:ℝ) := by
  let r : ℝ := (2:ℝ)^(-(1:ℝ)/2)
  have hr0 : 0 ≤ r := Real.rpow_nonneg (by norm_num) _
  have hs : r^2=(1/2:ℝ) := by simpa [r] using ratio_square 2
  have hr : r ≤ (5/7:ℝ) := by nlinarith
  have hi : (1-r)⁻¹ ≤ (7/2:ℝ) := by
    apply (inv_le_iff_one_le_mul₀ (by linarith : 0<1-r)).mpr
    linarith
  have hc : r^3 ≤ (5/14:ℝ) := by rw [pow_succ,hs]; nlinarith
  have hg := geometric_three N r hr0 (by linarith)
  have hl : 0 ≤ Real.log 2 := by positivity
  have he : r^3*(1-r)⁻¹ ≤ (5/4:ℝ) := by
    nlinarith [pow_nonneg hr0 3,inv_nonneg.mpr (by linarith : 0≤1-r)]
  change Real.log 2*(∑ k ∈ Icc 3 N,r^k) ≤ _
  have hh := mul_le_mul_of_nonneg_left (hg.trans he) hl
  nlinarith [Real.log_two_lt_d9]

theorem large_prime_tail {p : ℕ} (hp : 3 ≤ p) (N : ℕ) :
    Real.log p*(∑ k ∈ Icc 3 N,((p:ℝ)^(-(1:ℝ)/2))^k) ≤ (12/5:ℝ)*logPower p := by
  have hp0 : 0 < (p:ℝ) := by exact_mod_cast (by omega : 0<p)
  let r : ℝ := (p:ℝ)^(-(1:ℝ)/2)
  have hr0 : 0 ≤ r := Real.rpow_nonneg hp0.le _
  have hs : r^2≤(1/3:ℝ) := by
    rw [show r^2=(p:ℝ)⁻¹ by exact ratio_square p]
    apply (inv_le_iff_one_le_mul₀ hp0).mpr
    have hp3 : (3:ℝ)≤p := by exact_mod_cast hp
    linarith
  have hr : r ≤ (7/12:ℝ) := by nlinarith
  have hi : (1-r)⁻¹≤(12/5:ℝ) := by
    apply (inv_le_iff_one_le_mul₀ (by linarith : 0<1-r)).mpr
    linarith
  have hl : 0≤Real.log p := Real.log_nonneg (by exact_mod_cast (by omega : 1≤p))
  calc
    _ ≤ Real.log p*(r^3*(1-r)⁻¹) :=
      mul_le_mul_of_nonneg_left (geometric_three N r hr0 (by linarith)) hl
    _ ≤ Real.log p*(r^3*(12/5)) :=
      mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hi (pow_nonneg hr0 3)) hl
    _ = (12/5:ℝ)*logPower p := by
      unfold logPower r
      rw [← Real.rpow_mul_natCast hp0.le]
      norm_num only [show (-(1:ℝ)/2)*(3:ℕ)=-(3:ℝ)/2 by norm_num]
      ring

theorem finite_log_tail_le (P : Finset ℕ) (hP : ∀ p∈P,3≤p) :
    (∑ p∈P,logPower p) ≤ (27/7:ℝ) := by
  have he : (∑ p∈P,logPower p)=∑ j∈P.image (fun p : ℕ=>p-3),logPower ((j+3:ℕ):ℝ) := by
    apply sum_bij (fun p _=>(p-3:ℕ))
    · intro p hp
      exact mem_image.mpr ⟨p,hp,rfl⟩
    · intro x hx y hy he
      have := hP x hx
      have := hP y hy
      omega
    · intro j hj
      obtain ⟨p,hp,rfl⟩ := mem_image.mp hj
      exact ⟨p,hp,rfl⟩
    · intro p hp
      have hh : p-3+3=p := by have := hP p hp;omega
      rw [hh]
  rw [he]
  have hn : ∀ j : ℕ,0≤logPower ((j+3:ℕ):ℝ) := by
    intro j
    apply logPower_nonneg
    exact_mod_cast (by omega : 2≤j+3)
  have hs : Summable (fun j : ℕ=>logPower ((j+3:ℕ):ℝ)) := by
    simpa only [Nat.cast_add,Nat.cast_ofNat] using tail_summable
  have hb : (∑' j : ℕ,logPower ((j+3:ℕ):ℝ))≤(27/7:ℝ) := by
    simpa only [Nat.cast_add,Nat.cast_ofNat] using tail_le_rational
  exact (hs.sum_le_tsum _ (fun j _=>hn j)).trans hb

theorem finite_prime_tail_budget (P : Finset ℕ) (hP : ∀ p∈P,p.Prime) (N : ℕ) :
    (∑ p∈P,Real.log p*∑ k∈Icc 3 N,((p:ℝ)^(-(1:ℝ)/2))^k) ≤ (51/5:ℝ) := by
  let f : ℕ → ℝ := fun p=>Real.log p*∑ k∈Icc 3 N,((p:ℝ)^(-(1:ℝ)/2))^k
  have hlarge : (∑ p∈P.erase 2,f p) ≤ (12/5:ℝ)*(27/7) := by
    have hge : ∀ p∈P.erase 2,3≤p := by
      intro p hp
      have hh := mem_erase.mp hp
      have := (hP p hh.2).two_le
      omega
    calc
      _ ≤ ∑ p∈P.erase 2,(12/5:ℝ)*logPower p := by
        apply sum_le_sum
        intro p hp
        exact large_prime_tail (hge p hp) N
      _ = (12/5:ℝ)*(∑ p∈P.erase 2,logPower p) := by rw [mul_sum]
      _ ≤ _ := mul_le_mul_of_nonneg_left (finite_log_tail_le _ hge) (by norm_num)
  by_cases h2 : 2∈P
  · have hh := sum_erase_add P f h2
    change (∑ p∈P,f p)≤_
    rw [← hh]
    have ht : f 2≤(7/8:ℝ) := two_prime_tail N
    linarith
  · rw [erase_eq_of_notMem h2] at hlarge
    exact hlarge.trans (by norm_num)

theorem actual_higherPrimePowerMoment_abs_le {A : ℝ} (hA : 1≤A) :
    |higherPrimePowerMoment A|≤(51/5:ℝ) := by
  let P := primeLogInventory (2*A)
  let K := Icc 3 ⌊Real.exp (2*A)⌋₊
  let f : ℕ×ℕ→ℝ := fun pk=>Real.log pk.1*((pk.1:ℝ)^(-(1:ℝ)/2))^pk.2
  have hf : ∀ pk∈P.product K,0≤f pk := by
    intro pk hpk
    have hp := (mem_filter.mp (mem_product.mp hpk).1).2
    exact mul_nonneg (Real.log_nonneg (by exact_mod_cast hp.one_le))
      (pow_nonneg (Real.rpow_nonneg (Nat.cast_nonneg _) _) _)
  calc
    _ ≤ ∑ pk∈higherPrimePowerInventory A,|ArithmeticFunction.vonMangoldt (pk.1^pk.2)*closedPrimeWeight A (pk.1^pk.2)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ pk∈higherPrimePowerInventory A,f pk := by
      apply sum_le_sum
      intro pk hpk
      obtain ⟨hprod,_⟩ := mem_filter.mp hpk
      obtain ⟨hp,hk⟩ := mem_product.mp hprod
      exact prime_power_source_coefficient_abs_le A hA (mem_filter.mp hp).2 (by have := (mem_Icc.mp hk).1;omega)
    _ ≤ ∑ pk∈P.product K,f pk := sum_le_sum_of_subset_of_nonneg (filter_subset _ _)
      (fun pk hpk _=>hf pk hpk)
    _ = ∑ p∈P,Real.log p*∑ k∈K,((p:ℝ)^(-(1:ℝ)/2))^k := by
      rw [product_eq_sprod,sum_product]
      simp only [f,mul_sum]
    _ ≤ (51/5:ℝ) := finite_prime_tail_budget P (fun p hp=>(mem_filter.mp hp).2) _

#print axioms ratio_square
#print axioms geometric_three
#print axioms two_prime_tail
#print axioms large_prime_tail
#print axioms finite_log_tail_le
#print axioms finite_prime_tail_budget
#print axioms actual_higherPrimePowerMoment_abs_le
end ContinuousResearch.HigherPowerNumeric
