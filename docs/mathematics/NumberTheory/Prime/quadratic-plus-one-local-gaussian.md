# `n^2 + 1` local roots and the thin Gaussian line

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: #262 under Landau program #257. The exact prime-value endpoint is the
merged `ConfigurationCounts.quadraticCount` source from #258. This packet
supplies finite local arithmetic and Gaussian identities only. It does not
claim a polynomial-sieve lower bound, a parity breakthrough, or infinitely
many primes of the form `n^2+1`.

## 1. Exact endpoint

The repository endpoint is

\[
Q(X)=\#\{1\le n\le X:n^2+1\text{ is prime}\}.
\]

Infinitude remains

\[
\forall B\;\exists n>B:\ n^2+1\text{ is prime}.
\]

One positive finite count cannot be reused above every lower cutoff. The
packet retains this quantifier boundary.

## 2. Natural local roots

For every modulus `d`, define

\[
R(d)=\{0\le a<d:d\mid a^2+1\},
\qquad
r(d)=|R(d)|.
\]

The primary implementation uses natural representatives. For positive `d`,
it is identified with the subtype

\[
\{x\in\mathbf Z/d\mathbf Z:x^2=-1\}.
\]

This comparison is explicit; it does not silently replace natural
representatives by a quotient-ring count.

Modulus one is handled separately:

\[
R(1)=\{0\},\qquad r(1)=1.
\]

At modulus two,

\[
R(2)=\{1\},\qquad r(2)=1.
\]

No definition divides by the modulus, so the zero-modulus case cannot enter a
later density formula accidentally.

## 3. Coprime CRT multiplicativity

For coprime positive `m,n`, Mathlib supplies the ring equivalence

\[
\mathbf Z/(mn)\mathbf Z
\simeq
\mathbf Z/m\mathbf Z\times\mathbf Z/n\mathbf Z.
\]

Because it preserves addition, multiplication and `-1`, it restricts to an
equivalence of the root subtypes. Therefore

\[
r(mn)=r(m)r(n)
\qquad((m,n)=1).
\]

The coprimality premise is structural. The packet contains no theorem
multiplying root counts for noncoprime moduli. The hostile example is

\[
r(2)=1,\qquad r(4)=0,
\]

so `r(4) != r(2)^2`.

Prime powers must be treated by a separate lifting theorem. In particular,

\[
R(25)=\{7,18\}
\]

and `25 | 7^2+1`; a sieve model that retains only prime moduli loses actual
prime-power divisibility information.

## 4. Prime local counts

For an odd prime `p`, the root set is the set of square roots of `-1` in
`ZMod p`. The pinned Legendre-symbol theorem gives the exact number of roots,
while the supplementary law characterizes when `-1` is a square.

The packet derives

\[
r(2)=1,
\]

\[
p\equiv1\pmod4\Longrightarrow r(p)=2,
\]

and

\[
p\equiv3\pmod4\Longrightarrow r(p)=0.
\]

The statements are conditional on the literal congruence and prime
hypotheses. They are not heuristics or local-density approximations.

## 5. Exact finite block count

Define

\[
A_d(X)=\#\{1\le n\le X:d\mid n^2+1\}.
\]

For one fixed residue `a<d`, its number of occurrences in `(0,X]` is

\[
\left\lfloor\frac Xd\right\rfloor+
\mathbf1_{0<a\le X\bmod d}.
\]

Summing only over the local roots gives the exact block formula

\[
A_d(X)
=
\left\lfloor\frac Xd\right\rfloor r(d)
+
\varepsilon_d(X),
\]

where

\[
\varepsilon_d(X)
=
\sum_{a\in R(d)}
\mathbf1_{0<a\le X\bmod d}.
\]

The endpoint correction is literal and satisfies

\[
0\le\varepsilon_d(X)\le r(d).
\]

Using

\[
X=d\left\lfloor\frac Xd\right\rfloor+(X\bmod d),
\]

the declared rational normalization yields

\[
\left|
A_d(X)-\frac{Xr(d)}d
\right|
\le r(d)
\qquad(d>0).
\]

For `d=1`, the exact formula reduces to `A_1(X)=X`.

