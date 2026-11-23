# A logarithmic-derivative certificate for a half-integer height cell

Let \(X(z)=\xi(1/2+iz)\). At an integer \(n\) compute
\[
 P(n)=\Re\frac{\xi'}{\xi}(3/2+in).
\]
Choose any finite collection of disjoint open intervals \((l_j,u_j)\) on which the two endpoint values of the real function \(X\) have strictly opposite signs. Common endpoints are permitted. Define
\[
 Q_n=P(n)-\sum_j\frac{1}{1+\max(|n-l_j|,|n-u_j|)^2}.
\]
Then \(Q_n\ge0\). If \(Q_n\le8/5\), **every nontrivial** zeta zero in the closed height cell \([n-1/2,n+1/2]\) is on the critical line. If \(Q_n<4/5\), the chosen brackets account for every zero there, including multiplicity. If the cell endpoints are nonzeros and the parity of the number of chosen witnesses in the cell equals the parity of the true count of its real zeros, then \(Q_n<8/5\) already gives this stronger completeness statement. The parity hypothesis can be established from the two endpoint signs alone when each bracket lies wholly inside or outside the cell. These are localized tests. They can be applied without counting any zeros below the cell.

## The three cost bounds

The even, real, order-one Hadamard product for \(X\), normalized at zero, may be differentiated in groups closed under conjugation and negation. The series of grouped derivatives converges locally uniformly away from the zeros by the classical zero count. Taking the imaginary part of \(-X'/X\) at \(n+i\) gives \(P(n)\) by the functional equation and conjugation. A real zero of ordinate \(t\) and multiplicity \(m\) contributes \(m/(1+(n-t)^2)\). A nonreal pair \(\gamma\pm i\sigma\), with \(0<\sigma<1/2\), contributes its common multiplicity times
\[
 F(\sigma,d)=\frac{1-\sigma}{d^2+(1-\sigma)^2}
             +\frac{1+\sigma}{d^2+(1+\sigma)^2},\qquad d=n-\gamma .
\]
Every term is positive. This is the usual positive Poisson sum to the right of the zero strip. Compare Lagarias's work on positivity of the xi logarithmic derivative and Büthe's completeness tests using the Weil–Barner explicit formula. Here the test function comes directly from a single evaluation at \(3/2+in\). [Lagarias, *On a Positivity Property of the Riemann ξ-Function*](https://websites.umich.edu/~lagarias/doc/positivity.pdf) · [Büthe, *A method for proving the completeness of a list of zeros of certain L-functions*](https://arxiv.org/abs/1308.6704)

For \(|d|\le1/2\), each term is at least its value at \(d=1/2\). Clearing the positive common denominator at that endpoint gives
\[
 (5/2-2\sigma^2)-\tfrac85\big((5/4+\sigma^2)^2-4\sigma^2\big)
 =\tfrac25\sigma^2(1-4\sigma^2)>0 .
\]
Thus a missing reflected pair costs strictly more than \(8/5\), independently of its height and even for arbitrarily small displacement. This is the sharp infimum of the single-pair bound, by letting \(\sigma\downarrow0\) at \(d=1/2\). Each missing real zero in the cell costs at least \(4/5\). For the bracket term choose one real zero per sign change, with one unit of multiplicity. Its distance to \(n\) is at most the larger endpoint distance. Subtracting the displayed lower payment can only increase the remaining allowance. In particular an extra copy at an already chosen zero incurs the same cost as a new one. With the parity check, any missing real multiplicity occurs in a total of at least two. This proves all three conclusions.

On any bounded cell the parity of the true real count, including multiplicities, is even for equal endpoint signs and odd for opposite endpoint signs: each zero of odd order changes the real sign, while a zero of even order preserves it. An interval grid containing both half-integer endpoints therefore supplies a sign-based completeness certificate even when a small cluster would evade one isolated sign sample. If the input is only a sparse list of known real zeros, the unconditional cost for a single missing real witness remains \(4/5\).

The same calculation identifies a uniform target for the full proof. Let \(S(n)\) be the sum of the real-root contributions, with actual multiplicity. It can also be obtained as the trace of a limiting time average of the arithmetic boundary operator at frequency \(n\), as proved in the [time-average construction](XiTimeAveragedSpectrum.md). Then either \(P(n)-S(n)=0\) at every integer, or \(P(n)-S(n)>8/5\) at some integer. Consequently a uniform bound \(P(n)-S(n)\le8/5\) would suffice for RH, without a limit to zero. For a high ordinate the elementary Stirling estimate and the absolutely convergent Euler derivative give \(P(n)=\frac12\log(|n|/(2\pi))+O(1)\). A fixed number of sign brackets can pay at most that number, so a global sign-based proof requires a growing supply of accurately located real mass. No such uniform lower estimate is known in this work.

## Independent finite verification

The [reproducible calculation](../../../scripts/verify_xi_poisson_cells.py) uses Arb interval arithmetic. On \(1/2+it\), the real Hardy value has the same signs up to one fixed factor as \(X(t)\). It is evaluated by multiplying zeta by the phase from log gamma and the power of \(\pi\). The program checks that the imaginary ball contains zero and that the real ball excludes zero at each sampled endpoint. Every bracket payment is rounded down by integer division at denominator \(2^{40}\).

The contiguous calculation uses 2,049 exterior probes. A quarter-unit scan followed by refinement of three unresolved cells certifies exactly 1,562 positive zeros through height \(2048.5\); all are simple. There were 14,671 distinct sign evaluations. The largest final residual was less than 0.142, at center 1743. The exterior derivative here is evaluated by differentiating zeta at the actual safe point with Arb. The certificate imports neither a list of zeros nor an earlier verified-height theorem.

A second calculation uses the five integer centers from \(10^{13}\) to \(10^{13}+4\). It samples signs through a halo on either side, tests endpoint parity, and evaluates the exterior probe using the absolutely convergent prime series with powers \(p^k\le65536\). For this upper bound the omitted logarithmic derivative has absolute value at most
\[
 \int_{65536}^\infty\frac{\log t}{t^{3/2}}\,dt
   =\frac{2\log65536+4}{256}.
\]
The integrand is decreasing there. The gamma and rational terms are included separately and an independent series derivative tests this explicit tail allowance. The residual upper bound must pass separately at each center. Only passing cells contribute to the remote completeness certificate.

At grid spacing \(1/32\), with the sign changes bisected once, the calculation used 3,502 sign evaluations. Write \(N=10^{13}\). In the unit cells centered at \(N,N+3,N+4\) it certified respectively 5, 5 and 4 simple critical-line zeros and excluded any further zeros there. At \(N+1,N+2\) it found respectively 3 and 4 sign-changing brackets. The residual upper bounds 2.156 and 1.723 exceed the completeness threshold in those two cells.

Refining the same-sign intervals in \([N-2,N+5]\) to spacing \(1/64\) detected two additional sign changes, in the adjacent brackets \((N+84/64,N+85/64)\) and \((N+85/64,N+86/64)\). The coarse grid had given this interval no payment. Adding both lower payments brings the five residual upper bounds below 0.363, so even the single-witness completeness threshold \(4/5\) applies. In increasing order of cell center, the exact counts are 5, 5, 4, 5 and 4. Thus all 23 nontrivial zeta zeros with ordinates in \([N-1/2,N+9/2]\) are simple and on the critical line. This isolated five-unit interval leaves the intervening heights untested by this calculation.

The [Lean companion](XiPoissonCellCertificate.lean) proves the exact rational pair identity, the two local spectral costs, a related time-average trace cost, and the bracket lower payment. The Hadamard comparison, sign-parity argument and finite Arb certificate remain separately inspectable mathematical and computational steps. The full uniform cell estimate and unconditional RH are open.

Native elaboration, fresh kernel replay and transitive axiom audits passed with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 for XiPoissonCellCertificate at 9e5a03d54836ebc3d5bed44a12a1ab7a5c8636ab. Across the declarations the reported axioms were propext, Classical.choice and Quot.sound.
