# Uniform finite-product suppliers: a written obstruction

## Analytic obstruction to the uniform suppliers

The following is a classical analytic argument recorded in prose, **not a Lean theorem in this contribution**. It uses the unconditional prime number theorem, for example [DLMF 27.12.5](https://dlmf.nist.gov/27.12.E5). It does not assume RH.

Write $P_X=\{p\le X:p\text{ prime}\}$. The exact finite cascade has the absolutely convergent Laplace transform, for $\Re z>0$,

$$
\int_0^\infty e^{-zu}W_{P_X}(u)\,du
=\frac{1}{z(z+1/2)}\prod_{p\le X}(1-p^{-(z+1/2)}).
\tag{1}
$$

This follows by transforming each finite causal shift; each finite cascade is bounded. There is no interchange with an infinite Euler product.

The compensated induction already proved for `PrimeReverberation` and `PrimeBlockReverberation`, and now also proved for `PrimePrefixReverberation`, would imply, for fixed nonnegative supplier constants,

$$
E_{P_X}(U)\le e^{c\Omega(P_X)}\bigl(4U+(1+U)^q\bigr)
\le A_X(1+U)^m\quad\text{for every }U\ge0,
\tag{2}
$$

where $m=\max(1,q)$ and $A_X\ll(1+\log X)^{c\log4}$. The prime-mass bound used in the second inequality is already Lean checked. Crucially, (2) quantifies horizons independently of the prime cutoff.

For any fixed $a>0$, Tonelli's theorem gives

$$
\int_0^\infty e^{-au}W_{P_X}(u)^2\,du
=a\int_0^\infty e^{-aU}E_{P_X}(U)\,dU\ll_{a,m}A_X.
$$

Cauchy–Schwarz and (1), with $a=\Re z$, consequently bound

$$
\left|\prod_{p\le X}(1-p^{-s})\right|
\ll_s (1+\log X)^{c\log4/2},\qquad s=z+1/2.
\tag{3}
$$

But fix $s=\sigma+it$, with $1/2<\sigma<1$ and $t\ne0$. Partial summation of the prime number theorem gives

$$
\sum_{p\le X}p^{-s}=\frac{X^{1-s}}{(1-s)\log X}
+o\!\left(\frac{X^{1-\sigma}}{\log X}\right).
$$

Since $\sum_p p^{-2\sigma}<\infty$, the convergent logarithm expansion of each factor gives

$$
\log\left|\prod_{p\le X}(1-p^{-s})\right|
=-\Re\frac{X^{1-s}}{(1-s)\log X}
+o\!\left(\frac{X^{1-\sigma}}{\log X}\right).
\tag{4}
$$

Choose $X_k\to\infty$ so that $X_k^{-it}/(1-s)$ is negative real. Then (4) has leading term $X_k^{1-\sigma}/(|1-s|\log X_k)>0$, exceeding every $O(\log\log X_k)$ bound forced by (3). This contradicts (3).

Therefore the uniform suppliers as currently defined cannot hold with fixed nonnegative constants. Restricting to natural prime order removes unnecessary quantifiers but does not repair this obstruction. Their Lean implications remain valid conditional statements; they are retained for exact scope and history, not adopted as viable supplier conjectures. The PNT, finite-transform and Cauchy–Schwarz argument above has not been replayed in Lean, so the receipt records this analytic rejection separately from its kernel-checked finite counterexample.

This distinction also matters when consulting Euler-product literature. [Gonek, arXiv:0704.3448v1, equations (7)–(10)](https://arxiv.org/html/0704.3448v1) uses a smoothed product together with explicit zero and pole correction factors. It does not supply a uniform bound for the raw finite product in (1).


## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/PrimePrefixGrowth.lean). Status: **written-argument**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/PrimePrefixGrowth.lean`](../../../../../GRWTSK/NumberTheory/Moebius/PrimePrefixGrowth.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 13 |
| Theorem/lemma commands | 11 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
