# Logarithmic pickup sampling with a paid interpolation error

Owners: #335 and #334 / RH-E02. Continuation of draft PR #338.
Parent: `a5dde3c6e366d323328f7a50ada936995c656282`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ARITHMETIC_SUPPLIER_OPEN.**
Human mathematical direction: grwtsk contributors. Derivation and source-draft
assistance: OpenAI ChatGPT. Imported mathematics and attribution are retained.
This is a source-bound mathematical increment, not a replay receipt.

## 1. Reuse the actual source

Retain the existing `wholePickup`, `mertensPrefix`, actual Mobius coefficients,
closed floor cutoff, energy abscissa, and exact Mathlib RH consumer. Write

\[
M_n=\sum_{k=1}^{n}\mu(k),\quad
A_n=\sum_{k=1}^{n}\frac{\mu(k)}{\sqrt{k}},\quad
Q_n=A_n-\frac{M_n}{\sqrt n}=\frac12 W(\log n),\qquad n\ge1.
\]

These symbols abbreviate existing finite sources, not new free coefficients.
Define the source-identical sampled waveform

\[
N(u)=\lfloor e^u\rfloor,\qquad
G(u)=W(\log N(u)),\qquad u\ge0.
\]

It is constant on each half-open cell `[log n, log(n+1))`. It retains the
complete signed value `2 Q_n`, not separate absolute bounds on `A_n` and `M_n`.
The source proves measurability and the exact integer-event identity. Neither
continuity of G nor equality of G and W between events is asserted.

## 2. Derive and pay the whole interpolation residual

The imported `wholePickup_closed_prefix_flux` gives, at x=exp u and N=floor x,

\[
W(u)=2A_N-2M_N/\sqrt x,\qquad
G(u)=2A_N-2M_N/\sqrt N.
\]

Consequently the actual difference is exactly

\[
r(u)=W(u)-G(u)=2M_N(N^{-1/2}-x^{-1/2}).
\]

Only after this signed cancellation use the elementary existing allowance
`|M_N| <= N`. For a=sqrt x, b=sqrt N we have 0<b<=a and a^2-b^2=x-N<1. Thus

\[
|r(u)|\le\frac{2b(a-b)}a
\le\frac{a^2-b^2}{a}\le\frac1a=e^{-u/2}.
\tag{1}
\]

The middle inequality has exact nonnegative slack `(a-b)^2/a`. No prime number
theorem, Mertens cancellation estimate, RH, or integrability premise is used.
The source module derives this from the actual source; it does not accept (1)
as a caller-supplied residual estimate.

For every real sigma>-1, including sigma=0,

\[
 e^{-\sigma u}r(u)^2\le e^{-(\sigma+1)u},\qquad
 \boxed{\int_0^\infty e^{-\sigma u}r(u)^2\,du\le\frac1{\sigma+1}.}
\tag{2}
\]

Genuine integrability is proved before using the real half-line integral.
In particular the undamped difference is in L2 with squared norm at most one.
This is NOT an undamped-energy estimate for W or G separately.

## 3. Finite and infinite energy returns

Write E_sigma(T)=integral_0^T exp(-sigma*u) W(u)^2 du and
J_sigma(T)=integral_0^T exp(-sigma*u) G(u)^2 du. Finite-window integrability
is proved without an arithmetic supplier. For T>=0 and sigma>-1,

\[
\boxed{E_\sigma(T)\le2J_\sigma(T)+\frac2{\sigma+1},\qquad
J_\sigma(T)\le2E_\sigma(T)+\frac2{\sigma+1}.}
\tag{3}
\]

The constants are uniform in T. The whole right side is not bounded uniformly
in T unless its remaining energy term is. The source separately proves

\[
e^{-\sigma u}W(u)^2\in L^1([0,\infty))
\iff e^{-\sigma u}G(u)^2\in L^1([0,\infty)),\qquad\sigma>-1.
\tag{4}
\]

Its quantitative half-line comparisons retain the appropriate integrability
premise. Equivalence (4) with sigma=d_j=2/(j+1) reuses #338's cofinality theorem:

\[
\alpha_W=0\iff\forall j\ge0,\quad
 e^{-d_j u}G(u)^2\in L^1([0,\infty)).
\tag{5}
\]

The old exact conditional RH endpoint consumes the right side. It is still an
unproved arithmetic supplier; the source has not paid a new complete-waveform
damping stage.

## 4. Concrete arithmetic series (written port, not yet a Lean summability theorem)

For sigma>0, nonnegative integration over the disjoint half-open cells gives
an identity of EXTENDED nonnegative quantities,

\[
\int_0^\infty e^{-\sigma u}G(u)^2\,du
 =\frac4\sigma\sum_{n=1}^{\infty}Q_n^2
       \left(n^{-\sigma}-(n+1)^{-\sigma}\right).
\tag{6}
\]

This does not assume either side finite. Each cell has a finite integral;
countable additivity/monotone convergence handles the complete sum. For an
integer N>=1 the integral through log N is the corresponding finite sum
through n=N-1. A general horizon has a separate partial last cell.

