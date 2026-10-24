# Complete source: GRWTSK.Algebra.Construction.Variante2aa1accc7e76cf600a94aa9b11862293d6d1bf270577d542ed6761edd9459bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3ec562788ada6a2e4f485a16e407472ae34f1a3` · SHA-256 `e2aa1accc7e76cf600a94aa9b11862293d6d1bf270577d542ed6761edd9459bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
    (AddCommGroup.toNatModule : Module ℕ (SplittingField f)) =
      @Algebra.toModule _ _ _ _ (SplittingField.algebra' f) := by
  with_reducible_and_instances rfl

example :
    (AddCommGroup.toIntModule _ : Module ℤ (SplittingField f)) =
      @Algebra.toModule _ _ _ _ (SplittingField.algebra' f) := by
  with_reducible_and_instances rfl

example [CharZero K] : SplittingField.algebra' f = DivisionRing.toRatAlgebra :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails

example {q : ℚ[X]} : Ring.toIntAlgebra (SplittingField q) = SplittingField.algebra' q :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails
```
