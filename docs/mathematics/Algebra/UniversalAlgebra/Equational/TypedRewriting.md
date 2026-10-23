# Typed natural-number and finite-list rewriting

[Lean source](../../../../../GRWTSK/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean)

`Expr .nat` denotes natural-number expressions with variables, numerals,
addition and multiplication. `Expr .list` denotes lists over an arbitrary fixed
type, with variables, the empty list, append and reverse. `eval` interprets these
two sorts using separate environments. `Step` includes the named algebraic
laws, congruence in each operand, symmetry, and finite transitive composition.
`sound` proves that each such derivation preserves its interpreted value.

This extends the existing constructive finite-list material in
`GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean`.
The executable Noeaaeue compiler performs bounded equality search over these
closed operations, checks its rewrite path independently, and emits explicit
Lean equality proofs using the corresponding upstream `Nat` and `List` laws.
It does not accept raw Lean, infer additional hypotheses, or translate prose.

Append preserves order. `append_does_not_commute` records a concrete obstruction
to treating lists as multisets. Natural-number laws do not supply subtraction,
division, negative coefficients, arbitrary rings, or a complete polynomial solver.
Search exhaustion means open, not false. The list reverse laws use upstream
`propext`; actual axiom reports remain part of separate native replay receipts.

This is a soundness theorem for the stated calculus, not an implementation
refinement theorem for Python search, serialization, hashing, or rendering.
Candidates, runtime queues and replay receipts remain Noeaaeue artifacts.
