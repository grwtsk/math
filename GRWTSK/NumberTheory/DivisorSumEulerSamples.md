# Euler factors, signed coefficients and the error of truncating a divisor-sum sample

Local source attribution: grwtsk contributors. Joseph M. Shunia's Lemma 3.2, equations (3.4)–(3.5), supplies the identity used for the recurrence in Lemma 3.4. This file connects the divisor sums of actual powers to the exact signed expansion and bounds the contribution of every omitted term at a certified cutoff. The proof uses rational arithmetic throughout. [Lean source](DivisorSumEulerSamples.lean) · [Shunia, arXiv:2611.34242v1, §3.1–3.3](https://arxiv.org/html/2611.34242v1#S3.SS1) · [Totient recovery](TotientFromPowerDivisorSum.lean) · [Unitary-divisor gap](DivisorSumComponentGap.lean)

For positive $w$, put $P=\{p:p\mid w,\ p\text{ prime}\}$, $q_p=p^{v_p(w)}$ and $d_S=\prod_{p\in S}q_p$. At every $j\ge0$ the normalized sample is

$$\xi_j=1-\frac{\varphi(w)\sigma(w^j)}{w^{j+1}}
=1-\prod_{p\in P}\left(1-\frac{1}{p q_p^j}\right)
=\sum_{\varnothing\ne S\subseteq P}\frac{(-1)^{|S|+1}}{\prod_{p\in S}p}\,d_S^{-j}.$$

To obtain the first equality, factor the multiplicative rational quantity $\varphi(w)\sigma(w^j)/w^{j+1}$. For a single component, the geometric sum for $\sigma(p^{aj})$ telescopes after multiplication by $p-1$. The second equality expands the finite product, cancels its empty-subset term and changes the sign of each remaining coefficient. On input $2\le w\le n$, the same identity holds when the normalization uses the integer quotient from the stored answer at $J\ge16\lceil\log_2n\rceil$ and the stored divisor sum at $j$.

Each coefficient has absolute value at most one. There are at most $2^{|P|}$ subsets, and $2^{|P|}\le\prod_{p\in P}q_p=w$. The prime support of $d_S$ recovers $S$ uniquely. Its complementary product uses disjoint primes, so every nonempty subset gives a divisor $d_S>1$ coprime to $w/d_S$.

Suppose the unitary divisors through $B$ are exactly the components labelled by $K\subseteq P$ and every other unitary divisor is at least $z>0$. The contribution from $K$ is $M_j=\sum_{p\in K}1/(p q_p^j)$. Each omitted node is at least $z$, and the triangle inequality gives $|\xi_j-M_j|\le w/z^j$. The hypothesis matches the conclusion of `component_gap`, including the case in which a component lies exactly at the cutoff. The retained sum is the input for the Hankel system in Shunia's Lemma 3.4. Proving quantitative stability of the solution and rounding its reconstructed coefficients needs additional inequalities.

| Declaration under `GRWTSK.IntegerFactorization.EulerSamples` | Mathematical return |
| --- | --- |
| `normalized_product`, `normalized_expansion` | The Euler product and exact signed moments of an arbitrary positive integer at any nonnegative exponent. |
| `coefficient_mass_le` | The sum of the absolute coefficients over all nonempty subsets is at most $w$. |
| `component_two_le`, `node_primeFactors`, `node_unitary` | Each component is at least two, its subset product has precisely the chosen prime support, and each nonempty subset gives a nontrivial unitary divisor. |
| `coefficient_singleton`, `node_singleton`, `retainedMoment_error` | Singletons give the exact positive coefficients and the actual gap bounds the signed omitted tail. |
| `shunia_window_moments` | At $m=\lceil\log_2n\rceil$, $J=48(1+m)^2$, the gap supplies a nonempty retained set containing a smallest component. At every offset $s$, $2^{24(1+m)}B^{J+s}\lvert\xi_{J+s}-M_{J+s}\rvert\le w$. |
| `observed_expansion` | Two exact stored values at $J$ and $j$ suffice to evaluate the signed moment. |

For $w=12$, $j=1$, the components are $4$ and $3$. Their contributions are $1/8$ and $1/9$, with a two-component cross term $-1/72$. The sum is $2/9=1-4\cdot28/144$. An independent test computed each divisor sum by divisibility enumeration and each totient by counting coprime integers. It checked 240 equality cases for $1\le w\le60$, $0\le j\le3$, and 6,752 valid cutoff bounds on the same inputs. These include the empty expansion at $w=1$, exponent zero and complete retention on prime powers.

Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` elaborated source blob `8c64cf6a91fdf951aab5f4c30c57d4be6b0477f5` with exit 0 and no diagnostics. Seven executable Lean guards passed for actual normalized samples, signed coefficients, nodes and retained moments. The axiom reports on all eleven named public theorems contained precisely `Classical.choice`, `Quot.sound` and `propext`. Independent mathematical review and Comparator are `NOT_RUN`.

A fresh empty-kernel replay of ten local root modules, including this subject, passed for 188 safe declarations and 69,327 transitive constants. Two compiler-generated recursion helpers were excluded as seeds. The transitive axiom set was exactly `Classical.choice`, `Quot.sound` and `propext`.
