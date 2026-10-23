# Arithmetic Liouville source instantiated into the finite Walsh–sofic correlation interface

**Research date:** 2026-10-22  
**Mathematical owners:** `grwtsk/math#630` and fixed-versus-growing arithmetic scope `#441`.  
**Direct inspected parent:** `72c6d2d9d72c20daa0145ad6bf10e50d1bc7f9a7`.  
**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ALL_ORDER_ARITHMETIC_ESTIMATE_OPEN.

## 1. One bounded dependency bridge: real arithmetic input instead of arbitrary Boolean data

The earlier generic finite Walsh/Parseval/TV/cyclic models had
`z : Nat → Bool` or complete Boolean word functions as INPUTS,
without identifying those inputs with the **actual** arithmetic
Liouville function. The analytic research problem requires
ordinary correlations of `ArithmeticFunction.liouville`,
not correlations of an invented generic sign process.

New mathematical source:

`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean`

Source blob `0b2cf1223268ae50399119dda7295d9f16729e6d`.

The new module directly imports the eight-module pure finite
Chowla–sofic stack via its latest `FiniteChowlaUniformEnvelope`
source and independently imports the prior Mathlib-backed
arithmetic `LiouvilleDyadicAffineBridge` source. It is
the **10th selected module** in the combined passive replay target,
which has its own exact source inventory. It does NOT import the
OpenAI Result 007 provider, the proposed Mertens repair, or
an axiomatized arithmetic rate.

Upstream Liouville definition and complete multiplicativity
are attributed to Thomas Browning and Mathlib contributors,
from pinned Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
Human mathematical research direction and prior project
ownership are retained in the source header.

## 2. Exact sign encoding and the indispensable positive-index guard

Pinned Mathlib represents `lambda(0)=0`, while at every
positive integer `u` its Liouville function satisfies
`lambda(u)^2=1`, hence `lambda(u)∈{−1,+1}`.

The new source constructs a genuine Boolean encoding:

```text
liouvillePositiveBool(n) =
  true  if lambda(n+1)=+1,
  false otherwise.
```

The parent generic finite Walsh library's convention is

```text
boolSign(true)=+1
boolSign(false)=−1.
```

Therefore, for every n≥0,

```text
boolSign(liouvillePositiveBool(n)) = lambda(n+1).
```

This is an EXACT finite integer-to-rational sign identity,
not an approximation, and no cancellation premise is used.
In particular, `n=0` is permitted as a finite sampling ROOT,
but evaluates `lambda(1)`, not `lambda(0)`.

For a finite selected shift set `H : Finset Nat`, a
subtype coordinate `h∈H`, and a source root `n`,
the generic ordinary Boolean word specializes to

```text
boolSign(ordinaryShiftWord(H, liouvillePositiveBool, n)(h))
 = lambda(n+h+1).
```

The `+1` is essential: it preserves the positive-index
arithmetic source even when `n=h=0`. Shift identities are
retained by the finite subtype rather than erased in a
symmetric/unlabeled approximation.

## 3. Exact all-order coefficient identification

Take any `N : Nat`, a finite set `H` of distinct
nonnegative offsets, and any subset `S⊆H`
(including the empty subset). Define

```text
C^Liouville_(N,H)(S) :=
  (1/N) * sum_(n=0)^(N-1)
    prod_(h∈S) lambda(n+h+1),
```

computed as a rational in the Lean module
`liouvilleSubsetMean N H S`. For `N=0`,
Lean's rational division convention produces `0`;
the expression is **not** interpreted as a probability
mean at an empty sample.

The new theorem
`liouvilleSubsetMean_eq_sourceCorrelation` identifies
this expression **exactly** with the existing
`sourceCorrelation (Finset.range N) S
  (ordinaryShiftWord H liouvillePositiveBool)`.

When `N>0` and `S=∅`, the empty character is
exactly 1; when `N=0`, even the empty character is
zero. These two distinct cases have separate source
theorem heads.

