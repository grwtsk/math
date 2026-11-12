# GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_factorization_at_zero

Local attribution: grwtsk contributors. Date: 2026-11-11.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, fresh kernel replay,
transitive axiom audit, and independent review: NOT_RUN. Imported statuses unchanged.
Math base `461230660ec980d4be6a0e00927d658d237e6866`; Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment 6811529981.

## Source identity and exact statement

Maintained file: [../DirichletLogarithmicResidues.lean](../DirichletLogarithmicResidues.lean).
Git blob `030b82615f57a78889166f708867ded84fae96d0`; SHA-256 `3b20925f2e94a6d7e6f597b735f35753dd9c9aa801d56fa173e22c7b12c7bad0`.

```lean
theorem completedZeta_factorization_at_zero :
    ∃ g : ℂ → ℂ, AnalyticAt ℂ g 0 ∧ g 0 = -1 ∧
      completedRiemannZeta =ᶠ[𝓝[≠] (0 : ℂ)] fun s => (s - 0) ^ (-1 : ℤ) * g s
```

## Primary correspondence and consumer

Uses the exact entire pole-subtracted function and BOTH rational polar corrections. The analytic unit is s*Lambda0(s)-1-s/(1-s), with value -1 at 0. Local equality is punctured, with s != 1 also established before field manipulation.

David Loeffler, [Mathlib/NumberTheory/LSeries/RiemannZeta.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/RiemannZeta.lean), `completedRiemannZeta_eq`, `differentiable_completedZeta₀`, and `completedRiemannZeta_residue_one`; blob `b382f3d6c15762c9db38ddea5e1b572455631f27`. Apache-2.0. The executable theorem `completedRiemannZeta_eq`, not the introductory prose shorthand, fixes the two polar signs.

Complete argument and falsification scope: [README.md](README.md).
This is a local consequence/adaptation, not a claim of novel paper formalization.
No transitive axiom report exists. Proposed query below is UNEXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_factorization_at_zero
```
