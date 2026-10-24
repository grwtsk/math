import Folder.Rebuild.AnalyticNumberTheory.DirichletSeries
import Folder.Rebuild.NumberTheory.DirichletConvolution
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Order.Interval.Finset.Nat

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletPolynomialProduct

Finite Dirichlet polynomial identities.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open scoped BigOperators

noncomputable def dirichletPolynomialComplex
    (a : ArithFn ℂ)
    (σ : Real)
    (N : Nat) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N,
    a n * ((posWeightReal σ n : Real) : ℂ)

theorem dirichletPolynomialComplex_zero_coeff
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialComplex (fun _ => 0) σ N = 0 := by
  simp [dirichletPolynomialComplex]

theorem dirichletPolynomialComplex_add
    (a b : ArithFn ℂ)
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialComplex (fun n => a n + b n) σ N =
      dirichletPolynomialComplex a σ N +
        dirichletPolynomialComplex b σ N := by
  simp [dirichletPolynomialComplex, Finset.sum_add_distrib, add_mul]

def boundedDirichletConv
    [Semiring R]
    (N : Nat)
    (f g : ArithFn R) : ArithFn R :=
  fun n =>
    ∑ d ∈ Nat.divisors n,
      if d ≤ N ∧ n / d ≤ N then f d * g (n / d) else 0

theorem finite_dirichlet_cauchy_product_unweighted
    (a b : ArithFn ℂ)
    (N : Nat) :
    (∑ d ∈ Finset.Icc 1 N, a d) *
      (∑ e ∈ Finset.Icc 1 N, b e) =
    ∑ x ∈ (Finset.Icc 1 N).product (Finset.Icc 1 N),
      a x.1 * b x.2 := by
  rw [Finset.sum_mul_sum]
  exact
    (Finset.sum_product
      (Finset.Icc 1 N)
      (Finset.Icc 1 N)
      (fun x : Nat × Nat => a x.1 * b x.2)).symm

end AnalyticNumberTheory
end Rebuild
end Folder
