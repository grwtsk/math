# Finite-prime orbit extraction and the distinct-core obstruction

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition.** The requested actual-Liouville `DistinctOddCoreAllRate` estimate
is not proved. This note gives two concrete advances:

1. every fixed finite collection of prime-adic self-correlations can be paid by
a subpower internal-orbit allowance, and the weighted-prefix supplier is then
exactly equivalent to the packet between distinct selected-prime-free cores;
2. an arithmetic-realizable completely multiplicative countermodel satisfies
all selected-prime delay identities and all internal orbit cancellations but
has a linearly growing distinct-core packet. Thus no fixed finite-prime-only
argument can prove the actual supplier.

The viable frontier is a growing family of actual primes, with the complete
signed packet retained before outer absolute values.

Prepared from `grwtsk/math/main` at
`5d7e109f07aff1814c0efd0e169b5560d19331de`.
Research scope: `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

Compilation, expected-type checking, fresh-kernel replay, native execution and
transitive axiom audit are `NOT_RUN`. No weighted-prefix supplier, uniform
energy theorem, complete endpoint estimate or RH theorem is claimed.

## 1. Unchanged weighted source

Let

\[
K_N(m,n)=\frac1{\max(m,n)}-\frac1{N+1},\qquad 1\le m,n\le N.
\]

The exact weighted prefix-square pair form is

\[
J_N=\sum_{m,n\le N}\lambda(m)\lambda(n)K_N(m,n)
   =\sum_{k=1}^N\frac{L(k)^2}{k(k+1)}.
\]

The terminal subtraction, both ordered orientations and every coefficient sign
are retained. The predecessor two-adic source groups all pairs having the same
odd core and leaves the distinct-odd-core packet.

## 2. A finite selected-prime orbit

Fix a finite prime set \(P\). Every positive integer has a unique factorization

\[
n=dq,
\]

where every prime factor of \(d\) belongs to \(P\), and no prime in \(P\)
divides \(q\). Call \(q\) the \(P\)-free core.

Let \(I_{P,N}\) be the complete ordered contribution to \(J_N\) from pairs
having the same \(P\)-free core, and put

\[
R_{P,N}=J_N-I_{P,N}.
\]

For one fixed core \(q\), the packet is

\[
I_{P,N}(q)=
\sum_{\substack{d,e\;P\text{-smooth}\\dq,eq\le N}}
\lambda(dq)\lambda(eq)K_N(dq,eq).
\]

Since \(\lambda(dq)=\lambda(d)\lambda(q)\), the core sign squares out. Also

\[
K_N(dq,eq)
=\sum_{k=\max(dq,eq)}^N\frac1{k(k+1)}.
\]

Therefore finite reversal gives

\[
I_{P,N}(q)=
\sum_{k=1}^N\frac1{k(k+1)}
\left(
\sum_{\substack{d\;P\text{-smooth}\\dq\le k}}\lambda(d)
\right)^2\ge0.
\tag{1}
\]

This proves positivity without discarding any sign.

## 3. Euler allowance for the complete internal packet

For positive \(d,e,q\),

\[
0\le K_N(dq,eq)
\le\frac1{q\max(d,e)}
\le\frac1{q\sqrt{de}}.
\]

Hence

\[
I_{P,N}(q)
\le\frac1q
\left(\sum_{d\;P\text{-smooth}}d^{-1/2}\right)^2.
\]

The geometric Euler product is finite because \(P\) is finite:

\[
\sum_{d\;P\text{-smooth}}d^{-1/2}
=\prod_{p\in P}(1-p^{-1/2})^{-1}.
\]

Define

\[
\kappa(P)=\prod_{p\in P}(1-p^{-1/2})^{-2}.
\]

Summing over the distinct free cores gives the exact unconditional bound

\[
\boxed{
0\le I_{P,N}\le\kappa(P)H_N,
\qquad H_N=\sum_{q\le N}\frac1q.
}
\tag{2}
\]

Consequently

\[
\boxed{R_{P,N}\le J_N\le R_{P,N}+\kappa(P)H_N.}
\tag{3}
\]

For every fixed \(P\), the right-hand allowance is polylogarithmic and hence
smaller than \(C_{P,\eta}(N+1)^\eta\) for every \(\eta>0\). Thus

\[
\boxed{
R_{P,N}=O_{P,\eta}(N^\eta)\;\forall\eta>0
\iff
J_N=O_\eta(N^\eta)\;\forall\eta>0.
}
\tag{4}
\]

The two-adic reduction is the case \(P=\{2\}\), with a sharper exact harmonic
formula.

## 4. A growing actual-prime family is still payable

The same estimate remains useful when \(P=P_N\) grows, provided
\(\kappa(P_N)H_N=N^{o(1)}\).

For the initial prime set \(P(Y)=\{p\le Y\}\), use

\[
-\log(1-z)\le\frac{z}{1-z},\qquad 0\le z<1.
\]

Since every selected prime is at least two,

\[
\begin{aligned}
\log\kappa(P(Y))
&\le\frac{2}{1-2^{-1/2}}\sum_{p\le Y}p^{-1/2}\\
&\le\frac{4}{1-2^{-1/2}}\sqrt Y.
\end{aligned}
\tag{5}
\]

Taking \(Y=\lfloor\log(N+1)\rfloor\) gives

\[
\kappa(P(Y))H_N
\le\exp(O(\sqrt{\log N}))\,(1+\log N)
=N^{o(1)}.
\tag{6}
\]

Thus the actual weighted-prefix supplier is equivalent to the complete signed
packet between distinct cores having no prime divisor at most \(\log N\). This
uses an unbounded family of actual Liouville prime signs while paying only a
subpower orbit allowance.

Equation (6) is a reduction, not cancellation for the remaining rough cores.
The currently available Vinogradov--Korobov estimate still has size
\(N\exp[-c\Phi(\log N)]\), whose main exponent is one.

## 5. Explicit prime-two countermodel

Define

\[
f_2(n)=(-1)^{v_2(n)}.
\]

It is completely multiplicative and satisfies

\[
f_2(2n)=-f_2(n)
\]

for every positive \(n\). Within a fixed odd core, its coefficient products
are exactly the same as those of Liouville:

\[
f_2(2^aq)f_2(2^bq)=(-1)^{a+b}
=\lambda(2^aq)\lambda(2^bq).
\tag{7}
\]

Thus every complete two-adic chain packet is identical for \(f_2\) and for the
actual Liouville function.

Let

\[
S_2(N)=\sum_{n\le N}f_2(n).
\]

The convolution coefficients are

\[
g(1)=1,\qquad g(2^j)=2(-1)^j\;(j\ge1),
\]

and zero elsewhere. Since \(f_2=1*g\),

\[
S_2(N)=\sum_{2^j\le N}g(2^j)\left\lfloor\frac{N}{2^j}\right\rfloor.
\]

Moreover

\[
\sum_{j\ge0}\frac{g(2^j)}{2^j}=\frac13.
\]

If \(K=\lfloor\log_2N\rfloor\), floor and tail errors give

\[
\boxed{
\left|S_2(N)-\frac N3\right|\le2K+5.
}
\tag{8}
\]

For \(N\ge256\), one has \(K\le N/32\), hence

\[
S_2(N)\ge\frac N4.
\tag{9}
\]

Define the generic weighted moment

\[
J_{2,N}=\sum_{k=1}^N\frac{S_2(k)^2}{k(k+1)}.
\]

For \(N\ge512\), equations (9) and \(k/(k+1)\ge1/2\) give

\[
\boxed{J_{2,N}\ge\frac N{64}.}
\tag{10}
\]

The complete same-odd-core packet is identical to the actual two-adic internal
packet and is at most \(H_N\). For \(N\ge2048\),

\[
H_N\le1+\log N\le\frac N{128}.
\]

Therefore the distinct-odd-core packet of the prime-two countermodel satisfies

\[
\boxed{
R^{(2)}_{N}\ge\frac N{128}
\qquad(N\ge2048).
}
\tag{11}
\]

This countermodel obeys the exact doubling sign and all complete two-adic chain
identities, yet its remaining packet is not subpower.

## 6. Method consequence

Equation (11) does not refute the actual Liouville supplier. The countermodel
differs from Liouville at every odd prime. It proves the narrower and decisive
method statement:

> No proof using only complete multiplicativity, exact negative doubling, the
> complete two-adic chain formula, and positive-kernel bounds can establish
> `DistinctOddCoreAllRate`.

The same construction with a fixed finite prime set \(P\), assigning \(-1\)
to primes in \(P\) and \(+1\) to all other primes, has positive mean

\[
c_P=\prod_{p\in P}\frac{p-1}{p+1}>0.
\]

Its weighted moment and its distinct \(P\)-free-core packet both grow linearly,
while the complete internal orbit allowance remains polylogarithmic. Thus every
fixed finite-prime-only bootstrap fails.

The next viable arithmetic target is the growing logarithmic-prime family from
(6): estimate the complete signed packet between distinct
\(P(\log N)\)-free cores before taking outer absolute values. Fixed-form
correlation theorems do not provide the necessary growing-family aggregate.

## 7. Formalization boundary

The Lean source proves the algebraic packet decomposition and the conditional
all-rate equivalence. The following remain explicit named propositions:

- unique finite-prime core reindexing and the Euler bound (2);
- logarithmic-family subpower allowance (6);
- generic weighted-pair Fubini identity;
- prime-two linear weighted-moment bound;
- equality of the prime-two and actual internal packets;
- prime-two distinct-core lower bound (11).

They are propositions, not axioms or accepted theorems.

Current status:

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh kernel: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- distinct odd-core supplier: `UNPROVED`;
- weighted-prefix supplier: `UNPROVED`;
- uniform energy: `UNPROVED`;
- RH: `UNPROVED`.
