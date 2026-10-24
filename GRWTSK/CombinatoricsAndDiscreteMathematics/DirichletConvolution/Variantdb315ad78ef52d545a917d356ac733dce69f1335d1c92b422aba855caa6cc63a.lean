import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Data.Finset.NatDivisors

/-!
# Folder.Rebuild.NumberTheory.DirichletConvolution

Finite Dirichlet convolution for arithmetic functions.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

def dirichletConv
    [Semiring R]
    (f g : ArithFn R) : ArithFn R :=
  fun n => ∑ d ∈ Nat.divisors n, f d * g (n / d)

def dirichletEpsilon
    [Zero R] [One R] : ArithFn R :=
  fun n => if n = 1 then 1 else 0

theorem dirichletConv_apply
    [Semiring R]
    (f g : ArithFn R)
    (n : Nat) :
    dirichletConv f g n =
      ∑ d ∈ Nat.divisors n, f d * g (n / d) :=
  rfl

theorem dirichletEpsilon_one
    [Zero R] [One R] :
    dirichletEpsilon (R := R) 1 = 1 := by
  simp [dirichletEpsilon]

theorem dirichletEpsilon_of_ne_one
    [Zero R] [One R]
    {n : Nat}
    (hn : n ≠ 1) :
    dirichletEpsilon (R := R) n = 0 := by
  simp [dirichletEpsilon, hn]

theorem dirichletConv_epsilon_left_at_one
    [Semiring R]
    (f : ArithFn R) :
    dirichletConv (dirichletEpsilon (R := R)) f 1 = f 1 := by
  simp [dirichletConv, dirichletEpsilon]

end NumberTheory
end Rebuild
end Folder
