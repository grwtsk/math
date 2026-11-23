# Gaussian averages of finite Jacobi determinants for Riemann xi

grwtsk contributors

Fix the heat time \(T=1/2\). Finite positive Jacobi matrices constructed from theta integrals at this one time yield polynomial approximations to the normalized xi function after Gaussian averaging. Their error bounds below use two trace deficits computed from the same integrals. The Gaussian average can destroy reality of zeros, even for a polynomial with simple real zeros. The remaining problem is to establish real zeros for an unbounded subsequence of the specific arithmetic approximants.

## Construction from moments

Use \(H_t(w)=\int_0^\infty e^{ts^2}\Phi(s)\cos(ws)\,ds\) in Polymath's normalization, so \(8H_0(2z)=\xi(1/2+iz)\). The unconditional strict bound \(\Lambda<T\) puts \(H_T\) in the simple real-zero region. Define \(q_j=-(j+1)[w^{2j+2}]\log(H_T(w)/H_T(0))\). Equip polynomials in \(Y\) with \(\langle Y^i,Y^j\rangle=q_{i+j}/q_0\). Compress multiplication by \(Y\) to degree less than \(n\) to obtain \(J_n\). Every matrix entry is specified by the theta integral. The paired Hadamard product identifies the eigenvalues \(a_k\) of multiplication on the completion with inverse squares of the positive zeros of \(H_T\), each counted once because they are simple. In particular \(q_j=\sum_k a_k^{j+1}\) and \(Q=q_0=-H_T''(0)/(2H_T(0))\). For the product, infinite support, polynomial density, and compactness see the [Jacobi construction](XiNewmanJacobiLimit.md). The theta kernel and upper bound for \(\Lambda\) are in [D. H. J. Polymath, arXiv:1904.12438v2, equations (1)–(4) and Theorem 1.1](https://arxiv.org/pdf/1904.12438v2).

Order \(a_k\) decreasingly. Order the eigenvalues \(b_{k,n}\) of \(J_n\) in the same way and extend by zeros. Min–max gives \(0\le b_{k,n}\le b_{k,n+1}\le a_k\). The finite projections converge strongly to the identity by density. Compactness gives operator-norm convergence of the compressions extended by zero, hence \(b_{k,n}\to a_k\) for fixed \(k\). The computable deficits
\[
 d_n=Q-\operatorname{Tr}J_n,\qquad e_n=q_1-\operatorname{Tr}J_n^2
\]
therefore decrease to zero by summability. To compute them solve \(\sum_{j<n}c_jq_{i+j}=-q_{i+n}\) for \(0\le i<n\). The resulting monic polynomial \(p_n(Y)=Y^n+\sum_{j<n}c_jY^j\) is orthogonal to lower powers. In the monomial basis the compression shifts the first \(n-1\) powers and sends \(Y^{n-1}\) to \(-\sum c_jY^j\). This companion matrix has characteristic polynomial \(p_n\). The two traces are \(-c_{n-1}\) and \(c_{n-1}^2-2c_{n-2}\), taking the missing coefficient as zero for \(n=1\).

## Uniform error after averaging

Put \(P_n(w)=\det(I-4w^2J_n)\), \(P(w)=H_T(2w)/H_T(0)\), and \(C_n(w)=\exp(-4d_nw^2)P_n(w)\). Let \(G\) be centered real Gaussian of variance \(v=T/2=1/4\) and \(B=H_0(0)/H_T(0)>0\). The Gaussian characteristic function multiplies \(\cos(2zs)\) by \(\exp(-2vs^2)\) on averaging at \(z+G\). Fubini holds locally uniformly because the imaginary part of \(z+G\) equals that of \(z\) and the theta kernel decays double exponentially. Consequently
\[
  B^{-1}\mathbb E P(z+G)=\xi(1/2+iz)/\xi(1/2)
  \quad(z\in\mathbb C).
\]

Write \(u=4w^2\). Telescoping the paired products and bounding \(|1-uc|\le e^{|u|c}\) for \(c\ge0\) gives \(|P-P_n|\le |u|d_ne^{|u|Q}\). A second estimate accounts for the missing trace in the exponential. For \(N\ge n\) interpolate \(c_i=b_{i,n}+\theta(a_i-b_{i,n})\), \(i\le N,\ 0\le\theta\le1\), and put \(r=Q-\sum_{i\le N}c_i\ge0\). Differentiation gives
\[
 \frac{d}{d\theta}\left(e^{-ur}\prod_i(1-uc_i)\right)=
 -u^2e^{-ur}\sum_i(a_i-b_{i,n})c_i\prod_{j\ne i}(1-uc_j).
\]
This identity holds at zeros of any factor. The absolute derivative is at most \(|u|^2e^{|u|Q}\sum_i(a_i-b_{i,n})c_i\). Integrating replaces each summand by \((a_i^2-b_{i,n}^2)/2\). At \(\theta=0\) the expression is \(C_n\). At \(\theta=1\) it tends to \(P\) as \(N\to\infty\), since \(r\to0\) and the product converges locally uniformly. Thus
\[
 |P(w)-C_n(w)|\le \tfrac12|u|^2 e_n e^{|u|Q}.
\]

