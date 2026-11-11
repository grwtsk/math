# GRWTSK.SpecialFunctions.ComplexGammaGrowth.norm_cos_sin_le_exp_im

Local attribution: grwtsk contributors. Date: 2026-11-11. Local license: MIT.
SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. This is an individual source-bound adaptation/local-consequence record,
not a new numbered-paper formalization or frontier claim ID. Coordination: math#1801.

Source: [maintained module](../ComplexGammaGrowth.lean); Git blob `a0cdbf9175ed8956f6001e60c466ab2e12d58e3b`;
SHA-256 `bdaf7260af615b92a6238db37e36f23c97b65ec0fc98e81c9bbf401db7ebcb9d`. Namespace `GRWTSK.SpecialFunctions.ComplexGammaGrowth`.
Exact statement (proof body in the maintained source):

```lean
theorem norm_cos_sin_le_exp_im (z : ℂ) :
    ‖Complex.cos z‖ ≤ Real.exp |z.im| ∧
      ‖Complex.sin z‖ ≤ Real.exp |z.im|
```

Argument: Expand cos and sin using complex exponentials. Both exponential norms are at most exp(abs(Im(z))). The triangle inequality and division by the positive real constant 2 give both estimates.

Consumer/source return: norm_dirichletParityFactor_le. The [shared analytical argument](README.md)
gives the complete domains, source identities, normalization, dependency comparisons,
all-height obligations and hostile checks. The same-commit local dependencies are
identified in the maintained module; older imported candidates are not revalidated.

Pinned primary correspondence (Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`):

Chris Hughes and Abhimanyu Pallavi Sudhir: [Mathlib/Analysis/Complex/Trigonometric.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Trigonometric.lean), `Complex.cos; Complex.sin, exponential definitions`; Git blob `d2ba6ae2970b5c003f4abb20b7b7d536b9f1297c`. Apache-2.0.

Elaboration/build, fresh kernel replay, transitive axiom audit and independent
review: NOT_RUN. Direct-source text integrity and publication are separate evidence.
No full-circle supplier, arithmetic explicit formula, positivity or RH/GRH proof
is asserted. Novelty remains UNASSESSED; the dated prior-art comparison is shared.

Unexecuted axiom query, required after successful elaboration:

```lean
#print axioms GRWTSK.SpecialFunctions.ComplexGammaGrowth.norm_cos_sin_le_exp_im
```
