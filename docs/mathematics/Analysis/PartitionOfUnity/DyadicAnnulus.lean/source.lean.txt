/-
Natural dyadic smooth-annulus partition and absolutely summable reassembly.
Adapted from OpenAI math, Apache-2.0, commit
1581d4cbdd69a0faf34b2089614fe2a814316a6a:
lean/OAI/NumberTheory/DirichletL/Detector/GaussianPartition.lean
SHA256 e8c07b6a103deb0f0e65277c1a06b5035a36482560d9ac5c6389eaf4c783277b;
lean/OAI/NumberTheory/DirichletL/Detector/GaussianDecomposition.lean
SHA256 494752f7dcd2e0916be5e4d3c7a64c24e5551a9bc5a5f278200e46f068ebf389.
Only the general annulus and reassembly statements are adapted here.
Mathlib SmoothTransition.lean:
Copyright (c) 2020 Sébastien Gouëzel. All rights reserved.
Authors: Sébastien Gouëzel, Yury Kudryashov.
Released under Apache 2.0 license as described in LICENSE.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
-/
import Mathlib.Analysis.SpecialFunctions.SmoothTransition
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.LinearAlgebra.Complex.FiniteDimensional

namespace GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
noncomputable section
open scoped Classical Topology ContDiff
open Set

noncomputable def dyadicCutoff (y : ℝ) : ℂ := (Real.smoothTransition (2-y):ℂ)
noncomputable def dyadicAnnulus (y : ℝ) : ℂ := dyadicCutoff y - dyadicCutoff (2*y)

lemma dyadicCutoff_small (y : ℝ) (hy : y ≤ 1) : dyadicCutoff y = 1 := by
  simp only [dyadicCutoff, Real.smoothTransition.one_of_one_le (by linarith : 1 ≤ 2-y), Complex.ofReal_one]

lemma dyadicCutoff_large (y : ℝ) (hy : 2 ≤ y) : dyadicCutoff y = 0 := by
  simp only [dyadicCutoff, Real.smoothTransition.zero_of_nonpos (by linarith : 2-y ≤ 0), Complex.ofReal_zero]

lemma dyadicAnnulus_small (y : ℝ) (hy : y ≤ 1/2) : dyadicAnnulus y = 0 := by
  rw [dyadicAnnulus, dyadicCutoff_small y (by linarith), dyadicCutoff_small (2*y) (by linarith)]
  ring

lemma dyadicAnnulus_large (y : ℝ) (hy : 2 ≤ y) : dyadicAnnulus y = 0 := by
  rw [dyadicAnnulus, dyadicCutoff_large y hy, dyadicCutoff_large (2*y) (by linarith)]
  ring

lemma dyadicAnnulus_contDiff : ContDiff ℝ ∞ dyadicAnnulus := by
  unfold dyadicAnnulus dyadicCutoff
  exact (Complex.ofRealCLM.contDiff.comp (Real.smoothTransition.contDiff.comp (by fun_prop))).sub
    (Complex.ofRealCLM.contDiff.comp (Real.smoothTransition.contDiff.comp (by fun_prop)))

lemma dyadicAnnulus_compact : HasCompactSupport dyadicAnnulus := by
  apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a := (1/2:ℝ)) (b := 2))
  intro y hy
  change dyadicAnnulus y ≠ 0 at hy
  constructor
  · by_contra h
    exact hy (dyadicAnnulus_small y (le_of_lt (lt_of_not_ge h)))
  · by_contra h
    exact hy (dyadicAnnulus_large y (le_of_lt (lt_of_not_ge h)))

lemma dyadicAnnulus_nonneg (y : ℝ) : 0 ≤ (dyadicAnnulus y).re := by
  by_cases hy : y ≤ 1/2
  · rw [dyadicAnnulus_small y hy]; simp
  · change 0 ≤ Real.smoothTransition (2-y)-Real.smoothTransition (2-2*y)
    exact sub_nonneg.mpr (Real.smoothTransition.monotone (by linarith))

lemma dyadicAnnulus_norm (y : ℝ) : ‖dyadicAnnulus y‖ = (dyadicAnnulus y).re := by
  have h : dyadicAnnulus y = ((dyadicAnnulus y).re:ℂ) := by
    simp [dyadicAnnulus, dyadicCutoff]
  rw [h, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (dyadicAnnulus_nonneg y)]
  rfl

