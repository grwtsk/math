# Continuous original signed Weil form on its complete graph domain

Local attribution: grwtsk contributors.
Owner: [WeilClosedSourceBilinear.lean](WeilClosedSourceBilinear.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.ClosedSourceBilinear`.
MSC2020: 11M06, 47A07.

## Objects and primary argument

Use the actual complete real `FormDomain T`, input J, and translation-energy
output B. Construct the finite bounded physical operator P from the exact
`activePrimePowers T`, weights `primeWeight`, and BOTH translations at plus
and minus log(q). Construct the pole functional l from the original
`sourcePoleProfile`; for supported inputs this equals integral f(t)sinh(t/2).

In the graph inner product the bounded representative is

    S = B* B + (gammaConstant(1,0)-beta) J* J - J* P J - 2 l* l.

Its bilinear pairing is continuous on the complete graph domain. The gamma
mixed product is integrable by L2 Cauchy--Schwarz in the actual weighted
energy space, then transported through the exact with-density identity.
The physical prime pairing is transported using Lebesgue translation and
its existing two-orientation source identity. The pole is the same windowed
profile, with its NEGATIVE rank-one coefficient. These computations prove

    <S z,w>_graph = MirroredHermitian.sourcePairing T beta (Jz) (Jw)

for all graph-domain z,w, not merely finite trial vectors. In particular,
the diagonal is exactly `shiftedOddWeilEnergy T beta (Jz)`. The symmetry
of the original pairing proves symmetry of S.

For T>=0 let C=`perturbationBound T beta` and lambda=C+1. The new coercive
form is q(z,w)+lambda <Jz,Jw>_physical. The already proved source norm
comparison yields

    ||z||_graph^2 <= q(z,z)+lambda||Jz||_physical^2
                 <= (2C+1)||z||_graph^2.

This supplies an actual `IsCoercive` proof with constant one. It does not
assume nonnegativity of q or replace physical mass by graph mass. The
primary consumer is `WeilShiftedSourceSolve.lean`.

## Declaration map

- `jump_inner`, `mixedGamma_integrable`, `output_inner_eq_gammaPairing`:
  value and convergence of the unchanged mixed gamma integral.
- `mirror`, `primeOperator`, `primeOperator_inner`: all original prime
  powers and both shift orientations, with exact source return.
- `poleVector`, `poleFunctional`, `poleFunctional_apply`: exact source pole.
- `sourceRepresentative`, `sourceForm`, `sourceForm_apply`,
  `sourceForm_self`, `sourceForm_symmetric`, `sourceRepresentative_symmetric`:
  bundled continuous signed form and off-diagonal correspondence.
- `massForm`, `regularization`, `regularization_pos`, `coerciveForm`,
  `coerciveForm_self`, `coerciveForm_bounds`, `coerciveForm_isCoercive`:
  explicit physical shift and proved coercivity.

## Source provenance

Base: `grwtsk/math@71a70edea2007e6f5c1c408189e10862499139e9`.
Source dependencies include:

- `WeilTranslationEnergyDomain.lean`, blob
  `ab7b89b34076f496e502fbfcc2571dd1bd37cfef`;
- `WeilTranslationCutoffs.lean`, blob
  `0f9bea10933135edb5b792284a443a53d500e21b`;
- `WeilMirroredHermitian.lean`, blob
  `d3d6722b8d86995059f2c626479f03a986171761`;
- `WeilFixedWindowSemibounded.lean`, blob
  `becde980e515c1909cdb1d52fa3cdbc1fec1f8a7`;
- `WeilGammaLagMeasure.lean`, blob
  `37c441cc23b1d3253ff811e568b049398208bc4e`.

This is local source assembly using mathlib bounded-adjoint and bilinear
APIs, not formalization of a new external conformal or Kato theorem. The
pinned source of `LaxMilgram.lean` was inspected for its exact `IsCoercive`
contract. Its actual use is in the following module.

## Distinctions and checks

S is a bounded GRAPH-METRIC representative. It is not the unbounded
physical-L2 source operator. A closed, densely defined source form and its
physical self-adjoint association must be distinguished from this metric
representation. No gamma-domain point is assumed to be in the physical
operator domain. The complete source terms and scalar normalization are
retained. A positive shifted form does not prove a positive unshifted form,
and C(T,beta) is not a support-uniform or vanishing cofinal defect.

The real odd zeta form is the present target. Complexification and primitive
Dirichlet phases require their own correspondence; no GRH transfer is claimed.

## Evidence

Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`; root imports and pins unchanged.
SOURCE_PROOF_CANDIDATE. Elaboration, exact signatures, fresh kernel replay,
transitive axiom audit, clean dependency replay, independent review: NOT_RUN.
No new research axioms or proof placeholders. Prior-art completeness:
UNASSESSED; no novelty claim. Publication and exact file readbacks are recorded separately in math#1837.
Coordination: existing math#1837 and math#1258.

## Publication integration — 2026-11-18

The attached prepared package was reopened and reconciled against
`grwtsk/math@3b56f8e26f3d39baa3df8b1fda882dc2f03ae690`. The original
source pins and verification limitations above are retained. This record
does not turn a source proof body into elaboration or kernel evidence.
