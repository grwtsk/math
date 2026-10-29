/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib compactness, subsequence, metric Cauchy and orthonormal theory retain
their upstream authorship and Apache-2.0 licenses. -/
import Mathlib.Analysis.InnerProductSpace.Orthonormal
import Mathlib.Analysis.Normed.Operator.Compact.Basic
import Mathlib.Topology.Sequences
import Mathlib.Topology.MetricSpace.Cauchy

/-!
# Decay of orthonormal nonnegative eigenvalues of a compact real operator

An eigenimage at eigenvalue at least epsilon is epsilon-separated from
every other eigenimage, by taking its inner product with its unit vector.
If infinitely many eigenvalues were at least epsilon, extraction and actual
relative compactness would give a Cauchy subsequence of these separated
images. This is impossible. No monotone ordering or eigenvalue distinctness
is needed; finite multiplicities need not be assumed.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.FunctionalAnalysis.CompactOrthonormalEigenvalueLimit

open Filter
open scoped Topology

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

theorem eigenimage_distance_lower (A : E →L[ℝ] E) (e : ℕ → E) (λ : ℕ → ℝ)
    (ho : Orthonormal ℝ e) (hλ : ∀ n, 0 ≤ λ n)
    (he : ∀ n, A (e n) = λ n • e n) {i j : ℕ} (hij : i ≠ j) :
    λ i ≤ dist (A (e i)) (A (e j)) := by
  have hi : inner ℝ (e i) (A (e i) - A (e j)) = λ i := by
    simp only [he i, he j, inner_sub_right, real_inner_smul_right,
      orthonormal_iff_ite.mp ho, if_pos rfl, if_neg hij, mul_one, mul_zero, sub_zero]
  calc
    λ i = ‖inner ℝ (e i) (A (e i) - A (e j))‖ := by
      rw [hi, Real.norm_eq_abs, abs_of_nonneg (hλ i)]
    _ ≤ ‖e i‖ * ‖A (e i) - A (e j)‖ := norm_inner_le_norm _ _
    _ = dist (A (e i)) (A (e j)) := by rw [ho.norm_eq_one, one_mul, dist_eq_norm]

/-- Compactness pays the limit for the actual chosen sequence, including repetitions
of eigenvalues. The vectors, not the eigenvalues, are pairwise orthogonal. -/
theorem eigenvalue_tendsto_zero (A : E →L[ℝ] E) (hc : IsCompactOperator A)
    (e : ℕ → E) (λ : ℕ → ℝ) (ho : Orthonormal ℝ e) (hλ : ∀ n, 0 ≤ λ n)
    (he : ∀ n, A (e n) = λ n • e n) : Tendsto λ atTop (𝓝 0) := by
  apply tendsto_order.mpr
  constructor
  · intro a ha
    exact Eventually.of_forall (fun n => lt_of_lt_of_le ha (hλ n))
  · intro ε hε
    by_contra hn
    have hf : ∃ᶠ n in atTop, ε ≤ λ n := by
      simpa only [not_lt] using (Filter.not_eventually.mp hn)
    obtain ⟨φ, hφ, hφλ⟩ := extraction_of_frequently_atTop hf
    obtain ⟨K, hK, hAK⟩ := hc.image_closedBall_subset_compact (f := A.toLinearMap) 1
    have hin (n : ℕ) : A (e (φ n)) ∈ K := by
      apply hAK
      refine ⟨e (φ n), ?_, rfl⟩
      simp only [Metric.mem_closedBall, dist_zero_right, ho.norm_eq_one, le_refl]
    obtain ⟨z, _hz, ψ, hψ, hlim⟩ := hK.tendsto_subseq hin
    have hcy : CauchySeq (fun n => A (e (φ (ψ n)))) := by
      simpa only [Function.comp_def] using hlim.cauchySeq
    obtain ⟨N, hN⟩ := Metric.cauchySeq_iff.mp hcy ε hε
    have hlt := hN N le_rfl (N + 1) (Nat.le_succ N)
    have hne : φ (ψ N) ≠ φ (ψ (N + 1)) :=
      (hφ.comp hψ).injective.ne (Nat.ne_of_lt (Nat.lt_succ_self N))
    have hge : ε ≤ dist (A (e (φ (ψ N)))) (A (e (φ (ψ (N + 1))))) :=
      (hφλ (ψ N)).trans (eigenimage_distance_lower A e λ ho hλ he hne)
    exact (not_lt_of_ge hge) hlt

end GRWTSK.FunctionalAnalysis.CompactOrthonormalEigenvalueLimit
