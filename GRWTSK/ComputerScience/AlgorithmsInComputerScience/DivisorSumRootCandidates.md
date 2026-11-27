# Computing candidate roots from the stored divisor sums

Local source attribution: grwtsk contributors. The mathematical consumer is the residual factor-recovery loop in Joseph M. Shunia's Algorithm 2. The implementation takes the actual stored answers, a residual $w$, and the first sampled exponent $J$. The two search loops range over the possible orders and the possible integer roots. [Implementation](DivisorSumRootCandidates.lean) · [Recovery loop](ConsecutiveFactorRecovery.lean) · [Shunia, arXiv:2611.34242v1, §3.3–3.4](https://arxiv.org/html/2611.34242v1#S3.SS3)

Let $v_s=\sigma(w^{J+s})$. The program computes $\varphi=\lfloor w^{J+1}/v_0\rfloor$ and uses $1-\varphi v_s/w^{J+s+1}$ for the sample at offset $s$. For order $\ell$, it fills $A_{sk}=\xi_{J+s+k+1}$ and $b_s=-\xi_{J+s}$ for $0\le s,k<\ell$. The largest index read is $2\ell-1$, so the same $2\lceil\log_2n\rceil$ answers suffice for every order tested on every residual $w\le n$. [Exact normalization](../../NumberTheory/DivisorSumEulerSamples.lean) · [Recovered-order theorem](../../NumberTheory/DivisorSumRecoveredRoot.lean)

For each $k$, replace column $k$ of $A$ by $b$, compute its rational determinant by Laplace expansion and round its quotient by $\det A$. Cramer's rule proves agreement with the mathematical rational solve. A zero denominator returns zero for every coefficient. At a positive trial order this gives the monomial $d^\ell$, which contributes no positive root. The program evaluates the resulting monic reversed polynomial at every $2\le d\le w$ and takes the union of the roots over $1\le\ell\le\lfloor\log_2 w\rfloor$. A spurious root from another order is allowed because the established loop applies the unitary filter before choosing its least candidate.

| Declaration in `GRWTSK.IntegerFactorization.AbundanceRecovery` | Result |
| --- | --- |
| `laplace`, `laplace_eq_det` | The executable recursive expansion agrees with the determinant, including the empty matrix. |
| `roundedColumn`, `roundedColumn_correct` | Cramer's quotient rounds to the corresponding entry of the mathematical totalized inverse applied to $b$, for every rational matrix. |
| `storedMoment_correct` | The actual in-range list entries give the correct rational moment under the prescribed starting-exponent bound. |
| `trialRoots`, `allOrderRoots`, `mem_allOrderRoots` | Every correct-order root in $[2,w]$ is returned by the all-orders candidate computation on the stored values. |
| `allOrderSupplier`, `allOrder_factorization` | At the manuscript window, the proved existence of a good order supplies a smallest component on every residual. The finite program returns the canonical sorted prime-power factorization from the stored sums. |
| `allOrder_abundance` | The same program returns the canonical factorization from consistent strict-abundance answers and a supplied uniform threshold encoding. |

The Laplace recursion has factorially many leaf terms in the trial order, and the root scan visits $w-1$ candidate integers per order. The implementation establishes a finite deterministic computation. A polynomial bit-time implementation would need efficient rational linear algebra, integer-root extraction and their representation-level cost proofs. The strict-abundance composition also needs a uniform threshold constructor. [Complexity of the adaptive query list](AbundanceOracleSamples.md)

An independent rational-arithmetic test used permutation determinants and exact prime-power geometric sums. The candidate sets at $J=8$ were $\{8\}$ on $w=8$ and $\{3,4,12\}$ on $w=12$. With $J=48(1+\lceil\log_2 w\rceil)^2$, the search returned a smallest full component on each of the fifteen inputs $2\le w\le16$.

Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` elaborated source blob `aa22e8630238749a6afcd47713dca722f111e814` with exit 0 and no diagnostics. Nine executable guards passed. In particular, the complete procedure returned $[(2,2),(3,1)]$ from the eight exact divisor sums for $12$ starting at $J=1200$, and $[(2,3)]$ from the six sums for $8$ starting at $J=768$. These test inputs were generated independently from their geometric sums. The axiom reports for the six named public theorems listed precisely `Classical.choice`, `Quot.sound` and `propext`. Independent mathematical review and Comparator are `NOT_RUN`.

The final four-module fresh-kernel replay passed on the pinned root environment, covering the reciprocal-node inverse estimate, the rational recurrence, existence of a successful order and executable full recovery. It checked 94 safe declarations and 21,898 transitive constants. One compiler-generated recursive execution helper was excluded as a seed. The transitive axiom set was exactly `Classical.choice`, `Quot.sound` and `propext`.
