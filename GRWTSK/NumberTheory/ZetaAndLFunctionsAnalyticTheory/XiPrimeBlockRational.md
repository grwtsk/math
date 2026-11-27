# A sparse criterion using only finite rational prime sums

Local source attribution: grwtsk contributors.

For each positive integer $k$ the following test consists entirely of finite rational arithmetic and a finite test for primality. The arithmetic inequality at every sufficiently large $k$ remains to be proved. The arguments below show that proving it would supply undamped Weil positivity and a self-adjoint realization of the actual zeta ordinates with multiplicities. They use the [sparse Mellin criterion](XiPrimeBlockMellin.md) and the [conditional prime-square bias](XiBernoulliOrdinaryPrimeBias.md). Lean verifies the [rational recurrence and quadrature](XiPrimeBlockRational.lean), the [identification with the real moment integral](XiPrimeBlockMomentIntegral.lean), the [squared quadrature-width bound](XiPrimeBlockQuadratureBound.lean), and the [error from truncating the actual prime sum](XiPrimeBlockPrimeCutoff.lean). The sparse contour and equivalence with RH are paper proofs. Independent human review of those arguments is outstanding.

## One comparison per integer parameter

Calculate the integer
\[
 N=\left\lfloor 2\sum_{l=0}^{8k}\frac{(4k)^l}{(2l)!}\right\rfloor,
 \qquad Y=\lfloor N^{3/4}\rfloor,\qquad Q=\lceil N^{1/4}\rceil.
\]
The last two quantities can be obtained by integer fourth-root comparisons. Use only primes $p\le Y$. For nonnegative rational $r$, set
\[
 M_0(r)=\frac1{r+1},\qquad
 M_{j+1}(r)=\frac{2(j+1)}{r+2j+3}M_j(r),\qquad
 J_N(r)=\sum_{j=N+1}^{2N}\frac{M_{j-1}(r)+M_{j-1}(r+1)}{j}.
\]
Define the rational number
\[
 A_N=\sum_{p\le Y}\frac1{p^2}
      \sum_{j=N+1}^{2N}\frac{(1-p^{-2})^j}{j}
       -\frac1Q\sum_{a=1}^Q J_N(a/Q).
\]

**Theorem.** The ordinary Riemann hypothesis is equivalent to the assertion that $A_N\le 1/Y$ for every sufficiently large integer $k$, with $N,Y,Q$ as above. There are $(\log M)^2/4+O(1)$ comparisons through starting index $M$. This counts starts, not the cost of evaluating an individual finite sum.

## Keeping the actual arithmetic discrepancy

Write $D_N=S_{2N}-S_N$ for the original block discrepancy. Its continuum term is
\[
 I_N=\sum_{j=N+1}^{2N}\frac1j\int_1^\infty
          \frac{(1-y^{-2})^j}{y^2\log y}\,dy .
\]
Substitute $u=1/y$. Since $(1-u)/(-\log u)=\int_0^1 u^r\,dr$, Tonelli gives $I_N=\int_0^1 J_N(r)\,dr$. Indeed
\[
 M_l(r)=\int_0^1 u^r(1-u^2)^l du .
\]
The integral at $l=0$ is immediate. Integrate the derivative of $u^{r+1}(1-u^2)^{l+1}$ to get the displayed recurrence. Factoring $(1-u^2)=(1-u)(1+u)$ in the original integrand then gives exactly $J_N$.

The function $J_N$ is nonnegative and decreasing on $[0,1]$. Its right-endpoint quadrature underestimates $I_N$ by at most $(J_N(0)-J_N(1))/Q$. Multiplying $(1+u)$ by $(1-u)$ gives the sharper width
\[
 J_N(0)-J_N(1)=\sum_{j=N+1}^{2N}\frac1j\int_0^1(1-u^2)^j du
    \le\sum_{j=N+1}^{2N}\frac{\sqrt\pi}{2j^{3/2}}<N^{-1/2}.
\]
Here $1-u^2\le e^{-u^2}$ and $\sum_{j=N+1}^{2N}1/j<1$. Consequently the right sum misses at most $N^{-3/4}\le 1/Y$. The prime tail beyond $Y$ misses at most
\[
 \sum_{j=N+1}^{2N}\frac1j \sum_{m>Y}m^{-2}\le 1/Y.
\]
Subtracting the two errors, both in $[0,1/Y]$, gives the uniform enclosure
\[
                       |D_N-A_N|\le 1/Y .
\]
This error is at the exact exponent needed for zero exclusion.

The constant also has a purely rational proof. The recurrence gives $M_l(2)=M_l(0)/(2l+3)$. Thus $M_{j-1}(0)-M_{j-1}(2)=M_j(0)$, proving the exact identity $J_N(0)-J_N(1)=\sum_{j=N+1}^{2N}M_j(0)/j$. Since $(2h/(2h+1))^2\le h/(h+1)$ for positive integers $h$, multiplying the factors in the recurrence gives $M_j(0)^2\le1/(j+1)$. Every term on the right is nonnegative and $\sum_{j=N+1}^{2N}1/j\le1$, so
\[
          (J_N(0)-J_N(1))^2\le\frac1{N+1}.
\]
This proof pays for the quadrature error using the same rational data that the finite test evaluates.

## A sign test with no allowance

