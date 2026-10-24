# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Carrier.Variant5938ef015f19152fda9b70c3bae92a7f1b5d6eb734b89bc39d41043bb506981f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a64f2f9182c4ca232f708b7a20d35263484a1b9` · SHA-256 `5938ef015f19152fda9b70c3bae92a7f1b5d6eb734b89bc39d41043bb506981f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Bool.Basic

/-!
# Propositional formula carrier

The `ideas.md` formula neighborhood has no matching elementary carrier in
Mathlib.  This is the free finite propositional syntax over an atom type.
Evaluation and semantic relations remain separate leaves.
-/

namespace Mathematics.Boolean

universe u

/-- A Boolean valuation assigns one truth value to every atom. -/
abbrev Valuation (α : Type u) := α → Bool

/-- Free finite propositional formulas over atoms of type `α`. -/
inductive Formula (α : Type u) : Type u where
  | var : α → Formula α
  | falsum : Formula α
  | truth : Formula α
  | neg : Formula α → Formula α
  | conj : Formula α → Formula α → Formula α
  | disj : Formula α → Formula α → Formula α
  | impl : Formula α → Formula α → Formula α
  | eqv : Formula α → Formula α → Formula α
  deriving Repr, DecidableEq

namespace Formula

variable {α : Type u}

/-- Embed one Boolean constant into propositional syntax. -/
def const : Bool → Formula α
  | false => .falsum
  | true => .truth

end Formula

end Mathematics.Boolean
```
