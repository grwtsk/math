# Two-point cancellation, local block energy, and the RH-facing maximal junction

Issue: #453. Direct parent: #437 / draft PR #449. Upstream maximal consumer:
#410 / draft PR #411. Endpoint-information-loss witness: #430 / draft PR
#432.

Evidence states established by this increment:

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
```

`LITERATURE_REVIEWED` applies to the source comparison in this note. It does
not assert that an external paper has been imported into Lean, that its proof
has been independently checked here, or that the new Lean source elaborates.

## 1. Exact repository binding

The inspected default branch remains

```text
main revision: 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c
main tree:     8aa3904165d91f97952789fa6c0042636a40cc10
```

This increment is stacked from the exact head of draft PR #449:

```text
parent branch: research/rh-dyadic-block-maximal-437-20261021
parent head:   1157501e4b52ec388bbcff8baed6563534c40c0b
parent tree:   31fb25be3979e6391909d82a397e29b031753a21
```

The dedicated branch is

```text
research/rh-two-point-junction-453-20261021
```

The first source commit is

```text
0878211cbff2df283fd984e894e79fbb4cd3f0a1
```

The new source is

```text
GRWTSK/NumberTheory/Moebius/TwoPointConjectureJunction.lean
```

No existing source, public aggregate import, dependency pin, workflow,
executor, or held branch is modified.

The parent PR #449 is provisional source. If its finite theorem moves, is
rejected, or changes type, this branch must be reconciled. Importing a source
draft does not convert it into elaborated, kernel-checked, trust-audited, or
externally replayed evidence.

## 2. Exact terminal consumer

The terminal repository declaration is

```lean
GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.
  riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy
```

with type

```lean
SubpolynomialDyadicMaximalMertensTwoPointEnergy ->
  _root_.RiemannHypothesis.
```

It is a conditional RH-implying theorem, not an RH equivalence. The premise is
an all-scale subpolynomial bound for

```text
sum_(1 <= h < 2^(j+1))
  max_(0 <= N <= 2^(j+1)-h-1)
    |sum_(0 <= n < N) mu(n+1)mu(n+1+h)|^2.
```

No theorem in this increment proves that arithmetic estimate.

## 3. Four distinct information levels

The source makes four levels explicit.

### 3.1 Fixed-shift terminal cancellation

For real sequences `f,g`,

```lean
FixedShiftTerminalCancellation f g
```

means

```text
for every fixed h >= 1,
  twoPointPrefix(f,g,h,N) / N -> 0.
```

There is no uniformity in `h`, no short-interval starting point, and no maximum
over intermediate cutoffs.

### 3.2 Growing-shift dyadic terminal cancellation

```lean
GrowingShiftDyadicTerminalCancellation f g
```

requires terminal cancellation uniformly over every

```text
1 <= h < 2^(j+1)
```

at the exact admissible endpoint

```text
N = 2^(j+1)-h-1.
```

This remains an endpoint statement. It does not remember an earlier excursion
that cancels before the endpoint.

### 3.3 Aligned-dyadic tree energy

For

```text
a_h(n) = f(n+1)g(n+1+h),
```

the source zero-pads after the exact admissible cutoff and forms the complete
recursive aligned-dyadic tree energy on `[0,2^(j+1))`.

Every node is

```text
(square of a signed block sum).
```

The absolute value is not moved inside the block. The source then sums those
tree energies over every positive shift below the dyadic endpoint.

The all-scale source-facing premise is

```lean
SubpolynomialDyadicTwoPointTreeEnergyWithDepthCost f g.
```

It retains the exact maximalization cost `j+2`.

### 3.4 Canonical maximal-prefix energy

The existing repository premise

```lean
SubpolynomialDyadicMaximalMertensTwoPointEnergy
```

uses the exact maximum over every admissible prefix and sums the squares of
those maxima over every growing shift.

The new source proves the third-to-fourth connection for the actual Möbius
source. It proves no first-to-third or second-to-third connection.

## 4. Exact direct theorem

For each dyadic scale `j` and shift `h`, define the zero-padded source

```text
a_(j,h)(n) =
  mu(n+1)mu(n+1+h),  n < 2^(j+1)-h-1,
  0,                  otherwise.
```

The padding theorem proves that every arithmetic prefix before the cutoff is
literally the same finite sum in the generic sequence.

PR #449 supplies

```text
max_(0 <= N <= 2^(j+1)) |sum_(n<N) a_(j,h)(n)|^2
  <= (j+2) * TreeEnergy(j,h).
```

The arithmetic maximum ranges only to the smaller admissible cutoff and is
therefore bounded by that generic maximum. The new theorem is

```lean
mertensTwoPointPrefixMax_sq_le_twoPointTreeEnergy :
  mertensTwoPointPrefixMax j h ^ 2 <=
    (j+2) * twoPointTreeEnergy moebiusReal moebiusReal j h.
