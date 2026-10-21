# Twin-prime shift-two arithmetic boundary

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: #260 under Landau program #257. The exact count consumer is the merged
`ConfigurationCounts.twinCount` source from #258. This note describes a finite
arithmetic reduction only. It does not claim a twin-prime theorem, a sieve
parity breakthrough, or a new distribution estimate.

## 1. Exact endpoint

The arithmetic endpoint remains

\[
T(X)=\#\{p\le X:p\text{ and }p+2\text{ are prime}\},
\]

with infinitude expressed by a fresh witness above every lower cutoff. A
positive finite count at one cutoff is not an infinitude theorem.

The source modules in this packet connect three exact finite objects:

1. the shift-two Mangoldt correlation;
2. its Möbius-log divisor expansion and CRT-compatible divisor pairs;
3. the prime-only logarithmic correlation plus the complete proper-prime-power
   correction.

All remaining quantitative estimates stay explicit.

## 2. Shift-two CRT geometry

For positive divisors `d` and `e`, consider

\[
d\mid n,\qquad e\mid n+2.
\]

Any solution forces

\[
\gcd(d,e)\mid n,\qquad \gcd(d,e)\mid n+2,
\]

and therefore

\[
\gcd(d,e)\mid2.
\]

Conversely, if `g=gcd(d,e)` divides two, Bézout gives integers `A,B` with

\[
g=dA+eB.
\]

Writing `2=gk`, the integer

\[
z=-dAk
\]

satisfies

\[
d\mid z,\qquad e\mid z+2.
\]

A sufficiently large multiple of `de` translates `z` into the natural
numbers without changing either congruence. Hence, for positive moduli,

\[
\exists n\in\mathbb N:\ d\mid n\land e\mid n+2
\quad\Longleftrightarrow\quad
\gcd(d,e)\mid2.
\]

Every two solutions are congruent modulo

\[
L=\operatorname{lcm}(d,e).
\]

The implementation selects one solution and reduces it modulo `L` to obtain a
canonical residue `r`. The solution predicate is then exactly

\[
d\mid n\land e\mid n+2
\quad\Longleftrightarrow\quad
n\equiv r\pmod L.
\]

### Exact finite count and cutoff error

For inclusive cutoff `X`, define

\[
R_{d,e}(X)=\#\{0\le n\le X:d\mid n,\ e\mid n+2\}.
\]

Mathlib's exact count of a residue class in a finite interval gives

\[
R_{d,e}(X)
=
\left\lfloor\frac{X+1}{L}\right\rfloor
+
\varepsilon_{d,e}(X),
\]

where

\[
\varepsilon_{d,e}(X)\in\{0,1\}.
\]

The endpoint correction is retained as the literal comparison between the
canonical residue and `(X+1) mod L`; it is not absorbed into asymptotic
notation.

For example, `d=4`, `e=6` has `L=12` and residue `4`. Through `X=30`, the
solutions are `4`, `16`, and `28`, so the exact count is three. By contrast,
`d=3`, `e=6` is incompatible because three does not divide two.

## 3. Exact Möbius-log expansion

Using Mathlib's pinned arithmetic-function identity

\[
\Lambda=\mu*_{\mathrm{Dir}}\log,
\]

the source defines

\[
M(n)=
\sum_{de=n}\mu(d)\log e
\]

and identifies `M(n)` exactly with `Λ(n)`.

The bounded shift-two correlation

\[
C_2(X)=\sum_{1\le n\le X}\Lambda(n)\Lambda(n+2)
\]

therefore becomes the finite nested sum

\[
C_2(X)=
\sum_{1\le n\le X}
\sum_{de=n}
\sum_{fg=n+2}
\mu(d)\mu(f)\log(e)\log(g).
\]

Every actual divisor pair in this expansion satisfies

\[
\gcd(d,f)\mid2.
\]

The implementation inserts this condition explicitly and proves that doing so
removes no term. Incompatible pairs are not retained as zero-density informal
cases; they are exactly absent from the source.

