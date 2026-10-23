# Exact signed dyadic Liouville energy pairing and the antipodal collision obstruction

Research date: **2026-10-22**  
Owner: `grwtsk/math#630`, arithmetic quantifier owner `#441`.  
Direct inspected parent head: `992a4d1f6d4fdb40aaac3387747451d5ae31b8ab`.  
Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ALL_ORDER_ARITHMETIC_CANCELLATION_OPEN**.

## 1. One bounded result consumed by the canonical odd-lifted path

The parent `LiouvilleOddLiftCanonicalTransport.lean` source-drafted
the sharp but *one-sided* inequality

```text
E_lifted(M,H) <= (E_source(M,H) + E_oddResidual(M,H))/2.
```

This ignores a SIGNED mixed term that may be strongly negative.
The new separate source

`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean`

at exact blob `c7b4feffad2c7f7fdfc06ba79e0f9295ad831d90`

exposes the mixed term explicitly and gives a new conditional
supplier interface without imposing two separately small energies.

This mathematical result is algebraic and source-specific:
the source means are products of actual positive-index Mathlib
Liouville values on the same finite set of shifts. It does
NOT prove any analytic cancellation rate.

## 2. Precise correlation conventions and the signed pairing

Fix `M>0` and a finite set `H` of nonnegative, distinct shifts.
For each **nonempty** selected subset `S⊆H`, let

```text
C_S = (1/M) sum_(m=0)^(M-1)
        prod_(h∈S) lambda(m+h+1),

R_S = (1/M) sum_(t=0)^(M-1)
        prod_(h∈S) lambda(2t+2h+3),

L_S = (1/(2M)) sum_(n=0)^(2M-1)
        prod_(h∈S) lambda(n+2h+2).
```

The dyadic parity split proved in the preceding source is

```text
L_S = ((-1)^|S| * C_S + R_S)/2.
```

Define the SIGNED mixed energy

```text
X(M,H) = sum_(nonempty S⊆H) (-1)^|S| C_S * R_S.
```

The factor `(-1)^|S|` comes from one
`lambda(2u)=-lambda(u)` factor per selected shift.
It is indispensable: removing it reverses important
cases. `X` need not be nonnegative, unlike the
squared energy of a single sample.

The source theorem `oddLiftedMean_square_exact` expands
the square of each dyadic mean, and
`oddLiftedAllOrderEnergy_signed_identity` sums over
the ENTIRE nonempty subset family:

```text
4 E_lifted(M,H) = E_source(M,H) + E_residual(M,H)
                 + 2 X(M,H).
```

The already source-drafted exact shift-image
bijection `oddLiftedAllOrderEnergy_eq_canonical`
identifies the lifted energy with the CANONICAL
arithmetical energy on `H'={2h+1|h∈H}`.

Therefore, for `M>0`,

```text
4 E_Liouville(2M,H')
 = E_Liouville(M,H) + E_oddResidual(M,H) + 2 X(M,H).
```

This is an EQUALITY, not an asymptotic assertion,
and preserves the precise multiplicity of each
nonempty Walsh character.

## 3. A strictly more flexible conditional cancellation criterion

The source defines an uninhabited arithmetic proposition
`DyadicSignedMixedBudget M H epsilon`:

```text
epsilon >= 0,
E_source(M,H)+E_residual(M,H)+2X(M,H) <= 4*epsilon.
```

Its consumer proves, **conditional on an actual proof of that
proposition**, that `E_Liouville(2M,H') <= epsilon`.
If the canonical lifted collar `max(H')<2M`
also holds, the finite cyclic TV theorem returns

```text
TV(P_cyclic(lambda(1..2M),H'),U_H')
 <= max(H')/(2M) + sqrt(epsilon)/2.
```

This alternative supplier is *logically weaker* than
requiring both component energies to be small
individually, because the interaction could cancel
them. But the budget is **exactly equivalent to
a canonical lifted-energy bound** via the equality
above: creating a symbol for it does not create an
analytic estimate. The hard arithmetic problem is
to prove such a budget for an actual growing family
of Liouville shifts or prove the original energy
bound by another method.

The theorem
`dyadicSignedMixedEnergy_lower_bound` also derives
`X >= -(E_source+E_residual)/2` directly from
nonnegative canonical energy. This shows that even
a negative interaction is constrained.

## 4. A finite Liouville example where cancellation is complete

Take `M=2, H={1}`, so `H'={3}` and
`max(H')=3<2M=4`: the strict cyclic premise is
satisfied. For the unique nonempty subset,

```text
C = (lambda(2)+lambda(3))/2 = (-1-1)/2 = -1,

R = (lambda(5)+lambda(7))/2 = (-1-1)/2 = -1,

X = (-1)^1 * C * R = -1.
```

The lifted sample signs are

```text
lambda(4),lambda(5),lambda(6),lambda(7)
    = +1,-1,+1,-1,
```

