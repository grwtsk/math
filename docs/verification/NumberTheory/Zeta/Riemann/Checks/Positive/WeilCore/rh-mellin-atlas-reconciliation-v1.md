# Mellin / finite-power reconciliation and isolated Weil core

SOURCE_COMMITTED / SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / NOT_ADMITTED.
This is a static source and acceptance specification, not an executable manifest,
execution request, receipt, or authorization to change any worker or F06 gate.

## Immutable inputs and selection

Preparation parent: PR #263 at `62824951afbae1f1bef9707325c42b9758b7a09f`,
tree `1d9d5a539619787dce374ed3bce7567769e57066`.
Selected #255 donor: `380f4c10e52a5638e726b1417b8b2245b437d001`, based on
`3eb59d08d4f424846183e725578801ba6c42ade7`.
The containing candidate commit, not a moving PR branch or either donor head,
is the source for any later acceptance decision. Source changes invalidate replay.

The parent is eleven commits ahead of the donor base. Their exact comparison
changes only the atlas/overlap/path modules and adds the later finite-power,
logarithm, polarization and integration files. The shared Mellin producer source
is unchanged. No donor branch is merged, rebased, force-updated or accepted here.

Copy these four donor files byte-for-byte, preserving attribution and all claims:

| File relative to the Riemann directory, except verification | Git blob |
| --- | --- |
| CriticalStripMellinApproximation.lean | ad015bb0d901e85939bc57090c9d87e6a23b3ec6 |
| CriticalStripMellinEnclosure.lean | 72957f8e976f5b1cd91df07e58ee4753dde0ed4e |
| Checks/Positive/MellinTruncation.lean | e46b3ebf74bd3c4329be47c9c7ea7eab74fb6c12 |
| docs/verification/_library-root/rh-atlas-mellin-tail-enclosure-v0.1.toml | 0bd83011d23e29a88930e0b7f00af0cf6f98ec1c |

The sole existing-source edit is the WeilCriterion import from
CriticalStripRootFixture to CriticalStripGapReport. Its original blob is
`1a3223833a9f19db5ea503774c27b777c4c7079f`; every other byte is retained.
No mathematical declaration, proof, source identity, conditional premise or
normalization is changed by that edit. Existing targets, historical specifications,
public umbrellas and toolchain/dependency pins remain unchanged. Mathlib stays at
`db584cd6d46c92f209a44c0f1c829460d327499d`.

## Mathematical additions

CriticalStripFiniteMellinAgreement imports the existing finite-power enclosure
and the donor Mellin enclosure. It defines no new zeta function, integral, tail,
cutoff sequence, spectral object, Weil form or certificate record.

At N>=1 and Re(s)>0, the existing finite Abel identity identifies the exact
finite-power model F_N with the truncated Mellin model. The new leaf derives:

- F_N(s) - (s-s(s-1)q) = -s(s-1)(M_N(s)-q).
- The corresponding finite error bound is |s||s-1| times prefix.error.
- The distance between a finite-power sample and a prefix sample is at most
  powers.finiteError + |s||s-1|*prefix.error. This comparison needs no infinite
  tail, because both samples approximate the same finite model.
- Exact-tail strict margins agree after the actual model identity.
- Nonvanishing of the fixed source at a fixed positive-real-part point is
  equivalent to existence of a positive integer cutoff with the exact finite-power
  strict tail margin. The forward implication uses the independently assumed
  nonzero source; it does not manufacture that hypothesis or compute a witness.
- Every cutoff fails that strict margin at an actual source zero.
- An approximate power sample proves nonvanishing only with its FULL sourceError,
  including its finite errors and the sourced tail, strictly below its sample norm.
- Both derivative majorants are definitionally equal and pole samples agree at 1.

No attempt is made to invert normalization at s=1. The source fixture exhibits
noninjectivity there. Equal samples do not identify their prefix values, prove
accuracy, or prove source nonvanishing. Source agreement is not a Weil comparison.

## Explicit targets and declaration coverage

Small target:
`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCore`.
Its sole direct import is WeilPolarization. The observed GRWTSK header graph is:

WeilCore -> WeilPolarization -> WeilPositiveLimit -> WeilCriterion
-> CriticalStripGapReport -> CriticalStripAtlas -> Hypothesis.

