# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirichletConvolution.Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a33a2658eb12d9b7925bff25b892fde47b246bb` · SHA-256 `db315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
