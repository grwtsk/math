# Literal finite-sine action of the physical Weil operator

Local attribution: grwtsk contributors.
Owner: [WeilFiniteSineOperator.lean](WeilFiniteSineOperator.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineOperator`.
MSC2020: 11M06, 47B25. Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837) and
[math#1258](https://github.com/grwtsk/math/issues/1258).

## Target, source identity, and consumer

Fix T>0, beta real, and arbitrary finite coefficients x on Fin M, including
M=0. Let f be the existing `finiteSine T x` with the existing normalized
zero-extended sine basis. Let p(f)=integral f(t)sinh(t/2) dt. The target is
membership in the ACTUAL `PhysicalSourceOperator.sourceOperator` domain,
with output

    g = borderedTrialOutput T beta x (-2 p(f)).

This is not the original independent-port bordered operator. Eliminating
its scalar coordinate minimizes 2 a p(f)+a^2/2 at a=-2p(f), producing the
negative term -2p(f)^2. On mixed tests it contributes -2p(f)p(w).
Using a=0 would omit this contribution. The physical shift beta does not
act on the scalar corner or change the port.

The consumer is [WeilFiniteSineSolveResidual.lean](WeilFiniteSineSolveResidual.lean):
it identifies the complete physical residual of a finite-sine trial, then
bounds its graph-domain solution error using the original augmented rows
and complete remote allowance.

## Complete primary argument

1. Source pairings respect almost-everywhere equality in both arguments.
   For every fixed physical translation, Lebesgue-null sets pull back to
   null sets. Countably many prime indices give simultaneous a.e. equality
   of both translated prime orientations. Mixed gamma equality is proved
   for each lag before applying outer integral congruence. These identities
   alone do not assert convergence; subsequent domain statements retain it.
2. A source representative with the original support and oddness has a
   class in the existing `WindowPhysical T`. The finite sine has finite
   original gamma energy by `integrableOn_gammaEnergy_finiteSine`; the
   canonical maximal-domain lift theorem therefore supplies `finiteLift`.
   No graph-norm density or form-core assumption is used.
3. The previously established `integral_mul_borderedTrialOutput` applies
   against every supported measurable L2 test. Substitute a=-2p(f), use
   mixed gamma symmetry and the original mass orientation, and obtain

       integral w(t)g(t) dt = sourcePairing T beta f w.

   The actual Lp representative of each form-domain test is strongly
   measurable in pinned mathlib. Transport to equivalence classes gives
   this identity against every test in `FormDomain T`.
4. `sourceOperator_form_iff` now places (f,g) in the canonical physical
   graph. Its value uniqueness identifies the operator output with g.
   This proves operator membership, not only finite gamma-energy membership.
5. The original `sineCoefficient_borderedTrialOutput` then identifies
   EVERY positive output coefficient with `literalAugmentedRow` at a=-2p(f).
   No retained-head restriction is introduced.
6. Expanding the physical coefficient c-beta proves g_(beta-delta)=
   g_beta+delta f. This is an exact signed shift identity and leaves the
   pole fixed; its consumer adds the weak solver's physical regularization.

## Declaration map

- `primeOutput_congr_ae`, `gammaPairing_congr_ae`,
  `sourcePairing_congr_ae`: literal representative invariance.
- `finiteInput`, `finiteInput_ae`: original finite-sine physical class.
- `polePort`, `literalOutput`, `finiteOutput`, `finiteOutput_ae`:
  the actual unbordered physical output with minimizing pole port.
- `exists_finiteLift`, `finiteLift`, `finiteLift_windowInput`,
  `finiteLift_input_ae`: the unique underlying maximal-domain source lift.
- `literalOutput_pair`, `finiteOutput_pair`, `finiteLift_sourceForm`:
  all-domain source identity, not only a finite coefficient comparison.
- `finiteSine_graph`, `finiteSine_mem_domain`, `finiteDomain`,
  `sourceOperator_finiteDomain`: physical operator association.
- `literalOutput_shift`, `finiteOutput_shift`: physical-only shift.
- `sineCoefficient_congr_ae`, `finiteInput_coefficient`,
  `finiteOutput_coefficient`, `sourceOperator_coefficient`: exact rows.

## Source comparison and provenance

This is a local consequence of canonical source theorems, not a new import
of an unproved paper theorem or an independent proof of those dependencies.
Their original provenance and evidence remain unchanged.

Inspected at `grwtsk/math@bc1e1b34506f54ccdb46de9138e906044def5a55`:

- `WeilPhysicalSourceOperator.lean`, blob
  `f4b0303811504e0284a226971bc3ce7fdc151c11`: full graph/form equivalence.
- `WeilOddConcreteResidual.lean`, blob
  `ea7560ba79eb43dccd1438dc0cf1c13e7ed98e36`:
  `integral_mul_borderedTrialOutput`, `borderedTrialOutput_memLp`,
  support/oddness, and all-row coefficient identification.
- `WeilOddGammaOutput.lean`, blob
  `b8513ef86ef6b18f7f4247967fd6ace194a0af36`:
  finite-sine gamma integrability and bounded pointwise output.
- `WeilTranslationEnergyDomain.lean`, blob
  `ab7b89b34076f496e502fbfcc2571dd1bd37cfef`: maximal-domain lift.
- `WeilClosedSourceBilinear.lean`, blob
  `3ea2590f7129a8e1905b2042d0157d64f8b479ce`: exact mixed source pairing.
- Mathlib `MeasureTheory/Function/LpSpace/Basic.lean`, blob
  `49ca798a7ffe3002a1d2ce7ae7ba6d06291406b6`, at the root pin:
  `MemLp.coeFn_toLp`, `Lp.stronglyMeasurable`, and a.e. linear identities.

## Hostile checks and exclusions

The scalar algebra of the missing-pole case is decisive: taking a=0 rather
than -2p(f) changes the mixed source by 2p(f)p(w). It cannot be repaired by
claiming positivity of an auxiliary Gram matrix. The beta-delta shift is
checked independently by expanding c-(beta-delta)=c-beta+delta.

Finite sines lying in a self-adjoint operator's domain do NOT imply that
they are an operator core or a form core. Those approximation theorems,
complex primitive-character transfer, spectral identification, source
positivity, and cofinal certificate existence remain separate obligations.
No independence or novelty claim is made for this source transport.

Pinned source links: [physical graph](https://github.com/grwtsk/math/blob/bc1e1b34506f54ccdb46de9138e906044def5a55/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilPhysicalSourceOperator.lean),
[full trial output](https://github.com/grwtsk/math/blob/bc1e1b34506f54ccdb46de9138e906044def5a55/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilOddConcreteResidual.lean), and
[Lp representatives](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Function/LpSpace/Basic.lean).

## Evidence

Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. No root imports or pins changed.
SOURCE_PROOF_CANDIDATE. Elaboration, exact signatures, fresh kernel replay,
transitive axiom audit, complete dependency replay, and independent review:
NOT_RUN. Existing source candidates retain their actual status. Known
failures are not superseded. The new code may require elaboration repairs.
Publication and static checks are recorded separately in math#1837.
Prior-art completeness: UNASSESSED; no novelty asserted.
