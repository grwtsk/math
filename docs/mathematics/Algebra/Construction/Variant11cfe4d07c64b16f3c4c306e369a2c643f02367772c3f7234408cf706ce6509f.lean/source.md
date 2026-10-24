# Complete source: GRWTSK.Algebra.Construction.Variant11cfe4d07c64b16f3c4c306e369a2c643f02367772c3f7234408cf706ce6509f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `151ed25bf4e5697643b40b57a6f0c624d08ebf09` · SHA-256 `11cfe4d07c64b16f3c4c306e369a2c643f02367772c3f7234408cf706ce6509f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Algebra.Rat
import Mathlib.FieldTheory.SplittingField.Construction

universe u v w

open Polynomial

variable {F : Type u} {K : Type v} {L : Type w}

variable [Field K] [Field L] [Field F]

variable (f : K[X])

-- The algebra instance deriving from `K` should be definitionally equal to that
-- deriving from the field structure on `SplittingField f`.
example :
    (AddCommMonoid.toNatModule : Module ℕ (SplittingField f)) =
      @Algebra.toModule _ _ _ _ (SplittingField.instAlgebra f) := by
  with_reducible_and_instances rfl

example :
    (AddCommGroup.toIntModule _ : Module ℤ (SplittingField f)) =
      @Algebra.toModule _ _ _ _ (SplittingField.instAlgebra f) := by
  with_reducible_and_instances rfl

example [CharZero K] : SplittingField.instAlgebra f = DivisionRing.toRatAlgebra :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails

example {q : ℚ[X]} : Ring.toIntAlgebra (SplittingField q) = SplittingField.instAlgebra q :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails
```
