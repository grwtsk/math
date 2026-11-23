# Jacobi limits at the de Bruijn–Newman endpoint

grwtsk contributors

Let \(s=\Lambda\) be the de Bruijn–Newman constant. There are two natural limits of the moment construction as \(t\downarrow s\). The Jacobi matrices converge strongly in their common polynomial basis. At a multiple zero that limit has only one eigenvector for the corresponding node. Ordering the variational eigenvalues before taking the limit gives a different operator on a fixed Hilbert space. Its inverse is Hilbert–Schmidt and the regularized determinant reproduces the endpoint heat function with **every zero multiplicity**. Both constructions start from theta integrals. The argument applies unconditionally at \(s=\Lambda\). Its specialization to the Riemann xi function requires \(\Lambda=0\).

## Heat data and a uniform zero count

Use D. H. J. Polymath's normalization
\[
 H_t(w)=\int_0^\infty e^{tu^2}\Phi(u)\cos(wu)\,du,\qquad
 \Phi(u)=\sum_{n\ge1}(2\pi^2n^4e^{9u}-3\pi n^2e^{5u})e^{-\pi n^2e^{4u}},
 \qquad H_0(w)=\tfrac18\xi(\tfrac12+iw/2).
\]
The heat equation is \(\partial_t H_t=-\partial_w^2H_t\). For real \(t\) the origin value is positive since every summand of \(\Phi\) is positive on \([0,\infty)\). The defining integral is locally uniform in \(w,t\) and so are its differentiated integrals. The de Bruijn–Newman theorem gives real zeros at \(s\) and for all \(t>s\). They are simple for \(t>s\): a multiple zero at an interior time would, by the local Hermite splitting law, have nonreal nearby zeros at slightly earlier times still above \(s\). The same argument permits a multiple zero at the endpoint. [D. H. J. Polymath, arXiv:1904.12438v2, equations (1)–(4) and Proposition 3.1](https://arxiv.org/pdf/1904.12438v2) · [Rodgers and Tao, lower bound for the endpoint](https://doi.org/10.1017/fmp.2020.6)

For clarity, the required summability is uniform down to the endpoint. Fix \(I=[s,s+\delta]\) with \(\delta>0\). From the displayed sum there are positive constants \(C,c\) depending only on \(I\) such that \(e^{tu^2}\Phi(u)\le C e^{-c e^{4u}}\) for \(u\ge0,\ t\in I\). Indeed one can first bound the sum in \(n\) by \(C_1e^{9u}\exp(-\pi e^{4u}/2)\), and absorb \(9u+\max(I)u^2\) in the remaining exponential. For \(|w|\le R,\ R\ge2\), bounding the cosine by \(e^{Ru}\) and substituting \(v=ce^{4u}\) bounds \(|H_t(w)|\) by \(C c^{-R/4}\Gamma(R/4)/4\), with an enlarged \(C\). Thus \(\log\max_{|w|\le R}|H_t(w)|=O_I(R\log(2+R))\). Compactness and positivity give a common lower bound at zero and a common zero-free disk about zero. Jensen's formula on the disk of radius \(2R\) gives
\[
 N_t(R)\le C_I R\log(2+R)\qquad (R\ge2,\ t\in I),
\]
where \(N_t\) counts zeros in the disk with multiplicities. If \(x_k(t)\) denotes the \(k\)-th positive zero counted with multiplicity in increasing order, then, for \(k\ge1\),
\[
 0<x_k(t)^{-2}\le b_k=C'_I\,\frac{\log^2(2+k)}{k^2},\qquad
 \sum_{k>K}b_k=O_I\!\left(\frac{\log^2(2+K)}{K}\right).
\]
To invert the count, separate \(x_k(t)\le k\) and \(x_k(t)>k\), enlarging the constant for bounded \(k\). There are infinitely many distinct positive zeros: otherwise evenness and the order-at-most-one Hadamard theorem would make \(H_t\) a polynomial times a constant (the linear exponential vanishes by evenness). This contradicts the Riemann–Lebesgue limit on the real axis and \(H_t(0)>0\).

## An operator constructed from theta moments

Compute real numbers directly from the integral by
\[
 q_j(t)=-(j+1)[w^{2j+2}]\log\big(H_t(w)/H_t(0)\big),\qquad j=0,1,\ldots .
\]
These require finitely many Taylor coefficients for each \(j\); the logarithm at zero has constant term zero. Put \(\langle Y^i,Y^j\rangle_t=q_{i+j}(t)/q_0(t)\). Orthonormalize \(1,Y,Y^2,\ldots\), choosing positive leading coefficients. In this basis let \(J_t\) be multiplication by \(Y\). Its three nonzero diagonals are computed by taking inner products with \(Y\) in this basis. These definitions use neither a zero list nor an assigned spectrum.

The following identification proves that the construction works. Pairing opposite zeros in Hadamard's product cancels the genus-one exponentials. Evenness eliminates the remaining linear exponential, and evaluation at zero fixes the constant. Hence
\[
 \frac{H_t(w)}{H_t(0)}=\prod_{x>0}\big(1-w^2/x^2\big)^{m_t(x)},\qquad
 q_j(t)=\sum_{x>0}m_t(x)x^{-2j-2}.
\]
Here \(x\) runs through distinct positive zeros and \(m_t(x)\) is their multiplicity. The uniform majorant above justifies convergence and the Taylor comparison on a common small disk. In particular
\[
 d\mu_t=q_0(t)^{-1}\sum_{x>0}m_t(x)x^{-2}\,\delta_{x^{-2}}
\]
is a probability measure with the prescribed moments. Its support lies in a common compact interval and is infinite. Every nonzero polynomial has strictly positive squared norm. Polynomials are dense in \(L^2(\mu_t)\) by uniform polynomial approximation and density of continuous functions. It follows that the Jacobi completion on \(\ell^2(\mathbb N_0)\) is unitarily equivalent to multiplication by \(Y\) on this measure. Thus \(J_t\) is positive, compact, injective and trace class. Each distinct positive zero gives exactly one eigenvector, irrespective of the mass of the atom. The accumulation point zero has no atom.

## Strong convergence and the precise trace defect

For each fixed \(j\), \(q_j(t)\to q_j(s)\) by the locally uniform integral and nonvanishing near zero. The finite Gram matrices at \(s\) are strictly positive definite. Each fixed orthogonal polynomial and each fixed Jacobi coefficient consequently converges to its counterpart at \(s\), by finite Gram–Schmidt. This gives convergence on finitely supported vectors because the matrices are tridiagonal. The common support bound gives a uniform operator-norm bound, hence \(J_t\to J_s\) strongly on the whole space in this fixed basis.

For \(t>s\) the zeros are simple. Therefore \(\operatorname{Tr}J_t=q_0(t)\), while \(\operatorname{Tr}J_s=\sum_{x>0}x^{-2}\), summing distinct endpoint zeros. Consequently,
\[
 \lim_{t\downarrow s}\operatorname{Tr}J_t-\operatorname{Tr}J_s
       =\sum_{x>0}\frac{m_s(x)-1}{x^2}.
\]
All terms are nonnegative and the series converges absolutely. The determinant of the cyclic endpoint Jacobi operator by itself counts only the distinct nodes. Putting multiplicity into the mass of a scalar atom changes the norm of its evaluation functional but leaves the dimension of the corresponding eigenspace equal to one. If a collision occurs, the positive trace defect also precludes trace-norm convergence in this basis.

## Ordering before the limit

In the simple real range \(t>s\), compute the decreasing sequence \(a_k(t)\) from the operator by its min–max values
\[
 a_k(t)=\inf_{\dim L=k-1}\
     \sup_{\substack{v\perp L\\ \|v\|=1}}\langle J_tv,v\rangle,\qquad k\ge1.
\]
On the fixed doubled basis of \(\ell^2(\mathbb N)\oplus\ell^2(\mathbb N)\) form the diagonal operator \(K_t\) with entries \(+2\sqrt{a_k(t)}\) and \(-2\sqrt{a_k(t)}\). The spectral theorem and the proven moment representation identify \(a_k(t)=x_k(t)^{-2}\). Here the roots prove a property of the theta-moment construction. The definition takes its entries from the variational problem for \(J_t\).

To take the limit, enclose the first finitely many distinct positive zeros of \(H_s\) in disjoint small disks and close the enclosing interval at points where \(H_s\ne0\). Local uniform convergence and Rouché's theorem give exactly \(m_s(x)\) nearby zeros of \(H_t\) in each disk, and none on the intervening compact real intervals. Positivity near zero fixes the starting index. Sending the radii to zero proves \(a_k(t)\to a_k^\ast=x_k(s)^{-2}\), including repeated coordinates. This pointwise limit is defined by interior min–max data. Applying min–max directly to \(J_s\) would give a single coordinate at a multiple zero.

Let \(K_\ast\) have the signed diagonal entries \(\pm2\sqrt{a_k^\ast}\). Since \(a_k(t),a_k^\ast\le b_k\) and \((\sqrt a-\sqrt b)^2\le |a-b|\) for \(a,b\ge0\), one obtains
\[
 \|K_t-K_\ast\|_2^2
   =8\sum_{k\ge1}\big(\sqrt{a_k(t)}-\sqrt{a_k^\ast}\big)^2\longrightarrow0 .
\]
Indeed every finite sum converges to zero and the remaining sum is at most \(8\sum_{k>K}b_k\), uniformly for all \(t\in I\) above \(s\). This proves Hilbert–Schmidt convergence without selecting eigenvectors across a collision. The limit is injective and self-adjoint. Its inverse on \(\operatorname{ran}K_\ast\) is a densely defined self-adjoint operator: in the displayed orthonormal basis its real diagonal reciprocals have the maximal square-summability domain, containing all finitely supported vectors.

For all \(z\in\mathbb C\), the genus-one regularized Fredholm product converges locally uniformly since \(K_\ast\) is Hilbert–Schmidt. Pair the two signs at each coordinate, obtaining
\[
 \boxed{\displaystyle
 \det\nolimits_2(I-zK_\ast)=\prod_{k\ge1}(1-4z^2a_k^\ast)
                         =\frac{H_s(2z)}{H_s(0)} .}
\]
The regularizing exponential cancels in each signed pair, and the multiplicity at both signs is \(m_s(x)\). The scaling by two is necessary for \(H_0(2z)/H_0(0)=\xi(\tfrac12+iz)/\xi(\tfrac12)\). The known lower bound \(\Lambda\ge0\) makes \(\Lambda=0\) equivalent to RH. The determinant just obtained at the all-real endpoint supplies no bound \(\Lambda\le0\).

## Formal evidence

The companion namespace GRWTSK.XiNewmanJacobiLimit contains four declarations. The lemma square_root_gap gives the real square-root inequality. The theorem inverse_square_sum_tends_zero proves the sequence form of dominated convergence for the squared coordinate discrepancies under a supplied summable bound. The lemma lost_trace gives finite trace-defect arithmetic, and signed_inverse_product gives cancellation of the two linear factors. At source SHA-256 d9a31266e8f1a18f2cfacff195e3834d0ade912df91897458ab8e04b2535c056 all four passed native elaboration, fresh kernel replay of their 14,333-declaration dependency closure and transitive axiom audits; each used only propext, Classical.choice and Quot.sound. The identification of the moments, uniform counting estimate, Jacobi and Rouché arguments, and Fredholm determinant are analytic arguments in this manuscript. Their Lean formalization remains open. [Lean companion](XiNewmanJacobiLimit.lean)
