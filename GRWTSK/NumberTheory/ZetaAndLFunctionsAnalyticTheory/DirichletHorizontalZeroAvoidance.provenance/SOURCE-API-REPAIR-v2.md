# Source API repair — version 2

Local attribution: grwtsk contributors. Date: 2026-11-11.
Coordination: math#1801, scope comment 6813879338.
Inspected main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`. Mathematical statements are UNCHANGED.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Recorded source failure and precise repair

The published DirichletHorizontalZeroAvoidance.lean at the inspected main had
two calls inconsistent with the defining DirichletZeroMultiplicity API:

1. In `exists_height_separated_from_absolute_ordinates`,
   `card_heightWindow_le_heightCount` is replaced by the actual declaration
   `heightWindow_card_le_heightCount`.
2. In `norm_finite_zero_principal_parts_le`,
   `sum_multiplicity_le_heightCount` is replaced by
   `((heightCount_le_iff chi hprim H (heightCount chi hprim H : ℝ)).mp le_rfl) S hS`.

The second proof directly specializes the existing equivalence to the
reflexive bound on the true finite height count. No new source hypothesis,
multiplicity definition, alias, theorem statement or numerical count is introduced.

This is a SOURCE-INSPECTION failure and repair, not an observed compiler
failure followed by a successful build. The prior unrun status is retained
alongside the known source defect. Elaboration, fresh kernel replay,
transitive axiom audit, repository-wide compatibility and independent
review remain NOT_RUN. No passing Lean run is claimed.

## Exact before and after identities

Original blob: `d1cd00bd07da710458c06753a07c442e1fcd40a1`.
Original SHA-256:
`d539db918107aaaad2d08a50bae2de1e63fea80102a869e0d9c022bacad3a9b1`.

Repaired blob: `2dbe17256b8cb6c896c879bd417af3db681981e7`.
Repaired SHA-256: `5ce3f5c3e013274cbfcdecd30b4003f409d7dcb91b6d5bf094e2101c43043f4e`.

The complete original mounted bytes matched the pinned repository blob and
SHA-256 before the edit. The reviewed diff consists of exactly the two
proof-line substitutions above. The previous mathematical argument,
declaration meanings and all eleven individual historical records are
preserved. Their old blob references remain historical, not receipts for
the repaired bytes. This versioned record is their explicit successor for
these two proof-body references.

The consumer is the new DirichletHorizontalLogDerivative module, which
reuses the actual selected heights. No RH/GRH target, arithmetic form,
character orientation, gamma factor or pole term changes.

## Source correspondence

grwtsk contributors, DirichletZeroMultiplicity.lean at `ae929ffb9eb87612e063c78f642d54279fe1e9df`,
blob `ef9d9f861731f11e446dd59bd60c8896b1e5462d`, declarations
`GRWTSK.NumberTheory.WeilNegativeWitness.heightWindow_card_le_heightCount`
and `GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_iff`.
Both retain the existing finite window and analytic multiplicity.

Novelty UNASSESSED. This record is a compatibility repair, not a new
mathematical claim. Proposed targeted build and axiom queries remain unexecuted.
