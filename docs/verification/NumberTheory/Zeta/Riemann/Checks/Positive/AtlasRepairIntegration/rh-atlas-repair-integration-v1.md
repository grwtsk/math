# Critical-strip atlas repair integration: static verification specification v1

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / NOT_ADMITTED / NO RH CLAIM.
This document is a static acceptance specification, not an executable manifest schema,
build request, operational receipt, or authorization to change the worker/F06 gates.

## Immutable inputs and selected scope

Integration parent: `23541565205426d241b3d00ce667fa5e7311f0a6` (#253).
Coordinate separation donor: `eb98b13f6b891a1ea70217ba9653cc0b6b488825` (#245).
Weil criterion donor: `549f3309f0e3fb42a390d1c649b0e4c4cc4e997f` (#246).
Gram-limit donor: `671f739c3bed8b48f15314ff25ded05af325dec6` (#247).
Lean and dependency pins must remain exactly those of the integration parent.

The atlas and overlap modules are copied as exact donor blobs:

- `CriticalStripAtlas`: `e1907972a28b40f3a4228c6c0de9037ead3681e2`.
- `CriticalStripOverlapAudit`: `6bce37339e2aebaa844f7e5cfe1cd4d49200490c`.
- `WeilCriterion`: `1a3223833a9f19db5ea503774c27b777c4c7079f`.
- `WeilPositiveLimit`: `b47dfd2fe92dd5be05326d1b90005bb2d0674fc8`.

The vertical-path module adapts parent blob `4e19c850d5ab5f911c3f1d5f55b3c6186961b61a`.
The root fixture adapts donor blob `fa47ed9026c6750eef7644773058ba54c6b80020`.
The existing root, structured transport, all height/analytic/power modules, historical
manifests and public umbrella imports are unchanged. No #255-specific file is included.
Do not describe this source selection as merging every donor branch or accepting it.

Required explicit integration target:
`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.AtlasRepairIntegration`.
The new target is not inserted into a public umbrella. An umbrella-only build is insufficient.

## Inherited requirements: conjunctive, not substitutive

Retain the entire parent specification `docs/verification/_library-root/rh-atlas-power-taylor-v0.1.toml`
at blob `9dee266b0919e921dec24ed136c5bdf6dbd85af5`: every module record, every
hostile-control identity and requirement, clean checkout, exact declaration types,
module-coverage reconciliation, transitive axiom audit and external receipt boundary.
The selected source is this integration commit, not the old parent source.

Also retain the copied donor specifications, byte-for-byte and conjunctively:

- `docs/verification/_library-root/rh-weil-criterion-interface-v0.1.toml`, blob
  `99ac96caf12fa25bb4b729abb6cf9a0e3fb8aabb`: all 10 hostile controls, module records,
  scope/trust/acceptance settings and nonclaims.
- `docs/verification/_library-root/rh-weil-positive-limit-v0.1.toml`, blob
  `f39ca01b073651ca5a0dfe14ae0dab28eb854774`: all 12 hostile controls, module records,
  scope/trust/acceptance settings and nonclaims.

These donor files retain historical parent identifiers and root-only build-target fields.
They do not override this integration's explicit target or permit root-only acceptance.
All 22 donor controls apply to the corresponding leaves at the INTEGRATION source.
The preserved diagonal/polarized control describes the unchanged one-way implementation;
it is not a mathematical denial of the separately documented polarization converse.

Additionally include all four new modules, explicitly rather than by root-only inference:

- `GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRootFixture`.
- `GRWTSK.NumberTheory.Zeta.Riemann.WeilCriterion`.
- `GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimit`.
- `GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.AtlasRepairIntegration`.

The record union is a minimum declared scope, NOT a proved complete import/declaration
inventory. Independently enumerate the selected target's full transitive dependency
closure at the exact commit. Any missing local/upstream module or declaration blocks
acceptance. Inherited root-wide requirements are not waived by the isolated target.

Allowed axioms remain only `propext`, `Classical.choice`, `Quot.sound`.
Reject `sorryAx`, unreported native dependencies, source drift, omitted declarations,
unavailable or unrun required modules, duplicate/conflicting outcomes, and stale receipts.
String identifiers and symbolic PASS values are not authenticated source or execution.

## Signature and behavior changes to check

`CriticalStripAtlas.transition` uses `CoordinateTransition`, not `ChartTransition`.
Logical equivalence requires a separate proof-bearing `ChartTransition`.
`HasExactCoordinateEvidence` uses `HasExactCoordinate` and accepts both exact-coordinate
constructors. The retained narrower `OverlapAuditOutcome.IsExact` is not redefined.
Every vertical edge still contains independent logical and height proofs.

`VerticalPath` and `CompleteVerticalCoverage` remain data in Type.
`pathThrough`, `fullPathThrough` and path composition retain the parent's Nonempty wrappers.
The fixture's `no_completeVerticalCoverage` has type
`not (Nonempty (CompleteVerticalCoverage report))`, not a negation of the data type itself.

The concrete fixture's root status is `necessary`, not `neutral`.
The old `not_hasReverse` and `hasOpenReverseGap` statements must not be replayed as current
fixture facts: they are replaced by `hasReverse` and `hasNoOpenReverseGap`.
The reverse-gap identity remains in the list, with disposition `discharged`, its proof's
exact declaration reference in the audit, and a separate unavailable replay gap.
The report identity changes to `zeta-root-only-atlas-v0.2-necessary`.
The root-to-target logical overlap is `reverseOnly rootStatement_of_rh`, not unrelated.
The remaining forward implication is unproved, NOT refuted or independent of RH.

The two-chart fixture still rejects logical-transition admission and `GapFree` despite
admitting exact coordinates. The root-only fixture still rejects complete coverage
because there is no equivalent terminal. A generic neutral-profile control is separate.

## Additional hostile-control specifications

A01. Reject a bare Type-valued VerticalPath in And; require Nonempty path witnesses.
A02. Reject Not applied to CompleteVerticalCoverage as data; require Nonempty or IsEmpty.
A03. Reject changing path/coverage into Prop or extracting chosen path data from Nonempty
     merely to bypass the typing issue. Retain endpoints and proof transport.
A04. Reject reinstating statement_iff as a prerequisite to coordinate overlap.
A05. Reject admitting a directional coordinate tag as a logical implication/equivalence.
A06. Reject restoring the concrete root's neutral status or leaving its reverse gap open.
A07. Reject deleting the root's unproved forward or unavailable replay obligation.
A08. Reject reading a profile's missing-forward flag as a proof that its implication is false.
A09. Reject promoting the two-chart coordinate atlas to GapFree or a constructed root-to-RH path.
A10. Reject an RH endpoint without both an actual Gram limit and the exact criterion proof.
A11. Reject claiming the independent analytic patch/power work or #255 was validated by this repair.
A12. Reject old-head, root-only or incomplete coverage receipts for this selected integration.

The Lean examples are positive source regression statements, including proofs of negative
admission results. These listed malformed-input/replay controls have not been executed.
A later verifier must implement/check the negative compilation cases and preserve them.

## Remaining mathematical and integration boundaries

No new zeta criterion, Gram family, residual-decay supplier, all-height/all-margin
nonvanishing cover, spectral realization, source-specific metric or RH proof is supplied.
No polarization converse has been implemented here. The unchanged Gram module's wording
that polarized convergence is stronger remains a documentation/follow-up obligation:
all-vector Hermitian diagonal convergence admits a pointwise polarization converse,
but no stronger uniform or operator convergence follows.

The criterion's existing fixture import is retained byte-for-byte, now against the repaired
fixture. Dependency minimization to CriticalStripGapReport remains a separate edit.
Do not mark #245/#246/#247 or #253 repaired on their own unchanged heads merely because
this isolated integration exists. No original branch is rebased, closed, merged or rewritten.
