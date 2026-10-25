# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semantics.Variantc2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9b8c830b789133d11d71c225534635fe8fa39f2` · SHA-256 `c2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Boolean.Formula.Evaluation

/-!
# Propositional semantic relations

These predicates are transparent definitions over executable evaluation.
They carry no theorem authority by themselves.
-/

namespace Mathematics.Boolean.Formula

universe u

variable {α : Type u}

/-- Satisfaction under one valuation. -/
def Satisfies (ν : Valuation α) (p : Formula α) : Prop :=
  eval ν p = true

/-- Truth under every valuation. -/
def Valid (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true

/-- Truth under at least one valuation. -/
def Satisfiable (p : Formula α) : Prop :=
  ∃ ν : Valuation α, eval ν p = true

/-- Falsity under every valuation. -/
def Unsatisfiable (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = false

/-- Semantic entailment. -/
def Entails (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true → eval ν q = true

/-- Semantic equivalence. -/
def Equivalent (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = eval ν q

end Mathematics.Boolean.Formula
```
