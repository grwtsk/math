# Physical density of the original supported odd form domain

Local attribution: grwtsk contributors.
Owner: [WeilFormDomainDensity.lean](WeilFormDomainDensity.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.FormDomainDensity`.
MSC2020: 11M06, 46C05.

## Exact source and mathematical consumer

Base inspected: `grwtsk/math@71a70edea2007e6f5c1c408189e10862499139e9`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

Reuse `TranslationEnergyDomain.FormDomain T` and `WindowPhysical T`.
`windowInput` is the original graph inclusion with its exact supported odd
codomain. The mathematical consumer is injectivity and dense range of the
actual physical response in `WeilShiftedSourceSolve.lean`, and eventual
self-adjoint association of the original signed source.

## Complete primary argument

Fix T>0. For each n>=0, select a finite coefficient vector with its sole
nonzero coordinate at n. Its `finiteSine` is exactly
`zeroExtendedSine T (n+1)`. The existing
`OddGammaOutput.integrableOn_gammaEnergy_finiteSine` establishes finite
energy for the ORIGINAL zero extension and gamma kernel. The existing
unique lifting theorem therefore places this sine's actual L2 class in the
maximal graph domain.

If f in supported odd physical L2 is orthogonal to every domain input,
it is orthogonal to every such sine. `sinePhysical_inner` identifies this
pairing with the existing `sineCoefficient`, with Lebesgue normalization
unchanged. The existing `hasSum_source_sineCoefficient_sq_ae` then gives
norm(f)^2 = sum of zero coefficients = 0. Thus the range annihilator is
zero; the standard Hilbert-space orthogonal-complement theorem proves
that the topological closure of the input range is the whole physical
space. No assumption about RH, positivity of the source, or closure of a
trial family in the energy norm is used.

## Declaration map

- `windowInput`, `coe_windowInput`, `windowInput_injective`,
  `windowInput_norm_le`: exact codomain and contractivity.
- `sinePhysical`, `sinePhysical_ae`, `sine_gamma_integrable`,
  `exists_sine_lift`: finite-energy membership of every original sine.
- `sinePhysical_inner`: exact coefficient normalization.
- `eq_zero_of_all_form_pairings`: absence of invisible physical loads.
- `windowInput_range_closure`: PHYSICAL L2 density.
- `physical_pairing_unique`: unique continuous physical representation.

## Provenance and hypotheses

Canonical source dependencies inspected at the base:

- `WeilTranslationEnergyDomain.lean`, blob
  `ab7b89b34076f496e502fbfcc2571dd1bd37cfef`;
- `WeilOddGammaOutput.lean`, blob
  `b8513ef86ef6b18f7f4247967fd6ace194a0af36`;
- `WeilOddSineParseval.lean`, blob
  `000ce9a7c71a52c5d7ab36a5aaddb2ba964ad690`.

Pinned mathlib: `Analysis/InnerProductSpace/Projection/Submodule.lean`,
blob `04adf9e649624722c3a747238d524938f47d05d7`, declaration
`Submodule.topologicalClosure_eq_top_iff`. This is a local consequence
using canonical source results and mathlib, not a claim of a new paper
formalization or a second independent proof of Parseval.

## Hostile comparison and remaining obligations

A dense subspace in L2 need not be dense in a strictly stronger graph norm.
Accordingly, no `FormCore` conclusion is inferred. A smooth/sine form-core
argument remains separate. Zero extension is unchanged; no periodic-energy
domain substitution, normalization change, or hidden H1 hypothesis occurs.
Complex primitive-character transfers and cofinal signed bounds remain open.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, expected signatures, fresh kernel replay,
transitive axiom audit, clean import replay, and independent mathematical
review: NOT_RUN. These dependencies also retain their own actual evidence
status. No new axiom or proof placeholder is used. Novelty is not claimed;
prior-art completeness is UNASSESSED. Publication is separate from proof acceptance; consult the delivery record
in math#1837 for the actual commit and file readbacks. Coordination:
existing math#1837 and math#1258; no new issue closure is asserted.

## Publication integration — 2026-11-18

The attached prepared package was reopened and reconciled against
`grwtsk/math@3b56f8e26f3d39baa3df8b1fda882dc2f03ae690`. The original
source pins and verification limitations above are retained. This record
does not turn a source proof body into elaboration or kernel evidence.
