/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Span.Basic
import Mathlib.Algebra.Ring.Subring.Basic
import Mathlib.Algebra.Algebra.Subalgebra.Basic
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.BigOperators.Pi
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! # The period coordinate line and split dyadic class averages

The first statements compute the coordinate axis in a lattice of embedded
trace-dual vectors. The finite class identities detect the contribution of
nonuniform class weights to a marked theta metric. -/

namespace GRWTSK.NumberTheory.AlpogeThetaMetricComparison

open scoped BigOperators

/-- An integral linear combination of the trace-dual frame recovers a vector
supported on a single axis. The frame may be redundant. -/
theorem axis_from_trace_frame {K ι J : Type*} [Field K] [DecidableEq ι] [Fintype J]
    (R : Subring K) (a b : J → ι → K) (u : ι) (x : K)
    (project : ∀ v, ∑ j, b j u * a j v = if v = u then 1 else 0)
    (integral : ∀ j, x * b j u ∈ R) :
    Pi.single u x ∈ Submodule.span R (Set.range a) := by
  classical
  let c (j : J) : R := ⟨x * b j u, integral j⟩
  have h : ∑ j, c j • a j = Pi.single u x := by
    ext v
    simp only [Finset.sum_apply, Pi.smul_apply]
    change ∑ j, (x * b j u) * a j v = _
    simp_rw [mul_assoc]
    rw [← Finset.mul_sum, project]
    by_cases hv : v = u <;> simp [hv]
  rw [← h]
  exact Submodule.sum_mem _ fun j _ =>
    Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)

/-- In the converse direction each integral trace pairing gives an integral
coordinate test on every vector of the embedded lattice. -/
theorem trace_test_on_axis {K ι J : Type*} [Field K] [Fintype ι] [DecidableEq ι]
    (R : Subring K) (a : J → ι → K) (b : ι → K)
    (pairs : ∀ j, ∑ v, a j v * b v ∈ R) (u : ι) (x : K)
    (h : Pi.single u x ∈ Submodule.span R (Set.range a)) : x * b u ∈ R := by
  classical
  have aux (z : ι → K) (hz : z ∈ Submodule.span R (Set.range a)) :
      ∑ v, z v * b v ∈ R := by
    induction hz using Submodule.span_induction with
    | mem z hz => obtain ⟨j,rfl⟩ := hz; exact pairs j
    | zero => simp
    | add z w _ _ hz hw => simpa [add_mul, Finset.sum_add_distrib] using R.add_mem hz hw
    | smul c z _ hz =>
      simp only [Pi.smul_apply]
      change ∑ v, ((c : K) * z v) * b v ∈ R
      simp_rw [mul_assoc]
      rw [← Finset.mul_sum]
      exact R.mul_mem c.2 hz
  simpa [Pi.single_apply, ite_mul] using aux _ h

/-- Arbitrary sampling of the CM ideal classes weights the second difference
by the two inverse neighbor permutations. -/
theorem weighted_neighbor_sum {C : Type*} [Fintype C] (p : Equiv.Perm C)
    (w f : C → ℝ) :
    (∑ c, w c * (f (p c) + f (p.symm c) - 2 * f c)) =
      ∑ c, (w (p.symm c) + w (p c) - 2 * w c) * f c := by
  have hp := Equiv.sum_comp p (fun c => w (p.symm c) * f c)
  have hm := Equiv.sum_comp p.symm (fun c => w (p c) * f c)
  simp only [Equiv.symm_apply_apply] at hp
  simp only [Equiv.apply_symm_apply] at hm
  simp only [mul_sub, mul_add, sub_mul, add_mul, Finset.sum_sub_distrib, Finset.sum_add_distrib]
  rw [hp, hm]
  congr 1
  apply Finset.sum_congr rfl
  intro c _
  ring

/-- This marked log norm is determined by the triple theta product and the
two CM-preserving degree-two quotients. Constant class weights remove both
neighbor differences. -/
theorem marked_norm_class_sum {C : Type*} [Fintype C] (p : Equiv.Perm C)
    (f n : C → ℝ) (l : ℝ)
    (factor : ∀ c, -n c = l / 2 + 5 * f c - 2 * f (p c) - 2 * f (p.symm c)) :
    (∑ c, n c) = -(Fintype.card C : ℝ) * l / 2 - ∑ c, f c := by
  have h : (∑ c, -n c) = ∑ c, (l / 2 + 5 * f c - 2 * f (p c) - 2 * f (p.symm c)) :=
    Finset.sum_congr rfl (fun c _ => factor c)
  simp only [Finset.sum_neg_distrib, Finset.sum_sub_distrib, Finset.sum_add_distrib,
    Finset.sum_const, Finset.card_univ, nsmul_eq_mul, ← Finset.mul_sum,
    Equiv.sum_comp] at h
  linarith

/-- Exact cancellation in the simultaneous mean of the marked theta metric
and the axis period. The finite axis degree is explicit. -/
theorem paired_period_mean (f n A Ω l p e : ℝ)
    (theta : n = -l/2-f) (area : A = 2*(l+p)+2*f)
    (axis : Ω = A-p-e) : 2*n+Ω = l+p-e := by
  linarith

end GRWTSK.NumberTheory.AlpogeThetaMetricComparison
