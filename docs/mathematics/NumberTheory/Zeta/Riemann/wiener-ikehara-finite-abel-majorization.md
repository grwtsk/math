# Finite Abel majorization for the Wiener–Ikehara logarithmic kernel

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

Source: GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean.
Controls: GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean.

Pure mathematics is committed directly on grwtsk/math main. Runtime effects and source-bound verification belong only in grwtsk/noeaaeue. The previously accepted Fourier/Mellin source and the separately queued q=1 boundary and first Fourier drafts were not edited by this source.

## One actual nontrivial finite theorem

Let a:N->R be any real coefficients, including signed values. Define

    A(n)=sum_(0<=k<n) a(k).

For any real weights w:N->R and finite stage n, the source authors
the **exact Abel identity**

    sum_(k<n) a(k)*w(k)
      = A(n)*w(n)
        + sum_(k<n) A(k+1)*(w(k)-w(k+1)).

Every endpoint appears, including the right-endpoint term A(n)w(n). The identity holds without positivity or convergence assumptions. Its proof is a finite induction using Finset.sum_range_succ and ring arithmetic.

The same source proves the independent telescoping identity

    n*w(n)
      + sum_(k<n) (k+1)*(w(k)-w(k+1))
      = sum_(k<n) w(k).

Together they yield **actual finite weighted majorization**: if one C>=0 satisfies

    A(n)<=C*n, all n,

and w(n)>=0 and w(n+1)<=w(n) for all n, then for every finite N

    sum_(k<N) a(k)*w(k) <= C*sum_(k<N) w(k).

This is strictly stronger than termwise estimates a(k)<=C: it transfers a cumulative Chebyshev upper envelope directly into decreasing nonnegative weights, with a single C working for all stages. The proof uses positivity of the finite differences w(k)-w(k+1); no hidden assumption that a(k)>=0 is needed for this abstract lemma.

## Exact application to the maintained Wiener kernel

The actual target is the genuine von Mangoldt sequence and the weight

    W_T(x) =
      1 / [x*(1+(log(x/T)/(2*pi))^2)],  x>=1, T>=1.

The shifted arithmetic coefficients are a(k)=Lambda(k+1), with their cumulative sums equal to psi(k). The genuine pinned Chebyshev estimate is

    psi(k)<=C*k, C=log(4)+4.

Once the finite shifted-source equality and the decreasing nonnegative properties of W_T(k+1) are formalized, the new Abel theorem will give

    sum_(1<=n<=N) Lambda(n)*W_T(n)
      <= C*sum_(1<=n<=N) W_T(n).

The remaining one-dimensional integral comparison is

    sum_(n>=1) W_T(n)
      <= W_T(1)+integral_(1,infinity) W_T(x)dx
      <= 1+2*pi^2  for every T>=1.

The derivative of W_T has the exact sign

    W_T'(x)
       = -[1+u^2+2*u/(2*pi)] /
         [x^2*(1+u^2)^2],
       u=log(x/T)/(2*pi).

The numerator rewrites as (u+1/(2*pi))^2+1-1/(2*pi)^2>0. Hence W_T is decreasing on x>0. The substitution u=log(x/T)/(2*pi) reduces the tail to

    2*pi * (pi/2-arctan(-log(T)/(2*pi))) <= 2*pi^2.

These derivative, shifted-source and improper-integral bounds have **not** yet been implemented as Lean theorems in this packet. The new Lean increment closes the FINITE Abel/summation-by-parts stage, not the infinite uniform estimate.

## Maintained source and trust distinction

Maintained primary source:
AlexKontorovich/PrimeNumberTheoremAnd at
127b50e33f6033e2147921167a117af96d9ba4ea,
PrimeNumberTheoremAnd/Wiener.lean blob
59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac.

Historical theorem: bound_sum_log' in the Wiener source around lines 1600–1650. The final exact quantitative goal for the actual Lambda coefficients is

    forall T>=1,
      tsum_(n>=1) Lambda(n)/n /
        [1+(log(n/T)/(2*pi))^2]
        <= (log(4)+4)*(1+2*pi^2).

Upstream is Lean v4.35.0; the local repo remains Lean v4.33.0 and pinned Mathlib db584cd6d46c92f209a44c0f1c829460d327499d.

No Lean/Lake command, --wfail job, --trust=0 run, or axiom audit was performed for the new finite Abel source. The source is a candidate proof pending replay. There is no new axiom, sorry, or Prop structure field asserting the desired logarithmic-kernel theorem.

This arithmetic bound remains a necessary domination in the sigma-downarrow-one series limit and compact-to-Schwartz extension of the genuine Wiener–Ikehara theorem. Boundary continuity on compact rectangles alone cannot establish it, and the separately unverified PR #965 smooth-to-interval squeeze cannot substitute for it.

No RH, PNT, Goldbach or Chowla conclusion is claimed.