The interval fixture below establishes \(0<Q<0.006\). For \(|z|\le R\) set \(h=1-4Q>0\). Using \(|z+G|^2\le2(R^2+G^2)\), \(|z+G|^4\le8(R^4+G^4)\), and Gaussian moments gives
\[
\begin{aligned}
 |\mathbb E(P-P_n)(z+G)|&\le8d_ne^{8QR^2}(R^2h^{-1/2}+\tfrac14 h^{-3/2}),\\
 |\mathbb E(P-C_n)(z+G)|&\le64e_ne^{8QR^2}(R^4h^{-1/2}+\tfrac3{16}h^{-5/2}).
\end{aligned}
\]
Indeed \(\mathbb E e^{sG^2}=(1-2vs)^{-1/2}\); its first two derivatives give the weighted second and fourth moments. At \(z=0\) the second error is at most \((3/2)e_n(1-2Q)^{-5/2}\) by using the fourth moment directly. Dividing the errors by \(B\) gives locally uniform control for normalized xi.

For \(c=4d_n,\ k=1+2cv\), completing the square gives
\[
 \mathbb E C_n(z+G)= k^{-1/2}e^{-cz^2/k}
             \mathbb E P_n(z/k+G'),\qquad G'\sim N(0,v/k).
\]
First use the real Gaussian density at real \(z\), then analytic continuation; both sides are entire by local domination. The residual expectation is a real even polynomial. An unbounded subsequence of ranks on which it has only real roots would imply RH. Indeed the zero-free functions on each open half-plane would converge locally uniformly to the normalized xi function by the estimates, and the limit is nonzero at zero and therefore is not identically zero. Hurwitz applies separately in both half-planes. This gives a sufficient condition; its verification for unbounded ranks is open.

## Finite arithmetic and a counterexample

[The interval fixture](../../../scripts/verify_xi_newman_gaussian_sections.py) computes \(q_0,\ldots,q_{31}\) from theta derivatives with the certified quadrature budget in [the heat-jet fixture](../../../scripts/verify_xi_newman_collisions.py). It encloses \(B\) in \((0.9942,0.9943)\). For every \(1\le n\le16\), both polynomial expectations above have \(n\) disjoint positive sign changes. Evenness and degree give exactly \(2n\) simple real roots for each. At \(n=16\) the corrected polynomial, in the variable \(z/k\), has alternating signs at \(0,15,21,25,31,33,38,41,44,49,54,62,74,94,131,221,717\). The error at zero before dividing by \(B\) is less than \(8.06\cdot10^{-8}\) and the trace bound is less than \(8.55\cdot10^{-8}\). To resolve the high-degree Hankel systems the fixture uses 720-bit arithmetic, grid spacing \(1/1024\), and the first 15 terms of the theta kernel. On shifting the Fourier contour by \(1/8\) the earlier strip majorant through derivative 67 is unchanged, and the geometric alias denominator becomes \(e^{2\pi\cdot1024/8}-1\). At the origin there is no oscillatory shift cost. After the 15th kernel term the successive \(n^4e^{-\pi n^2}\) ratios are below \(1/2\); beyond \(u=2\) the existing \(e^{-1000-u}\) bound applies. The sum of the three explicit errors in the fixture is less than \(10^{-180}\) in each even derivative used. These finite results give no assertion about higher ranks.

For \(F(w)=(w^2-A)(w^2-L)\), the discriminant of \(\mathbb E F(z+G)\) as a polynomial in \(z^2\) is \((A-L)^2-8v(A+L)+24v^2\), which is negative at \(A=100^2,\ L=(1001/10)^2,\ v=1/4\). Taking \(A=M^2,L=(M+1/10)^2\) also gives a negative leading coefficient in \(M\) for the discriminant, while \(1/A+1/L\to0\). Positivity of the starting nodes and a small sum of their inverse-square zero contributions thus allow nonreal zeros after Gaussian averaging. The [Lean module](XiNewmanGaussianSections.lean) checks the finite-product cancellation, integrated displacement, exponent identity, discriminant, and rational counterexample. The infinite-dimensional operator arguments, integral comparison, and unbounded-rank condition have no Lean proof here.

At source blob ee42e7184040ec791279422df8aa3bd607c9f5df, all 5 public declarations passed native elaboration and a fresh kernel replay (5 roots, 7703 declarations). Each transitive axiom audit found only a subset of the standard axioms propext, Classical.choice and Quot.sound. Independent external review of the analytic argument is outstanding.
