# exists_horizontal_completedLFunction_logDeriv_bound

Attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.exists_horizontal_completedLFunction_logDeriv_bound`.
Maintained source: [../DirichletCompletedHorizontalLogDerivative.lean](../DirichletCompletedHorizontalLogDerivative.lean).
Owning layer: mathematical source; no new frontier claim ID is assigned.
Scope: math#1801, comment 6814543294.
Inspected math main: `5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact source statement

Ambient source context: `variable {N : ℕ} [NeZero N]`; the level-one zeta theorem is closed.

The following is the verbatim declaration header, with the proof body omitted.

```lean
theorem exists_horizontal_completedLFunction_logDeriv_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        DirichletCharacter.completedLFunction chi
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) ∧
      (∀ n (sigma epsilon : ℝ), -1 ≤ sigma → sigma ≤ 2 →
        epsilon = -1 ∨ epsilon = 1 →
        ‖logDeriv (DirichletCharacter.completedLFunction chi)
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ))‖ ≤
            (horizontalLogDerivativeConstant chi + 1 + gammaRLogDerivativeConstant) *
              (1 + T n) ^ 4)
```

## Individual source correspondence

Canonical DirichletHorizontalLogDerivative.exists_horizontal_LFunction_logDeriv_bound, blob df57cc0537745d34b8a6c5451eeb636d829d108d, plus the two actual gamma/product theorems in this module. This is a local analytic consequence, not a redefinition of the arithmetic source or a new paper theorem.

Canonical local source is attributed to grwtsk contributors (MIT). Mathlib
retains its named upstream authors and Apache-2.0 license. Classical reference
locators and the full analytical argument are in [README.md](README.md).
Classification: local consequence or definition built from the named primary
formal API; not a claim of independent paper-to-kernel verification or novelty.

Direct source reference: [maintained source at the recorded revision](https://github.com/grwtsk/math/blob/5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletHorizontalLogDerivative.lean).

## Hypotheses, normalization and source return

Positive level and chi.IsPrimitive are the only arithmetic premises. All n, all sigma in [-1,2], and both edge signs are retained. The same sequence also gives completed nonvanishing for every real sigma. No Gamma/growth/separation/derivative supplier is a premise.

Supplies the completed-source magnitude input for horizontal-edge estimates in the finite-to-infinite explicit-formula route. Finite contour/residue, actual integral decay, inversion and arithmetic evaluation remain unproved here; no sign or RH/GRH conclusion follows.

The complete primary argument, hostile checks and alternative route are in the
source-local README. This record does not assert that a second script constitutes
an independent proof. Mathematical comparison and formal execution are separate.

## Evidence and open obligations

SOURCE_PROOF_CANDIDATE. Novelty UNASSESSED. Elaboration, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN. Imported candidates
retain their known evidence and failures. There is no passing Lean receipt.
The exact build and declaration-level transitive axiom queries are obligations,
not executed commands. The canonical proof-execution skill was inaccessible at
Noe revision `a5ef0a774b3e5decabc2ed2885108805ea7022bc`; no dependent automation ran.
Source/publication identities and observations are recorded in math#1801 after
readback. Neither publication nor this record proves an RH/GRH conclusion.