The full arithmetic energy is

```text
E^Liouville_(N,H)
  := sum_(S⊆H, S≠∅)
       (C^Liouville_(N,H)(S))².
```

The theorem `liouvilleAllOrderEnergy_eq_sourceEnergy`
identifies that sum, term by term, with the exact
`nonemptyCorrelationEnergy` in the generic finite
Walsh library. It neither estimates nor assumes this
energy is small. Subsets of all orders remain present;
the number of nonempty coefficients is `2^|H|−1`.

## 4. Exact arithmetic consumer: conditional cyclic pattern TV

The previous finite cyclic theorem now becomes a
precisely arithmetic-source comparison:

```text
r := max(H),     r<N,

TV(P_cyclic(lambda(1..N),H), U_H)
   <= r/N + 0.5*sqrt(E^Liouville_(N,H)).
```

This is source-drafted as
`liouvilleCyclicTV_le_energy`. Here the cyclic
sample uses labels

```text
lambda(((n+h) mod N)+1)
```

and the ordinary source moment uses

```text
lambda(n+h+1),
```

at the SAME root population `n=0,...,N−1`.
The final `r` root collar is charged exactly
as in the previous generic finite theorem, not
inferred from unlabeled graph geometry.

A second declaration defines
`LiouvilleAllOrderOrdinaryEnvelope N H epsilon` as

```text
0<=epsilon
and
for ALL nonempty S⊆H at the SAME N:
  |C^Liouville_(N,H)(S)| <= epsilon.
```

Its equivalence with the earlier GENERIC all-order
envelope is proved as a type-level proposition
equivalence; no value for epsilon is constructed.

**Conditional only**, this arithmetic premise yields

```text
TV(P_cyclic,U_H)
  <= r/N + 0.5*sqrt((2^|H|−1)*epsilon²).
```

The exact endpoint, all-orders, averaging mode,
cardinality cost and shift range remain explicit.

## 5. Scope limitations and arithmetic research frontier

This increment removes one actual typing/semantic
obstruction: the finite Walsh source is no longer
purely an arbitrary Boolean family when applied
to Liouville. It does NOT remove the much deeper
analytic obstruction of proving higher-order
cancellation for Liouville.

In particular:

- The recently published ordinary fixed
  nonproportional **two-point** result, even with an
  independently verified proof port, supplies
  neither three-point nor higher-order estimates.
- Its form-dependent constants do not imply one
  epsilon uniform in `H_N` when shifts grow with N,
  as witnessed by the separate abstract
  `FixedShiftUniformityObstruction.lean` source.
- The separate OpenAI Result 007 pinned Mertens
  import/source-resolvability gate remains open;
  this increment uses no such external result.
- A finite cyclic sign-pattern TV estimate does
  not determine microscopic spectral gap
  distributions or establish Montgomery/GUE/RH.

The **next true arithmetic supplier** is either
a directly proved ordinary all-order summed-square
Liouville correlation estimate at the required
selected growing shift sets, or a common all-subset
envelope whose `(2^|H|−1)*epsilon²` tends to zero
in tandem with `r/N`, subject to finite-sample
pattern-support feasibility constraints.

## 6. Source heads and independently bounded checks

**Four new definitions**:

```text
liouvillePositiveBool
liouvilleSubsetMean
liouvilleAllOrderEnergy
LiouvilleAllOrderOrdinaryEnvelope
```

**Ten new proposed theorem heads**:

```text
liouville_positive_pm_one
liouvillePositiveBool_sign
ordinaryLiouvilleWord_sign
liouvilleSubsetMean_eq_sourceCorrelation
liouvilleSubsetMean_empty
liouvilleSubsetMean_zero_sample
liouvilleAllOrderEnergy_eq_sourceEnergy
liouvilleEnvelope_iff_generic
liouvilleCyclicTV_le_energy
liouvilleCyclicTV_of_allOrderEnvelope
```

