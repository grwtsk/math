# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Compile.Variant6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37b56fa746c24908de3bebfd078d682366e1640c` · SHA-256 `6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Tree.Eval
import Boolean.Formula.Eval

namespace Boolean

universe u

/-- Forget NAND as a primitive and compile a Boolean tree into `Formula`. -/
def Tree.toFormula : Tree α → Formula α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => .neg (Tree.toFormula p)
  | .conj p q => .conj (Tree.toFormula p) (Tree.toFormula q)
  | .disj p q => .disj (Tree.toFormula p) (Tree.toFormula q)
  | .impl p q => .impl (Tree.toFormula p) (Tree.toFormula q)
  | .eqv p q => .eqv (Tree.toFormula p) (Tree.toFormula q)
  | .nand p q => .neg (.conj (Tree.toFormula p) (Tree.toFormula q))

@[simp] theorem Tree.eval_toFormula
    (ν : Valuation α)
    (p : Tree α) :
    Formula.eval ν (Tree.toFormula p) = Tree.eval ν p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [Tree.toFormula, Tree.eval, ih]
  | conj p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | disj p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | impl p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | eqv p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | nand p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]

end Boolean
```
