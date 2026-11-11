# GRWTSK.SpecialFunctions.ComplexGammaGrowth.norm_ofReal_cpow_le_exp_abs

Local attribution: grwtsk contributors. Date: 2026-11-11. Local license: MIT.
SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. This is an individual source-bound adaptation/local-consequence record,
not a new numbered-paper formalization or frontier claim ID. Coordination: math#1801.

Source: [maintained module](../ComplexGammaGrowth.lean); Git blob `a0cdbf9175ed8956f6001e60c466ab2e12d58e3b`;
SHA-256 `bdaf7260af615b92a6238db37e36f23c97b65ec0fc98e81c9bbf401db7ebcb9d`. Namespace `GRWTSK.SpecialFunctions.ComplexGammaGrowth`.
Exact statement (proof body in the maintained source):

```lean
theorem norm_ofReal_cpow_le_exp_abs {x R : ℝ} (hx : 0 < x) {z : ℂ}
    (hz : |z.re| ≤ R) :
    ‖(x : ℂ) ^ z‖ ≤ Real.exp (R * |Real.log x|)
```

Argument: For a positive real base, the principal complex-power norm is exp(log(x)*Re(z)). Bound that exponent by abs(log(x))*abs(Re(z)) and use the stated real-part bound.

Consumer/source return: norm_GammaC_le_envelope and norm_poleClearedLFunction_one_sub_le. The [shared analytical argument](README.md)
gives the complete domains, source identities, normalization, dependency comparisons,
all-height obligations and hostile checks. The same-commit local dependencies are
identified in the maintained module; older imported candidates are not revalidated.

Pinned primary correspondence (Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`):

Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne, Sébastien Gouëzel, Rémy Degenne and David Loeffler: [Mathlib/Analysis/SpecialFunctions/Pow/Real.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Pow/Real.lean), `Real.rpow_def_of_pos; Complex.norm_cpow_eq_rpow_re_of_pos`; Git blob `6e3f62550a758e94a1d513133cd744406b319e41`. Apache-2.0.

Elaboration/build, fresh kernel replay, transitive axiom audit and independent
review: NOT_RUN. Direct-source text integrity and publication are separate evidence.
No full-circle supplier, arithmetic explicit formula, positivity or RH/GRH proof
is asserted. Novelty remains UNASSESSED; the dated prior-art comparison is shared.

Unexecuted axiom query, required after successful elaboration:

```lean
#print axioms GRWTSK.SpecialFunctions.ComplexGammaGrowth.norm_ofReal_cpow_le_exp_abs
```
