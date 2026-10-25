# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalize.Variant69ef6ef1b924a6738f2753825f1eba816fe3cd7fa87af601e5530a13821de49f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c126c6e57a263eb10bad715ca1244c8a25574db1` · SHA-256 `69ef6ef1b924a6738f2753825f1eba816fe3cd7fa87af601e5530a13821de49f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Syntax.Basic

namespace Surface.Boolean

universe u

/-!
Structural negation-normalization for Boolean trees.

`FormulaTree.nnf` removes implication/equivalence/NAND and pushes negation to
variables and constants.  The auxiliary `FormulaTree.negNnf` is structurally
recursive on the same tree, avoiding a fuel argument.
-/

mutual

def FormulaTree.nnf : FormulaTree α → FormulaTree α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => FormulaTree.negNnf p
  | .conj p q => .conj (FormulaTree.nnf p) (FormulaTree.nnf q)
  | .disj p q => .disj (FormulaTree.nnf p) (FormulaTree.nnf q)
  | .impl p q => .disj (FormulaTree.negNnf p) (FormulaTree.nnf q)
  | .eqv p q =>
      .conj
        (.disj (FormulaTree.negNnf p) (FormulaTree.nnf q))
        (.disj (FormulaTree.negNnf q) (FormulaTree.nnf p))
  | .nand p q => .disj (FormulaTree.negNnf p) (FormulaTree.negNnf q)

def FormulaTree.negNnf : FormulaTree α → FormulaTree α
  | .var a => .neg (.var a)
  | .falsum => .truth
  | .truth => .falsum
  | .neg p => FormulaTree.nnf p
  | .conj p q => .disj (FormulaTree.negNnf p) (FormulaTree.negNnf q)
  | .disj p q => .conj (FormulaTree.negNnf p) (FormulaTree.negNnf q)
  | .impl p q => .conj (FormulaTree.nnf p) (FormulaTree.negNnf q)
  | .eqv p q =>
      .disj
        (.conj (FormulaTree.nnf p) (FormulaTree.negNnf q))
        (.conj (FormulaTree.negNnf p) (FormulaTree.nnf q))
  | .nand p q => .conj (FormulaTree.nnf p) (FormulaTree.nnf q)

end

end Surface.Boolean
```
