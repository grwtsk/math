# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.MultiplicativeFunction.Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a987b3e6ee135c6871209d7550f91231c7e5cbe1` · SHA-256 `942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.Divisibility

/-!
# Folder.Rebuild.NumberTheory.MultiplicativeFunction

Local multiplicative predicates for arithmetic functions in the rebuild branch.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

abbrev ArithFn (R : Type*) := Nat → R

def IsMultiplicative
    [Mul R] [One R]
    (f : ArithFn R) : Prop :=
  f 1 = 1 ∧
    ∀ a b : Nat, Nat.Coprime a b → f (a * b) = f a * f b

def IsCompletelyMultiplicative
    [Mul R] [One R]
    (f : ArithFn R) : Prop :=
  f 1 = 1 ∧
    ∀ a b : Nat, f (a * b) = f a * f b

theorem completely_multiplicative_is_multiplicative
    [Mul R] [One R]
    {f : ArithFn R}
    (hf : IsCompletelyMultiplicative f) :
    IsMultiplicative f := by
  constructor
  · exact hf.1
  · intro a b _hab
    exact hf.2 a b

theorem multiplicative_mul
    [CommMonoid R]
    {f g : ArithFn R}
    (hf : IsMultiplicative f)
    (hg : IsMultiplicative g) :
    IsMultiplicative fun n => f n * g n := by
  constructor
  · simp [hf.1, hg.1]
  · intro a b hab
    change f (a * b) * g (a * b) =
      (f a * g a) * (f b * g b)
    rw [hf.2 a b hab, hg.2 a b hab]
    simp [mul_left_comm, mul_comm]

end NumberTheory
end Rebuild
end Folder
```