Since

\[
(n+1)^{-1-\sigma}\le
\frac{n^{-\sigma}-(n+1)^{-\sigma}}\sigma
=\int_n^{n+1}x^{-1-\sigma}\,dx\le n^{-1-\sigma},
\]

and n+1<=2n, finiteness at a fixed sigma is equivalent to

\[
\boxed{\sum_{n=1}^{\infty}\frac{
 \left(A_n-M_n/\sqrt n\right)^2}{n^{1+\sigma}}<\infty.}
\tag{7}
\]

The comparison factors for (6) versus the series in (7) are
`4 * 2^(-1-sigma)` and `4`. Both the factor 4 and the weight 1/sigma in (6)
matter. At sigma=0 the cell weight is log((n+1)/n), not a division by zero.
No damping-zero supplier is needed for RH-E02.

A dyadic version isolates a usable averaged arithmetic target. Let

\[
B_j=\sum_{2^j\le n<2^{j+1}} Q_n^2/n.
\]

For a fixed sigma>0, (7) is equivalent to summability of `2^(-sigma*j) B_j`,
with comparison factors `2^(-sigma)` and one. Requiring this for every
sigma>0 is equivalent to

\[
\boxed{\forall\varepsilon>0\ \exists C_\varepsilon\ge0\
 \forall j\ge0:\quad B_j\le C_\varepsilon 2^{\varepsilon j}.}
\tag{8}
\]

For the forward direction each term of the convergent nonnegative weighted
series is bounded by its sum. For the reverse direction apply (8) with
`epsilon=sigma/2` and sum a geometric majorant. Constants may depend on the
rate. A finite prefix or a single positive rate is insufficient.

Equations (6)-(8) have the written derivations above. The new Lean module
formalizes (1)-(5), the exact source/sample identities, measurability and
finite-window comparisons. It does NOT yet formalize the countable-cell
integral/summability bridge or provide a witness for (7)/(8). The natural next
arithmetic task is to bound these ACTUAL signed samples in averaged square,
not to assume the needed source estimate inside a new certificate record.

## 5. Sharper specialization of the previous one-third note

The earlier one-third convention is exp(-2u/3), hence sigma=2/3 here, NOT 1/3.
For its S_N=(3/2) sum_(n<N) Q_n^2[n^(-2/3)-(n+1)^(-2/3)], J_(2/3)(log N)=4S_N.
Equation (3) therefore gives the written finite bounds

\[
\boxed{H_{1/3}(\log N)\le8S_N+\frac65,\qquad
 S_N\le\frac12H_{1/3}(\log N)+\frac3{10}.}
\tag{9}
\]

These improve the valid additive constants 3 and 3/4 in the previous written
sampling estimates. They do not improve the unknown arithmetic bound on S_N.
No old source or historical receipt is overwritten.

## 6. Controls, source scope and acceptance

At x=N, r=0. At N=1, A_1=M_1=1 and Q_1=W(0)/2=0; deleting the Mertens endpoint
produces the wrong sample. Both prefixes must retain the same cutoff.
Dropping either the unit cell-width condition or the coefficient bound breaks
the scalar control. The same interpolation estimate applies to bounded
non-Mobius coefficients; therefore it cannot itself supply Mobius cancellation.

For example the all-positive coefficient sequence has M(x)=floor x and its
pickup grows at least exp(u/2)-1. Its interpolation error is still paid, but
its square energy diverges for every positive damping at most one. This is a
written hostile comparison, not an identification with the Mobius source.

The implementation adds only pure subject source, this note, and a passive
verification target. Existing definitions, prior target, source files, public
root, dependency pins, held work and execution holds remain unchanged.
Authored signatures are source text, not extracted elaborated types. Complete
elaboration, generated-declaration reconciliation, dependency/axiom/native
review, independent review and authorized external acceptance remain required.

Primary source bindings at the parent:

- `GRWTSK/NumberTheory/Moebius/CofinalEnergyDamping.lean`, blob
  `413f3e31870158078d380c5323f3c013efcdf00b`.
- `GRWTSK/NumberTheory/Moebius/PrimitiveRegularity.lean`, blob
  `4a5e8075d851d7c9b9f697412c28b0dd627885a1`.
- `GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean`, blob
  `28c98122255cae3df73a58c486590e60a801e157`.
- `GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean`, blob
  `bbb2d7e20158d8208d3a80e6128ae732f9e532bf`.
- `GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean`, blob
  `f5ed8915ec03933a15b0b3685294942d4959a24a`.
- Prior written sampling: `docs/mathematics/NumberTheory/Moebius/Energy/damped-tails.md`,
  blob `51391c347a5ff5fa32e44b668c718dcb579ae62d`.
- Pinned Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`:
  `Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean`, blob
  `2a14f893870c0aca2bc351ea41ed7ac8b24f41ad`, for actual exponential
  integrability and the half-line integral; `Mathlib/Algebra/Order/Floor/Semiring.lean`,
  blob `8af0bf21b086d4dd5ae3c92c52e6b2d5c5ae9235`, for the floor-cell laws.