## 4. Small divisors and the signed residual

For an arbitrary cutoff `D`, the compatible source is split into

\[
C_2(X)=S_D(X)+R_D(X),
\]

where `S_D` retains terms with both divisor variables at most `D`, and `R_D`
retains every other compatible term.

The residual is signed. Möbius coefficients are not replaced by absolute
values, and no cancellation estimate is assumed. An unshifted Möbius estimate
cannot inhabit the terminal interface unless an explicit theorem transports it
to this fixed shift-two bilinear source.

## 5. Prime-only source and the proper-prime-power correction

Define the prime-only logarithmic weight

\[
w(n)=
\begin{cases}
\log n\,\log(n+2),&n,n+2\text{ prime},\\
0,&\text{otherwise}.
\end{cases}
\]

and

\[
P_2(X)=\sum_{1\le n\le X}w(n).
\]

Every active term is strictly positive, so the source proves

\[
P_2(X)>0
\quad\Longleftrightarrow\quad
T(X)>0.
\]

The complete proper-prime-power correction is defined exactly by

\[
E_{\mathrm{pp}}(X)=C_2(X)-P_2(X).
\]

Termwise nonnegativity follows from

\[
0\le w(n)\le\Lambda(n)\Lambda(n+2).
\]

Thus

\[
C_2(X)=P_2(X)+E_{\mathrm{pp}}(X),
\qquad E_{\mathrm{pp}}(X)\ge0.
\]

The correction is complete: no prime-power contribution is silently discarded.
The pair `(7,9)` is a hostile example. Both factors carry positive Mangoldt
mass, but nine is not prime, so the prime-only twin weight is zero.

## 6. Terminal quantitative boundary

Suppose a proposed local analysis supplies

\[
L\le S_D(X),
\]

and independent bounds

\[
|R_D(X)|\le E_{\mathrm{res}},
\qquad
E_{\mathrm{pp}}(X)\le E_{\mathrm{pp}}.
\]

Only the strict inequality

\[
E_{\mathrm{res}}+E_{\mathrm{pp}}<L
\]

allows the source to conclude

\[
T(X)>0.
\]

Equality is rejected. No bound for the signed residual or prime-power
correction is supplied by this packet.

For infinitude, this finite certificate must be produced with fresh support
above every lower cutoff, or replaced by a uniform lower bound that grows
without bound. Reusing a single pair does not satisfy that quantifier.

## 7. Parity boundary

The remaining obstruction is not the parity of the integers `n` and `n+2`.
It is the sieve parity problem: unsigned local information does not distinguish
prime support from almost-prime support at the necessary scale.

A valid later supplier must identify a signed or bilinear observable that
separates these contributions and prove the corresponding fixed-shift bound.
Positive local factors, nonempty sieve support, positive matrices, or a bounded
gap at an unspecified shift cannot substitute for this requirement.

## 8. Controls retained

The source controls include:

- incompatible moduli `d=3`, `e=6`;
- compatible moduli `d=4`, `e=6` and an exact finite residue count;
- the prime pair `(7,13)` at shift six with composite intermediate value nine;
- positive Mangoldt mass at the proper prime power nine;
- odd shifted sieve survivors containing a composite;
- repeated use of `(3,5)` rejected as an infinitude witness;
- exact finite arithmetic coexisting with a zero small-cutoff twin count;
- rejection of a non-strict terminal margin.

## 9. Verification and nonclaims

The packet is source-only. Required acceptance work remains:

- exact-head Lean elaboration and source repair;
- exact public declaration types;
- transitive import, axiom, and runtime-safety audit;
- hostile replay against the committed manifest;
- external acceptance under the repository replay policy.

The following are not supplied:

- a useful bound for the signed divisor residual;
- a quantitative proper-prime-power correction bound at the required scale;
- a parity-breaking bilinear or sieve estimate;
- an every-lower-cutoff twin witness supplier;
- a twin-prime theorem.