```

Summing shift by shift gives

```lean
mertensTwoPointMaximalQuadraticEnergy_le_treeEnergySum :
  mertensTwoPointMaximalQuadraticEnergy j <=
    (j+2) * twoPointTreeEnergySum moebiusReal moebiusReal j.
```

Thus the explicit depth-weighted tree-energy premise supplies the canonical
maximal premise with the same constants:

```text
Möbius tree energy with depth cost
  -> canonical maximal two-point energy
  -> signed shift packet
  -> pickup-energy abscissa zero
  -> all positive dampings
  -> Riemann Hypothesis.
```

Every arrow after canonical maximal energy is inherited from the active RH-E02
stack. The first arrow is the only new direct mathematical connection in this
increment.

## 5. Recently announced fixed-form binary results

At OpenAI Math revision

```text
1581d4cbdd69a0faf34b2089614fe2a814316a6a
```

`lean/docs/007.md` describes an ordinary two-point result for fixed
nonproportional affine forms. It states a logarithmic saving for Liouville and
an ordinary corrected Elliott theorem under uniform nonpretentiousness.

Repository interpretation:

```text
fixed-form ordinary terminal cancellation
  does not automatically instantiate
complete growing-shift depth-weighted tree energy.
```

The stated implied constant may depend on the fixed forms. The current RH
consumer ranges over all `h < 2X`, all intermediate endpoints, and a summed
square energy. No theorem in this repository or in the cited scope document is
used to erase those additional quantifiers.

The external result is cited as literature. No external Lean declaration or
paper proof is imported by the new module.

## 6. Averaged Chowla and short-interval inputs

K. Matomäki, M. Radziwiłł and T. Tao,
*An averaged form of Chowla's conjecture*, Algebra & Number Theory 9 (2015),
arXiv:1503.05121, proves averaged shift and short-interval statements.

Those theorems average over shifts, interval locations, or both. The current
supplier requires a universal all-shift tree-energy inequality at every scale.
The formal boundary is therefore

```text
averaged or almost-all local cancellation
  --missing uniform exceptional-set/maximal theorem-->
depth-weighted all-shift tree energy.
```

`SubpolynomialDyadicTwoPointTreeEnergyWithDepthCost` is the target interface;
no theorem in this increment supplies it from averaged Chowla.

## 7. Higher-order Chowla and corrected Elliott

T. Tao and J. Teräväinen,
*The structure of correlations of multiplicative functions at almost all
scales, with applications to the Chowla and Elliott conjectures*,
arXiv:1809.02518, supplies structural and almost-all-scale results for higher
correlations. Their earlier logarithmically averaged structural work is
arXiv:1708.02610.

A higher-order correlation has additional shift and, potentially, cutoff
coordinates. A connection to the present binary tree-energy source requires at
least:

1. an exact specialization from the higher-order source to the binary Möbius
   source;
2. preservation of the complete growing shift range;
3. preservation of ordinary rather than logarithmic weights;
4. preservation of every intermediate cutoff or a proved maximal comparison;
5. a quantitative estimate strong enough after summing squares.

The Lean source therefore defines only

```lean
HigherOrderChowlaAdapter source
CorrectedElliottAdapter source
```

as aliases of an explicit record carrying

```text
source -> Möbius depth-weighted tree-energy supplier.
```

No value of either adapter is constructed.

## 8. Sarnak-type disjointness

T. Tao,
*Equivalence of the logarithmically averaged Chowla and Sarnak conjectures*,
arXiv:1605.04628, proves an equivalence among logarithmically averaged
formulations and local Gowers uniformity.

The present source is an ordinary finite arithmetic square energy. A valid
Sarnak connection needs a named dynamical system, a specified Birkhoff
observable, matching normalization, and a theorem transporting the relevant
uniformity or disjointness estimate into the arithmetic tree-energy supplier.

The Lean source defines only

```lean
SarnakDisjointnessAdapter source.
```

The type requires the complete missing transport theorem. Its existence as a
type does not assert the existence of an inhabitant.

## 9. Weak Mertens and Gonek--Hejhal

Weak Mertens is a mean-square statement about the summatory Möbius function.
Gonek--Hejhal predicts negative moments of `zeta'(rho)`; Nathan Ng's work
connects RH plus a Gonek--Hejhal-type hypothesis to weak-Mertens and limiting
distribution conclusions.

Relevant sources include:

- N. Ng, *The distribution of the summatory function of the Möbius function*,
  Proc. London Math. Soc. 89 (2004), arXiv:math/0310381;
- H. M. Bui, A. Florea and M. B. Milinovich, *Negative discrete moments of the
  derivative of the Riemann zeta-function*, BLMS 56 (2024),
  DOI 10.1112/blms.13092;