Passive clean-replay target:
`verification/liouville-walsh-arithmetic-source-630-v0.1.toml`.

It selects **all 10 transitive local modules**, including
the eight preceding generic finite components,
one Mathlib-backed arithmetic parent and the new
source module: **80 theorem heads, 33 definitions**,
each listed and SHA-bound. Original independent
targets remain separate and unchanged.

Independent deterministic *exact integer* checks of
the written finite identities used selected shift
sets including `∅, {0}, {1}, {0,1}, {0,2},
{1,3}, {0,1,3}, {0,2,4}, {1,3,5},
{0,3,5,7}`, and positive sample sizes up to 80,
with the cyclic hypothesis `r<N`.

Results: 774 finite shift/sample cases, 67,814
individual coordinate signs, 3,552 subset
moment comparisons, and 774 each for Parseval,
uniform energy-envelope arithmetic and cyclic
TV inequalities, **zero discrepancies**.
Additionally `lambda(n+1)∈{±1}` was checked
for `n=0,...,2000`. These are bounded
computations, not kernel-checked Lean proof terms.

No Lean/Lake build, native testing, CI
qualification, external proof-port, transitive
axiom inspection, public root import, merge,
or issue closure is represented.

**Final evidence: SOURCE_DRAFT / NOT_RUN /
NOT_KERNEL_AUDITED / FULL_ORDER_CHOWLA_OPEN /
FINITE_ARITHMETIC_IDENTIFICATION_ONLY /
GUE_RH_NONCLAIM.**

## 7. Exact odd-lifted dyadic recurrence and noncontractive energy budget

**2026-10-22.** The next bounded arithmetic increment reuses this
actual Liouville source interface to expose exactly which part of
higher-order correlations complete multiplicativity controls.

New module:
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean`
(blob `0c8813fd24fb5be3bcc0ea0ded8ab79d231505c2`).
It does not alter any preceding source module.

Given any finite set H and selected subset S⊆H,
the lifted shifts are `2h+1`, so their source values
are `lambda(n+2h+2)`. At even root n=2m each factor
is `-lambda(m+h+1)`; at odd root n=2m+1
the product is `lambda(2m+2h+3)`, a separate
UNBOUNDED odd-affine correlation.

Thus, at any M>0, the normalized moment is EXACTLY

```text
liftedMean(2M,S) =
  ((-1)^|S| * ordinarySourceMean(M,S)
    + oddResidualMean(M,S))/2.
```

Applying the two-square convexity inequality and summing
over ALL nonempty selected shift subsets yields the
sharp conditional all-order energy comparison

```text
E_lifted(M,H)
 <= (E_source(M,H)+E_oddResidual(M,H))/2.
```

The coefficient `1/2` is exact, but no unconditional
contraction or cancellation follows. Example `H={0}`,
`M=1` has source, residual and lifted energies
all equal to one, attaining equality. Empty S has
normalized moment one and never belongs to these energies.

The new module defines eight functions/propositions and
drafts ten theorem declarations. A new **eleven-module**
passive target,
`verification/liouville-odd-lift-dyadic-recurrence-630-v0.1.toml`,
selects all 90 theorem and 41 definition heads, preserving
the earlier standalone ten-module target. Full review at
`docs/reviews/chowla-sofic-liouville-odd-lift-recurrence-630.md`.

**Still missing:** an injective shift-image/subtype subset
reindexing identifying these H-indexed lifted energies
with the canonical energy on `{2h+1|h∈H}`, and most
importantly a genuinely arithmetic odd-residual energy
estimate. The published fixed-binary affine theorem does
not control all higher orders or a growing shift family.

Independent integer checks (768 configurations, 5,824
subset coefficients, 768 energy bounds) yielded no
discrepancies. **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ODD_RESIDUAL_SUPPLIER_OPEN / NO_GUE_OR_RH_EDGE.**
