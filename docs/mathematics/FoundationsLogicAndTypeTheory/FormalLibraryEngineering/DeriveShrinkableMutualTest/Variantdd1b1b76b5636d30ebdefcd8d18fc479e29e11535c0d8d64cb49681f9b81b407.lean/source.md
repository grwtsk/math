# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveShrinkableMutualTest.Variantdd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b3431d05c939a5640983f4cc0590a254b5f0848` · SHA-256 `dd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Plausible

open Plausible

namespace ShrinkableMutualTests

-- Mutually recursive types
mutual
  inductive Even where
    | zero : Even
    | succOdd : Odd → Even

  inductive Odd where
    | succEven : Even → Odd
end

deriving instance Repr, Shrinkable for Even, Odd

-- `deriving instance ... for` on a non-mutual recursive type
inductive Expr where
  | Lit : Nat → Expr
  | Add : Expr → Expr → Expr
  | Neg : Expr → Expr
  deriving Repr

deriving instance Shrinkable for Expr

/-- info: [] -/
#guard_msgs in
#eval Shrinkable.shrink (Even.succOdd (Odd.succEven Even.zero))

/--
info: [ShrinkableMutualTests.Expr.Lit 3,
 ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 1),
 ShrinkableMutualTests.Expr.Add
   (ShrinkableMutualTests.Expr.Lit 1)
   (ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 1)),
 ShrinkableMutualTests.Expr.Add
   (ShrinkableMutualTests.Expr.Lit 0)
   (ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 1)),
 ShrinkableMutualTests.Expr.Add (ShrinkableMutualTests.Expr.Lit 3) (ShrinkableMutualTests.Expr.Lit 1),
 ShrinkableMutualTests.Expr.Add
   (ShrinkableMutualTests.Expr.Lit 3)
   (ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 0))]
-/
#guard_msgs in
#eval Shrinkable.shrink (Expr.Add (Expr.Lit 3) (Expr.Neg (Expr.Lit 1)))

end ShrinkableMutualTests
```
