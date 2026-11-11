# GRWTSK.SpecialFunctions.ComplexGammaGrowth.gamma_integrand_le_envelope

Local attribution: grwtsk contributors. Date: 2026-11-11. Local license: MIT.
SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. This is an individual source-bound adaptation/local-consequence record,
not a new numbered-paper formalization or frontier claim ID. Coordination: math#1801.

Source: [maintained module](../ComplexGammaGrowth.lean); Git blob `a0cdbf9175ed8956f6001e60c466ab2e12d58e3b`;
SHA-256 `bdaf7260af615b92a6238db37e36f23c97b65ec0fc98e81c9bbf401db7ebcb9d`. Namespace `GRWTSK.SpecialFunctions.ComplexGammaGrowth`.
Exact statement (proof body in the maintained source):

```lean
theorem gamma_integrand_le_envelope {sigma R t : ℝ}
    (hsigma : 1 ≤ sigma) (hsigmaR : sigma ≤ R) (ht : 0 < t) :
    Real.exp (-t) * t ^ (sigma - 1) ≤
      Real.exp (R * Real.log (2 * R)) * Real.exp (-(1 / 2 : ℝ) * t)
```

Argument: Use a=sigma-1, the preceding logarithmic bound, the positive-base real power formula, and monotonicity of exp. The residual factor is exp(-t/2), uniformly over the entire positive half-line.

Consumer/source return: norm_Gamma_le_envelope. The [shared analytical argument](README.md)
gives the complete domains, source identities, normalization, dependency comparisons,
all-height obligations and hostile checks. The same-commit local dependencies are
identified in the maintained module; older imported candidates are not revalidated.

Pinned primary correspondence (Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`):

David Loeffler: [Mathlib/Analysis/SpecialFunctions/Gamma/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Basic.lean), `Complex.Gamma_eq_integral; Complex.GammaIntegral; Complex.GammaIntegral_convergent`; Git blob `8aea69baf716966861315823d437f041abc7b9a4`. Apache-2.0.

Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne, Sébastien Gouëzel, Rémy Degenne and David Loeffler: [Mathlib/Analysis/SpecialFunctions/Pow/Real.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Pow/Real.lean), `Real.rpow_def_of_pos; Complex.norm_cpow_eq_rpow_re_of_pos`; Git blob `6e3f62550a758e94a1d513133cd744406b319e41`. Apache-2.0.

Elaboration/build, fresh kernel replay, transitive axiom audit and independent
review: NOT_RUN. Direct-source text integrity and publication are separate evidence.
No full-circle supplier, arithmetic explicit formula, positivity or RH/GRH proof
is asserted. Novelty remains UNASSESSED; the dated prior-art comparison is shared.

Unexecuted axiom query, required after successful elaboration:

```lean
#print axioms GRWTSK.SpecialFunctions.ComplexGammaGrowth.gamma_integrand_le_envelope
```
