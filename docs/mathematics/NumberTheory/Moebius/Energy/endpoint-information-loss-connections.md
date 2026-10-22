# Endpoint information loss: typed connections to Chowla, Elliott, short intervals, and Sarnak

Status: `LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`  
Owner: issue [#439](https://github.com/grwtsk/math/issues/439)  
Child leaves: [#441](https://github.com/grwtsk/math/issues/441), [#442](https://github.com/grwtsk/math/issues/442), [#443](https://github.com/grwtsk/math/issues/443), [#444](https://github.com/grwtsk/math/issues/444)  
Finite witness: [#430](https://github.com/grwtsk/math/issues/430) / draft PR [#432](https://github.com/grwtsk/math/pull/432)  
Finite dyadic comparison: draft PR [#436](https://github.com/grwtsk/math/pull/436) and issue [#437](https://github.com/grwtsk/math/issues/437)

This note classifies the exact relationships between one finite two-point Möbius witness and four wider research programs. It is deliberately conservative. A shared arithmetic function, use of the word “randomness,” or a source citation is not a logical implication.

## 1. Exact repository witness

The source-specific two-point prefix is

\[
C(h,N)=\sum_{0\leq n<N}\mu(n+1)\mu(n+1+h).
\]

At dyadic scale `j=1` and shift `h=1`, the terminal admissible length is two. The actual values are

\[
\mu(1)=1,\qquad \mu(2)=-1,\qquad \mu(3)=-1,
\]

and consequently

\[
C(1,1)=-1,\qquad C(1,2)=0.
\]

The canonical finite prefix maximum therefore satisfies

\[
1\leq \operatorname{PrefixMax}(1,1),
\]

while the terminal absolute value is zero. PR #432 records

```lean
not_terminalMultiplierRecovery : ¬ TerminalMultiplierRecovery
```

for the actual Möbius source.

### What the witness proves

It proves an information-loss statement at one horizon:

> a terminal sum can vanish through cancellation while an earlier included partial sum is nonzero.

Therefore no finite multiplier of that terminal value recovers the maximum of all earlier prefixes at the same horizon.

### What the witness does not prove

It does not refute any all-horizon correlation theorem. If a theorem supplies a bound at **every** horizon,

\[
|S(N)|\leq B(N)\qquad\text{for every }N,
\]

and `B` is monotone, then for every `T`

\[
\max_{N\leq T}|S(N)|\leq B(T).
\]

The new source theorem

```lean
prefixMaxBound_iff_allHorizonBound_of_monotone
```

formalizes this fixed-data equivalence. This distinction is the central correction to any loose statement that the witness “blocks Chowla.” It blocks only a terminal-one-horizon shortcut.

## 2. Typed relation semantics

The source defines proof-relevant relation constructors:

```text
IMPLIES
EQUIVALENT
REQUIRES
SUPPLIES_PREMISE
REFUTES_AT_SCOPE
RELEVANT_ONLY
```

Only `IMPLIES`, `EQUIVALENT`, and a complete `SUPPLIES_PREMISE` composition project to a positive implication. `REQUIRES`, `REFUTES_AT_SCOPE`, and `RELEVANT_ONLY` deliberately project to no proof path.

The repository implementation is:

```lean
TypedConnection.toImplication?
```

with source-level hostile controls showing that a relevance edge, an unresolved required bridge, or a scoped refutation returns `none`.

The repaired return type is `Option (PLift (source → target))`: `PLift` carries the implication proof in a `Type` accepted by `Option`. A positive payload projects back to its original implication through `PLift.down`. The original `Option (source → target)` header was ill-typed because its argument was a `Prop`; it is retained as historical source provenance, not as an accepted type.

## 3. Connection matrix

| Source node | Relation | Target node | Exact meaning |
|---|---|---|---|
| actual endpoint witness | `REFUTES_AT_SCOPE` | one-horizon terminal multiplier recovery | proved finite counterexample |
| actual endpoint witness | `RELEVANT_ONLY` | higher-order Chowla | warns against endpoint-only supplier design; no theorem about Chowla |
| actual endpoint witness | `RELEVANT_ONLY` | corrected/higher-order Elliott | same warning; no Elliott conclusion |
| actual interval witness | `REFUTES_AT_SCOPE` | terminal interval value recovers every subprefix | proved at start zero for the actual pair sequence |
| actual interval witness | `RELEVANT_ONLY` | short-interval Möbius randomness | no averaged, almost-all, or every-interval theorem follows |
| actual endpoint witness | `RELEVANT_ONLY` | Sarnak disjointness | no dynamical system or disjointness conclusion follows |
| fixed-data all-horizon bound + monotone majorant | `IMPLIES` | fixed-data prefix-max bound | proved generic theorem |
| growing-shift terminal family | `REQUIRES` | growing-shift prefix-max family | missing uniform endpoint-to-maximal bridge |
| fixed-data binary theorem | `REQUIRES` | growing-shift uniform theorem | missing quantifier/uniformity bridge |
| binary theorem | `REQUIRES` | higher-order theorem | missing multidimensional/order bridge |
| averaged short-interval theorem | `REQUIRES` | every-interval theorem | missing coverage bridge |
| almost-all short-interval theorem | `REQUIRES` | every-interval theorem | missing exceptional-set elimination |
| global prefix theorem | `REQUIRES` | all translated intervals | missing translation/source-uniformity theorem |
| arithmetic correlation theorem | `REQUIRES` | Sarnak conclusion | missing arithmetic-to-dynamical adapter |
| arithmetic theorem + proved adapter | `IMPLIES` | selected dynamical conclusion | ordinary application of the adapter |

## 4. Chowla interfaces

### 4.1 Fixed data versus growing shifts

For one fixed sequence `a`, the theorem

```text
AllHorizonBound(a,B) + Monotone(B)
  -> PrefixMaxBound(a,B)
```

is exact.

It does not exchange the quantifiers

```text
forall fixed h, exists C_h
```

with

```text
exists one C, forall h in a range growing with the horizon.
```

The RH-facing maximal energy from PR #411 sums over every positive shift below a growing dyadic endpoint. A theorem whose constant depends arbitrarily on one fixed shift does not supply that consumer.

The source therefore separates:

```lean
GrowingShiftTwoPointTerminalBound
GrowingShiftTwoPointMaximalBound
GrowingShiftUniformityBridge
SummedShiftMaximalEnergyBound
```

No `GrowingShiftUniformityBridge` witness is constructed.

### 4.2 Binary versus higher order

The parameterized source

```lean
higherOrderMobiusTerm
HigherOrderChowlaBound
```

retains the correlation order, complete shift family, and distinct-shift hypothesis. The order-two finite endpoint witness is a hostile fixture for any universal endpoint-recovery mechanism. It is not a counterexample to the order-`k` Chowla conclusion.

The source records a required `ChowlaHigherOrderBridge`; it does not create that bridge from names or analogy.

These are parameterized finite-prefix interfaces. A specified asymptotic majorant, decay statement and complete quantifiers are still needed to identify them with a cited Chowla statement. The profile propositions can be arbitrary; their names alone do not formalize that conjecture.

### 4.3 Ordinary, logarithmic, and almost-all-scale statements

These scopes remain distinct:

- ordinary Cesàro correlation at every sufficiently large horizon;
- logarithmically averaged correlation;
- ordinary correlation outside a scale-exception set;
- averaged correlation over a family of shifts;
- one fixed affine-form pair;
- a family uniform over coefficients or shifts growing with the horizon.

No implication among these forms is accepted without the exact theorem.

## 5. Elliott interfaces

The source record

```lean
CorrectedElliottData
```

keeps separate:

```text
term
correction
analyticHypothesis
```

and defines the designated corrected sequence by subtraction. The record imposes no multiplicativity or nonpretentiousness condition by itself. Representing a cited Elliott theorem requires its exact arithmetic inputs and full analytic hypothesis; no such instance is constructed here.

The connection profile separates:

```text
corrected binary fixed data
growing-family uniformity
growing-family maximality
higher order
```

with independent required bridges for each transport. In particular, fixed-data ordinary cancellation does not by itself supply a common constant or rate over a scale-growing family.

The endpoint witness has only a `RELEVANT_ONLY` edge to the wider Elliott program and a `REFUTES_AT_SCOPE` edge to terminal-only recovery.

## 6. Short-interval interfaces

For a sequence `a`, start `x`, and length `H`, the source defines

\[
S_a(x,N)=\sum_{0\leq n<N}a(x+n)
\]

and

\[
M_a(x,H)=\max_{0\leq N\leq H}|S_a(x,N)|.
\]

The exact theorem

```lean
everyTerminalIntervalBound_of_everySubprefix
```

proves

```text
every-start, every-subprefix control
  -> every-start terminal control.
```

Without a length-monotonicity condition on the majorant, no unrestricted converse holds. Set `B(start,H)=|translatedPrefix a start H|`: every terminal bound then holds by equality. For the actual shift-one Möbius sequence at start zero and length two, that majorant is zero while the prefix maximum is at least one. The selected finite witness therefore supplies a counterexample to that unrestricted converse.

The following proposition classes must remain noncoercible:

```text
AVERAGED_OVER_STARTS
ALMOST_ALL_STARTS
EVERY_START
EVERY_START_EVERY_SUBPREFIX
```

An averaged or almost-all theorem can reach every-start control only through a separately proved coverage or exceptional-set theorem. A global prefix theorem beginning at zero reaches translated intervals only through a translation theorem preserving all arithmetic parameters and constants.

## 7. Sarnak interfaces and attribution

The source defines a minimal typed dynamical consumer with one phase type, transformation, initial point, observable, zero-entropy hypothesis, and selected disjointness conclusion. It then defines

```lean
ArithmeticToDynamicalAdapter
```

as the missing theorem connecting a designated arithmetic premise to that designated consumer.

The consumer record supplies no topology, compactness, continuity, entropy definition, or formula tying its conclusion to an orbit. Its proposition fields can be arbitrary. These are explicit instantiation obligations; ordinary application of an adapter is an abstract logical statement, not a formalization or proof of Sarnak disjointness.

The finite endpoint witness is only `RELEVANT_ONLY` to this program. It is not a dynamical counterexample, does not construct a zero-entropy system, and does not establish ordinary or logarithmic disjointness.

### Attribution boundary

Peter Sarnak is credited for the Möbius-disjointness proposal and dynamical formulation through the named lecture notes below. Later logarithmic disjointness theorems are credited to their authors separately. The repository-specific distinction between endpoint information loss and adapter requirements is a local synthesis, not a theorem attributed to Sarnak.

## 8. Source ledger

This ledger records public source identity and scope comparison. It does not admit external theorems into the local trusted environment.

### 8.1 OpenAI result 007

Repository: `openai/math`  
Inspected revision: `1581d4cbdd69a0faf34b2089614fe2a814316a6a`  
Scope note: <https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/docs/007.md>  
Blob at that revision: `dad638d19609ebbddc93a5594dfc2ecd2a26a7a6`

The scope note reports ordinary two-point cancellation for the Liouville function on fixed nonproportional affine forms and a corrected binary Elliott result under uniform nonpretentiousness. The actual finite witness here uses the Möbius function; this atlas provides no source-identification theorem substituting one for the other. It explicitly concerns ordinary rather than logarithmic averaging. This source does not, merely by its presence, supply:

```text
growing-shift uniformity
maximal-prefix quantifiers
summed shift energy
higher-order correlations
local replay or trust acceptance in grwtsk/math.
```

### 8.2 Tao, logarithmically averaged two-point Chowla and Elliott

Terence Tao, *The logarithmically averaged Chowla and Elliott conjectures for two-point correlations*.  
Stable preprint identifier: arXiv:1509.05422  
Source: <https://arxiv.org/abs/1509.05422>

The inherited result is logarithmically averaged and two-point. It must not be rewritten as ordinary averaging or higher order.

### 8.3 Tao–Teräväinen, higher-order correlations at almost all scales

Terence Tao and Joni Teräväinen, *The structure of correlations of multiplicative functions at almost all scales, with applications to the Chowla and Elliott conjectures*.  
Stable preprint identifier: arXiv:1809.02518  
Source: <https://arxiv.org/abs/1809.02518>

The source treats higher-order correlation structure and obtains ordinary-average special cases outside an exceptional set of scales. “Almost all scales” is not “all scales,” and the exceptional-set semantics must remain visible.

### 8.4 Matomäki–Radziwiłł–Tao, averaged Chowla

Kaisa Matomäki, Maksym Radziwiłł, and Terence Tao, *An averaged form of Chowla's conjecture*.  
Stable preprint identifier: arXiv:1503.05121  
Source: <https://arxiv.org/abs/1503.05121>

The shift-family average is a distinct proposition from a pointwise uniform theorem for every shift.

### 8.5 Matomäki–Radziwiłł, short intervals

Kaisa Matomäki and Maksym Radziwiłł, *Multiplicative functions in short intervals*.  
Stable preprint identifier: arXiv:1501.04585  
Source: <https://arxiv.org/abs/1501.04585>

The Möbius cancellation conclusion is for almost all intervals at the relevant scope. It does not supply every-interval or every-subprefix control without another theorem.

### 8.6 Sarnak, Möbius randomness and dynamics

Peter Sarnak, *Three Lectures on the Möbius Function Randomness and Dynamics*.  
IAS source record: <https://publications.ias.edu/node/512>  
Direct lecture-note source exposed by IAS: `MobiusFunctionsLectures(2).pdf`.

This source supplies the conceptual proposal and dynamical formulation. It does not supply the open arithmetic-to-dynamical adapter in this repository by citation alone.

### 8.7 Frantzikinakis–Host, logarithmic Sarnak

Nikos Frantzikinakis and Bernard Host, *The logarithmic Sarnak conjecture for ergodic weights*, Annals of Mathematics 187 (2018), 869–931.  
DOI: `10.4007/annals.2018.187.3.6`  
Source: <https://annals.math.princeton.edu/2018/187-3/p06>  
Preprint: arXiv:1708.00677.

This is a logarithmically averaged theorem for a specified class of systems. It must not be promoted to ordinary Cesàro disjointness for every zero-entropy system.

## 9. Child issue ownership

| Issue | Exact unresolved bridge |
|---|---|
| #441 | fixed-data to growing-shift uniformity and binary to higher order |
| #442 | corrected binary Elliott to family-uniform/maximal/higher-order control |
| #443 | averaged or almost-all intervals to every interval and every subprefix |
| #444 | arithmetic correlation theorem to a selected Sarnak dynamical consumer |
| #437 | aligned dyadic block energy to the RH-facing maximal-prefix energy |

The atlas names these premises but does not prove them by defining them.

## 10. Positivity and information preservation

The endpoint witness uses strict positivity of one finite prefix maximum:

\[
0<\operatorname{PrefixMax}(1,1).
\]

The dyadic comparison uses nonnegativity of finite sums of squares. Neither statement establishes kernel positivity, positive semidefiniteness, positivity of a measure, trace/state positivity, finite-height Weil positivity, or global positivity.

The relevant preserved invariant is **intermediate partial-sum information**. A terminal sum is not a faithful encoding of that invariant. Aligned block sums or an all-horizon theorem retain more information, but they still need source-specific arithmetic estimates.

## 11. Provenance graph

```text
Mathlib Möbius definitions/evaluations
  --used by--> exact finite source witness

PR #432 witness
  --refutes at scope--> one-horizon terminal recovery
  --relevant only--> Chowla / Elliott / short intervals / Sarnak

PR #436 finite dyadic theorem
  --supplies comparison interface for--> maximal-prefix control

OpenAI result 007
Tao 2015
Tao–Teräväinen 2018
Matomäki–Radziwiłł 2015
Matomäki–Radziwiłł–Tao 2015
Sarnak lectures
Frantzikinakis–Host 2018
  --sourced from / compared with--> proposition profiles in this atlas

child bridge issues
  --require--> new mathematical theorems
```

No scalar contributor weights are assigned. Mathematical claims, source works, implementations, diagnostics, and verification work remain separate nodes.

## 12. Evidence states and nonclaims

Established for this increment:

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

The source contains future `#print axioms` requests, but no Lean or Lake execution is represented. Literature review does not import external theorem authority.

This atlas does not prove Chowla, Elliott, every-short-interval randomness, Sarnak disjointness, the aligned-block arithmetic estimate, the RH maximal-energy premise, or RH.
