# `GRWTSK.FiniteFields.Binary128.fieldTrace_frobenius`

Local attribution: grwtsk contributors.

## Exact mathematical source

- Local file: [Binary128Characters.lean](../Binary128Characters.lean).
- Local declaration: `GRWTSK.FiniteFields.Binary128.fieldTrace_frobenius`.
- Upstream repository: `leanprover-community/mathlib4`.
- Revision: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- [Exact source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/FieldTheory/Finite/Trace.lean).
- Upstream declaration: `FiniteField.algebraMap_trace_eq_sum_pow`.
- Attribution: Michael Stoll and Mathlib contributors, as recorded by the
  upstream finite-field trace development and its history.
- Role: concrete specialization of an imported theorem, not an independently
  derived trace formula or a new paper formalization.

## Statement and discharged hypotheses

The local theorem proves that the prime-field embedding of the actual algebra
trace equals `∑ i ∈ Finset.range 128, x ^ (2 ^ i)` for the quotient field by
`X^128 + X^7 + X^2 + X + 1` over `ZMod 2`.

The field hypothesis follows from the existing `irreducible_modulus` theorem.
Finite dimension follows from its power basis. `field_finrank` identifies the
dimension as 128, and the prime field has cardinality two. These facts discharge
the imported theorem's field, finite extension, degree, and cardinality inputs.
The resulting trace is used in the real-valued sign character and its
word-decoder feature contract.

## Actual evidence and boundary

Lean `4.34.1` elaboration/typechecking passed. The transitive axiom audit found
exactly `propext`, `Classical.choice`, and `Quot.sound`.
Fresh Lean kernel replay with `leanchecker --fresh` passed for the complete local
module and its imported constants, including the proved binary quotient and
word arithmetic. This uses Lean's own kernel. Independent external kernel
checking: `NOT_RUN`. AI-assisted source review by the implementation
coordinator and a separate mathematical reviewer completed with no blocking
findings. Independent external mathematical review is `NOT_RUN`; this review
does not establish independent formal foundations.

The 128-term equality specifies the mathematics; an executable repeated-squaring
trace routine and its actual Rust execution refinement remain separate work.
No whole-field enumeration or analytic RH/GRH implication is asserted.