- S. M. Gonek, *On negative moments of the Riemann zeta-function*, Mathematika
  36 (1989), DOI 10.1112/S0025579300013589.

These statements do not directly inhabit the finite two-point tree-energy
interface. A source-faithful connection must expose the Mellin/explicit-formula
step, zero multiplicity and simplicity hypotheses, truncation, tail control,
and the conversion from a global Mertens mean square to the complete local
all-shift block energy.

The Lean source therefore defines only

```lean
WeakMertensAdapter source
GonekHejhalAdapter source.
```

No spectral or explicit-formula bridge is asserted.

## 10. The adapter discipline

The central record is

```lean
structure ToMertensTreeEnergyAdapter (source : Prop) where
  toTreeEnergy :
    source -> SubpolynomialDyadicMertensTwoPointTreeEnergyWithDepthCost
```

A generic theorem then proves

```text
source
+ an explicit adapter from source to tree energy
  -> Riemann Hypothesis.
```

This is a formal wrapper around an explicit mathematical premise. It is not a
proof that any named source proposition supplies the premise.

In particular, the following are invalid uses:

```text
source theorem exists
  -> adapter exists;

logarithmic cancellation
  -> ordinary tree energy;

almost-all scales
  -> every scale;

terminal endpoint
  -> maximum over all prefixes;

spectral moment
  -> local arithmetic block square;

dynamical disjointness
  -> Möbius two-point energy.
```

Each arrow requires a separate theorem with all losses and quantifiers visible.

## 11. Endpoint witness and information loss

Issue #430 / PR #432 records the actual-source witness

```text
C(1,1) = -1,
C(1,2) = 0,
0 < PrefixMax(1,1).
```

It refutes recovery of the prefix maximum from a terminal endpoint by any
finite multiplicative constant, even when the constant may depend on the scale
and shift.

The new branch does not import the witness branch. The witness remains a
hostile control and provenance edge. The tree-energy construction responds to
it by retaining intermediate aligned block sums instead of replacing them with
one endpoint.

## 12. Positivity classification

The direct proof uses:

```text
nonnegativity of each finite block square;
nonnegativity of each finite absolute prefix maximum;
strict positivity of the depth count j+2.
```

It does not prove:

- positive semidefiniteness of a separate analytic quadratic form;
- positivity of a kernel, measure, trace, state, or spectral measure;
- averaged or asymptotic Möbius positivity;
- finite-height Weil positivity;
- positivity after an analytic truncation;
- global Weil positivity.

The arithmetic tree-energy supplier is an upper-bound conjecture about a
nonnegative finite statistic. Its nonnegativity does not prove the required
smallness.

## 13. Provenance graph

```text
Matomäki--Radziwiłł--Tao averaged/short-interval results
  literature comparison only

Tao logarithmic Chowla--Sarnak equivalence
  literature comparison only

Tao--Teräväinen higher-order structural results
  literature comparison only

OpenAI Math result 007 at revision 1581d4...
  fixed-form ordinary two-point scope comparison only

Ng / Gonek--Hejhal / negative-moment literature
  spectral-neighbor comparison only

PR #449 finite aligned-tree maximal comparison
  imported source dependency
        |
        v
zero-padded Möbius source adapter in this increment
        |
        v
canonical maximal Möbius-prefix energy from PR #411
        |
        v
conditional RH-E02 chain
```

R.A. Jacob Martone supplied the mathematical direction and repository
dependency selection. OpenAI ChatGPT supplied formalization and source
organization assistance. Mathlib and every cited work retain their original
authorship and licenses. No scalar contributor weights are assigned.

## 14. Exact remaining obstruction

The typed hierarchy now identifies one arithmetic target:

> For every `delta > 0`, construct `A_delta >= 0` such that at every dyadic
> scale `j`, the depth-weighted sum over every positive shift of the complete
> zero-padded aligned-dyadic tree energy is bounded by
>
> ```text
> (A_delta * (2^j)^delta)^2 * 2^(j+1).
> ```

This must be proved for the actual Möbius source. It may be approached through
large-sieve, dispersion, short-interval, higher-order, dynamical, or spectral
mathematics only after an exact theorem maps the chosen input into this typed
interface.

## 15. Nonclaims

This increment does not prove or import:

```text
ordinary two-point Chowla;
growing-shift Chowla;
higher-order Chowla;
corrected Elliott;
Sarnak disjointness;
Weak Mertens;
Gonek--Hejhal;
the Möbius depth-weighted tree-energy supplier;
a new pickup damping;
a zero-free region;
finite-height RH;
the Riemann Hypothesis.
```

It also does not claim Lean parsing, elaboration, kernel acceptance, trust
audit, independent replay, or discharge of any analytic premise.
