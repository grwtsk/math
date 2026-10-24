# Complete source: GRWTSK.Algebra.AlgebraicClosure.Variant26966266f3ab59c79332dc1cbbb2a1cf002c3a3dfc77769d739bc148e47c058d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dffc922831a81671cee77c8cfccc3c216a741e3d` · SHA-256 `26966266f3ab59c79332dc1cbbb2a1cf002c3a3dfc77769d739bc148e47c058d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Algebra.Rat
import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure

variable {k : Type*} [Field k]

example : (AddCommGroup.toNatModule : Module ℕ (AlgebraicClosure k)) =
      @Algebra.toModule _ _ _ _ (AlgebraicClosure.instAlgebra k) := by
  with_reducible_and_instances rfl

example : (AddCommGroup.toIntModule _ : Module ℤ (AlgebraicClosure k)) =
      @Algebra.toModule _ _ _ _ (AlgebraicClosure.instAlgebra k) := by
  with_reducible_and_instances rfl

example [CharZero k] : AlgebraicClosure.instAlgebra k = DivisionRing.toRatAlgebra :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails

example : Ring.toIntAlgebra (AlgebraicClosure ℚ) = AlgebraicClosure.instAlgebra ℚ :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails
```