A concrete control is `d=5`, `X=12`:

\[
R(5)=\{2,3\},\qquad A_5(12)=5,
\]

with two complete blocks and one endpoint root. The rational discrepancy is

\[
5-\frac{12\cdot2}{5}=\frac15.
\]

## 6. The actual Gaussian norm

The thin Gaussian family is

\[
z_n=n+i\in\mathbf Z[i].
\]

The source uses Mathlib's actual Gaussian integer type, conjugation and norm.
It proves

\[
N(z_n)=n^2+1
\]

and

\[
z_n\overline{z_n}=n^2+1.
\]

The field is not changed and the norm is not replaced by an unrelated
quadratic form.

For general integral factors,

\[
(a+ib)(c+id)
=(ac-bd)+i(ad+bc).
\]

Thus

\[
(a+ib)(c+id)=n+i
\]

is exactly equivalent to

\[
ac-bd=n,
\qquad
ad+bc=1.
\]

The second equation is the thin-family constraint. A theorem averaged over a
two-dimensional Gaussian region does not imply a bound on this codimension-one
family without an explicit restriction theorem.

The packet also retains norm multiplicativity:

\[
N(a+ib)N(c+id)=n^2+1
\]

for every factorization of `n+i`, and shows how multiplying one factor by a
Gaussian unit and the other by its inverse preserves the product.

A concrete factorization is

\[
(1+2i)(2-3i)=8+i,
\]

corresponding to

\[
8^2+1=65=5\cdot13.
\]

Changing the sign to `(1+2i)(2+3i)` changes the imaginary coordinate to seven;
it is not a factorization on the fixed line.

## 7. Prime-only source

Define

\[
w(n)=
\begin{cases}
\log(n^2+1),&1\le n\text{ and }n^2+1\text{ prime},\\
0,&\text{otherwise},
\end{cases}
\]

and

\[
P(X)=\sum_{1\le n\le X}w(n).
\]

Every active term is strictly positive, so

\[
P(X)>0
\quad\Longleftrightarrow\quad
Q(X)>0.
\]

The source also defines the same sum through the Gaussian norm and proves the
two representations equal term by term.

## 8. Terminal quantitative boundary

Let `S(X)` be any proposed polynomial-sieve, Gaussian-bilinear, or other
analytic source. To reach the exact count it must supply an identity

\[
S(X)=P(X)+E(X)
\]

with a complete correction, a lower bound

\[
L\le S(X),
\]

an upper bound

\[
E(X)\le E_0,
\]

and the strict inequality

\[
E_0<L.
\]

Only then does the packet conclude `Q(X)>0`.

The signed-residual version separately charges

\[
E_{\mathrm{bilinear}}+E_{\mathrm{correction}}<L.
\]

No such analytic estimates are supplied here.

## 9. Hostile controls

The packet retains:

- modulus one and modulus two explicitly;
- prime-five and prime-three local counts;
- valid coprime multiplicativity at `2*5`;
- failure of noncoprime multiplicativity at `2*2`;
- exact block count and discrepancy at `d=5`, `X=12`;
- roots modulo `25` and an actual `25`-divisibility witness;
- `8^2+1=65` as a composite survivor not divisible by two or three;
- the actual Gaussian norm and factorization of `8+i`;
- loss of the fixed imaginary coordinate under a sign change;
- rejection of repeated use of the prime value at `n=1` as infinitude;
- local identities coexisting with zero count at a small cutoff;
- rejection of equality at the terminal error margin.

## 10. Verification and nonclaims

The packet is source-only. Required acceptance work remains:

- exact-head Lean elaboration and source repair;
- exact public declaration types;
- transitive import, axiom and runtime-safety audit;
- hostile replay against the committed manifest;
- external acceptance under the repository replay policy.

The following are not supplied:

- a prime-power lifting theorem;
- a polynomial-sieve Type-I estimate;
- a thin-family Type-II or Gaussian bilinear estimate;
- a prime-detection correction bound;
- a strict every-large-`X` lower margin;
- finite exception coverage;
- infinitely many primes of the form `n^2+1`.
