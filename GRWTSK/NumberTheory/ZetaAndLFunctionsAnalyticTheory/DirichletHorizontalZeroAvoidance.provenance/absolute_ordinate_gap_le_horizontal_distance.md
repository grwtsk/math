# `absolute_ordinate_gap_le_horizontal_distance`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Local file: [../DirichletHorizontalZeroAvoidance.lean](../DirichletHorizontalZeroAvoidance.lean).
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.absolute_ordinate_gap_le_horizontal_distance`.
Kind: theorem source candidate.
Inspection head: `1f388b830a790ee8ebbcdc1459f39abce6237591`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact statement

The source section supplies `{N : ℕ} [NeZero N]` to source-specific declarations.

```lean
theorem absolute_ordinate_gap_le_horizontal_distance (T sigma epsilon : ℝ)
    (hT : 0 ≤ T) (hepsilon : epsilon = -1 ∨ epsilon = 1) (rho : ℂ) :
    |T - |rho.im|| ≤
      ‖(sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ) - rho‖
```

## Argument and source correspondence

Apply the reverse triangle inequality to the real imaginary coordinates, then the bound of absolute imaginary part by complex norm. The signs have unit absolute value and T is nonnegative.

Primary provenance: Mathlib community, `abs_abs_sub_abs_le_abs_sub` and `Complex.abs_im_le_norm`, pinned at d13f23b723b8a846827a245b89c10fc7d3f11612 (Apache-2.0); local elementary combination, with no paper-derived novelty claim.

Retained hypotheses and quantifiers: Every nonnegative height, every real coordinate, both epsilon=-1 and epsilon=1, and every complex location. No restriction on the real part of the zero.

Mathematical consumer and return: Returns the absolute-ordinate selection to full complex distance, without substituting projected ordinates into the reflected Weil pairing.

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
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.absolute_ordinate_gap_le_horizontal_distance
```

No axiom-output claim is made. The current canonical proof-automation skill was
inaccessible; dependent execution was stopped. Ordinary source publication and
its readback receipt are recorded in math#1801, not treated as verification.
