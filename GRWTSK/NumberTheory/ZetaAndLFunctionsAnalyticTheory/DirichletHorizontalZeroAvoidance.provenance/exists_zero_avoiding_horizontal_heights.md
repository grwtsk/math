# `exists_zero_avoiding_horizontal_heights`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Local file: [../DirichletHorizontalZeroAvoidance.lean](../DirichletHorizontalZeroAvoidance.lean).
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.exists_zero_avoiding_horizontal_heights`.
Kind: theorem source candidate.
Inspection head: `1f388b830a790ee8ebbcdc1459f39abce6237591`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact statement

The source section supplies `{N : ℕ} [NeZero N]` to source-specific declarations.

```lean
theorem exists_zero_avoiding_horizontal_heights
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (rho : CriticalStripZero chi) (sigma epsilon : ℝ),
        epsilon = -1 ∨ epsilon = 1 →
        horizontalSeparationRadius chi n ≤
          ‖(sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ) - rho.1‖) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        DirichletCharacter.completedLFunction chi
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0)
```

## Argument and source correspondence

Choose a height in each unit window from the proved source selection. Lift the absolute-ordinate gap to both full complex lines, prove the points nonreal, and invoke the actual completed nonvanishing theorem.

Primary provenance: Local composition of the substantive finite-grid/source-count proofs and the exact nonvanishing/functional-equation primary inputs listed above. [DirichletZeroMultiplicity.lean](https://github.com/grwtsk/math/blob/1f388b830a790ee8ebbcdc1459f39abce6237591/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletZeroMultiplicity.lean) owns the unchanged zero subtype and analytic multiplicity data.

Retained hypotheses and quantifiers: For every primitive character of positive level, one common sequence works for every natural n, every original zero, every real sigma, and both signs. The sequence does not depend on a test function. No simplicity or assumed ordinate spacing.

Mathematical consumer and return: Supplies legitimate finite-rectangle boundary heights. The WRITTEN disk argument in README Sections 3--5 additionally proves magnitude control; that analytic argument is not part of this Lean statement.

The complete analytical argument, source normalizations, hostile checks,
explicit source-dependent constants, and formal limitations are in [README.md](README.md).
The prior inverse-character arithmetic correction and both zeta pole orientations
are unchanged. No root import, dependency pin, arithmetic definition, or target is replaced.

## Evidence and obligations

SOURCE_PROOF_CANDIDATE. Elaboration/build, fresh kernel replay, transitive axiom
audit, repository-wide verification, independent review: NOT_RUN.
Novelty: UNASSESSED. No new frontier claim ID. Existing dependencies retain their
previous evidence and any known failures. Source-text/hash checks do not establish
parsing, elaboration, theorem acceptance, or a transitive axiom report.

Unexecuted source-bound query after successful elaboration:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.exists_zero_avoiding_horizontal_heights
```

No axiom-output claim is made. The current canonical proof-automation skill was
inaccessible; dependent execution was stopped. Ordinary source publication and
its readback receipt are recorded in math#1801, not treated as verification.
