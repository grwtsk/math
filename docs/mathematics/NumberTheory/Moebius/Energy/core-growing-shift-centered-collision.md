# Centered squarefree collision progression

Issue: #733. Parent connection layer: #727 / draft PR #729 at exact head `e61ccef5a2cd0cc0dd4ab00d3eefa62bc4afde65`.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CENTERED_SQUAREFREE_COLLISION_ESTIMATE_OPEN**.

## Selected bounded increment

The repeated-middle component isolated in #716 is

```text
Q_collision(h,a)
 = mu(a+1) * mu(a+1+h)^2 * mu(a+1+2h).
```

Its inherited presentation still carries the redundant upper-triangle index
`b`, together with the filter `b=a+h`.  This increment removes that redundant
coordinate exactly and then centers the progression at its squarefree
midpoint.

No estimate is introduced.

## Positive-shift progression

For `h>0`, the collision-line upper packet is

```text
sum_(b<N) sum_(a<b, b=a+h) Q(h,a,b).
```

The source defines

```lean
mertensTwoPointQuarticCollisionProgression h N
```

by

```text
sum_(a<N-h)
  mu(a+1) * mu(a+1+h)^2 * mu(a+1+2h).
```

A finite sigma-index bijection

```text
(b,a) |-> a,
b=a+h
```

proves

```text
mertensTwoPointQuarticCollisionUpper(h,N)
 = mertensTwoPointQuarticCollisionProgression(h,N).
```

The condition `h>0` is essential: it is exactly what changes `a<=b` into the
strict upper-triangle condition `a<b`.

## Centered midpoint coordinate

Set

```text
m = a+1+h.
```

Then

```text
a+1   = m-h,
a+1+h = m,
a+1+2h = m+h.
```

The image of `a<N-h` is exactly

```text
h+1 <= m < N+1.
```

The source defines

```lean
mertensTwoPointQuarticCenteredCollisionCell
mertensTwoPointQuarticCenteredCollision
```

and proves

```text
mertensTwoPointQuarticCollisionProgression(h,N)
 = sum_(h+1<=m<N+1)
     mu(m-h) * mu(m)^2 * mu(m+h).
```

This is the literal centered three-point progression attached to the
repeated-middle quartic collision.

## Squarefree midpoint

Mathlib's exact Möbius-square theorem gives

```text
mu(m)^2 = 1_Squarefree(m).
```

The centered cell therefore equals

```text
if Squarefree(m)
then mu(m-h) * mu(m+h)
else 0.
```

The source defines

```lean
mertensTwoPointQuarticCenteredSquarefreeCell
mertensTwoPointQuarticCenteredSquarefreeCollision
```

and proves exact equality with the centered repeated-middle packet.

No squarefree density, asymptotic replacement, or divisor-square expansion is
used.

## Active packet identity

Every active shift

```text
harmonicShiftLower(j,t)+k
```

is positive.  Summing the one-cell identities over all genuine core depths and
active shifts yields

```text
coreGrowingShiftQuarticCollisionEnergy(j)
 = coreGrowingShiftQuarticCenteredSquarefreeCollisionEnergy(j).
```

Thus the collision-line half of the quartic obstruction is now literally a
family of centered binary Möbius correlations with a squarefree midpoint:

```text
sum_m 1_Squarefree(m) * mu(m-h) * mu(m+h).
```

## Source-facing compensation

The source introduces

```lean
SubpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation
```

with the same visible diagonal allocation as #727.  It proves exact
equivalence with

```lean
SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation.
```

Therefore the coordinate change neither strengthens nor weakens the analytic
premise.

Together with the inherited collision-free parallelogram budget, the centered
source retains the conditional endpoint:

```text
centered squarefree collision-line compensation
+
collision-free parallelogram budget
        ↓
collision-separated quartic compensation
        ↓
conditional RH endpoint.
```

## External-source boundary

The centered form is the canonical target for a future squarefree-sieved
binary Chowla or corrected-Elliott adapter.  Such an adapter must still pay:

1. the complete growing radius range `h`;
2. every centered interval `[h+1,N+1)` occurring in the active packet;
3. squarefree-midpoint localization, without replacing it by density;
4. depth and prefix multiplicities;
5. one all-scale constant;
6. finite small scales.

A fixed-form theorem does not provide these fields by quantifier exchange.

## Zero-shift hostile control

At `h=0`, the strict upper-triangle collision set is empty, while the direct
progression would restore the diagonal.  The source records this mismatch
explicitly.  Consequently no theorem may drop the `h>0` premise when replacing
the filtered upper triangle by the direct progression.

## Proof classification

- collision-line collapse: exact finite bijection;
- midpoint centering: exact finite bijection;
- squarefree rewrite: imported exact Mathlib arithmetic identity plus local cast;
- active packet lift: finite summation congruence;
- compensation equivalence: exact rewriting;
- RH consequence: conditional reduction through inherited declarations.

## Nonclaims

This increment does not prove a squarefree-midpoint correlation estimate,
ordinary or growing-shift Chowla, corrected Elliott, a divisor-square sieve
bound, collision-free parallelogram cancellation, Lean/Lake elaboration,
kernel acceptance, merge, or RH.

## Next obstruction

Prove a quantitative all-scale bound for the centered family

```text
sum_(h+1<=m<N+1, Squarefree m)
  mu(m-h) * mu(m+h)
```

with the exact active ranges and multiplicities, or reindex the squarefree
selector into signed square-modulus fibres while preserving the centered
binary correlation.
