# Adaptive abundance queries for exact divisor sums

Local source attribution: grwtsk contributors. Joseph M. Shunia, *Deterministic integer factorization from abundance decisions*, arXiv:2611.34242v1, Theorem 1.2, Theorem 3.1 and Algorithm 3. The [module](AbundanceOracleSamples.lean) reuses the repository's exact dyadic search. Let $b=\mathrm{size}(n)$ denote standard positive binary length. [Paper](https://arxiv.org/html/2611.34242v1) · [Local dyadic search](IntegerFactorizationReductions.lean)

The ThresholdSupplier constructor maps $(x,h)$ to an actual integer $z$ such that $h\le\sigma(x)$ exactly when $\sigma(z)>2z$. Its input range is $x\ge2$ and every nonnegative $h$. Its width premise is $\mathrm{size}(z)\le C\,\mathrm{size}(x)^2$. Shunia’s constructor emits positive integers. The local oracle is total on natural numbers with zero mapped to false, since $\sigma(0)=0$. All generated queries from a positive-output implementation therefore have the source semantics. The constructor implementation and its time bound are open. The [threshold-sign proof](../../NumberTheory/AbundanceFactorRecovery.md) checks the sign on a supplied approximating multiplier for the nontrivial branch.

| Declaration in GRWTSK.IntegerFactorization.AbundanceRecovery | Return and charge |
| --- | --- |
| querySigma_spec, querySigma_count, querySigma_width | For every nonnegative threshold $k$, negate the oracle's answer about $k+1$ to test $\sigma(x)\le k$. The integer $\sigma(x)$ is positive and at most $x^2$. Search at depth $2\,\mathrm{size}(x)$ recovers it exactly. The trace records each encoded integer in order, including repeated or directly decidable queries. |
| sampleRuns_values | The returned list evaluated on $x=n^{J+s}$ for $0\le s<t$ equals the list of exact divisor sums in order. |
| sampleRuns_queries, sampleRuns_queryWidth | At most $2tb(J+t)$ oracle calls. Each has width at most $C[b(J+t)]^2$. These bounds hold on the produced trace, including both possible oracle outputs at every step. |
| paper_query_envelope | With $m=\lceil\log_2n\rceil$, $J=48(1+m)^2$ and $t=2m$, at most $200(1+b)^4$ calls, each on at most $2500C(1+b)^6$ bits. |
| paper_oracle_work | Charge each oracle's monotone cost function $A$ and the serialized bit width of each query. The actual sum is at most $200(1+b)^4[A(U)+U]$ where $U=2500C(1+b)^6$. |

The number of probes is a power-of-two interval implementation of Algorithm 3. It uses $2\,\mathrm{size}(x)$ even when some comparisons are redundant. The reflected comparison must use $k+1$ before negation. Omitting the increment changes which side contains the equality case. Each power $n^{J+s}$ has at most $b(J+t)$ bits, and $m\le b$. Therefore $J+t\le50(1+b)^2$. This gives the two explicit polynomial envelopes. Constructing thresholds and encoded queries, forming powers, and retaining answers require separate machine-level bounds. These declarations do not provide a deterministic polynomial-time abundance decider.

Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` elaborated source blob `d6d7b1876649e1ecd9fe7ff234a69ec8e50b1b00` and emitted the compiled module with exit 0. A fresh joint kernel replay passed for nine modules including this one. It covered 422 safe declarations and 24,952 transitive constants, omitted four generated declarations and reported exactly `Classical.choice`, `Quot.sound` and `propext`. These counts describe the joint replay. Independent mathematical review and Comparator are `NOT_RUN`.

For a synthetic checked constructor and exact strict-abundance answers, executable tests returned $\sigma(5)=6$ in six probes and the samples $[3,7,15]$ at $2,4,8$.
