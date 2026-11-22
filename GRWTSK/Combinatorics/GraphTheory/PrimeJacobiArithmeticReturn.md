# Prime-Jacobi spectral moments: arithmetic source return and stability

**Authors:** grwtsk contributors  
**Source pin:** grwtsk/math main 523b74197fab08c6b224492c8c329f0124e21d96 (2026-11-22).  
**Mathematical consumer:** independent Hilbert–Pólya source-return route, [issue #1849](https://github.com/grwtsk/math/issues/1849).  
**Prerequisites:** [PrimeKnotJacobiArithmetic.lean](PrimeKnotJacobiArithmetic.lean), [PrimeJacobiEvenMoments.lean](PrimeJacobiEvenMoments.lean), [PrimeJacobiMomentGram.lean](PrimeJacobiMomentGram.lean).  
**Finite arithmetic control:** [verify_prime_jacobi_prime_power_readout.py](../../../scripts/verify_prime_jacobi_prime_power_readout.py).  
**Evidence:** mathematical derivations below; finite integer/rational checker executed locally, PASS. General Lean inverse and source-return theorems: **NOT_RUN / NOT_FORMALIZED**. No new RH proof or xi spectral determinant is claimed.

## Exact finite inverse

Let \(p_j\) be the \((j+1)\)-st actual prime, with \(p_0=2\). On \(\mathbb R^N\) let \(J_N\) be the real symmetric Jacobi matrix with zero diagonal and adjacent bonds \(J_N(j,j+1)=p_j\). Define the root moments and principal Hankel determinants
\[
m_r^{(N)}=\langle e_0,J_N^r e_0\rangle,\qquad
D_k^{(N)}=\det\big(m_{i+j}^{(N)}\big)_{0\le i,j<k},\qquad D_0^{(N)}=1.
\]

**Theorem A.** For \(1\le K<N\) and \(0\le k\le K+1\),
\[
D_k^{(N)}=\prod_{j=0}^{k-2}p_j^{2(k-1-j)}>0,
\quad
p_j=\sqrt{\frac{D_{j+2}^{(N)}D_j^{(N)}}{(D_{j+1}^{(N)})^2}}
\quad(0\le j<K).
\]
Thus the exact moments \(m_0^{(N)},\ldots,m_{2K}^{(N)}\) recover the first \(K\) actual prime bonds, without any zero ordinates.

**Proof.** A nonzero entry of \(J_N\) moves exactly one index. Hence the \(j\)-th Krylov vector \(v_j=J_N^j e_0\) is supported on indices \(0,\ldots,j\). Its \(j\)-th entry is \(p_0p_1\cdots p_{j-1}\), contributed by the unique monotone outward walk. For \(k\le N\), the first \(k\) Krylov vectors vanish outside the first \(k\) rows, so their Hankel matrix is \(V_k^{\mathsf T}V_k\) for the triangular \(k\)-by-\(k\) Krylov block. Taking determinants gives
\[
D_k=(\det V_k)^2
 =\left(\prod_{j=0}^{k-1}\prod_{r=0}^{j-1}p_r\right)^2
 =\prod_{r=0}^{k-2}p_r^{2(k-1-r)}.
\]
The ratio of three consecutive determinants cancels every bond except \(p_j^2\), and each \(p_j>0\). The largest moment used by \(D_{K+1}\) is \(m_{2K}\). This is the classical inverse Jacobi/Hankel mechanism specialized to genuine prime bonds. \(\square\)

The upstream Lean module currently contains the Gram and determinant-square candidates, not a checked proof of the full triangular determinant formula above. Historical Jacobi moment theory: G. Teschl, *Jacobi Operators and Completely Integrable Nonlinear Lattices* (AMS, 2000), Chapters 2–3. Prior-art novelty is not asserted.

## Recover Alpöge's exact arithmetic statistic from moments

Fix an integer \(X\ge2\), with \(X\le p_{K-1}\). Reconstruct \(\widehat p_0,\ldots,\widehat p_{K-1}\) from the determinants in Theorem A and define
\[
S_{J_N,K}(X)=\sum_{j=0}^{K-1}
  (\log\widehat p_j)
  \sum_{\substack{h\ge1\\\widehat p_j^h\le X}}
  \left(\frac{X}{\widehat p_j^h}-1\right).
\]

**Theorem B (exact arithmetic source return).** Under these cutoff conditions,
\[
\boxed{S_{J_N,K}(X)=
  \sum_{n\le X}\Lambda(n)\left(\frac Xn-1\right).}
\]
Here \(\Lambda(n)=\log p\) exactly when \(n=p^h\) for a prime \(p\) and \(h\ge1\), and is zero otherwise.

**Proof.** Theorem A gives \(\widehat p_j=p_j\). Since \(X\le p_{K-1}\), the recovered bonds include all primes not exceeding \(X\). Unique factorization reindexes all nonzero \(\Lambda(n)\) terms by a unique prime-power pair \((j,h)\); the endpoint \(n=X\) contributes zero. \(\square\)

Consequently the centered expression
\[
G_{J_N,K}(X)=S_{J_N,K}(X)-X\log X+(1+\gamma_E)X
\]
is **exactly** the prime-power error statistic \(G(X)\) in equation (I.2) of the 21 November 2026 Rubinstein working guide to the Alpöge–Claude proof:
<https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf>.
Its Mellin identity (I.3) involves \(-\zeta'/\zeta\). The guide uses the main arithmetic estimate (M), two Dirichlet-character estimates, and a one-sided zero-free window criterion. The guide explicitly quotes (M) from the Lean development; it does **not** contain a self-standing proof of (M).

The 21 November 2026 Lean/Mathlib community statement reports independent checks of the original Alpöge RH theorem:
<https://leanprover-community.github.io/blog/posts/riemann-hypothesis/>.
This work uses that result only as mathematical direction. Importing the final RH theorem would not construct an independent prime-Jacobi Hilbert–Pólya proof.

The recovered primes also yield the exact Dirichlet coefficient \(1\) at every index \(n\le X\) of the truncated formal Euler product
\[
\prod_{j<K}\left(\sum_{h\ge0}\widehat p_j^{-hs}\right),
\]
by unique factorization. At infinite exact source resolution the ordinary Euler product reconstructed from all bonds equals \(\zeta(s)\) for \(\operatorname{Re}s>1\). This is an **arithmetic reconstruction from spectral moments**, not the statement that \(\operatorname{Spec}(J)\) is the set of imaginary parts of zeta zeros or that the Euler product is the determinant of \(J\).

## A usable finite-error theorem

Assume \(D_j,D_{j+1},D_{j+2}>0\) and positive approximations satisfy
\[
(1-\delta)D_r\le\widetilde D_r\le(1+\delta)D_r,
\qquad r=j,j+1,j+2,\qquad 0\le\delta<1.
\]
Define \(\widetilde p_j=\sqrt{\widetilde D_{j+2}\widetilde D_j}/\widetilde D_{j+1}\).

**Theorem C (certified inverse stability).** Multiplying the interval inequalities, dividing by the positive middle determinant, and taking square roots proves
\[
\frac{1-\delta}{1+\delta}\,p_j
\le\widetilde p_j\le
\frac{1+\delta}{1-\delta}\,p_j,\qquad
|\widetilde p_j-p_j|\le\frac{2\delta}{1-\delta}p_j.
\]
For the actual integer prime \(p_j\), the sufficient condition
\[
\boxed{\delta<\frac1{4p_j+1}}
\]
implies \(|\widetilde p_j-p_j|<1/2\), so nearest-integer rounding reconstructs the *exact* bond. This theorem assumes relative-error certificates on the determinants themselves. Obtaining them from imprecisely observed moments, and controlling Hankel conditioning, is a different open task.

## Concrete independent finite controls

The Python checker above, run with Python 3 and standard library only, tests the first **12 actual prime bonds, 2 through 37**, from moments \(m_0,\ldots,m_{24}\). It recomputes **14** Hankel determinants; verifies the reconstruction formula; compares all rational coefficients of formal symbols \(\log p\) in \(S(37)\) against an **independent integer factorization** of each index \(n\le37\); verifies all **37** Dirichlet coefficients of the truncated Euler product; changes each individual bond once and checks the first affected even moment; and checks the exact relative-determinant rounding intervals for all 12 bonds. Reported status: **FINITE_ARITHMETIC_RETURN_EXACT_CHECK_PASS**. Finite computation is not a Lean/kernel theorem and does not establish an all-scale analytic bound.

## The decisive unresolved Hilbert–Pólya bridge

The minimal prime Jacobi operator is symmetric on finite-support sequences. The classical Carleman criterion and \(\sum_n1/p_n=\infty\) mathematically give essential self-adjointness; the full \(\ell^2\) domain/closure formalization remains open in this repository. Its root moments (and, after closure, the root spectral measure) reconstruct all source primes.

A genuine independent Hilbert–Pólya argument still needs a **proved** source-specific equality between a mathematically justified spectral determinant, trace, or resolvent of that self-adjoint closure and the *actual* completed zeta function, including gamma factors, poles, multiplicities, and convergence. One sufficient but currently unavailable contract would be an entire \(D_J(t)\) whose zeros can occur only at real spectral parameters of \(J\), and a nowhere-zero entire factor \(E(t)\) such that
\[
D_J(t)=E(t)\,\xi\!\left(\frac12+it\right).
\]
The existence and applicability of such a determinant cannot be assumed: self-adjointness alone establishes neither discrete spectrum nor compact resolvent. Even finite-rank sections have spurious zero modes at odd rank, so raw characteristic polynomials cannot be identified with completed xi without a proved correction.

Finally, anticommutation, even-moment positivity and Hankel positivity hold for **arbitrary positive bonds**, not just primes. They therefore cannot, without new source-sensitive estimates, prove the required one-sided prime-power window bounds. Exact arithmetic recovery makes the missing source bridge explicit; it does not supply it.

**Open Lean targets:** Krylov support/outermost coefficient; strict principal Hankel determinant identity; inverse bond formula; finite moment-to-prime-power readout; certified determinant stability. **Open analysis:** infinite operator closure formalization, moment-to-determinant error propagation, spectral type/regularized trace, and independent completed-xi source equality.