lemma dyadicAnnulus_support_scales (x : ℝ) (K : ℕ)
    (hlo : (2:ℝ)^K ≤ x) (hhi : x < (2:ℝ)^(K+1)) (j : ℕ)
    (hj : j ∉ ({K,K+1}:Finset ℕ)) : dyadicAnnulus (x/(2:ℝ)^j) = 0 := by
  have hp : (0:ℝ) < 2^j := by positivity
  have hj' : j ≠ K ∧ j ≠ K+1 := by simpa using hj
  by_cases hlt : j < K
  · apply dyadicAnnulus_large
    apply (le_div_iff₀ hp).mpr
    have h := pow_le_pow_right₀ (by norm_num : (1:ℝ) ≤ 2) (show j+1 ≤ K by omega)
    rw [pow_succ] at h
    linarith
  · apply dyadicAnnulus_small
    apply (div_le_iff₀ hp).mpr
    have h := pow_le_pow_right₀ (by norm_num : (1:ℝ) ≤ 2) (show K+2 ≤ j by omega)
    have he : (2:ℝ)^(K+2) = 2*((2:ℝ)^(K+1)) := by rw [pow_succ]; ring
    rw [he] at h
    linarith

/-- The natural dyadic family covers every point at least one. -/
theorem dyadicAnnulus_partition (x : ℝ) (hx : 1 ≤ x) :
    HasSum (fun j : ℕ => dyadicAnnulus (x/(2:ℝ)^j)) 1 := by
  obtain ⟨K,hlo,hhi⟩ := exists_nat_pow_near hx (by norm_num : (1:ℝ) < 2)
  have h : HasSum (fun j : ℕ => dyadicAnnulus (x/(2:ℝ)^j))
      (∑ j ∈ ({K,K+1}:Finset ℕ), dyadicAnnulus (x/(2:ℝ)^j)) :=
    hasSum_sum_of_ne_finset_zero (dyadicAnnulus_support_scales x K hlo hhi)
  convert h using 1
  rw [Finset.sum_pair (by omega : K ≠ K+1)]
  unfold dyadicAnnulus
  have he : 2*(x/(2:ℝ)^(K+1)) = x/(2:ℝ)^K := by rw [pow_succ]; field_simp
  have hh : 2 ≤ 2*(x/(2:ℝ)^K) := by
    have hq : 1 ≤ x/(2:ℝ)^K := (one_le_div (by positivity)).mpr hlo
    linarith
  rw [he, dyadicCutoff_small _ ((div_le_one (by positivity)).mpr hhi.le),
    dyadicCutoff_large _ hh]
  ring

theorem dyadicAnnulus_partition_norm (x : ℝ) (hx : 1 ≤ x) :
    HasSum (fun j : ℕ => ‖dyadicAnnulus (x/(2:ℝ)^j)‖) 1 := by
  simpa only [dyadicAnnulus_norm, Complex.one_re] using
    Complex.hasSum_re (dyadicAnnulus_partition x hx)

/-- Exact absolute product summability; coverage is supplied on nonzero terms. -/
theorem annular_reassembly_summable {α : Type*} (a : α → ℂ) (N : α → ℝ)
    (ha : Summable a) (hN : ∀ p, a p ≠ 0 → 1 ≤ N p) :
    Summable (fun q : α × ℕ => dyadicAnnulus (N q.1/(2:ℝ)^q.2)*a q.1) := by
  have hs (p : α) : HasSum (fun j : ℕ => ‖dyadicAnnulus (N p/(2:ℝ)^j)*a p‖) ‖a p‖ := by
    by_cases hp : a p = 0
    · simp only [hp, mul_zero, norm_zero]
      exact hasSum_zero
    · simpa only [norm_mul, one_mul] using (dyadicAnnulus_partition_norm (N p) (hN p hp)).mul_right ‖a p‖
  apply Summable.of_norm
  apply (summable_prod_of_nonneg (fun _ => norm_nonneg _)).mpr
  exact ⟨fun p => (hs p).summable, by simpa only [fun p => (hs p).tsum_eq] using ha.norm⟩

theorem annular_reassembly {α : Type*} (a : α → ℂ) (N : α → ℝ)
    (ha : Summable a) (hN : ∀ p, a p ≠ 0 → 1 ≤ N p) :
    (∑' j : ℕ, ∑' p : α, dyadicAnnulus (N p/(2:ℝ)^j)*a p) = ∑' p, a p := by
  rw [Summable.tsum_comm (f := fun p : α => fun j : ℕ => dyadicAnnulus (N p/(2:ℝ)^j)*a p)
    (annular_reassembly_summable a N ha hN)]
  apply tsum_congr
  intro p
  by_cases hp : a p = 0
  · simp [hp]
  · simpa only [one_mul] using ((dyadicAnnulus_partition (N p) (hN p hp)).mul_right (a p)).tsum_eq

end
end GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
