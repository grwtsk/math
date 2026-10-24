# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SamplingReplication.Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af30ade169fd873c479caa7e32b5a37b7ea4b499` · SHA-256 `02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.SamplingOptimization

/-!
# Exact independent finite sampling replication

The product probability is materialized on every finite tuple. Tensor moment
factorization proves the actual independent-coordinate moments and the exact
variance of their average, retaining the subtraction of the signed mean
squared. A large second moment alone does not give a large variance.

Source: RH conversation Batch 3, BL03-04. Human programme: grwtsk contributors.
Local finite product-law implementation: OpenAI Codex. Mathlib's qualified
product-of-sums identity is used directly.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.SamplingReplication
open SamplingOptimization
open scoped BigOperators
noncomputable section

def productProbability {κ : Type*} [Fintype κ] (m : ℕ) (p : κ → ℝ)
    (ω : Fin m → κ) : ℝ := ∏ i, p (ω i)

def expectation {κ : Type*} [Fintype κ] (m : ℕ) (p : κ → ℝ)
    (f : (Fin m → κ) → ℝ) : ℝ := ∑ ω, productProbability m p ω * f ω

theorem tensor_expectation {κ : Type*} [Fintype κ] (m : ℕ) (p : κ → ℝ)
    (f : Fin m → κ → ℝ) :
    expectation m p (fun ω ↦ ∏ i, f i (ω i)) = ∏ i, ∑ j, p j * f i j := by
  classical
  unfold expectation productProbability
  simp_rw [← Finset.prod_mul_distrib]
  exact (Fintype.prod_sum (fun i j ↦ p j * f i j)).symm

theorem product_probability_nonnegative {κ : Type*} [Fintype κ]
    (m : ℕ) (p : κ → ℝ) (hp : ∀ j, 0 ≤ p j) (ω : Fin m → κ) :
    0 ≤ productProbability m p ω := Finset.prod_nonneg (fun _ _ ↦ hp _)

theorem product_probability_sum_one {κ : Type*} [Fintype κ]
    (m : ℕ) (p : κ → ℝ) (hsum : (∑ j, p j) = 1) :
    (∑ ω, productProbability m p ω) = 1 := by
  have h := tensor_expectation m p (fun _ _ ↦ 1)
  simpa only [expectation, Finset.prod_const_one, mul_one, hsum] using h

theorem coordinate_expectation {κ : Type*} [Fintype κ] {m : ℕ}
    (p f : κ → ℝ) (hsum : (∑ j, p j) = 1) (i : Fin m) :
    expectation m p (fun ω ↦ f (ω i)) = ∑ j, p j * f j := by
  classical
  have h := tensor_expectation m p (fun k j ↦ if k = i then f j else 1)
  have hleft (ω : Fin m → κ) : (∏ k, if k = i then f (ω k) else 1) = f (ω i) := by simp
  have hright (k : Fin m) : (∑ j, p j * (if k = i then f j else 1)) =
      if k = i then (∑ j, p j * f j) else 1 := by
    by_cases hk : k = i <;> simp [hk, hsum]
  simp only [hleft, hright] at h
  simpa using h

theorem distinct_coordinate_product {κ : Type*} [Fintype κ] {m : ℕ}
    (p f g : κ → ℝ) (hsum : (∑ j, p j) = 1) (i j : Fin m) (hij : i ≠ j) :
    expectation m p (fun ω ↦ f (ω i) * g (ω j)) =
      (∑ k, p k * f k) * (∑ k, p k * g k) := by
  classical
  have h := tensor_expectation m p
    (fun k a ↦ (if k = i then f a else 1) * (if k = j then g a else 1))
  have hleft (ω : Fin m → κ) :
      (∏ k, (if k = i then f (ω k) else 1) * (if k = j then g (ω k) else 1)) =
        f (ω i) * g (ω j) := by rw [Finset.prod_mul_distrib]; simp
  have hright (k : Fin m) :
      (∑ a, p a * ((if k = i then f a else 1) * (if k = j then g a else 1))) =
      (if k = i then (∑ a, p a * f a) else 1) *
        (if k = j then (∑ a, p a * g a) else 1) := by
    by_cases hki : k = i
    · subst k
      simp [hij]
    · by_cases hkj : k = j
      · subst k
        simp [hki]
      · simp [hki, hkj, hsum]
  simp only [hleft, hright, Finset.prod_mul_distrib] at h
  simpa using h

