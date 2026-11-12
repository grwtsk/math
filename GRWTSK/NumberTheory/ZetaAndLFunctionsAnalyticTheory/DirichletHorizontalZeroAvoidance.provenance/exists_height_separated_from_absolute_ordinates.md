# `exists_height_separated_from_absolute_ordinates`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Local file: [../DirichletHorizontalZeroAvoidance.lean](../DirichletHorizontalZeroAvoidance.lean).
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.exists_height_separated_from_absolute_ordinates`.
Kind: theorem source candidate.
Inspection head: `1f388b830a790ee8ebbcdc1459f39abce6237591`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact statement

The source section supplies `{N : ℕ} [NeZero N]` to source-specific declarations.

```lean
theorem exists_height_separated_from_absolute_ordinates
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) (n : ℕ) :
    ∃ T : ℝ, (n : ℝ) + 2 < T ∧ T < (n : ℝ) + 3 ∧
      ∀ rho : CriticalStripZero chi,
        horizontalSeparationRadius chi n ≤ |T - |rho.1.im||
```

## Argument and source correspondence

Select a midpoint against absolute ordinates inside the actual finite window H=n+4. Compare cardinality with the actual multiplicity count. Zeros outside that window have absolute-ordinate gap greater than one and are also covered.

Primary provenance: grwtsk contributors, [DirichletZeroMultiplicity.lean](https://github.com/grwtsk/math/blob/1f388b830a790ee8ebbcdc1459f39abce6237591/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletZeroMultiplicity.lean), `heightWindow`, `mem_heightWindow`, `card_heightWindow_le_heightCount`; [DirichletZeroCounting.lean](https://github.com/grwtsk/math/blob/1f388b830a790ee8ebbcdc1459f39abce6237591/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletZeroCounting.lean), source counting. The finite-grid core is local and ultimately uses Mario Carneiro's Fintype.card_le_of_injective at the Mathlib pin.

Retained hypotheses and quantifiers: Positive level, primitivity, every natural n, and every actual critical-strip zero including real/central zeros and repeated ordinates. Multiplicity is retained in the count; no finite numerical list is supplied.

Mathematical consumer and return: The same selected T controls BOTH signs through `absolute_ordinate_gap_le_horizontal_distance`. This supplies source-dependent quantitative avoidance, not the magnitude of a logarithmic derivative.

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
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.exists_height_separated_from_absolute_ordinates
```

No axiom-output claim is made. The current canonical proof-automation skill was
inaccessible; dependent execution was stopped. Ordinary source publication and
its readback receipt are recorded in math#1801, not treated as verification.
