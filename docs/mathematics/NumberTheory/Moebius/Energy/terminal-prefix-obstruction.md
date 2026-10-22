# Terminal-only recovery does not control the two-point prefix maximum

Issue: #430. Parent: #410. Stacked parent PR: #411.

Evidence state: **SOURCE_DRAFT**. No Lean or Lake execution, elaboration, kernel acceptance, trust audit, external replay, or discharge of the arithmetic RH supplier is claimed.

The repository audit and original evidence-state labels below describe the pinned draft publication. Current repaired dependency and note identities are specified by the passive target; replay acceptance remains a separate obligation.

## Repository audit

The repository default branch was inspected at

```text
main revision: 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c
main tree:     8aa3904165d91f97952789fa6c0042636a40cc10
```

The selected dependency path is not yet on `main`. It is stacked on the exact source of draft PR #411:

```text
parent branch: research/rh-maximal-chowla-energy-410-20261021
parent head:   4628cc379363efeee79f717f11423ba8e036345f
parent tree:   99830f35f7648c0a5259bcd45d3e97ca7c8f3f48
```

That parent head was re-read before this increment and had not moved. The present branch is

```text
research/rh-terminal-prefix-obstruction-430-20261021
```

and has the parent head as its sole base dependency. The complete upstream source stack is public but provisional: PR #411 is stacked through #409, #400, #393, #389, #375, #370, #367, #360, #356, #352, #349, and #344. None of those source drafts is converted here into accepted replay evidence.

The materially relevant source files are:

```text
GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean
GRWTSK/NumberTheory/Moebius/CofinalEnergyDamping.lean
GRWTSK/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean
GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean
GRWTSK/NumberTheory/Moebius/TerminalMertensTwoPointPrefixObstruction.lean
```

The pinned toolchain inherited by the branch is Lean 4.33.0 with Mathlib revision
`db584cd6d46c92f209a44c0f1c829460d327499d`.

No conflicting declaration named `TerminalMultiplierRecovery` or
`not_terminalMultiplierRecovery` was found in the selected parent source or in another active branch associated with this dependency path.

## Exact terminal consumer

The RH-facing consumer is

```lean
GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.
  riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy
```

in

```text
GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean
```

Its type is, schematically,

```lean
SubpolynomialDyadicMaximalMertensTwoPointEnergy →
  _root_.RiemannHypothesis
```

It is an RH-implying conditional theorem, not an RH equivalence. Its unresolved premise is an all-scale subpolynomial upper bound for the canonical finite statistic

```text
MaxEnergy(j)
  = sum_(1 <= h < 2^(j+1))
      PrefixMax(j,h)^2,

PrefixMax(j,h)
  = max_(0 <= N <= 2^(j+1)-h-1)
      |C(h,N)|,

C(h,N)
  = sum_(0 <= a < N) mu(a+1) mu(a+1+h).
```

The dependency path is

```text
SubpolynomialDyadicMaximalMertensTwoPointEnergy
  ↔ SubpolynomialDyadicQuadraticMertensTwoPointPrefix
  → SubpolynomialDyadicMeanMertensTwoPointPrefix
  → SubpolynomialDyadicMertensShiftPacket
  → pickupEnergyAbscissa = 0
  → PickupWeightedEnergyAll
  → RiemannHypothesis.
```

Every arrow after the maximal-energy premise is inherited source-level mathematics. This increment does not discharge the premise.

## Candidate-supplier comparison

| Candidate | Exact consumer | Candidate conclusion | Existing support and witness | Strength | Formal risk | Speculative distance | Failure value |
|---|---|---|---|---|---|---|---|
| Terminal-only multiplier recovery | `mertensTwoPointPrefixMax` inside the maximal-energy criterion | Recover each prefix maximum from the terminal correlation by a finite multiplicative constant | Exact finite Möbius values at 1, 2, 3 | Exact finite comparison or exact obstruction | Low | Zero | High: eliminates a tempting but invalid shortcut |
| Dyadic maximal block inequality | Same prefix maximum | Bound every prefix square by a logarithmic factor times aligned dyadic block-square energy | General finite sequence algebra; requires a new block observable | Exact finite comparison | Moderate | One new interface and several combinatorial lemmas | High: identifies a viable richer observable |
| Direct large-sieve/dispersion estimate | `SubpolynomialDyadicMaximalMertensTwoPointEnergy` | Prove the all-scale arithmetic estimate | No accepted supplier at the required strength | Analytic, global, conditional at best | High | Several major unproved estimates | High if successful, but too broad for this increment |

The terminal-only obstruction was selected because it has direct terminal relevance, complete premise availability, exact reusability, minimal speculative distance, and an independently checkable finite witness. The result is negative but mathematically decisive at its stated scope.

## Selected comparison proposition

The rejected proposal is formalized as

