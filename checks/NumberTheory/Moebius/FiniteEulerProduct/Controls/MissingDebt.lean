import GRWTSK.NumberTheory.Moebius.FiniteEulerProduct
open scoped BigOperators ArithmeticFunction.Moebius
open GRWTSK.NumberTheory.Moebius
example {R : Type*} [CommRing R] (f : ArithmeticFunction R)
    (hf : f.IsMultiplicative) (N : ℕ) :
    (∏ p ∈ Nat.primesLE N, (1-f p)) =
      ∑ n ∈ Finset.Icc 1 N, (μ n : R) * f n :=
  finite_euler_product_cutoff f hf N
