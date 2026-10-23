# Conjecture connections at the two-point Möbius Carleson obstruction

Status: `LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ALL_EXTERNAL_ADAPTERS_OPEN`  
Owner: issue [#466](https://github.com/grwtsk/math/issues/466)  
Direct parent: issue [#461](https://github.com/grwtsk/math/issues/461) / draft PR [#465](https://github.com/grwtsk/math/pull/465)  
Full-tree obstruction: issue [#460](https://github.com/grwtsk/math/issues/460) / draft PR [#462](https://github.com/grwtsk/math/pull/462)  
Canonical maximal consumer: issue [#410](https://github.com/grwtsk/math/issues/410) / draft PR [#411](https://github.com/grwtsk/math/pull/411)  
Endpoint-information-loss witness: issue [#430](https://github.com/grwtsk/math/issues/430) / draft PR [#432](https://github.com/grwtsk/math/pull/432)

This packet formalizes the exact junction between the live max-per-scale Möbius Carleson supplier and nearby open or recently announced conjectures. It contains one new positive mathematical transport: the Carleson supplier implies a necessary top-scale all-shift autocorrelation estimate. Every other literature-facing connection is represented by an explicit adapter requirement, a relevance-only edge, or a structural analogy.

No external result is imported as a local theorem. Literature status and repository evidence remain separate.

## 1. Exact repository binding

Inspected `main`:

```text
revision: 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c
tree:     8aa3904165d91f97952789fa6c0042636a40cc10
```

Direct parent:

```text
branch:   research/rh-scale-max-carleson-461-20261021
revision: ef00d2505cf775470e570d7093a47438abda6ac5
tree:     dfdd6bf613c9c12222f127aecbd66f0743706042
PR:       #465
```

Candidate source:

```text
branch: research/rh-carleson-conjecture-connections-466-20261021
source commit: 3cc944f36992724aaa1d77f07b2dcc0bbefa765e
source tree:   fc5d597164d441c9f738dc888236102110df52a5
source path:
  GRWTSK/NumberTheory/Moebius/
    TwoPointCarlesonConjectureConnections.lean
source blob: f8e4597c5e1716765345a317b01d728f6ed660a9
```

No existing source, public root, dependency pin, workflow, executor, or held branch is modified.

## 2. Exact local consumer

PR #465 defines the source-facing premise

```lean
SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
```

for the exact zero-padded two-point Möbius source. At dyadic endpoint

\[
Y=2^{j+1},
\]

its observable is the sum over every positive shift and aligned scale of one squared maximum over block position:

\[
\mathcal C_j
 =
\sum_{1\le h<Y}
\sum_{0\le r\le j+1}
\max_{q<2^{j+1-r}}
\left|
\sum_{n\in I_{r,q}}
\mu(n+1)\mu(n+1+h)
\right|^2,
\]

with literal zero padding at the exact admissible cutoff and signed summation before absolute value.

The inherited theorem chain is

```text
SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  -> SubpolynomialDyadicMaximalMertensTwoPointEnergy
  -> RiemannHypothesis.
```

The implication is conditional. The arithmetic Carleson premise remains open.

## 3. New exact necessary consequence

Define the terminal top-scale energy

\[
\mathcal T_j
 =
\sum_{1\le h<Y}
\left|
\sum_{0\le n<Y-h-1}
\mu(n+1)\mu(n+1+h)
\right|^2.
\]

The source declaration is

```lean
mertensTwoPointTopScaleAutocorrelationEnergy
```

and the load-bearing finite theorem is

```lean
mertensTwoPointTopScaleEnergy_le_carlesonEnergySum
```

with conclusion

\[
\mathcal T_j
\le
(j+2)\mathcal C_j.
\]

The proof is exact finite order reasoning:

1. the terminal prefix is one admissible prefix;
2. its absolute value is bounded by the canonical prefix maximum;
3. the canonical maximum is bounded by the max-per-scale Carleson energy;
4. the inequalities are squared and summed over the exact half-open shift range.

No asymptotic estimate is used.

The all-scale necessary condition is

```lean
SubpolynomialDyadicMertensTopScaleAutocorrelationEnergy
```

and the source proves

```lean
subpolynomialTopScaleAutocorrelationEnergy_of_carleson.
```

The constants are unchanged because the full Carleson premise already pays the depth factor.

The converse is not available. The source names the exact missing proposition:

```lean
TopScaleToCarlesonPositiveScaleBridge.
```

It must control every positive aligned scale and translated block maximum. A top-scale theorem alone cannot inhabit the complete Carleson supplier.

## 4. Scope coordinates

The source introduces noncoercible metadata for four independent axes.

### Averaging mode

```text
ORDINARY
LOGARITHMIC
DYNAMICAL
SPECTRAL_MEAN_SQUARE
FINITE_COMBINATORIAL
```

### Shift scope

```text
FIXED
POLYLOGARITHMIC_GROWING
FULL_DYADIC_GROWING
NO_SHIFT_PARAMETER
```

### Window scope

```text
ONE_TERMINAL_PREFIX
TRANSLATED_INTERVALS
ALIGNED_DYADIC_MAX_PER_SCALE
GLOBAL_MEAN_SQUARE
DYNAMICAL_ORBIT
POLYNOMIAL_UNIT_CIRCLE
```

### Aggregation scope

```text
POINTWISE
AVERAGE_OVER_PARAMETERS
SQUARE_SUM_OVER_SHIFTS
MAX_PER_SCALE_SQUARE_SUM
EXISTENTIAL_SEQUENCE
```

A `ClaimProfile` stores these coordinates and an evidence boundary. It does not store a proof of its proposition.

## 5. Proof-relevant relation discipline

The source defines

```lean
ScopedConnection source target
```

with constructors

```text
IMPLIES
EQUIVALENT
REQUIRES
REFUTES_AT_SCOPE
RELEVANT_ONLY
STRUCTURAL_ANALOGY.
```

`ScopedConnection.toImplication?` returns a positive implication only from `IMPLIES` or `EQUIVALENT`. Source controls prove that `REQUIRES`, `REFUTES_AT_SCOPE`, `RELEVANT_ONLY`, and `STRUCTURAL_ANALOGY` return `none`.

This prevents a source URL, a literature announcement, a thematic resemblance, or an unconstructed adapter type from becoming a proof edge.

## 6. Connection matrix

| Source program | Scope entering this atlas | Relation to Carleson supplier | Missing theorem |
| --- | --- | --- | --- |
| Riemann Hypothesis | terminal target | `Carleson IMPLIES RH` | arithmetic Carleson premise itself |
| Top-scale Möbius autocorrelation | ordinary, all dyadic shifts, terminal, square-summed | `Carleson IMPLIES TopScale` | positive-scale translated-window bridge for converse |
| Ordinary fixed-form two-point Chowla | ordinary, fixed forms, terminal | `REQUIRES` | fixed-to-growing uniformity plus terminal-to-maximal-square transport |
| Corrected binary Elliott | ordinary, fixed data under nonpretentiousness, terminal | `REQUIRES` | same quantitative scope upgrades |
| Growing-shift logarithmic Chowla | logarithmic, limited growing shifts/windows | `REQUIRES` | ordinary unweighting, full-dyadic shifts, max-per-scale square control |
| One-point short-interval Möbius | ordinary, every translated interval, no shift parameter | `REQUIRES` | two-point bilinear lift and all-shift maximal-square theorem |
| Higher-order Chowla/Elliott | higher arity, fixed shifts or almost-all scales | `REQUIRES` | binary quantitative specialization plus full scope upgrades |
| Sarnak disjointness | dynamical orbit averages | `REQUIRES` | quantitative dynamical-to-arithmetic Carleson adapter |
| Weak Mertens | one-variable mean square | `REQUIRES` | top-scale bilinear extraction and positive-scale bridge |
| Gonek--Hejhal negative moments | spectral negative moments | `REQUIRES` | implication to a selected Weak Mertens statement and then its Carleson adapter |
| Ultraflat Littlewood / Turyn merit factor | existential finite sign sequences | `STRUCTURAL_ANALOGY` | an arithmetic theorem for the actual Möbius sequence, not mere existence |
| Complete all-position tree supplier | every block at every scale | `REFUTES_AT_SCOPE` | no repair at that scope; replace the observable |

## 7. Exact local edges

The proof-bearing local edges are:

```lean
carlesonImpliesTopScale
carlesonImpliesRiemannHypothesis.
```

The nontraversable return is:

```lean
topScaleRequiresPositiveScaleBridge.
```

The exact obsolete-supplier disposition is:

```lean
completeTreeRefutationAtExactScope.
```

The witness is only relevance-bearing for the successor:

```lean
completeTreeWitnessRelevantToCarleson.
```

Thus the same negative witness cannot be interpreted as a refutation of max-per-scale control.

## 8. Fixed ordinary two-point Chowla and corrected Elliott

### Exact source record

```text
repository: openai/math
revision:   1581d4cbdd69a0faf34b2089614fe2a814316a6a
path:       lean/docs/007.md
blob:       dad638d19609ebbddc93a5594dfc2ecd2a26a7a6
```

The source note states ordinary two-point cancellation for the Liouville function on every fixed pair of nonproportional affine forms, with an absolute logarithmic exponent and an implied constant depending on the forms. It separately states corrected binary Elliott cancellation for one-bounded multiplicative functions under uniform nonpretentiousness. These are ordinary averages, not logarithmic averages.

This is recorded as an externally announced source scope, not a locally admitted theorem.

### Exact missing transport

The source defines

```lean
FixedOrdinaryBinaryToCarlesonAdapter source
```

with two independent fields:

```text
source
  -> ordinary terminal control uniform over every h < 2^(j+1),

full-dyadic terminal control
  -> max-per-scale all-shift Carleson control.
```

The external fixed-form statement supplies neither field by its name or metadata. In particular,

```text
forall fixed h, exists C_h
```

does not become

```text
exists one scale budget valid for every h < Y.
```

## 9. Growing-shift logarithmic Chowla

### Guo source

```text
Jizhou Guo
Quantitative Logarithmic Chowla Correlations Uniformly over Growing Shifts
arXiv:2608.23500
submitted: 2026-08-24
```

The conservative scope used here is logarithmically weighted cancellation uniform over fixed polylogarithmic shift ranges. The current manuscript also records almost-all results in larger stretched-logarithmic ranges and moment bounds, but no ordinary full-dyadic all-shift Carleson estimate is imported.

### Hughes source

```text
Scott D. Hughes
Effective logarithmic two-point Chowla bounds in every window
arXiv:2609.28526
submitted: 2026-09-22
```

The paper treats logarithmically weighted affine correlations in every logarithmic window with explicit, very large thresholds. It explicitly remains logarithmic rather than natural-density two-point Chowla.

### Missing transport

The source defines

```lean
LogarithmicGrowingShiftToCarlesonAdapter source.
```

It requires:

```text
logarithmic -> ordinary unweighting,
limited growing shifts -> every h < Y,
terminal/window correlation -> aligned max-per-scale square sum.
```

None of these promotions is inferred from a logarithmic source record.

## 10. Short-interval Möbius cancellation

```text
Kaisa Matomäki, Mayank Pandey, Javier Pliego,
Joni Teräväinen, Mengdi Wang
Higher order uniformity of the primes and cancellation of the Möbius
function in shorter intervals
arXiv:2610.09567
submitted: 2026-10-07
```

The paper proves one-point Möbius cancellation in all intervals of length

\[
X^{19/35+\varepsilon}.
\]

This is strong every-interval geometry for the one-point function. The current source is instead the bilinear shifted product

\[
\mu(n+1)\mu(n+1+h)
\]

for every growing shift, every dyadic scale, and a square-summed maximum over positions.

The source defines

```lean
ShortIntervalOnePointToCarlesonAdapter source
```

with a two-point full-dyadic lift and a separate terminal-to-Carleson theorem. One-point cancellation cannot coerce into either field.

## 11. Higher-order Chowla and Elliott

```text
Terence Tao, Joni Teräväinen
The structure of correlations of multiplicative functions at almost all
scales, with applications to the Chowla and Elliott conjectures
arXiv:1809.02518
```

The source establishes structural results and ordinary-average special cases outside a set of scales of zero logarithmic density; for Chowla it includes odd order and order two at almost all scales. This does not supply every-scale, full-growing-shift, translated-window maximal-square control.

The source defines

```lean
HigherOrderToCarlesonAdapter source
```

with an explicit binary quantitative specialization followed by the terminal-to-Carleson transport. Higher arity is not automatically stronger in the exact quantitative direction required here.

## 12. Sarnak disjointness

```text
Terence Tao
Equivalence of the logarithmically averaged Chowla and Sarnak conjectures
arXiv:1605.04628
```

The theorem concerns logarithmically averaged formulations and local Gowers uniformity. It does not identify ordinary full-dyadic max-per-scale square energy with a dynamical disjointness statement.

The source defines

```lean
SarnakToCarlesonAdapter source
```

whose only field is the complete quantitative dynamical-to-Carleson theorem. Merely naming a zero-entropy system, orbit, or Sarnak proposition does not construct this adapter.

## 13. Weak Mertens and Gonek--Hejhal

### Weak Mertens comparison

```text
Nathan Ng
The distribution of the summatory function of the Möbius function
arXiv:math/0310381
```

Ng derives conditional results for the one-variable summatory Möbius function under RH and a Gonek--Hejhal negative-moment hypothesis. The paper records the Weak Mertens conjecture as a consequence of those assumptions. It does not supply a two-point local block theorem.

The source defines

```lean
WeakMertensToCarlesonAdapter source
```

with two visible fields:

```text
Weak Mertens source -> top-scale all-shift autocorrelation,
top-scale autocorrelation -> positive-scale Carleson control.
```

### Gonek--Hejhal comparison

```text
Winston Heap, Junxian Li, Jing Zhao
Lower bounds for discrete negative moments of the Riemann zeta function
arXiv:2003.09368
```

The paper proves lower bounds consistent with the Gonek--Hejhal conjecture under its stated RH/simplicity framework. It does not prove the conjecture or construct a Möbius Carleson estimate.

The source defines

```lean
GonekHejhalToCarlesonAdapter source weakMertens
```

with a theorem from the selected negative-moment statement to the selected Weak Mertens proposition and a complete Weak-Mertens-to-Carleson adapter. Both remain open.

## 14. Ultraflat Littlewood polynomials and Turyn merit factor

Exact source records:

```text
repository: openai/math
revision:   1581d4cbdd69a0faf34b2089614fe2a814316a6a
catalog path: overview.tex
catalog blob: 8f3b8cb6d5c4f5f7f0ac216b2c6db52b4b34b2fd
preprint record:
  preprints/Ultraflat-real-Littlewood-polynomials-October-5-2026/README.md
preprint-record blob: afb7b45728da1b622dec296db4bac25731de69af
```

The catalog announces real Littlewood polynomials with uniformly ultraflat modulus and states that their binary merit factors tend to infinity, thereby disproving Turyn's bounded-merit-factor conjecture.

This result is structurally close because the top-scale Möbius quantity is an aperiodic autocorrelation-square energy. The logical boundary is strict:

```text
there exist specially designed flat sign sequences
```

is not

```text
the actual Möbius sequence has a subpolynomial all-shift energy.
```

The source therefore assigns only

```lean
STRUCTURAL_ANALOGY.
```

`structuralAnalogy_has_no_implication` proves that this relation cannot be traversed as a proof edge.

## 15. Riemann Hypothesis

The exact local edge is

```lean
carlesonImpliesRiemannHypothesis.
```

It reuses the inherited theorem

```lean
riemannHypothesis_of_mertensTwoPointCarlesonEnergy.
```

This is one-way. No converse from RH to the Carleson supplier is stated. The supplier may be substantially stronger than RH.

The local evidence state remains source draft. The open status of RH is a literature fact, not a reason to promote the conditional declaration.

## 16. Refuted full-tree observable

Issue #460 and PR #462 isolate the quadratic singleton-mass obstruction for

```lean
SubpolynomialDyadicMertensTwoPointCoordinateEnergyWithDepthCost.
```

The exact relation is

```lean
completeTreeRefutationAtExactScope : REFUTES_AT_SCOPE.
```

For the max-per-scale successor the relation is only

```lean
completeTreeWitnessRelevantToCarleson : RELEVANT_ONLY.
```

The negative theorem changes the observable design; it does not refute the current arithmetic target.

## 17. Hostile controls

The connection layer rejects all of the following:

- replacing parameter-dependent fixed-form constants by one growing-shift constant;
- exchanging ordinary and logarithmic averaging;
- replacing every aligned window by one terminal endpoint;
- replacing every scale by almost every scale;
- replacing one-point short-interval cancellation by a shifted-product theorem;
- converting a higher-order correlation theorem into the required binary quantitative estimate without specialization;
- converting Sarnak disjointness into arithmetic block energy without a dynamical adapter;
- converting one-variable Mertens mean square into two-point local correlations without a bilinear theorem;
- treating Gonek--Hejhal lower bounds or conjectural asymptotics as the Carleson supplier;
- treating the existence of ultraflat sign sequences as a theorem about Möbius;
- treating top-scale energy as sufficient for positive scales;
- applying the full-tree refutation to the max-per-scale observable;
- treating a source URL, source revision, announcement, Lean file, elaboration result, or comparator metadata as local theorem authority.

## 18. Provenance graph

```text
PR #465 max-per-scale finite comparison
  FORMALIZES
Carleson supplier interface
  IMPLIES
Top-scale all-shift autocorrelation condition

Carleson supplier interface
  IMPLIES
canonical maximal-prefix energy
  IMPLIES
Riemann Hypothesis

OpenAI result 007 fixed ordinary scope
  REQUIRES
fixed-to-growing + terminal-to-maximal adapters
  REQUIRES
Carleson supplier

Guo/Hughes logarithmic scope
  REQUIRES
ordinary unweighting + full-shift + maximal-square adapters
  REQUIRES
Carleson supplier

short-interval one-point Möbius
  REQUIRES
two-point bilinear lift
  REQUIRES
Carleson supplier

higher-order / Sarnak / Weak Mertens / Gonek--Hejhal
  REQUIRES
source-specific quantitative adapters
  REQUIRES
Carleson supplier

ultraflat Littlewood
  STRUCTURAL_ANALOGY
Möbius autocorrelation energy

full all-position tree supplier
  REFUTED_AT_SCOPE
  RELEVANT_ONLY
max-per-scale replacement design.
```

## 19. Files and source inventory

```text
GRWTSK/NumberTheory/Moebius/
  TwoPointCarlesonConjectureConnections.lean

docs/mathematics/NumberTheory/Moebius/Energy/
  two-point-carleson-conjecture-connections.md

verification/
  rh-two-point-carleson-connections-466-v0.1.toml
```

The Lean source contains the exact top-scale observable and transport, scope enums, claim profiles, proof-relevant relation type, adapter structures, named edges, external-claim bundle, and conservative connection atlas.

## 20. Evidence states

Established:

```text
LITERATURE_REVIEWED
SOURCE_DRAFT
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
ANY_EXTERNAL_ADAPTER_CONSTRUCTED
```

`LITERATURE_REVIEWED` means only that the cited source scopes were identified and compared. It does not admit their mathematical statements into the local trusted environment.

No Lean/Lake/native parsing or elaboration, proof-term acceptance, generated/private declaration reconciliation, transitive axiom/native/unsafe/opaque audit, repository test, independent replay, merge, root admission, issue closure, or RH claim occurred.

## 21. Exact next obstruction

The necessary top-scale checkpoint is now explicit. The remaining direct arithmetic theorem is the positive-scale estimate

\[
(j+2)
\sum_{1\le h<2^{j+1}}
\sum_{r=1}^{j+1}
\max_{q<2^{j+1-r}}
\left|
\sum_{n\in I_{r,q}}
\mu(n+1)\mu(n+1+h)
\right|^2
\le
A_\delta^2 (2^j)^{2\delta}2^{j+1}
\]

for every `delta>0`, with exact zero padding and all quantifiers retained.

The top-scale merit-factor barrier, growing-shift uniformity, and every-window maximal control are separate obligations. This increment stops before attempting any of them.
