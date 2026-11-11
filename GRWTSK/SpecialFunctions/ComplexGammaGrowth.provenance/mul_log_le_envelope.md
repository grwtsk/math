# GRWTSK.SpecialFunctions.ComplexGammaGrowth.mul_log_le_envelope

Local attribution: grwtsk contributors. Date: 2026-11-11. Local license: MIT.
SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. This is an individual source-bound adaptation/local-consequence record,
not a new numbered-paper formalization or frontier claim ID. Coordination: math#1801.

Source: [maintained module](../ComplexGammaGrowth.lean); Git blob `a0cdbf9175ed8956f6001e60c466ab2e12d58e3b`;
SHA-256 `bdaf7260af615b92a6238db37e36f23c97b65ec0fc98e81c9bbf401db7ebcb9d`. Namespace `GRWTSK.SpecialFunctions.ComplexGammaGrowth`.
Exact statement (proof body in the maintained source):

```lean
theorem mul_log_le_envelope {a R t : ℝ} (ha : 0 ≤ a) (haR : a ≤ R)
    (hR : 1 ≤ R) (ht : 0 < t) :
    a * Real.log t ≤ R * Real.log (2 * R) + t / 2
```

Argument: Split t<=1 from t>1. In the first region a*log(t)<=0. In the second, a<=R and log(t)>=0 permit replacement by R; log(t/(2R))<=t/(2R)-1 then gives the displayed bound. Positivity precedes every division.

Consumer/source return: gamma_integrand_le_envelope. The [shared analytical argument](README.md)
gives the complete domains, source identities, normalization, dependency comparisons,
all-height obligations and hostile checks. The same-commit local dependencies are
identified in the maintained module; older imported candidates are not revalidated.

Pinned primary correspondence (Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`):

Elementary real logarithm/exponential order laws, used through the pinned Mathlib imports; no external paper theorem is asserted formalized.

Elaboration/build, fresh kernel replay, transitive axiom audit and independent
review: NOT_RUN. Direct-source text integrity and publication are separate evidence.
No full-circle supplier, arithmetic explicit formula, positivity or RH/GRH proof
is asserted. Novelty remains UNASSESSED; the dated prior-art comparison is shared.

Unexecuted axiom query, required after successful elaboration:

```lean
#print axioms GRWTSK.SpecialFunctions.ComplexGammaGrowth.mul_log_le_envelope
```
