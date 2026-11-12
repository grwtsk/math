# `exists_zeta_zero_avoiding_horizontal_heights`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Local file: [../DirichletHorizontalZeroAvoidance.lean](../DirichletHorizontalZeroAvoidance.lean).
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.exists_zeta_zero_avoiding_horizontal_heights`.
Kind: theorem source candidate.
Inspection head: `1f388b830a790ee8ebbcdc1459f39abce6237591`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact statement

The source section supplies `{N : ℕ} [NeZero N]` to source-specific declarations.

```lean
theorem exists_zeta_zero_avoiding_horizontal_heights :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (rho : CriticalStripZero (1 : DirichletCharacter ℂ 1)) (sigma epsilon : ℝ),
        epsilon = -1 ∨ epsilon = 1 →
        horizontalSeparationRadius (1 : DirichletCharacter ℂ 1) n ≤
          ‖(sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ) - rho.1‖) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        completedRiemannZeta ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0)
```

## Argument and source correspondence

Specialize the source theorem to the unique conductor-one character and rewrite the completion literally as completedRiemannZeta.

Primary provenance: David Loeffler and Michael Stoll, [DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `completedLFunction_modOne_eq`; Mathlib DirichletCharacter.Basic `isPrimitive_one_level_one`, all at d13f23b723b8a846827a245b89c10fc7d3f11612 (Apache-2.0). Local direct source specialization, not a surrogate zeta model.

Retained hypotheses and quantifiers: No extra assumption: every height index, every original conductor-one strip zero, every real coordinate, and both signs. The real poles 0 and 1 lie off these selected lines.

Mathematical consumer and return: Makes RH-for-zeta explicit in the contour argument while keeping both pole contributions in the finite and infinite arithmetic identities. This is nonvanishing on selected boundaries, not RH.

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
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.exists_zeta_zero_avoiding_horizontal_heights
```

No axiom-output claim is made. The current canonical proof-automation skill was
inaccessible; dependent execution was stopped. Ordinary source publication and
its readback receipt are recorded in math#1801, not treated as verification.
