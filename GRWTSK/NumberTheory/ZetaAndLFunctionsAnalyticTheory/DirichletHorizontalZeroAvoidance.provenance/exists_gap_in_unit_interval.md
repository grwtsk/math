# `exists_gap_in_unit_interval`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Local file: [../DirichletHorizontalZeroAvoidance.lean](../DirichletHorizontalZeroAvoidance.lean).
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.exists_gap_in_unit_interval`.
Kind: theorem source candidate.
Inspection head: `1f388b830a790ee8ebbcdc1459f39abce6237591`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact statement

The source section supplies `{N : ℕ} [NeZero N]` to source-specific declarations.

```lean
theorem exists_gap_in_unit_interval {ι : Type*} (S : Finset ι)
    (y : ι → ℝ) (a : ℝ) :
    ∃ t : ℝ, t ∈ Ioo a (a + 1) ∧
      ∀ i ∈ S, 1 / (2 * ((S.card : ℝ) + 1)) ≤ |t - y i|
```

## Argument and source correspondence

For m forbidden indices, construct m+1 equally spaced midpoint samples. A point can strictly block at most one sample; a blocker for every sample would be an impossible injection. Equality at the half-spacing radius remains allowed.

Primary provenance: Mario Carneiro, [Fintype/Card.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Data/Fintype/Card.lean), `Fintype.card_le_of_injective`, blob f59efd09968716b3727825b05027f6fdee9e5dc8 (Apache-2.0). Local grid/spacing consequence, not a copied theorem statement or direct paper formalization.

Retained hypotheses and quantifiers: Any finite index set (possibly empty), any real-valued map (collisions allowed), and any open unit interval. No spacing assumption on the forbidden values.

Mathematical consumer and return: `exists_height_separated_from_absolute_ordinates` instantiates the map by absolute ordinates of the literal heightWindow. This is a quantified existence proof, not a numerical root algorithm.

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
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.exists_gap_in_unit_interval
```

No axiom-output claim is made. The current canonical proof-automation skill was
inaccessible; dependent execution was stopped. Ordinary source publication and
its readback receipt are recorded in math#1801, not treated as verification.