These seven local modules exclude the root fixture, vertical paths, structured
transport and scalar Mellin stack. This is a source-header graph, not an elaborated
signature inventory or transitive Mathlib trust audit. All upstream dependencies
and actually consumed instances must still be independently enumerated and checked.

Combined target:
`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.MellinAtlasIntegration`.
It imports the prior WeilPolarization regression target, WeilCore, the exact donor
MellinTruncation target, and the new FiniteMellinAgreement leaf. Thus the repaired
root fixture and the old broad integration target remain explicit obligations.
Small-target success must never be promoted to combined-target success.

New public theorem namespace:
`GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.FiniteMellinAgreement`:
derivative_bounds_agree; finitePower_prefix_residual; finitePower_prefix_error;
sample_agreement_le; exact_margin_iff; no_strict_finitePower_margin_at_zero;
nonzero_iff_exists_finitePower_margin; nonzero_of_power_sample; pole_values_agree.
The combined regression namespace adds pole_sample_not_injective and
nonstrict_margin_allows_zero. Check exact types from the actual candidate, including
the positive cutoff/real-part premises and both separate source-error fields.

## Conjunctive inherited acceptance

Retain the complete predecessor `docs/verification/NumberTheory/Zeta/Riemann/WeilPolarization/rh-weil-polarization-v1.md`, blob
`253a93bd01f74e11377168139c6d54d1b0fd0617`, and every specification it retains,
including all earlier atlas, PowerTaylor and both original Weil module/control
records, scope/trust settings, failure reporting and acceptance requirements.
Also retain all 38 module records and all 12 hostile controls of the exact donor
Mellin manifest above, with its complete scope/trust/acceptance/nonclaim sections.
Do not replace inherited requirements by the smaller Weil target.

Historical statements that a prior increment preserved a fixture import or copied
a donor source verbatim describe that prior snapshot. This candidate intentionally
changes one criterion import; no old criterion checksum or old replay applies to
its new import closure. The new specification changes that import-layout expectation
only, not a mathematical theorem, trust policy, rejection condition or required
fixture. The containing exact head governs both targets and all inherited checks.

All new modules, donor modules and the changed criterion must appear in the full
independently enumerated exact-head module/declaration/type/axiom inventory. A list
of names or lexical import graph does not establish inventory completeness.

## Additional hostile controls (static requirements, not executed fixtures)

R01: Reject model/margin transfer at N=0 or without Re(s)>0; retain exact cutoff casts.
R02: Reject different zeta normalizations, sources, parameters or cutoffs in sample agreement.
R03: Reject either omitted finite error or an uncertified numerical prefix/power value.
R04: Do not charge a shared tail to a finite-model cross-check; do not drop that tail
from the independent full-source nonvanishing estimate.
R05: Reject use of an exact-model margin for an approximate sample without finiteError.
R06: Reject inversion by s-1 at the pole and sample equality as prefix injectivity.
R07: Reject non-strict margins and retain failure at every cutoff of an actual zero.
R08: Reject circular manufacture of nonvanishing and pointwise-existence-to-cover promotion.
R09: Reject scalar Mellin agreement as Hermitian Weil positivity or an arithmetic Gram supplier.
R10: Reject isolated-core/root-only/old-target success as complete combined acceptance.
R11: Reject donor overwrite, source-hash drift or loss of any inherited rejection/trust obligation.
R12: Reject lexical, finite rational or source-commit evidence as Lean/type/axiom/replay acceptance.

## Required verification, all pending

Elaborate both explicit targets at the containing commit with pinned dependencies;
repair errors; compare exact public types and all explicit premises; independently
reconcile source/root/leaf/dependency coverage; audit transitive axioms including
rejection of sorryAx and unreported native/unsafe dependencies; exercise all inherited
and new malformed-input controls; report failures and unavailable checks separately;
then evaluate one immutable external receipt at precisely this candidate scope.
Allowed axioms remain propext, Classical.choice and Quot.sound at the inherited scope.
No execution is requested or authorized by this document.

## Nonclaims

NOT_RUN / NOT_KERNEL_AUDITED / NOT_ADMITTED. No new execution, native evaluation,
worker readiness, F06 release, replay receipt, accepted theorem, merger or closure.
No certified log/exp evaluator, actual complete interior cover, new decay supplier,
classical zeta Weil criterion, arithmetic positive-Gram realization, spectral
identification, RH or ABC proof/refutation. Existing source may still need repairs.
