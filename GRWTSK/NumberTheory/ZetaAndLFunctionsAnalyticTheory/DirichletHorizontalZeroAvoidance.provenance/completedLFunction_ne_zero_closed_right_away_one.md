# `completedLFunction_ne_zero_closed_right_away_one`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Local file: [../DirichletHorizontalZeroAvoidance.lean](../DirichletHorizontalZeroAvoidance.lean).
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.completedLFunction_ne_zero_closed_right_away_one`.
Kind: theorem source candidate.
Inspection head: `1f388b830a790ee8ebbcdc1459f39abce6237591`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact statement

The source section supplies `{N : ℕ} [NeZero N]` to source-specific declarations.

```lean
theorem completedLFunction_ne_zero_closed_right_away_one
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : 1 ≤ s.re) (hs1 : s ≠ 1) :
    DirichletCharacter.completedLFunction chi s ≠ 0
```

## Argument and source correspondence

Use unconditional continued-L nonvanishing on Re(s)>=1 with the pole explicitly excluded, and the exact regular nonzero gamma factor, then multiply.

Primary provenance: Michael Stoll and David Loeffler, [Nonvanishing.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Nonvanishing.lean), `LFunction_ne_zero_of_one_le_re`, blob 789e0aae6e9378c8f5c8a7a07a905830e20b5433 (Apache-2.0). Local completion transfer uses [DirichletLogarithmicResidues.lean](https://github.com/grwtsk/math/blob/1f388b830a790ee8ebbcdc1459f39abce6237591/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletLogarithmicResidues.lean), `completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos` and `gammaFactor_regular_of_re_pos`.

Retained hypotheses and quantifiers: Positive level, actual character, Re(s)>=1, s!=1. This does not use the library's assigned value at a meromorphic pole.

Mathematical consumer and return: Supplies the closed boundary Re=1 and, after the genuine dual-character equation, Re=0 in the nonreal classification theorem.

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
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.completedLFunction_ne_zero_closed_right_away_one
```

No axiom-output claim is made. The current canonical proof-automation skill was
inaccessible; dependent execution was stopped. Ordinary source publication and
its readback receipt are recorded in math#1801, not treated as verification.
