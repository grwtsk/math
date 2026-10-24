import Folder.Rebuild.AnalyticNumberTheory.EulerProductApproximation
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Folder.Rebuild.AnalyticNumberTheory.FiniteEulerExponentVectors

Exact finite Euler-product expansion over bounded exponent vectors.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

def ExponentVector
    (S : Finset Nat)
    (K : Nat) :=
  (p : {p : Nat // p ∈ S}) → Fin (K + 1)

instance exponentVectorFintype
    (S : Finset Nat)
    (K : Nat) :
    Fintype (ExponentVector S K) := by
  dsimp [ExponentVector]
  infer_instance

instance exponentVectorDecidableEq
    (S : Finset Nat)
    (K : Nat) :
    DecidableEq (ExponentVector S K) := by
  dsimp [ExponentVector]
  infer_instance

noncomputable def exponentVectorWeightReal
    (S : Finset Nat)
    (K : Nat)
    (σ : Real)
    (e : ExponentVector S K) : Real :=
  ∏ p : {p : Nat // p ∈ S},
    (p.val : Real) ^ (-(σ * (e p).val))

theorem finiteZetaEulerFactorReal_eq_fin_sum
    (p K : Nat)
    (σ : Real) :
    finiteZetaEulerFactorReal p σ K =
      ∑ k : Fin (K + 1), (p : Real) ^ (-(σ * (k : Nat))) := by
  rw [finiteZetaEulerFactorReal]
  rw [Fin.sum_univ_eq_sum_range
    (fun k : Nat => (p : Real) ^ (-(σ * k))) (K + 1)]

theorem finite_product_sum_expansion_subtype
    [CommSemiring R]
    (S : Finset Nat)
    (K : Nat)
    (x : (p : {p : Nat // p ∈ S}) → Fin (K + 1) → R) :
    (∏ p : {p : Nat // p ∈ S},
        ∑ k : Fin (K + 1), x p k)
      =
    ∑ e : ExponentVector S K,
      ∏ p : {p : Nat // p ∈ S}, x p (e p) := by
  classical
  change
    (∏ p : {p : Nat // p ∈ S}, ∑ k : Fin (K + 1), x p k)
      =
    ∑ e : ((p : {p : Nat // p ∈ S}) → Fin (K + 1)),
      ∏ p : {p : Nat // p ∈ S}, x p (e p)
  exact Fintype.prod_sum x

/--
Exact finite Euler-product expansion over bounded exponent vectors.

This is a finite product-of-sums identity. It is the checked finite algebraic
precursor to Euler products, not an infinite Euler-product theorem.
-/
theorem finiteZetaEulerProductReal_expands_exponent_vectors
    (S : Finset Nat)
    (K : Nat)
    (σ : Real) :
    finiteZetaEulerProductReal S σ K =
      ∑ e : ExponentVector S K,
        exponentVectorWeightReal S K σ e := by
  classical
  calc
    finiteZetaEulerProductReal S σ K
        = ∏ p : {p : Nat // p ∈ S}, finiteZetaEulerFactorReal p.val σ K := by
            rw [finiteZetaEulerProductReal]
            exact
              (Finset.prod_coe_sort S
                (fun p => finiteZetaEulerFactorReal p σ K)).symm
    _ = ∏ p : {p : Nat // p ∈ S},
          ∑ k : Fin (K + 1), (p.val : Real) ^ (-(σ * (k : Nat))) := by
          refine Finset.prod_congr rfl ?_
          intro p _hp
          exact finiteZetaEulerFactorReal_eq_fin_sum p.val K σ
    _ = ∑ e : ExponentVector S K,
          exponentVectorWeightReal S K σ e := by
          simpa [exponentVectorWeightReal] using
            finite_product_sum_expansion_subtype S K
              (fun p k => (p.val : Real) ^ (-(σ * (k : Nat))))

end AnalyticNumberTheory
end Rebuild
end Folder