There is an equally explicit version in the exact form of a sign question. Use the **left** endpoints $a=0,\ldots,Q-1$ for the quadrature and denote the resulting rational prime sum minus quadrature by $B_N$. It can be computed without repeating the quadrature:
\[
                 B_N=A_N-\frac{J_N(0)-J_N(1)}Q .
\]
The left quadrature overestimates the continuum term and the prime cutoff underestimates the full prime sum. Both errors now point in the same direction, giving
\[
                      B_N\le D_N\le B_N+2/Y.
\]
Hence RH is also equivalent to the literal sign $B_N\le0$ at every sufficiently large sampled start. Even without deciding RH, $B_N<0$ holds for infinitely many such starts: under RH it holds eventually; if RH fails, the negative excursions forced by the sparse Mellin criterion give arbitrarily late $D_N<0$, and then $B_N<0$. This proves cofinal occurrence of the requested sign on this grid. Eventual occurrence remains the independent arithmetic target.

## Checking the starts and the equivalence

The infinite series for $2\cosh(2\sqrt k)$ equals $e^{2\sqrt k}+e^{-2\sqrt k}$. Its omitted tail above $l=8k$ has size less than one for $k\ge1$. For example, $(2l)!\ge (2l/e)^{2l}$ bounds each summand before the factor two by $(e^2/(64k))^l$ there, and the resulting geometric tail is less than $1/2$. Flooring changes a quantity by at most one. Thus $N=e^{2\sqrt k}+O(1)$ with an absolute constant. The starts are eventually strictly increasing and their count follows by inversion. The fixed-kernel approximation and derivative bound from the [Mellin argument](XiPrimeBlockMellin.md) apply equally to any such bounded integer perturbation, since $\sqrt N-e^{\sqrt k}=O(e^{-\sqrt k})$.

Under RH the actual $D_N$ is eventually negative, hence $A_N\le1/Y$. Conversely an eventual $A_N\le1/Y$ gives $D_N\le2/Y=O(N^{-3/4})$ on this sparse grid. The Mellin criterion at $\theta=1/2$ excludes every zeta zero to the right of the critical line, and reflection excludes the other side. Via the complete explicit formula this is [undamped Weil positivity](XiWeilDampingThreshold.md). The diagonal operator there then realizes the ordinates with their multiplicities.

The [exact-arithmetic checker](../../../scripts/xi_bernoulli/check_rational_block.py) evaluates both endpoint tests. A finite computation establishes only its own instances.

## How far the existing finite-height result reaches

The [ordinary-prime manuscript](XiBernoulliOrdinaryPrimeBias.md) gives a separate analytic proof of negativity of each summand $b_j$ for $2\le j\le\exp(4T)$, using the verified zero height $T=3\cdot10^{12}$ together with the independent $7/8$ zero-free half-plane. This yields the concrete corollary
\[
 B_{n_k}<0\qquad\left(1\le k\le(6\cdot10^{12}-1)^2\right),
\]
where $n_k$ is the rationally computed start above. Indeed $2n_k<2(e^{2\sqrt{k}}+1)\le e^{4T}$ on this range. Every summand in the corresponding original block is negative and $B_{n_k}\le D_{n_k}$. This corollary inherits the paper proof and its external inputs. The exact-arithmetic checker was separately run on the seven starts $7,16,31,54,87,134,198$. Both endpoint tests passed on each. Neither calculation proves a tail bound uniform in $k$. [Platt–Trudgian verified height](https://arxiv.org/abs/2004.09765) · [OpenAI family 003](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/003.md)

## Directly certifying actual descending blocks

For any positive cutoffs $Y,Q$, write $P_{N,Y}$ for the truncated prime term and $L_{N,Q},U_{N,Q}$ for the right and left quadratures. The argument above gives the sharper interval
\[
 P_{N,Y}-U_{N,Q}\ \le\ D_N\ \le\ P_{N,Y}-L_{N,Q}+1/Y.
\]
The [real quadrature bound](XiPrimeBlockDensityQuadrature.lean), [Fubini identity](XiPrimeBlockDensityFubini.lean), and [reciprocal substitution for the original density](XiPrimeBlockDensityIntegral.lean) use these normalizations with no assumption on zeta zeros. The [combined Lean theorem](XiPrimeBlockCertificate.lean) proves this enclosure for the original harmonic prefixes and obtains $S_{14}<S_7$ with $Y=64,Q=12$. A negative right endpoint certifies a strict decrease of the original infinite-prime discrepancy. This test can use larger cutoffs than the RH-equivalent sparse sign test.

Running the [integer-arithmetic checker](../../../scripts/xi_bernoulli/check_rational_block.py) with `--mode descent --through 10` verifies $D_N<0$ separately at $N=7,16,31,54,87,134,198,286,403,558$. For example,
\[
                S_{1116}-S_{558}\le-\frac{445523}{10^9}.
\]
Here $Y=17856$ and $Q=128$. To verify the direction of rounding, let $s=2^{64}$. An integer upper bound $w$ for $s p^{-2}(1-p^{-2})^{j-1}$ updates to $w-\lfloor w/p^2\rfloor$ at $j$ and the harmonic division is rounded up. Each real moment at $r=a/Q$ starts with the floor of $sQ/(Q+a)$ and the update to its next integer lower bound is the floor of $2jQ\,w/[a+(2j+1)Q]$. For the shifted moment use $a+Q$ in place of $a$. The harmonic division on this side rounds down. All coefficients multiplied in these recurrences are nonnegative. The result therefore uses an upper prime sum, a lower density estimate, and a rational $1/Y$ upper bound for the omitted primes. The reported endpoint is rounded up once more to the indicated decimal denominator.
