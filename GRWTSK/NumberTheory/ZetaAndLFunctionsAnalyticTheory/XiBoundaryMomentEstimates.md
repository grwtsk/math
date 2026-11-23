# A mollified bound for the continuous part of the arithmetic resolvent

For a right-half zeta zero write \(d=\rho-1/2=\sigma+i\gamma\), \(r=|d|\), with analytic multiplicity \(m\). Put \(D_{\ge T}=\sum_{|\gamma|\ge T,\sigma>0}m\sigma/r^2\). This is the high-ordinate part of the trace defect in the [Hardy construction](XiHardyDissipativePart.md). Twice the full \(D\) is the imaginary trace norm of its exact xi determinant. The continuous density of the [arithmetic boundary measure](XiBoundaryResolventMeasure.md) at zero is \(2D/\pi\). Using the published zero verification to \(T=3\cdot10^{12}\), the estimate below gives
\[
 D=D_{\ge T}<2.823661\cdot10^{-13}.
\]
For the self-adjoint part of the Hardy operator the phase bound \(|z|D/(1-(|z|/T)^2)\) is then below \(1.55<\pi/2\) throughout \(|z|\le2.29\cdot10^{12}\). Its determinant has exactly the xi zeros there, with their multiplicities. On the unit disk the relative error after cancellation is less than \(7.974\cdot10^{-26}\). The signed critical-line integral excess in equation (4) of the boundary construction is between zero and \(5.647322\cdot10^{-13}\). Vanishing of this excess would prove the gap; these improved bounds leave that question open. [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765)

## Poisson means and a positive sieve

