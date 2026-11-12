# `completedLFunction_ne_zero_of_nonreal_avoiding_strip_zeros`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Local file: [../DirichletHorizontalZeroAvoidance.lean](../DirichletHorizontalZeroAvoidance.lean).
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.completedLFunction_ne_zero_of_nonreal_avoiding_strip_zeros`.
Kind: theorem source candidate.
Inspection head: `1f388b830a790ee8ebbcdc1459f39abce6237591`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact statement

The source section supplies `{N : ℕ} [NeZero N]` to source-specific declarations.

```lean
theorem completedLFunction_ne_zero_of_nonreal_avoiding_strip_zeros
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) {s : ℂ}
    (him : s.im ≠ 0) (havoid : ∀ rho : CriticalStripZero chi, s ≠ rho.1) :
    DirichletCharacter.completedLFunction chi s ≠ 0
```

## Argument and source correspondence

On Re(s)>0 combine the right closed-boundary theorem or the absence of an original strip zero with the genuine gamma factor. On Re(s)<=0 reflect to 1-s, use the inverse character, and multiply by the proved nonzero conductor/root-number factors.

Primary provenance: David Loeffler and Michael Stoll, [DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `IsPrimitive.completedLFunction_one_sub`, blob 89c72580697983d86706cff17ccbea2cee6475a3 (Apache-2.0); [Nonvanishing.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Nonvanishing.lean), closed right-half-plane nonvanishing. Local source return: [DirichletWeilIntegrand.lean](https://github.com/grwtsk/math/blob/1f388b830a790ee8ebbcdc1459f39abce6237591/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletWeilIntegrand.lean), `rootNumber_ne_zero_from_completed_source`, blob 4cdd68933d9bd8bf481d4b4ec4ace9689b967829 (MIT).

Retained hypotheses and quantifiers: Positive level, primitivity, nonreal s, and an explicit exclusion of every element of the actual CriticalStripZero subtype. The last exclusion is discharged for the selected heights by their positive distance, not assumed in the final sequence theorem.

Mathematical consumer and return: Converts quantitative avoidance into completed-source nonvanishing for all real coordinates. Does not assert a global equality between completed and uncompleted divisors, or assume the character self-dual.

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
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.completedLFunction_ne_zero_of_nonreal_avoiding_strip_zeros
```

No axiom-output claim is made. The current canonical proof-automation skill was
inaccessible; dependent execution was stopped. Ordinary source publication and
its readback receipt are recorded in math#1801, not treated as verification.
