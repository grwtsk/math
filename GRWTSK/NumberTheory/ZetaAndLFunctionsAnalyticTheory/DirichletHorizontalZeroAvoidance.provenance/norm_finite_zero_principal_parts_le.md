# `norm_finite_zero_principal_parts_le`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Local file: [../DirichletHorizontalZeroAvoidance.lean](../DirichletHorizontalZeroAvoidance.lean).
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.norm_finite_zero_principal_parts_le`.
Kind: theorem source candidate.
Inspection head: `1f388b830a790ee8ebbcdc1459f39abce6237591`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact statement

The source section supplies `{N : ℕ} [NeZero N]` to source-specific declarations.

```lean
theorem norm_finite_zero_principal_parts_le
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (H : ℝ) (S : Finset (CriticalStripZero chi))
    (hS : ∀ rho ∈ S, |rho.1.im| < H) (z : ℂ) (delta : ℝ) (hdelta : 0 < delta)
    (hsep : ∀ rho ∈ S, delta ≤ ‖z - rho.1‖) :
    ‖∑ rho ∈ S, (zeroMultiplicity chi rho : ℂ) / (z - rho.1)‖ ≤
      (heightCount chi hprim H : ℝ) / delta
```

## Argument and source correspondence

Take the norm of the finite signed complex sum, use the triangle inequality, nonnegative natural multiplicities, the strictly positive distance floor, and the original finite-window multiplicity mass bound.

Primary provenance: grwtsk contributors, [DirichletZeroMultiplicity.lean](https://github.com/grwtsk/math/blob/1f388b830a790ee8ebbcdc1459f39abce6237591/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletZeroMultiplicity.lean), `sum_multiplicity_le_heightCount`; Mathlib `norm_sum_le`, `norm_div`, `Complex.norm_natCast`, and division monotonicity at d13f23b723b8a846827a245b89c10fc7d3f11612. This is a local finite estimate, not a theorem imported from a paper.

Retained hypotheses and quantifiers: Actual source zeros and multiplicities, an arbitrary finite subset lying below height H, an arbitrary complex z, and a positive delta separated from all included zeros. No summability or infinite partial-fraction identity is assumed.

Mathematical consumer and return: Bounds the finite original zero principal parts once the selected-line distance theorem supplies hsep. The regular logarithmic term is not silently omitted; its bound requires the separate written disk lemma.

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
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.norm_finite_zero_principal_parts_le
```

No axiom-output claim is made. The current canonical proof-automation skill was
inaccessible; dependent execution was stopped. Ordinary source publication and
its readback receipt are recorded in math#1801, not treated as verification.
