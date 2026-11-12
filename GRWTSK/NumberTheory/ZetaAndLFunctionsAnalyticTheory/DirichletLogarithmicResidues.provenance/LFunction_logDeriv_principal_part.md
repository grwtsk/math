# GRWTSK.NumberTheory.WeilNegativeWitness.LFunction_logDeriv_principal_part

Local attribution: grwtsk contributors. Date: 2026-11-11.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, fresh kernel replay,
transitive axiom audit, and independent review: NOT_RUN. Imported statuses unchanged.
Math base `461230660ec980d4be6a0e00927d658d237e6866`; Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment 6811529981.

## Source identity and exact statement

Maintained file: [../DirichletLogarithmicResidues.lean](../DirichletLogarithmicResidues.lean).
Git blob `030b82615f57a78889166f708867ded84fae96d0`; SHA-256 `3b20925f2e94a6d7e6f597b735f35753dd9c9aa801d56fa173e22c7b12c7bad0`.

```lean
theorem LFunction_logDeriv_principal_part (chi : DirichletCharacter ℂ N)
    (rho : CriticalStripZero chi) :
    ∃ R : ℂ → ℂ, AnalyticAt ℂ R rho.1 ∧
      logDeriv (DirichletCharacter.LFunction chi) =ᶠ[𝓝[≠] rho.1]
        fun s => (zeroMultiplicity chi rho : ℂ) / (s - rho.1) + R s
```

## Primary correspondence and consumer

Applies the signed integer core to the already-proved finite analytic order of the original continued source. The theorem does not assume simplicity. Its local analytic remainder is not globally discarded.

grwtsk contributors, [DirichletZeroMultiplicity.lean](https://github.com/grwtsk/math/blob/461230660ec980d4be6a0e00927d658d237e6866/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletZeroMultiplicity.lean), `CriticalStripZero`, `zeroMultiplicity`, `zeroMultiplicity_factorization`, `zeroMultiplicity_pos`, and `analyticOrderAt_LFunction_ne_top`; blob `ef9d9f861731f11e446dd59bd60c8896b1e5462d`. MIT. This is a local source prerequisite, NOT external novelty evidence. Its formal checks remain NOT_RUN.

Chris Birkbeck, [Mathlib/Analysis/Calculus/LogDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/LogDeriv.lean), `logDeriv_apply`, `logDeriv_congr_nhdsNE`, `logDeriv_fun_mul`, `logDeriv_fun_zpow`, and the comparison theorem `AnalyticAt.tendsto_mul_logDeriv_simple_zero`; blob `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`. Apache-2.0.

Complete argument and falsification scope: [README.md](README.md).
This is a local consequence/adaptation, not a claim of novel paper formalization.
No transitive axiom report exists. Proposed query below is UNEXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.LFunction_logDeriv_principal_part
```
