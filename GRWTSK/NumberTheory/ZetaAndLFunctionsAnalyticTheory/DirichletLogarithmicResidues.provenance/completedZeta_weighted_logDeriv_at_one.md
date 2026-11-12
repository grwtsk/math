# GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_weighted_logDeriv_at_one

Local attribution: grwtsk contributors. Date: 2026-11-11.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, fresh kernel replay,
transitive axiom audit, and independent review: NOT_RUN. Imported statuses unchanged.
Math base `461230660ec980d4be6a0e00927d658d237e6866`; Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment 6811529981.

## Source identity and exact statement

Maintained file: [../DirichletLogarithmicResidues.lean](../DirichletLogarithmicResidues.lean).
Git blob `030b82615f57a78889166f708867ded84fae96d0`; SHA-256 `3b20925f2e94a6d7e6f597b735f35753dd9c9aa801d56fa173e22c7b12c7bad0`.

```lean
theorem completedZeta_weighted_logDeriv_at_one (W : ℂ → ℂ) (hW : ContinuousAt W 1) :
    Tendsto (fun s => (s - 1) * (W s * logDeriv completedRiemannZeta s))
      (𝓝[≠] (1 : ℂ)) (𝓝 (-W 1))
```

## Primary correspondence and consumer

Signed order is -1 even though the leading function coefficient is +1. The weighted logarithmic coefficient is -W(1), not +W(1). No pole-neutral restriction.

David Loeffler, [Mathlib/NumberTheory/LSeries/RiemannZeta.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/RiemannZeta.lean), `completedRiemannZeta_eq`, `differentiable_completedZeta₀`, and `completedRiemannZeta_residue_one`; blob `b382f3d6c15762c9db38ddea5e1b572455631f27`. Apache-2.0. The executable theorem `completedRiemannZeta_eq`, not the introductory prose shorthand, fixes the two polar signs.

Chris Birkbeck, [Mathlib/Analysis/Calculus/LogDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/LogDeriv.lean), `logDeriv_apply`, `logDeriv_congr_nhdsNE`, `logDeriv_fun_mul`, `logDeriv_fun_zpow`, and the comparison theorem `AnalyticAt.tendsto_mul_logDeriv_simple_zero`; blob `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`. Apache-2.0.

Complete argument and falsification scope: [README.md](README.md).
This is a local consequence/adaptation, not a claim of novel paper formalization.
No transitive axiom report exists. Proposed query below is UNEXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_weighted_logDeriv_at_one
```