```lean
def TerminalMultiplierRecovery : Prop :=
  ∀ j h : ℕ, 1 ≤ h → h < 2 ^ (j + 1) →
    ∃ C : ℝ, 0 ≤ C ∧
      mertensTwoPointPrefixMax j h ≤
        C * |mertensTwoPointPrefix h
          (2 ^ (j + 1) - h - 1)|
```

The constant may depend on the scale and shift. It is only required to be a finite nonnegative real. The theorem

```lean
theorem not_terminalMultiplierRecovery :
  ¬ TerminalMultiplierRecovery
```

therefore rules out even this weak pair-dependent multiplicative recovery.

## Canonical observable and exact finite witness

Only one observable is used:

```text
mertensTwoPointPrefixMax j h : real
```

Its domain is a natural dyadic scale `j` and a natural positive shift `h`. It is the exact maximum of the absolute signed two-point Möbius prefix over the complete admissible finite prefix range. The normalization, shift range, arithmetic coefficients, and sign convention are inherited unchanged from PR #411.

At the admissible pair

```text
j = 1,
h = 1,
2^(j+1) - h - 1 = 2,
```

the exact arithmetic source gives

```text
mu(1) = 1,
mu(2) = -1,
mu(3) = -1.
```

Hence

```text
C(1,1) = mu(1)mu(2) = -1,
C(1,2) = mu(1)mu(2) + mu(2)mu(3) = 0.
```

The first prefix therefore proves

```text
1 <= PrefixMax(1,1),
```

so the maximum is strictly positive. The terminal admissible correlation is exactly zero. For every real `C`,

```text
C * |C(1,2)| = C * 0 = 0,
```

which cannot dominate the strictly positive prefix maximum.

This is exact rational/integer arithmetic followed by an order contradiction. It uses no floating-point value, interval enclosure, tail estimate, limiting process, analytic continuation, differentiation, or external certificate.

## Positivity classification

The only positivity established is

```text
0 < mertensTwoPointPrefixMax 1 1.
```

This is strict positivity of one finite canonical maximum. It is not:

- nonnegativity or positive semidefiniteness of the RH-facing quadratic form;
- positivity of a kernel, measure, trace, state, or spectral measure;
- averaged, asymptotic, finite-height, truncated-global, or global Weil positivity;
- a positive arithmetic supplier for RH.

No transport of positivity into the RH consumer is claimed. The strict finite sign is used solely to contradict a proposed comparison with a zero endpoint.

## Failure boundary

The theorem rules out only a terminal-only **multiplicative** comparison that uses no information beyond the terminal prefix value. It does not rule out:

- a maximal inequality using all intermediate prefixes;
- aligned dyadic block sums or square functions;
- an additive error term with independently controlled size;
- a comparison using variation, martingale, or oscillation data;
- a direct large-sieve or dispersion estimate;
- an eventual comparison restricted to scales that exclude this finite witness;
- the maximal-energy premise itself.

A single terminal endpoint loses the location and magnitude of earlier cancellation. This is the exact information-loss boundary proved by the finite witness.

The repository's quintic witness machinery, spectral proposals, interpolation hypotheses, topology, elliptic geometry, Hodge theory, and K-theory are not imported. No source-bound theorem connects them to this finite prefix maximum, so assigning them a role here would increase speculative distance without inhabiting the selected interface.

## Proof classification and evidence

Proof classification:

```text
repository definitions: imported from the exact PR #411 stack
finite source values:   exact Mathlib Möbius theorems
new proof:              exact finite arithmetic and order contradiction
RH result:              obstruction only
```

Established evidence state:

```text
SOURCE_DRAFT
```

Not established:

```text
LITERATURE_REVIEWED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

The absence of those states is not evidence of failure or success.

## Provenance graph

```text
Mathlib arithmetic-function Möbius values
  imports
repository `moebiusReal`
  used by
exact two-point prefixes at (h,N) = (1,1), (1,2)
  proves
finite endpoint-information obstruction
  refutes
TerminalMultiplierRecovery

PR #411 maximal-energy definitions
  define
mertensTwoPointPrefixMax and the conditional RH consumer

R.A. Jacob Martone
  mathematical direction and repository dependency selection

OpenAI ChatGPT
  formalization assistance and source organization
```

No scalar contributor weights are assigned. The proof dependency graph and implementation provenance remain distinct.

## RH consequence and next obstruction

RH consequence: this increment **rules out one proposed supplier mechanism**. It does not prove a new damping, a maximal-energy estimate, finite-height RH, a zero-free region, or RH.

The exact next obstruction is:

> Define a finite aligned-dyadic-block square observable and prove a deterministic maximal comparison for a real sequence on `[0,2^m)`, bounding every prefix square by a factor of order `m+1` times the sum of squares of its aligned dyadic block sums.

That theorem requires a richer observable than the terminal endpoint and is outside this increment.
