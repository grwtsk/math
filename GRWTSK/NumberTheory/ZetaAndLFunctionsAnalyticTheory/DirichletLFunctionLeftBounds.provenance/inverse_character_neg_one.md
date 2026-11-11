# GRWTSK.NumberTheory.WeilNegativeWitness.inverse_character_neg_one

Local attribution: grwtsk contributors. Date: 2026-11-11. Local license: MIT.
SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. This is an individual source-bound adaptation/local-consequence record,
not a new numbered-paper formalization or frontier claim ID. Coordination: math#1801.

Source: [maintained module](../DirichletLFunctionLeftBounds.lean); Git blob `2c47565053a5f684e543f03da4d3f7181b2d0493`;
SHA-256 `3a1f3ec4f7d9d61733406b1b8e8c7b3be394e1a067d081ef620ab32b91a8f80f`. Namespace `GRWTSK.NumberTheory.WeilNegativeWitness`.
Ambient context: `variable {N : ℕ} [NeZero N]`.

Exact statement (proof body in the maintained source):

```lean
theorem inverse_character_neg_one (chi : DirichletCharacter ℂ N) :
    chi⁻¹ (-1) = chi (-1)
```

Argument: Multiply the evaluations of chi and its inverse at the unit -1. Their product is 1, and chi(-1)^2=chi(1)=1. Associativity gives equality of the two evaluations, including level one.

Consumer/source return: gammaFactor_inverse_character. The [shared analytical argument](README.md)
gives the complete domains, source identities, normalization, dependency comparisons,
all-height obligations and hostile checks. The same-commit local dependencies are
identified in the maintained module; older imported candidates are not revalidated.

Pinned primary correspondence (Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`):

Ashvni Narayanan, Moritz Firsching and Michael Stoll: [Mathlib/NumberTheory/DirichletCharacter/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/DirichletCharacter/Basic.lean), `Even; Odd; isPrimitive_one_level_one`; Git blob `4569ebb8e61f683a9c89877f0cda4d3add4d766d`. Apache-2.0.

Michael Stoll: [Mathlib/NumberTheory/MulChar/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/MulChar/Basic.lean), `MulChar.mul_apply; MulChar.one_apply; character group structure`; Git blob `c3ea5af7172195c7ca574932089fd7b54dd9571b`. Apache-2.0.

Elaboration/build, fresh kernel replay, transitive axiom audit and independent
review: NOT_RUN. Direct-source text integrity and publication are separate evidence.
No full-circle supplier, arithmetic explicit formula, positivity or RH/GRH proof
is asserted. Novelty remains UNASSESSED; the dated prior-art comparison is shared.

Unexecuted axiom query, required after successful elaboration:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.inverse_character_neg_one
```