theorem centered_sum_second_moment {κ : Type*} [Fintype κ] {m : ℕ}
    (p z : κ → ℝ) (hsum : (∑ j, p j) = 1) (hzero : (∑ j, p j * z j) = 0) :
    expectation m p (fun ω ↦ (∑ i, z (ω i)) ^ 2) = (m : ℝ) * ∑ j, p j * z j ^ 2 := by
  classical
  have hexpand (ω : Fin m → κ) : (∑ i, z (ω i)) ^ 2 =
      ∑ i, ∑ j, z (ω i) * z (ω j) := by
    rw [pow_two, Finset.sum_mul]
    simp_rw [Finset.mul_sum]
  have hentry (i j : Fin m) : expectation m p (fun ω ↦ z (ω i) * z (ω j)) =
      if i = j then (∑ k, p k * z k ^ 2) else 0 := by
    by_cases hij : i = j
    · subst j
      rw [if_pos rfl]
      simpa only [← pow_two] using coordinate_expectation p (fun a ↦ z a ^ 2) hsum i
    · rw [if_neg hij, distinct_coordinate_product p z z hsum i j hij, hzero, zero_mul]
  calc
    _ = ∑ i, ∑ j, expectation m p (fun ω ↦ z (ω i) * z (ω j)) := by
      unfold expectation
      simp_rw [hexpand, Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro i hi
      rw [Finset.sum_comm]
    _ = _ := by simp_rw [hentry]; simp

def signedMean {κ : Type*} [Fintype κ] (a : κ → ℝ) : ℝ := ∑ j, a j

def centeredReadout {κ : Type*} [Fintype κ] (p a : κ → ℝ) (j : κ) : ℝ :=
  a j / p j - signedMean a

def readoutMean {κ : Type*} [Fintype κ] (m : ℕ) (p a : κ → ℝ) (ω : Fin m → κ) : ℝ :=
  (∑ i, a (ω i) / p (ω i)) / m

def replicationVariance {κ : Type*} [Fintype κ] (m : ℕ) (p a : κ → ℝ) : ℝ :=
  expectation m p (fun ω ↦ (readoutMean m p a ω - signedMean a) ^ 2)

theorem centered_readout_mean_zero {κ : Type*} [Fintype κ] (p a : κ → ℝ)
    (hp : ∀ j, 0 < p j) (hsum : (∑ j, p j) = 1) :
    (∑ j, p j * centeredReadout p a j) = 0 := by
  have hpoint (j : κ) : p j * centeredReadout p a j = a j - signedMean a * p j := by
    unfold centeredReadout
    field_simp [(hp j).ne']
  simp_rw [hpoint]
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum, hsum, mul_one]
  simp only [signedMean, sub_self]

theorem centered_readout_second_moment {κ : Type*} [Fintype κ] (p a : κ → ℝ)
    (hp : ∀ j, 0 < p j) (hsum : (∑ j, p j) = 1) :
    (∑ j, p j * centeredReadout p a j ^ 2) =
      SamplingOptimization.variance Finset.univ p a := by
  have hpoint (j : κ) : p j * centeredReadout p a j ^ 2 =
      a j ^ 2 / p j - 2 * signedMean a * a j + signedMean a ^ 2 * p j := by
    unfold centeredReadout
    field_simp [(hp j).ne']
    ring
  simp_rw [hpoint]
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum, ← Finset.mul_sum, hsum]
  unfold SamplingOptimization.variance SamplingOptimization.secondMoment signedMean
  ring

theorem exact_replication_variance {κ : Type*} [Fintype κ] {m : ℕ}
    (hm : 0 < m) (p a : κ → ℝ) (hp : ∀ j, 0 < p j) (hsum : (∑ j, p j) = 1) :
    replicationVariance m p a = SamplingOptimization.variance Finset.univ p a / m := by
  have hmr : (m : ℝ) ≠ 0 := by exact_mod_cast hm.ne'
  have hcenter (ω : Fin m → κ) : readoutMean m p a ω - signedMean a =
      (∑ i, centeredReadout p a (ω i)) / m := by
    unfold readoutMean centeredReadout
    rw [Finset.sum_sub_distrib]
    simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    field_simp [hmr]
  have hsumSquare := centered_sum_second_moment (m := m) p (centeredReadout p a) hsum
    (centered_readout_mean_zero p a hp hsum)
  rw [centered_readout_second_moment p a hp hsum] at hsumSquare
  unfold replicationVariance expectation
  simp_rw [hcenter, div_pow, ← mul_div_assoc]
  rw [← Finset.sum_div]
  change expectation m p (fun ω ↦ (∑ i, centeredReadout p a (ω i)) ^ 2) / (m : ℝ) ^ 2 = _
  rw [hsumSquare]
  field_simp [hmr]

theorem replication_variance_lower {κ : Type*} [Fintype κ] {m : ℕ}
    (hm : 0 < m) (p a : κ → ℝ) (hp : ∀ j, 0 < p j) (hsum : (∑ j, p j) = 1) :
    ((absoluteMass Finset.univ a) ^ 2 - (signedMean a) ^ 2) / m ≤
      replicationVariance m p a := by
  rw [exact_replication_variance hm p a hp hsum]
  apply div_le_div_of_nonneg_right _ (Nat.cast_nonneg m)
  have h := FiniteObstructions.sampling_variation_cost Finset.univ p a
    (fun j hj ↦ hp j) hsum
  unfold SamplingOptimization.variance SamplingOptimization.secondMoment absoluteMass signedMean
  linarith

theorem replication_is_unbiased {κ : Type*} [Fintype κ] {m : ℕ}
    (hm : 0 < m) (p a : κ → ℝ) (hp : ∀ j, 0 < p j) (hsum : (∑ j, p j) = 1) :
    expectation m p (readoutMean m p a) = signedMean a := by
  have hmr : (m : ℝ) ≠ 0 := by exact_mod_cast hm.ne'
  have hsingle (i : Fin m) : expectation m p (fun ω ↦ a (ω i) / p (ω i)) = signedMean a := by
    rw [coordinate_expectation p (fun j ↦ a j / p j) hsum i]
    unfold signedMean
    apply Finset.sum_congr rfl
    intro j hj
    field_simp [(hp j).ne']
  unfold expectation readoutMean
  simp_rw [← mul_div_assoc, Finset.mul_sum]
  rw [← Finset.sum_div, Finset.sum_comm]
  change (∑ i, expectation m p (fun ω ↦ a (ω i) / p (ω i))) / m = _
  simp only [hsingle, Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  field_simp [hmr]

theorem conditional_sample_count {κ : Type*} [Fintype κ] {m : ℕ}
    (hm : 0 < m) (p a : κ → ℝ) (hp : ∀ j, 0 < p j) (hsum : (∑ j, p j) = 1)
    {ε : ℝ} (hε : 0 < ε)
    (hmean : |signedMean a| ≤ absoluteMass Finset.univ a / 2)
    (hvariance : replicationVariance m p a ≤ ε ^ 2) :
    3 * (absoluteMass Finset.univ a) ^ 2 / (4 * ε ^ 2) ≤ (m : ℝ) := by
  have hmr : (0 : ℝ) < m := by exact_mod_cast hm
  have hS : (signedMean a) ^ 2 ≤ (absoluteMass Finset.univ a) ^ 2 / 4 := by
    have hbounds := abs_le.mp hmean
    nlinarith [hbounds.1, hbounds.2]
  have hlow := (replication_variance_lower hm p a hp hsum).trans hvariance
  have hmul := (div_le_iff₀ hmr).mp hlow
  apply (div_le_iff₀ (by positivity : 0 < 4 * ε ^ 2)).mpr
  nlinarith

/-- The original importance-sampling optimum is attained by the materialized product law. -/
theorem optimal_replication_variance {κ : Type*} [Fintype κ] {m : ℕ}
    (hm : 0 < m) (a : κ → ℝ) (hV : 0 < absoluteMass Finset.univ a)
    (hzero : ∀ j, a j ≠ 0) :
    replicationVariance m (optimalProbability Finset.univ a) a =
      ((absoluteMass Finset.univ a) ^ 2 - (signedMean a) ^ 2) / m := by
  rw [exact_replication_variance hm _ a
    (fun j ↦ optimalProbability_pos hV (fun k hk ↦ hzero k) j (Finset.mem_univ j))
    (optimalProbability_sum hV), optimal_variance hV (fun j hj ↦ hzero j)]
  rfl

end
end GRWTSK.RiemannHypothesis.Conversation.SamplingReplication
```
