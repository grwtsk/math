# Centered Möbius–log LCM progression reduction

## Scope

This packet advances the seven-eighths Fejér route after the exact centered
Möbius–log congruence expansion. It does not prove a Möbius cancellation
estimate or the required \(X^{3/2}\log^4 X\) arithmetic bound.

The purpose is to replace antidiagonal witnesses \((d,a)\), where \(da=n\), by
the divisor modulus \(d\), retain the centering term as an augmented index, and
make the resulting arithmetic-progression structure explicit.

## Divisor-modulus centered expansion

The previous packet used

\[
\Lambda(n)-1
  = -1 + \sum_{da=n}\mu(d)\log a.
\]

The new source reindexes this as

\[
\Lambda(n)-1
  = -1 + \sum_{d\mid n}\mu(d)\log(n/d).
\]

It introduces an augmented divisor index

\[
  u=\begin{cases}
      \mathrm{none}, & \text{the centering anchor},\\
      \mathrm{some}(d), & d\mid n,
    \end{cases}
\]

with coefficient

\[
T_n(u)=\begin{cases}
-1,&u=\mathrm{none},\\
\mu(d)\log(n/d),&u=\mathrm{some}(d).
\end{cases}
\]

The local centered pair block remains one signed sum:

\[
\sum_{u}\sum_v T_n(u)T_{n+h}(v)
  =(\Lambda(n)-1)(\Lambda(n+h)-1).
\]

No independent absolute estimate is taken for the four anchor/genuine
channels.

## Uniform augmented moduli

Assign

\[
D(\mathrm{none})=1,
\qquad
D(\mathrm{some}(d))=d.
\]

Every actual pair of augmented indices satisfies

\[
D(u)\mid n,
\qquad
D(v)\mid n+h.
\]

The modulus-one assignment makes the statement valid for the anchor channels
without imposing an artificial restriction.

For every genuine–genuine pair this recovers the preceding compatibility
condition

\[
\gcd(d,e)\mid h.
\]

For an anchor-containing pair it reduces to \(1\mid h\).

## One LCM residue class

Fix \(d,e,h\). If \(n_1\) and \(n_2\) both satisfy

\[
d\mid n_i,
\qquad
e\mid n_i+h,
\]

then

\[
n_1\equiv n_2\pmod d
\quad\text{and}\quad
n_1\equiv n_2\pmod e.
\]

The source combines these congruences to obtain

\[
\boxed{n_1\equiv n_2\pmod{\operatorname{lcm}(d,e)}}.
\]

Thus the support in the shifted octave interval is contained in one arithmetic
progression modulo the lcm.

## Exact fiber cardinality

Define

\[
\mathcal F_{X,h}(u,v)
=
\left\{
 n:2X<n\le 4X-h,
 D(u)\mid n,
 D(v)\mid n+h
\right\}.
\]

Division by

\[
L=\operatorname{lcm}(D(u),D(v))
\]

is injective on this fiber: equality of quotients, together with equality of
remainders modulo \(L\), reconstructs the same integer. Since every member is
at most \(4X\), the source proves

\[
\boxed{
\#\mathcal F_{X,h}(u,v)
\le
\left\lfloor\frac{4X}{L}\right\rfloor+1.
}
\]

This is an exact finite theorem, not an asymptotic premise.

## Anchor obstruction

For \(u=v=\mathrm{none}\), both augmented moduli equal one. The fiber is exactly

\[
\mathcal F_{X,h}(\mathrm{none},\mathrm{none})
=
(2X,4X-h].
\]

Hence lcm sparsity alone leaves an \(O(X)\) local support. Summing over
\(O(X)\) shifts retains the naive pair-counting exponent \(2\), while the target
exponent is \(3/2\).

The remaining theorem must therefore preserve and exploit the centered signed
cancellation across augmented divisor indices. Absolute channel separation is
still insufficient.

## Exact new frontier

The packet defines

```lean
SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound
```

for the bound

\[
\sum_h\sum_n
w(n)w(n+h)
\sum_{u,v}T_n(u)T_{n+h}(v)
\ll X^{3/2}(\log X)^4,
\]

where every local term is accompanied by its lcm-progression theorem and fiber
cardinality estimate.

The source proves

```text
Mobius-log LCM progression bound
  iff
previous centered Mobius-log congruence bound.
```

Therefore this packet changes the arithmetic representation without changing
the logical strength of the open supplier.

## Evidence state

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_DIVISOR_MODULUS_REINDEXING_SOURCE_PROVED
LCM_PROGRESSION_FIBER_SOURCE_PROVED
LCM_FIBER_CARDINALITY_SOURCE_PROVED
SEVEN_EIGHTHS_MOBIUS_LOG_LCM_PROGRESSION_BOUND_OPEN
```

No Lean/Lake elaboration, kernel audit, Möbius cancellation estimate,
progression large-sieve theorem, threshold descent, zero-free theorem at
\(1/2\), or Riemann Hypothesis result is claimed.
