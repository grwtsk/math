# Adaptive von Mangoldt logarithms: arbitrarily fine rational source enclosures

**Consumer:** [math #1850](https://github.com/grwtsk/math/issues/1850),
[PrimeJacobiGmAdaptiveCertificate.lean](PrimeJacobiGmAdaptiveCertificate.lean)
and the isolated native Alpöge \`CoreGm\` bridge.  
**Formal source candidate:** [WeilAdaptivePrimeLogObservations.lean](WeilAdaptivePrimeLogObservations.lean);
root source \`grwtsk/math@8041274562524a28078b7d2bb26ed1a36a9bf874\`,
Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
**Comparison:** local [WeilFinitePrimeObservations.lean](WeilFinitePrimeObservations.lean)
blob a1d3a6350d9bf3a66bdebee6977962c2545e2d9b,
where the original 24-term log and scale-sensitive error are
rigorously formalized. This is a **generalization of its arithmetic
technique**, not a changed mathematical definition of prime or a
new conclusion about Riemann zeta zeros.

## Theorem 1. Uniform rational log-tail error at arbitrary precision

For \(b\in\mathbb N\), \(0\le z\le1/2\), define the exact
rational expansion

\[
L_b(z)=-\sum_{h=1}^{b}\frac{z^h}{h}.
\]

The convergent series
\(\log(1-z)=-\sum_{h\ge1}z^h/h\) has tail

\[
0\le-\log(1-z)-\sum_{h=1}^{b}\frac{z^h}{h}
\le\sum_{h>b}z^h
=\frac{z^{b+1}}{1-z}
\le 2^{-b}.
\]

Hence

\[
\boxed{|\log(1-z)-L_b(z)|\le2^{-b}.}
\]

For \(b=0\) this inequality still holds, since
\(-\log(1-z)\le\log2<1\). All bounds are **exact
inequalities**, independent of any spectral or RH statement.

The module's \`logOneMinus_terms_error\` candidate generalizes
the existing Mathlib call
\`Real.abs_log_sub_add_sum_range_le\`
from the hard-coded 24-term source.

## Theorem 2. Dyadic reduction at arbitrary precision

For every \(n\ge1\), define

\[
s(n)=\lfloor\log_2 n\rfloor+1,\quad
z(n)=1-\frac{n}{2^{s(n)}}\in[0,1/2].
\]

Then \(n=2^{s(n)}(1-z(n))\), so

\[
\log n=\log(1-z(n))+s(n)\log2.
\]

Set the **rational** approximation

\[
\ell_b(n)=L_b(z(n))-s(n)L_b(1/2).
\]

Since \(\log2=-\log(1-1/2)\), the triangle inequality gives

\[
\boxed{|\log n-\ell_b(n)|\le(s(n)+1)2^{-b}.}
\]

The source \`logHatRaw_terms_error\` uses the existing
\`FinitePrimeObservations.logScale\` and \`logFraction\` to
preserve the root source definitions, not a parallel
floating-point implementation.

## Theorem 3. Actual prime-power source, not Weil's square-root weight

Let \(\operatorname{IsPrimePow}(n)\) be the *genuine*
Mathlib prime-power predicate and \(\minFac(n)\) the true
least prime factor. Define

\[
\widetilde\Lambda_b(n)=
\begin{cases}
\ell_b(\minFac n),&\operatorname{IsPrimePow}(n),\\
0,&\text{otherwise}.
\end{cases}
\]

Using the original \`ArithmeticFunction.vonMangoldt_apply\`
identity and Theorem 2, for every \(n\ge1\),

\[
\boxed{
|\widetilde\Lambda_b(n)-\Lambda(n)|
\le
\mathbf1_{\operatorname{IsPrimePow}(n)}
(s(\minFac n)+1)2^{-b}.
}
\]

The module's \`adaptiveLambda_error\` uses the slightly weaker
**non-indicator** bound with the same right-hand side for all
positive n; outside prime powers the true and observed values
are both exactly zero. The indicator is therefore available
by an elementary case split but is not asserted as a distinct
compiled Lean theorem.

This direct \(\Lambda(n)\) observation is essential because
\`LowSchur.primeWeight n\` stores \(\Lambda(n)/\sqrt n\),
and the old finite square-root enclosure has its own
fixed precision. For exact source-prime arithmetic recovered
from Jacobi moments, direct approximate logs of the recovered
prime bases remove that unnecessary numerical error.

## Theorem 4. Arbitrary positive all-window observation margin

Let \(\mathcal W_x\) be the finite set of prime powers through
\(\lfloor x\rfloor\) and \(w_x(n)\) any supplied **finite,
source-exact real weight**. Define

\[
C(x)=\sum_{n\in\mathcal W_x}
   (s(\minFac n)+1)|w_x(n)| < \infty.
\]

For the corresponding true and rationally observed finite
arithmetic sums, the preceding absolute bound gives

\[
\boxed{|S_b(x)-S(x)|\le2^{-b}C(x).}
\]

For every fixed x and target margin \(M(x)>0\), a natural
b exists such that \(2^{-b}C(x)\le M(x)\), simply because
\(2^{-b}\to0\). In the intended genuine Gm readout,
\(w_x(n)=(x/n-1)
\bigl(1+\sum_{\chi\in\Lambda.Nt}\Lambda.wt(\chi)\Re\chi(n)\bigr)\).
All Dirichlet characters and weights retain the original
intermediate Alpöge types in the **separate pinned adapter**.

This theorem is a **finite numerical/analytic source
certification**. It does not assert the original Gm
one-sided inequality, source Weil positivity, or RH.
The actual EAtH, CoreAtH, families, conductors, and
nonprincipal log-derivative corrections are still
independent mathematical suppliers.

## Exact finite and hostile controls

The checked standard-library Python script
[scripts/verify_adaptive_prime_log_gm.py](../../../scripts/verify_adaptive_prime_log_gm.py),
blob 8b7040fabdfdb0783c638a542094b6d8e21717f4,
constructs independent rational geometric-series
**intervals** for each log, rather than calling
floating point log as an authority.
It passed 144 general log intervals and 711 genuine
prime-power intervals. Five finite weighted phase
windows with cutoff x=16,81,256,625,1296 passed
using genuine nontrivial Dirichlet character real parts
(moduli 4 and 5) and rational family weights.

An adversarial fixed-uniform-error interval with
\(\varepsilon=2^{-24}\) at \(x=2^{128}\) exceeds
\(x^{3/4}\) using just its first 32 positive terms.
This **does not claim** that the particular
\(\widetilde\Lambda_{24}\) approximation attains the
worst-case error; it demonstrates why a fixed
uniform coefficient enclosure alone is insufficient
to certify all-scale sublinear readout errors.

**Formal status:** four new Lean source candidates;
Lean elaboration, axioms and fresh kernel replay
are **NOT_RUN**, and the remainder-to-native-Gm
comparison is an explicit source interface.
**Novelty:** rational geometric log bounds are classical;
the dynamic certification within this prime-Jacobi
source pipeline is a new maintained application,
not established as a globally new theorem.
