# Quadratic primes: a fixed-sieve obstruction and the next analytic supplier

Research direction and mathematical ownership: grwtsk contributors.
Proof drafting assistance: OpenAI ChatGPT. Mathlib results retain their
upstream authorship and Apache-2.0 license.

This continues issue [#262](https://github.com/grwtsk/math/issues/262) and
draft [PR #424](https://github.com/grwtsk/math/pull/424), under
[#257](https://github.com/grwtsk/math/issues/257). Its base is
`f979725b01859450c1a345cd547c2eceedc80bf1`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** Neither the parent nor this
increment is represented as elaborated or accepted. The source drafts may
need repair. No Lean/Lake execution or transitive trust audit occurred.

## Reused local arithmetic and unchanged target

PR #424 already supplies the root and residue-count source drafts:

\[
r(d)=\#\{0\le a<d:d\mid a^2+1\},\qquad
A_d(X)=\#\{1\le n\le X:d\mid n^2+1\},
\]

with coprime CRT multiplicativity, prime local factors, the full endpoint
formula, and the rational bound

\[
|A_d(X)-Xr(d)/d|\le r(d)\quad(d\ge1).
\]

It also retains the Gaussian source n+i and the exact equations
`ac-bd=n`, `ad+bc=1`. This continuation imports those files and their
prime-only logarithmic mass; it does not redefine the local interfaces.

The inherited target remains

\[
\forall B\in\mathbb N\;\exists n>B:\quad n\ge1,\quad n^2+1\text{ is prime}.
\]

At index cutoff ten, the five prime values are 2,5,17,37,101. Counting
all primes through the value cutoff 101 instead gives 26. The exact
`quadraticCount` and its strict-lower tail count remain authoritative.

## A uniform obstruction to fixed finite sieves

For every M>=1 and B>=0, put

\[
D=M^2+1,\qquad n=M\bigl(1+(B+1)D\bigr).
\]

Then n>B, and direct multiplication gives

\[
n^2+1=D\bigl(1+2M^2(B+1)+M^2(B+1)^2D\bigr).
\]

Both factors exceed one. Every divisor d>1 of M divides n and therefore
cannot divide n^2+1. The new source draft proves the exact statement

\[
\forall M\ge1\;\forall B\;\exists n>B:\quad
\neg\operatorname{Prime}(n^2+1)\ \land\
\forall d>1\ (d\mid M\Rightarrow d\nmid n^2+1).
\]

Taking M as a product of any fixed finite collection of primes produces
arbitrarily large composite survivors of that sieve. The smaller control
30^2+1=901=17*53 survives sieving by 2,3,5,7. For M=2,B=3, the general
construction gives n=42 and n^2+1=1765=5*353.

This refutes the implication "fixed-sieve survivor implies prime". It is
not a counterexample to quadratic-prime infinitude or a refutation of
methods with growing sieve levels. No parity-breaking estimate is claimed.

For arbitrary finitely supported real sieve coefficients lambda_d, the
parent's residue error bound gives only the written consequence

\[
\left|\sum_d\lambda_d A_d(X)
-X\sum_d\lambda_d\frac{r(d)}d\right|
\le\sum_d|\lambda_d|r(d).
\]

A lower sieve must pay the entire error and prove that its signed weights
lower-bound actual prime support. A positive local product, nonempty
survivor set, or positive operator proves neither requirement.

## Actual Mangoldt source and complete correction

The new source uses Mathlib's von Mangoldt function at the actual polynomial
values and the parent's prime-only mass:

\[
W(X)=\sum_{1\le n\le X}\Lambda(n^2+1),\qquad
P(X)=\sum_{\substack{1\le n\le X\\n^2+1\text{ prime}}}\log(n^2+1).
\]

It defines the complete termwise correction E(X) and proves the exact
identity and sign

\[
E(X)=\sum_{1\le n\le X}
 [\Lambda(n^2+1)-{\bf1}_{\operatorname{Prime}(n^2+1)}\log(n^2+1)]\ge0,
\qquad W(X)=P(X)+E(X).
\]

These are identities and a nonnegativity estimate, not a small-error
estimate. The new finite consumer explicitly requires B<=X,

\[
L\le W(X),\qquad E(X)\le E_{\rm budget},\qquad
\boxed{P(B)+E_{\rm budget}<L}.
\]

It then returns an actual prime index B<n<=X. Paying P(B) prevents a
bounded prime value from being repeatedly reused as infinitude. Equality
in the displayed margin is insufficient. No estimate is manufactured by
this conditional consumer.

## An elementary correction bound and an open analytic supplier

The new square-gap source proves, for all positive indices,

\[
n^2<n^2+1<(n+1)^2.
\]

Thus n^2+1 is not a square and cannot equal a^(2j), for any natural base
a or exponent j. The hypothesis n>=1 matters: at n=0 the value is 1.

The following quantitative counting argument is written mathematics only;
it is not a new Lean correction-bound declaration. Let X>=1,
Y=X^2+1 and K=floor(log Y/log 2). Any remaining possible proper-prime-power
contribution has exponent k>=3 and base at most Y^(1/3). The map from
positive n to n^2+1 is injective. Counting all integer bases and all
k<=K overcounts the relevant values, so

\[
0\le E(X)\le\lfloor Y^{1/3}\rfloor K\log Y
\le\frac{Y^{1/3}(\log Y)^2}{\log2}
=O(X^{2/3}(\log X)^2)=o(X).
\]

This bound allows possible odd exponents; it does not assert that any
such proper power occurs. No stronger Diophantine exclusion theorem is
being imported. The full weighted counting argument and its limiting
estimate remain formalization obligations.

A small meaningful analytic supplier is the precise assertion

\[
\exists c>0\;\exists X_0\in\mathbb N\;\forall X\in\mathbb N,
\quad X\ge\max(1,X_0)\Longrightarrow W(X)\ge cX.
\tag{OPEN}
\]

It is a uniform lower bound for the literal polynomial Mangoldt sum, not
a positive upper-sieve count, an almost-prime count, or a two-dimensional
Gaussian average. It is not proved here. A thin Gaussian bilinear supplier
would have to preserve `ad+bc=1` and quantitatively reach this actual source
or the parent's prime-only source.

If OPEN were independently proved, the elementary correction would
eventually be <=cX/2, giving

\[
P(X)\ge cX/2,\qquad Q(X)\ge\frac{cX}{2\log(X^2+1)}.
\]

This tends to infinity. For each B, choosing X>B with
`cX-correctionBudget(X)>P(B)` supplies the strict fresh-index margin above.
This shows where the indispensable analytic lower bound enters; it does
not discharge that bound. Because the target is infinitude, finitely many
small indices need not all be prime or separately verified to deduce it
from an all-large-X growing lower bound.

## Validation and remaining work

The isolated root is `GRWTSK.Interfaces.QuadraticSieveObstructionCore`.
The static manifest binds this increment to the exact parent manifest,
Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`, and
`leanprover/lean4:v4.33.0`. Its existence is not a replay receipt.

| Obligation | Status in this continuation |
|---|---|
| Unbounded composite survivors of each fixed finite sieve | New exact source draft |
| Square gap and exclusion of every even exponent | New exact source drafts |
| Actual Mangoldt source, full correction, fresh-index consumer | New exact/conditional source drafts |
| Coprime CRT, local factors, endpoints, Gaussian line | Inherited from PR #424 |
| Quantitative proper-power counting and limit | Written derivation; formalization open |
| Positive linear lower bound for the actual thin source | Open analytic supplier |
| General prime-power root lifting | Still open |
| Exact-head elaboration, public types, transitive audit and external acceptance | Not performed |
| Quadratic-prime infinitude | Not proved |

Ordinary integer/rational diagnostics check the construction, strict
square gaps, and finite controls. They neither elaborate Lean nor validate
an infinite analytic supplier. The effectful diagnostic scripts remain
outside the mathematical repository. Issues #262 and #257 remain open.