so `L=0` and the canonical energy is exactly zero:

```text
E_source=1, E_residual=1, X=-1, E_lifted=0.
```

This is a concrete example where separate smallness
of either component energy FAILS, yet the signed
budget at epsilon=0 is satisfied. It validates
the factor and sign of the mixed cross term.

The earlier sharp noncontraction fixture at `M=1,H={0}`
goes the OTHER way:

```text
C=+1, R=-1, X=+1,
E_source=E_residual=E_lifted=1.
```

These finite fixtures cannot support an infinite
Chowla or sofic-limit assertion.

## 5. A complementary-pair counting interpretation (PAPER ONLY)

There is a deeper exact finite combinatorial identity,
**derived here on paper and independently integer-checked,
but NOT a theorem head in the new Lean source**.

Let `q=2^|H|` and `A_{M,H}` count ordered pairs
`(m,t)∈{0,...,M-1}²` such that, for every selected h∈H,

```text
lambda(m+h+1) = -lambda(2t+2h+3).
```

Since all values are ±1, expand the signed mixed correlation
over ALL subsets, including the empty subset:

```text
1+X
 = (1/M²) sum_(m,t<M)
       sum_(S⊆H) prod_(h∈S)
          [-lambda(m+h+1)*lambda(2t+2h+3)]

 = (1/M²) sum_(m,t<M)
       prod_(h∈H)
          [1-lambda(m+h+1)*lambda(2t+2h+3)].
```

Each coordinate bracket is `2` exactly when
the two signs are opposite and `0` otherwise.
Therefore the product contributes precisely
`q` for each counted antipodal pair, and `0`
for all other pairs:

```text
X(M,H) = (q/M²) * A_(M,H) - 1.
```

For H=∅ the formula remains correct, because
`q=1, A=M², X=0`. The hypothesis M>0 is
necessary for division by M²; at M=0 the source
uses the separate rational zero convention.

This identity reveals a concrete ANALYTIC and
COMBINATORIAL supplier candidate: count antipodal
source/odd-residual pattern pairs with sufficient
accuracy, rather than requiring the two marginal
energies to vanish independently.

It also yields the written unconditional inequality

```text
X(M,H) >= -1,

E_lifted(M,H) >= [E_source(M,H)+E_residual(M,H)-2]/4.
```

That second lower bound is meaningful when both
marginal energies are large. For the cancellation
fixture `M=2,H={1}`, there are no antipodal
pairs; `A=0`, `X=-1`, and the lower bound
is sharp with lifted energy zero.

**These two counting conclusions are paper-level
finite deductions only in this increment**. To
promote them as repository-proved declarations,
add an exact `Finset` two-root counting object,
prove the finite Walsh product expansion and
`A` identity, then independently replay the
new source with its full imports and axiom audit.
No conditional smallness should be inferred merely
from the collision-count definition.

## 6. Source inventory and independent evidence

Two new definitions:

```text
dyadicSignedMixedEnergy
DyadicSignedMixedBudget
```

Seven proposed Lean theorem declarations:

```text
oddLiftedMean_square_exact
oddLiftedAllOrderEnergy_signed_identity
canonicalOddLiftEnergy_signed_identity
canonicalOddLiftEnergy_eq_signed_budget
canonicalOddLiftEnergy_le_of_signed_budget
canonicalOddLiftCyclicTV_le_of_signed_budget
dyadicSignedMixedEnergy_lower_bound
```

Independent passive verification target:

`verification/liouville-dyadic-signed-pairing-630-v0.1.toml`.

This includes **13 selected local modules, 108 theorem heads,
46 definitions**, retaining the earlier twelve-module
canonical-odd-lift target intact. All source files,
declaration names and original upstream proof blobs
are explicitly recorded for later clean replay.

An independent exact-integer exercise used 12 finite
shift sets and M=1,...,64. Across **768 configurations**,
it checked **5,056 nonempty character identities**
and all 768 full-energy identities, with no discrepancy.
Separately it enumerated **1,073,280 ordered source/
odd-residual root pairs** and verified the paper-only
antipodal collision formula in all 768 configurations,
again with no discrepancy. In 646 configurations
the signed pairing was negative; in 27 nonempty
configurations the canonical lifted energy was zero.
These are finite calculations, not independent
Lean elaboration or kernel evidence.

No native Lean/Lake compilation, CI, independent
replay, `#print axioms`, public root import,
merged proof acceptance or analytic all-order
Chowla supplier is represented by this research
increment. All prior reports of source-only
formalization remain source-only.

**Evidence:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SIGNED_MIXED_SOURCE_IDENTITY_DRAFTED /
ANTIPODAL_PAIR_FORMULA_PAPER_ONLY /
MIXED_ARITHMETIC_DECAY_OPEN / GUE_RH_NONCLAIM`.