Let \(q\) be a squarefree even integer, \(c_m=1_{(m,q)=1}\), \(b=\varphi(q)/q\), and \(F(s)=\zeta(s)\prod_{p\mid q}(1-p^{-s})\). For \(y>1/2\) put \(s_0=1/2+y\) and
\[
 E=\frac1\pi\int_{\mathbb R}\frac{y\,|F(1/2+it)|^2}{y^2+t^2}\,dt .
\]
The factors of the mollifier are invertible bounded analytic functions on the half-plane \(\Re s>1/2\). Their log moduli have the exact Poisson mean. The pole factor \(P(s)=(s-1)/s\) has modulus one on the boundary. The arithmetic Hardy factorization, or the Poisson–Jensen formula after division by a sufficiently high power of \(s+2\), gives
\[
 \sum_{\sigma>0}m\operatorname{artanh}\frac{2y\sigma}{r^2+y^2}
 =\frac1\pi\int\frac{y\log|F(1/2+it)|}{y^2+t^2}dt-\log|P(s_0)F(s_0)|
 \le\tfrac12\log E+\log\frac{y+1/2}{y-1/2}.
\]
Indeed the normalized power of \(s+2\) is outer, there is no singular inner factor, and \(F(s_0)\ge1\) by its nonnegative Dirichlet series. Each summand at \(|\gamma|\ge T\) is at least \([2y/(1+y^2/T^2)]m\sigma/r^2\); all other summands are positive. At \(y=T\) the comparison factor is \(T\). This provides a tail estimate independently of whether lower zeros are known. The preceding height theorem identifies the whole defect with that tail at the specified finite cutoff. [Balazard, Saias and Yor, *Notes sur la fonction ζ de Riemann, 2*, pp. 284–287](https://denisevellachemla.eu/transc-Balazard-Saias-Yor-1999.pdf)

Here is an explicit whole-integral certificate for \(E\). Set \(a=y-1/2>1\),
\(A(x)=\sum_{m\le x} c_m(m/x)^a\), and \(S(x)=\sum_{m\le x}c_m-bx\). Mellin–Plancherel gives exactly
\[
 E=2y\int_0^\infty\left|A(x)-\frac{bx}{a+1}\right|^2\frac{dx}{x^2}.
\]
To verify it, the Mellin transform of \(A\) on \(\Re s>1\) is \(F(s)/(s+a)\). Subtract \(bx/(a+1)\) on \(x\ge1\), continuing the transform after removal of the pole \(b/[(a+1)(s-1)]\). On \(0<x<1\), subtracting the same linear function restores precisely that rational term for \(\Re s<1\). Partial summation gives \(A-bx/(a+1)=S(x)-\int_0^1 av^{a-1}S(vx)dv\); this is bounded because \(S\) is periodic. At zero the difference is \(O(x)\). Thus ordinary Fourier Plancherel after \(x=e^v\) applies on \(\Re s=1/2\).

Write \(k=\omega(q)\), \(B=2^k\), and fix an integer \(L>q\). Integration of the finite square on \((0,L)\) bounds its diagonal part by
\[
 h=b\left(\log L+0.578+\sum_{p\mid q}\frac{\log p}{p-1}\right)+2B/L.
\]
Indeed the integral through infinity of each diagonal kernel starting at \(m\) gives \(c_m/m\), since \(2a+1=2y\). Inclusion–exclusion for its harmonic sum uses \(|H_{\lfloor u\rfloor}-\log u-\gamma_E|\le2/u\) for \(u\ge1\), from harmonic sum–integral comparison, and \(\gamma_E<0.578\). The off-diagonal part is at most
\[
 2\sum_{h'=1}^H r_{h'} E_1(ah'/L)
   +4\cdot3^k(1+\log H)/a+2h(L/a)e^{-aH/L},
 \quad E_1(u)=\int_u^\infty e^{-v}\,dv/v,
\]
where \(r_j=\prod_{p\mid q}(1-\nu_p(j)/p)\), with \(\nu_p(j)=1\) for \(p\mid j\) and 2 otherwise. For a pair \(m-j,m\) the integrated product is at most \(c_m c_{m-j}e^{-aj/m}/m\) before doubling. The counting function of admissible pairs in \([1,x]\), allowing all integer values of \(m-j\), is within \(3^k\) of \(r_jx\). Expand the excluded residue classes at each prime and use CRT; each of at most \(\prod(1+\nu_p)\) progressions has discrepancy at most one. Partial summation against the unimodal \(e^{-aj/x}/x\), of maximum \(1/(eaj)\), costs at most \(2\cdot3^k/(aj)\) before doubling (endpoint plus total variation). The remaining shifts are bounded by the geometric series at \(m\le L\) and the diagonal harmonic bound. This count preserves the pair correlation at every small separation.

The contribution from subtracting the linear centering term is at most
\[
 \frac{2yb^2L}{(a+1)^2}
 -\frac{4yb}{a(a+1)}\left(bL-B-\frac L{a+1}-1\right).
\]
This follows by integrating each cross term exactly, producing \(c_m(1-(m/L)^a)\); the two counts use \(|S(L)|\le B\) and \(\sum_{m\le L}(m/L)^a\le1+L/(a+1)\).

## The omitted integral

Center \(S\) by its mean over a period. Its variance is exactly \(V=2^k b/12\). Indeed \(S(x)=-\sum_{d\mid q}\mu(d)\{x/d\}\). The covariance of \(\{x/d\},\{x/e\}\) over their common period equals \((d,e)^2/(12de)\). Divide the scales by their gcd, condition on the common fractional part, and use the independent uniform integer residues by CRT. The two conditional centered means are \((t-1/2)/(d/(d,e))\) and \((t-1/2)/(e/(d,e))\); integrating their product gives the formula. Factoring the divisor sum for the variance gives local factors \(2-2/p\). If \(J\) is a nonnegative periodic function of period \(q\) and mean \(V\), then \(\int_L^u J\le(u-L+q)V\). Integration by parts gives \(\int_L^\infty J(x)x^{-2}dx\le V/L+qV/L^2\). The same bound for \(J(vx)\) uses period \(q/v\). Apply this to the centered square, the partial summation identity above, Jensen for the averaging measure \(av^{a-1}dv\), and \(|u-v|^2\le2u^2+2v^2\). The resulting tail of \(E\) is at most
\[
 8yV/L+(4yqV/L^2)(1+a/(a-1)).
\]
For \(q=\prod_{p\le31}p\), \(y=T=3\cdot10^{12}\), \(L=1024y\), \(H=18432\), the diagonal, off-diagonal, centering and tail upper bounds are respectively less than \(6.019269,47.068208,-47.849021,0.203817\). The unrounded sum is below 5.442271. The [Arb certificate](../../../scripts/verify_xi_boundary_moment_estimates.py) evaluates all four bounds directly, including all retained exponential integrals; it also checks exact covariance and residue counts in five periodic examples.

## A limitation of the quadratic upper certificate

Fix the pole-canceling factor \(P=(s-1)/s\). For **any** ordinary Dirichlet polynomial \(M\) with first coefficient one put \(G=P\zeta M\), with \(G(s_0)\ne0\). Its Cauchy quadratic norm divided by \(|G(s_0)|^2\) exceeds \(1+1/(4y)\) whenever \(y\ge17\), independently of the degree and coefficients. This lower bound is on the quadratic upper certificate, not on the true inner factor. The Poisson mean of \(G\) equals \(G(s_0)\): equivalently \(G(s)/(s+a)\) belongs to half-plane Hardy space and the Cauchy formula gives the evaluation identity. This membership also follows directly by square integrability of the causal inverse Mellin function, bounded at large \(x\) for each fixed polynomial by partial summation (the pole-canceling factor removes the linear main term). Subtracting the constant therefore leaves normalized variance equal to the norm ratio minus one.

On \(1\le x<2\) the inverse Mellin function of \(G(s)/(s+a)\) is necessarily \(k(x)=((a+1)x^{-a}-1)/a\). All arithmetic coefficients beyond the first arrive at \(x\ge2\). Subtracting the constant corresponds to subtracting \(G(s_0)x^{-a}\) on this interval. Write \(u=(1-2^{-2a-1})/(2a+1)\), \(v=(1-2^{-a-1})/(a+1)\). Optimizing the complex scalar multiplying \(k(x)\) to approximate \(x^{-a}\) with weight \(dx/x^2\) gives by the two-vector Gram determinant the normalized lower bound
\[
 2y\frac{u/2-v^2}{(a+1)^2u-2(a+1)v+1/2}.
\]
For \(a\ge16\) the numerator including \(2y\) exceeds \(0.38\), since \((2a+1)/(a+1)^2\le33/289\), and the denominator is at most \((a+1)^2/(2a+1)+1/2<y\). This proves the stated floor. Thus optimizing Dirichlet coefficients and these centers while continuing to use the same pole factor and the Jensen quadratic majorant cannot by itself force the upper certificate for \(D\) to zero at a fixed verified height: the bound obtained by this method is at least \(1/(20T^2)\), using \(\log(1+1/(4y))\ge1/(5y)\). The lost information is in replacing the logarithmic integral by its quadratic majorant.

## Asymptotic size of the unverified tail

There is also an upper bound without finite computation:
\[
 \limsup_{T\to\infty} T D_{\ge T}\ \le\ \frac{\log(11/4)}{2\pi}.
\]
For clarity, fix \(1<\lambda\le3/2\), \(\theta<4/7\) close to \(4/7\), and small fixed \(R>0\). At scale \(Y\), set \(\sigma_0=1/2-R/\log Y\) and use the first Conrey mollifier of length \(Y^\theta\), with polynomial \(P_1(u)=u\). Take \(Q=1, P_2=0\) in the smoothed second-moment formula of Bui–Conrey–Young. Smooth majorants of \([Y,\lambda Y]\) differing only in intervals of length \(O(Y/\log Y)\) give a quadratic average at most \(c_1(R,\theta)+o(1)\), with \(c_1(R,\theta)\to1+1/\theta\) as \(R\downarrow0\). The asymptotic is only used after fixing the parameters. [Bui, Conrey and Young, v2, Theorem 2.2 and (3.2), including the first-mollifier theorem of Conrey](https://arxiv.org/pdf/1002.4127v2)

Apply Littlewood's rectangle formula to \(\zeta M\) between \(\sigma_0\) and 3 and these two ordinates. The integral of its log modulus on \(\Re s=3\) is \(O(1)\): both logs have absolutely convergent nonconstant Dirichlet series with bounded absolute coefficient norm there, uniformly in \(Y\), since the mollifier coefficients have modulus at most one and \(\zeta(3)-1<1\). Each horizontal argument integral costs \(O(\log Y)\). In detail on a disk of radius 4 centered at 3 the function \([F_Y(z+it)+\overline{F_Y(\bar z+it)}]/2\) for \(F_Y=\zeta M\) has modulus bounded by a fixed power of \(Y\), by Euler–Maclaurin and the polynomial length. Its center value is bounded below since \(|F_Y(3+it)-1|\le\zeta(3)^2-1<1\). Jensen on the disk bounds the real-part crossings along the horizontal segment by \(O(\log Y)\). Endpoints can be perturbed by less than one to avoid zeros, covering the original interval with the same smooth majorant. Left-edge zeros have zero horizontal weight and follow by a left-edge limit. Jensen's logarithmic inequality and positivity of the weights of all additional product zeros now give
\[
 \sum_{Y<\gamma\le\lambda Y,\,\sigma>0}m\sigma
 \le (\lambda-1)Y\,\frac{\log c_1(R,\theta)+o(1)}{4\pi}.
\]
The left side can include a chosen lower endpoint by the same perturbation. Sum over \(Y=T\lambda^j\) with \(r^{-2}\le Y^{-2}\), including a factor two for negative ordinates. The geometric sum is bounded by \(\lambda(\log c_1+o(1))/(2\pi T)\). Let \(T\to\infty\) first, then \(R\downarrow0\), \(\theta\uparrow4/7\) and \(\lambda\downarrow1\). This gives the displayed asymptotic upper bound. Any fixed low-lying off-line zeros would be omitted eventually, so tail decay does not imply their absence.

Within the two-piece family of that paper the unshifted quadratic constant for this use of Littlewood's lemma cannot be reduced merely by optimizing the mollifier polynomials. To check this, fix the admissible lengths and set \(Q=1\). For any admissible pair \(P_1,P_2\), consider the real parameter family \((u+h(P_1(u)-u),hP_2)\). The limiting mean-square constant as \(R\to0\) is a real quadratic in \(h\), nonnegative on the whole real line by the moment theorem. The derivative of the first-piece term at zero is zero by (3.2), since \(\int_0^1(P_1'-1)=0\). The mixed term (3.4) evaluated with the base polynomial \(P_1(u)=u\) vanishes at \(R=0\): both formal derivatives would have to land on the same linear polynomial. The second-piece square has no linear term. Thus the quadratic has its minimum at zero, where its value is \(1+1/\theta\). This statement concerns this unshifted moment and the two-piece polynomial class; it imposes no bound on the actual horizontal zero density.

The [Lean module](XiBoundaryMomentEstimates.lean) verifies the center comparison and its scale, the centering identities, and the local variance factors. At Lean source blob `96ff9938233d0942fe91ccc65a079fa5af1cc26d`, native elaboration and fresh kernel replay passed. The transitive axiom audit for all six declarations returned only `propext`, `Classical.choice`, and `Quot.sound`. Mellin–Plancherel, the whole-integral bound, the quadratic-certificate obstruction and the zero-density estimate are manuscript arguments. No external independent review of these arguments is recorded.
