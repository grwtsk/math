# Riemann hypothesis criteria and their arithmetic premises

This guide indexes the present source modules and describes their explicit
premises. It adds documentation and navigation; it supplies no new mathematical
proof. Historical scoped verification remains historical, and acceptance of the
current relocated library and its consumers requires the current source replay.

## The fixed target

[Hypothesis.lean](../../../../GRWTSK/NumberTheory/Zeta/Riemann/Hypothesis.lean)
defines `GRWTSK.RiemannHypothesis.Target.Statement` as

```lean
∀ s : ℂ, riemannZeta s = 0 → (¬ ∃ n : ℕ, s = -2 * (n + 1)) →
  s ≠ 1 → s.re = 1 / 2
```

Its `statement_eq_mathlib` compares that proposition definitionally with
Mathlib's `_root_.RiemannHypothesis`. Defining or comparing the proposition does
not provide its proof. The trivial-zero and pole exclusions remain part of the
target. [DefectCriterion.lean](../../../../GRWTSK/NumberTheory/Zeta/Riemann/DefectCriterion.lean)
gives an equivalent zero-defect statement, without a witness of either side.

## The actual signed response

[MertensPrimitive.lean](../../../../GRWTSK/NumberTheory/Moebius/MertensPrimitive.lean)
defines the complete Möbius pickup `wholePickup`, its integrated square energy
`pickupEnergy`, the response diagonal `pickupDiagonal`, and the complete ordered
off-diagonal sum `pickupCross`. The finite inventory is
`Finset.Icc 1 ⌊Real.exp T⌋₊`; the signs and both off-diagonal orders are retained.
The response Gram and a different source-vector Gram require an explicit
identification before a bound can pass between them.

For every real `T ≥ 0`, the polynomial cross premise is

```lean
∃ C r : ℝ, 0 ≤ C ∧ 0 ≤ r ∧
  ∀ T : ℝ, 0 ≤ T → pickupCross T ≤ C * (1 + T) ^ r
```

The source names this proposition `PickupCrossPoly`. The corresponding energy
premise is `PickupEnergyPoly`. Neither definition supplies constants satisfying
the bound. [ResponseBudgetIdentification.lean](../../../../GRWTSK/NumberTheory/Moebius/ResponseBudgetIdentification.lean)
contains `native_P04_iff_literal_P04`, which relates the complete signed cross
premise to `PPNCP04.P04` through the actual response, coefficients, Gram and
nonnegative-horizon integral adapters.

## Read the terminal theorem with its input

| Source module | Source declaration or relation | Input still required |
| --- | --- | --- |
| [PolynomialEnergyCriterion](../../../../GRWTSK/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean) | `riemannHypothesis_of_pickupCrossPoly`; cross/energy polynomial equivalence | The complete all-real polynomial cross bound, or equivalent energy bound. |
| [EnergyAbscissa](../../../../GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean) | Subexponential cross/energy/weighted-integrability equivalences; `riemannHypothesis_of_pickupEnergyAbscissa_zero` | Every positive exponential rate with a constant uniform in time; equivalently, the actual energy abscissa equals zero. |
| [IntegerSampleGrowth](../../../../GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean) | Sampled polynomial and subexponential criteria | Bounds at every natural sample, with the stated uniform constants and interpolation costs. |
| [DyadicEnergy](../../../../GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean) | `exists_recordingScaleBound_iff_p04` | A recording-scale bound with one nonnegative constant and natural exponent valid at every required real scale. |
| [FixedWidthEnergyBoundEquivalence](../../../../GRWTSK/Analysis/Asymptotics/FixedWidthEnergyBoundEquivalence.lean) | `HSS_iff_P04` and `HSS_implies_literal_RH` | A fixed width `b > 0` and its all-real local-energy polynomial bound. |
| [ComparisonEnergy](../../../../GRWTSK/NumberTheory/Moebius/ComparisonEnergy.lean) | `riemannHypothesis_of_pickup_comparison` | A continuous comparison waveform and every-rate energy bounds for both it and the complete signed difference from `wholePickup`. |
| [QuadraticTransformBoundConversion](../../../../GRWTSK/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean) | `signed_settlement_iff_literal_P04` | The joint signed head/residue budget at the declared quadratic height, retaining the physical diagonal and paid tail; right-line parameter `c > 1`. |

