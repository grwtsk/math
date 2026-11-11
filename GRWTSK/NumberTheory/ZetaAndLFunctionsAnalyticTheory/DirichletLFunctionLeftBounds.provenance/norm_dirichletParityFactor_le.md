# GRWTSK.NumberTheory.WeilNegativeWitness.norm_dirichletParityFactor_le

Local attribution: grwtsk contributors. Date: 2026-11-11. Local license: MIT.
SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. This is an individual source-bound adaptation/local-consequence record,
not a new numbered-paper formalization or frontier claim ID. Coordination: math#1801.

Source: [maintained module](../DirichletLFunctionLeftBounds.lean); Git blob `2c47565053a5f684e543f03da4d3f7181b2d0493`;
SHA-256 `3a1f3ec4f7d9d61733406b1b8e8c7b3be394e1a067d081ef620ab32b91a8f80f`. Namespace `GRWTSK.NumberTheory.WeilNegativeWitness`.
Ambient context: `variable {N : ℕ} [NeZero N]`.

Exact statement (proof body in the maintained source):

```lean
theorem norm_dirichletParityFactor_le (chi : DirichletCharacter ℂ N) (w : ℂ) :
    ‖dirichletParityFactor chi w‖ ≤ Real.exp (Real.pi * |w.im| / 2)
```

Argument: Apply the complex trigonometric envelope at pi*w/2, retain its imaginary coordinate, and select the actual parity branch.

Consumer/source return: norm_poleClearedLFunction_one_sub_le. The [shared analytical argument](README.md)
gives the complete domains, source identities, normalization, dependency comparisons,
all-height obligations and hostile checks. The same-commit local dependencies are
identified in the maintained module; older imported candidates are not revalidated.

Pinned primary correspondence (Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`):

Chris Hughes and Abhimanyu Pallavi Sudhir: [Mathlib/Analysis/Complex/Trigonometric.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Trigonometric.lean), `Complex.cos; Complex.sin, exponential definitions`; Git blob `d2ba6ae2970b5c003f4abb20b7b7d536b9f1297c`. Apache-2.0.

Ashvni Narayanan, Moritz Firsching and Michael Stoll: [Mathlib/NumberTheory/DirichletCharacter/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/DirichletCharacter/Basic.lean), `Even; Odd; isPrimitive_one_level_one`; Git blob `4569ebb8e61f683a9c89877f0cda4d3add4d766d`. Apache-2.0.

Elaboration/build, fresh kernel replay, transitive axiom audit and independent
review: NOT_RUN. Direct-source text integrity and publication are separate evidence.
No full-circle supplier, arithmetic explicit formula, positivity or RH/GRH proof
is asserted. Novelty remains UNASSESSED; the dated prior-art comparison is shared.

Unexecuted axiom query, required after successful elaboration:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.norm_dirichletParityFactor_le
```
