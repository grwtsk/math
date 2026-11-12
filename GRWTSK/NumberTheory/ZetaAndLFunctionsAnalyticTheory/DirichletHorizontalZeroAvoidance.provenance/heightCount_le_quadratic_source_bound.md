# `heightCount_le_quadratic_source_bound`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Local file: [../DirichletHorizontalZeroAvoidance.lean](../DirichletHorizontalZeroAvoidance.lean).
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_quadratic_source_bound`.
Kind: theorem source candidate.
Inspection head: `1f388b830a790ee8ebbcdc1459f39abce6237591`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact statement

The source section supplies `{N : ℕ} [NeZero N]` to source-specific declarations.

```lean
theorem heightCount_le_quadratic_source_bound (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (H : ℝ) (hH : 2 ≤ H) :
    (heightCount chi hprim H : ℝ) ≤ 2 * sourceCountConstant chi * H ^ 2
```

## Argument and source correspondence

Use log H <= H-1 and H>=2 to enlarge the existing all-height H log H bound to 2D H^2. The larger polynomial bound is used only to obtain a simple explicit avoidance radius.

Primary provenance: grwtsk contributors, [DirichletZeroCounting.lean](https://github.com/grwtsk/math/blob/1f388b830a790ee8ebbcdc1459f39abce6237591/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletZeroCounting.lean), `heightCount_le_source_bound`, `sourceCountConstant_nonneg`, blob 9a9fc7bcf6f16b8953ce4d69cf86cbe1b161614a (MIT). External dependency: Mathlib Real.log_le_sub_one_of_pos at the pinned revision. No new external paper is asserted.

Retained hypotheses and quantifiers: Positive level, actual Dirichlet character, primitivity at that level, and every real H>=2. The count is weighted by actual finite analytic orders.

Mathematical consumer and return: Pays for the cardinality of the exact window at H=n+4 in the height-selection theorem. It does not assert a lower sign bound or arithmetic positivity.

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
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_quadratic_source_bound
```

No axiom-output claim is made. The current canonical proof-automation skill was
inaccessible; dependent execution was stopped. Ordinary source publication and
its readback receipt are recorded in math#1801, not treated as verification.
