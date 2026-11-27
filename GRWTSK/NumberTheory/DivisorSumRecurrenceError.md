# Precision of the divisor-sum recurrence

Local source attribution: grwtsk contributors. Joseph M. Shunia's Lemma 3.4 estimates the perturbation when large unitary divisors are omitted from a sequence of exact divisor-sum samples. The integer inequalities below supply the numerical margin for its rational matrix argument. [Lean estimates](DivisorSumRecurrenceError.lean) · [Separated components and the exact power window](DivisorSumComponentGap.md) · [Shunia, equations (3.9)–(3.10)](https://arxiv.org/html/2611.34242v1#S3.SS3)

Set $m=\lceil\log_2 n\rceil$, $J=48(1+m)^2$, and let $B<z$ be the separated endpoints for the current residual $w\le n$. For a retained block of $\ell\ge1$ full prime powers, put
$$K=\ell(2B^2)^{2(\ell-1)}B^{J+2},\qquad E=n/z^J.$$
Here $K$ is the paper's proposed upper bound on the inverse matrix norm, and $E$ bounds contamination from the remaining nodes.

The hypotheses $2^\ell\le n$, $B^\ell\le n^2$, $\ell\le n$ imply $Kn\le n^{12}B^J$. To see the cancellation, split off $B^J$. The remaining powers of two are bounded by $n^2$, while $B^{4(\ell-1)+2}\le (B^\ell)^4\le n^8$. The factors $\ell$ and $n$ account for the final two powers of $n$. This proves `inverseEnvelope_cancel`. The relative gap gives $2^{24(1+m)}B^J\le z^J$. Since $n\le 2^m$, `recurrence_error_budget` gives the division-free bound $2^{24} n^{12} Kn\le z^J$. Thus $KE\le 2^{-24}n^{-12}$ whenever the positive endpoints are interpreted in the rationals.

Turning the bound into coefficient recovery also uses the actual retained matrix, its inverse, the exact sample error, the absolute mass of the true integer coefficients and a uniqueness and rounding argument. [Rational recurrence](DivisorSumRecurrence.lean) · [Verification issue](https://github.com/grwtsk/math/issues/1859)

For the prime set returned by the separated-block theorem, `exists_window_budget` derives $2^{|S|}\le n$ from the number of distinct prime factors and returns the same $B,z,S$ with the error budget. `rational_margins` converts it to a half-unit row perturbation and a strict quarter-unit residual even with coefficient mass bounded as loosely as $n^3$.

A fresh empty-kernel replay of ten local root modules, including this subject, passed for 188 safe declarations and 69,327 transitive constants. Two compiler-generated recursion helpers were excluded as seeds. The transitive axiom set was exactly `Classical.choice`, `Quot.sound` and `propext`.