These interfaces reorganize or weaken a sufficient premise only where the source
provides the stated relation. They do not construct the missing arithmetic
supplier. In particular, the existential recording-scale and fixed-width
criteria retain the polynomial frontier rather than solving it.

The analytic path is explicit:
[DirichletLaplaceIdentity](../../../../GRWTSK/NumberTheory/Moebius/DirichletLaplaceIdentity.lean)
contains the initial reciprocal-zeta identity;
[LaplaceHolomorphy](../../../../GRWTSK/NumberTheory/Moebius/LaplaceHolomorphy.lean)
consumes the energy premise; and
[LaplaceCriterion](../../../../GRWTSK/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean)
retains both signed holomorphy and the initial identity before concluding the
literal target. The parallel `PPNCP04` consumer in
[PolynomialEnergyHolomorphy](../../../../GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean)
supplies its explicit analytic bridges while retaining `P04` as an input.

## Limits that matter for reuse

[EnergyAbscissa](../../../../GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean)
provides initial square-energy integrability for damping strictly greater than
one, and integrability strictly above the actual abscissa. Neither conclusion
sets that abscissa to zero or includes the boundary. An all-rate bound quantifies
every positive rate before choosing its constant; one rate or finitely many
rates cannot replace it. Likewise, finitely many sample computations do not
meet the every-sample criteria.

[UnsignedEnergyBound](../../../../GRWTSK/NumberTheory/Moebius/UnsignedEnergyBound.lean)
retains the exponential allowance `2 * Real.exp T * T ^ 2`. The diagonal upper
bound in [GramDiagonalBound](../../../../GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean)
and the cross-energy lower bound in `PolynomialEnergyCriterion` leave the
required cross-energy upper bound open.
[RankOneQuadraticForm](../../../../GRWTSK/LinearAlgebra/Determinant/RankOneQuadraticForm.lean)
and the determinant equivalence in `IntegerSampleGrowth` retain the same energy
debt; a determinant identity does not pay it.

The separate explicit-formula route in
[CorrelationPairing](../../../../GRWTSK/NumberTheory/ExplicitFormula/CorrelationPairing.lean)
has two open propositions: `EstimateObligation` and `BridgeObligation`. Its
arithmetic representation is not a proof of either. Generic transform assembly
in [EnergyInterfaceEquivalence](../../../../GRWTSK/Logic/ProofEvidence/EnergyInterfaceEquivalence.lean)
can encode the whole original cross energy as its head; its equivalence to `P04`
does not by itself identify a new kernel or prove cancellation. P05 and the
pointwise return remain separate open obligations.

## Contribution and evidence

The zeta target and upstream analytic mathematics retain Lean and Mathlib's
identities, named contributors and licenses. Mathlib's `RiemannZeta` source
credits David Loeffler and carries Apache-2.0 licensing; the other imported
Mathlib results retain their respective community credits. Local source records name
grwtsk contributors for mathematical direction and OpenAI Codex for formalization
assistance, with MIT licensing for the local source. This page adds source-bound
classification and an access route through existing interfaces. It reports no
new theorem, unconditional RH proof, new checked consumer or current full-library
acceptance. Source text and an import graph are not proof-term dependency audits.

See the [detailed pickup-energy discussion](../Moebius/Energy/growth.md),
[recording-scale discussion](../Moebius/Energy/recording-blocks.md),
evidence roles (artifact:gitblob:248dee4b532c167604b4db4d86b896dace343626) and
verification instructions (artifact:gitblob:a9299f95ffeef45ec146ae5c230a8393e3d7a081).

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Zeta/Riemann/DefectCriterion.lean`](../../../../GRWTSK/NumberTheory/Zeta/Riemann/DefectCriterion.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 1 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
