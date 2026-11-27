# A separated block of prime-power components

Local source attribution: grwtsk contributors. In Joseph M. Shunia's Lemma 3.3, a separated block of the smallest full prime powers is needed to reconstruct the integer recurrence from consecutive divisor sums. The local result gives integer endpoints $B<z$ and uses their exact cross-products to quantify the gap. [Lean proof](DivisorSumComponentGap.lean) · [Shunia, arXiv:2611.34242v1, Lemmas 3.3–3.4](https://arxiv.org/html/2611.34242v1#S3.SS2)

For $w\ge2$, let $q$ be its smallest full prime power and $b=1+\lfloor\log_2 w\rfloor$. Place all full components in $[q,2q]$ in increasing order, including the two endpoints as interval boundaries. There are at most $b$ gaps after counting the possible repeated endpoint in this construction. Their lengths add to $q$, so consecutive endpoints $B,z$ exist with $b(z-B)\ge q$. As $B\le2q$, one has $(2b+1)B\le 2bz$. The proof works for a single distinct prime divisor and for the smallest component $q=2$.

Every nontrivial unitary divisor $d$ contains an entire prime-power component. If $d<2q$, its positive integral cofactor must be one. In particular the entire set of unitary divisors through $B$ consists of individual components, and every other unitary divisor is at least $z$. The retained prime bases form a nonempty subset $S$ of the prime divisors of $w$. Each retained component is at least $q$ and has square at least $2q\ge B$. Multiplication gives $B^{|S|}\le w^2$. Their primes and exponents are arithmetic witnesses for the proof. The reconstruction algorithm tries candidate orders without computing those witnesses in advance.

| Declaration in GRWTSK.IntegerFactorization.AbundanceRecovery | Mathematical consumer |
| --- | --- |
| `unitary_below_twice` | Recognizes full components inside the search interval from unitary divisibility. |
| `component_gap` | Supplies the minimum component, separated endpoints, nonempty retained prime set, relative gap, product bound and membership criterion. |
| `gap_suppression` | If $(D+1)B\le Dz$ and $J\ge Dt$, then $2^t B^J\le z^J$. Bernoulli's inequality gives $(1+1/D)^D\ge2$. |
| `shunia_window_suppression` | For every $w\le n$, $m=\lceil\log_2 n\rceil$ and $J=48(1+m)^2$, the actual first sample gives $2^{24(1+m)}B^J\le z^J$. This is the degree of suppression required by (3.6), expressed with integer powers. |

At $w=12$, the smallest component is $3$, the others begin at $4$, and the only nontrivial unitary divisor below $6$ besides $3$ is $4$. In contrast, dropping coprimality would incorrectly admit $2$ as a whole component. A finite test compared a maximum-gap witness to direct divisor and gcd enumeration for every $w=2,\ldots,4096$. All 4,095 comparisons satisfied the support, relative-gap and product bounds. Controlling the roots after perturbing the actual recurrence matrix requires additional estimates. [Residual reconstruction](../ComputerScience/AlgorithmsInComputerScience/ConsecutiveFactorRecovery.md) · [Verification issue](https://github.com/grwtsk/math/issues/1859)

Pinned Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` elaborated the local source. A joint fresh-kernel replay over nine root modules passed for 422 safe declarations and 24,952 transitive constants. The closure used `Classical.choice`, `Quot.sound` and `propext`. Four compiler-generated executable helpers were excluded as seeds. Independent review and Comparator for these local results were not run.
