import Folder.Rebuild.NumberTheory.Euclid
import Mathlib.Algebra.BigOperators.Finprod

/-!
# Folder.Rebuild.NumberTheory.FiniteEulerProduct

Finite Euler products as algebraic products of finite sums.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

def finiteEulerFactor
    [CommSemiring R]
    (p N : Nat)
    (x : Nat → R) : R :=
  ∑ k ∈ Finset.range (N + 1), x (p ^ k)

def finiteEulerProduct
    [CommSemiring R]
    (S : Finset Nat)
    (N : Nat → Nat)
    (x : Nat → R) : R :=
  ∏ p ∈ S, finiteEulerFactor p (N p) x

def exponentVectors
    (S : Finset Nat)
    (N : Nat → Nat) :
    Finset ((p : Nat) → p ∈ S → Nat) :=
  S.pi fun p => Finset.range (N p + 1)

/--
Finite products of finite Euler factors expand as a finite sum over exponent
vectors. This is an algebraic precursor only; it contains no convergence
claim.
-/
theorem finite_euler_product_expands_as_sum_over_exponents
    [CommSemiring R]
    (S : Finset Nat)
    (hS : ∀ p ∈ S, Nat.Prime p)
    (N : Nat → Nat)
    (x : Nat → R)
    (_hmul : ∀ a b, Nat.Coprime a b → x (a * b) = x a * x b) :
    finiteEulerProduct S N x =
      ∑ e ∈ exponentVectors S N,
        ∏ p ∈ S.attach, x ((p : Nat) ^ e p p.property) := by
  have _hS_checked := hS
  unfold finiteEulerProduct finiteEulerFactor exponentVectors
  simpa using
    (Finset.prod_sum S
      (fun p => Finset.range (N p + 1))
      (fun p k => x (p ^ k)))

end NumberTheory
end Rebuild
end Folder
