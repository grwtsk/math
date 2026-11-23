# Projecting xi ordinates onto the real axis

grwtsk contributors

Let \(X(z)=\xi(1/2+iz)\). The real coordinate on the planar xi divisor defines a self-adjoint operator \(A\). Its regularized determinant approximates \(X(is)/X(0)\) with a **nonnegative logarithmic error below \(4.163\cdot10^{-13}\) simultaneously for every real \(s\)**. At \(s=1\) the error is below \(2.262\cdot10^{-37}\). The first estimate uses a sharp single-factor comparison and a published finite-height theorem. A separate unconditional estimate compares the translated arithmetic trace to functions of \(A\) in trace norm on every sufficiently high interval of length \(T^{27/82+\epsilon}\).

## The projected operator and its determinant

Take the positive planar measures extracted from \(X,X',X''\) and the test-function Hilbert space of the [xi jet construction](XiJetDivisorMeasures.md). In that construction, coordinate multiplication by \(z\) closes to the normal operator \(N\). On the same test core close multiplication by \(\Re z\) to obtain \(A\). In the analytic identification with the divisor, each zero \(a=x+iy\) has \(m_a\) separate coordinates. The classical strict strip gives \(|y|<1/2\), so the square-summability conditions with weights \(1+x^2\) and \(1+|a|^2\) agree. Finitely supported vectors lie in the image of the core and are graph dense. Thus \(A=(N+N^*)/2\) on the common maximal domain, and \(A\) is self-adjoint. The earlier zero-free disk gives \(|x|>1\), and \(\sum_a m_a/x^2<\infty\). Its inverse is Hilbert–Schmidt, and all coincident projected heights contribute their full combined multiplicity. Both \(N\) and \(A\) come from xi divisor extraction.

Write \(D_A(z)=\det_2(I-zA^{-1})\). Pairing opposite ordinates in the order-one Hadamard product and in the regularized determinant gives, for real \(s\),
\[
 \Delta(s)=\log D_A(is)-\log[X(is)/X(0)]
  =\sum_{x>0}m_a\left[\log(1+s^2/x^2)-\log|1+s^2/a^2|\right].       \tag{1}
\]
Both logarithms on the left are real. On the right \(x>0\) includes both complex conjugate ordinates, and each is paired with its own negative. The series converges absolutely for fixed \(s\).

Set \(q=y^2/x^2\), \(r=s^2/x^2\), \(B=(1+r-q)^2+4q\). Twice the summand in brackets is \(\log U\), where
\[
 U=\frac{(1+q)^2(1+r)^2}{B},\qquad
 1\le U\le(1+q)^2(1+q/4).                                         \tag{2}
\]
Indeed the numerator minus \(B\) is \(rq[6+2q+(2+q)r]\), and
\((4+q)B-4(1+r)^2=q(r-3-q)^2\). The upper envelope is attained at \(r=3+q\). Hence each term in brackets lies between zero and \(9q/8\), strictly above zero if \(s y\ne0\). For \(0\le r,q\le1\), expansion gives \(B=(1+q)^2+2r(1-q)+r^2\ge1\), so \(\log U/2\le(U-1)/2\le 11rq/2\).

Let \(T=3\cdot10^{12}\). Platt and Trudgian proved \(y=0\) for every zero with \(0<x\le T\). Write \(C(T)\) for the following upper bound from Lehman's lemma, counting positive ordinates with multiplicity:
\[
 2\sum_{x>T}m_a x^{-2}\le C(T)=
 \frac{1+\log(T/(2\pi))}{\pi T}+\frac{0.28+1.12\log T}{T^2}
 <2.960\cdot10^{-12}.
\]
For the decimal inequality one may insert \(\pi>3.1415\), \(\log(T/(2\pi))<26.892\), and \(\log T<29\). The last two inequalities follow by summing the first 101 positive exponential-series terms at 26.892 and 29. Using \(y^2\le1/4\) in (2) proves
\[
 0\le\sup_{s\in\mathbb R}\Delta(s)\le\frac9{64}C(T)<4.163\cdot10^{-13},
 \qquad
 0\le\Delta(1)\le\frac{11}{16T^2}C(T)<2.262\cdot10^{-37}.           \tag{3}
\]
The sharp factor comparison also gives \(\lim_{|s|\to\infty}\Delta(s)=\sum_{x>0}m_a\log(1+y^2/x^2)\) by dominated convergence. Any one strictly positive \(s\) would suffice for an exact equality test, since every summand has the same sign. [Platt and Trudgian, Theorem 1](https://arxiv.org/pdf/2004.09765) · [Brent, Platt and Trudgian, Lemma 1, with \(A=0.28\)](https://maths-people.anu.edu.au/~brent/pd/rpb276-electronic.pdf)


There is also an exact maximum-modulus comparison for the **entire complex plane**. Write both normalized functions as power series in \(w=-z^2\). The factor for the two positive-real-part representatives in a nonreal quartet is
\[
 1+2\Re(a^{-2})w+|a|^{-4}w^2.
\]
All coefficients are positive because \(|x|>1>|y|\). Each is bounded by the corresponding coefficient of the projected factor \((1+w/x^2)^2\). Real-zero factors agree. Multiplication preserves coefficientwise comparison, and local uniform convergence passes it to the infinite products. Applying the triangle inequality to the resulting nonnegative coefficients of the difference gives, with equality at \(z=iR\),
\[
 \max_{|z|\le R}|D_A(z)-X(z)/X(0)|
  =D_A(iR)-X(iR)/X(0)=(1-e^{-\Delta(R)})D_A(iR).
\]
Consequently the error on every disk is below \(4.163\cdot10^{-13}D_A(iR)\) for \(R>0\). For \(0<R\le1\) the proof of (3) bounds it by \(2.262\cdot10^{-37} R^2 D_A(iR)\). The comparison uses the radial maximum and stays meaningful at zeros.

Even the relative coefficient error is uniform in the degree. For each nonreal quartet the largest of the three projected-to-original coefficient ratios is \((1+q)^2/(1-q)\), attained at degree one in \(w\). If \(q_*=(4T^2)^{-1}\), its logarithm is at most \((2+(1-q_*)^{-1})q\). Each such quartet contributes twice to the sum of \(q\) over positive real parts, so the sum of \(q\) over quartets is at most \(C(T)/16\). Multiplying the coefficientwise inequalities and passing to the limit puts every projected-to-original Taylor coefficient ratio between one and \(\exp(5.551\cdot10^{-13})\). This comparison covers all degrees simultaneously.

## A trace-norm estimate on every high interval

Let \(h(z)=1/\cosh(\pi z)\) and \(L(t)=\Re h(t-N)=(h(t-N)+h(t-N)^*)/2\). The arithmetic prime–gamma expression (5) in the [translated trace calculation](XiTranslatedSechTrace.md) equals \(S(t)=\operatorname{Tr}L(t)\). On the coordinate belonging to \(a\), put \(b=\cos(\pi y)\). The two operators \(L(t)\) and \(h(t-A)\) have positive diagonal entries \(K_b(t-x)\) and \(K_1(t-x)\), where
\[
 K_b(v)=\frac{b\cosh(\pi v)}{\sinh^2(\pi v)+b^2},\qquad
 F_b(v)=\pi^{-1}\arctan(\sinh(\pi v)/b),\qquad F_b'=K_b .
\]
Each density has mass one. Both operators are trace class for every fixed real \(t\) by exponential decay outside \(|x-t|<1\) and local finiteness in the strip. Their trace-norm difference sums the absolute differences of their entries with multiplicity, so the following estimate also bounds the absolute scalar trace difference.

For \(0<b<1\) the sign of \(K_b-K_1\) equals the sign of \(b-\sinh^2(\pi v)\). Its positive region is \((-u_b,u_b)\) with \(u_b=\pi^{-1}\operatorname{arsinh}\sqrt b\). Equal total masses and oddness of the primitives give
\[
 J(y)=\int_{\mathbb R}|K_b-K_1|
 =4[F_b(u_b)-F_1(u_b)]
 =2-\frac8\pi\arctan\sqrt{\cos(\pi y)}
 =\pi y^2+O(y^4)\quad(y\to0).                                      \tag{4}
\]
At \(y=0\) the same formula is zero. For the uniform estimate, \(bK_1\le K_b\le K_1/b\) gives \(J(y)\le\min(2,(1-b)/b)\). If \(|y|\le1/4\), then \(b\ge1/2\) and \(1-b\le\pi^2 y^2/2\). Otherwise \(2\le32y^2\). In particular \(J(y)\le32y^2\) throughout the open strip. The quotient \(J(y)/y^2\) extends continuously to a strictly positive function on \([-1/2,1/2]\), with endpoint value eight. Tonelli therefore yields the exact identity, allowing infinity on either side,
\[
 \int_{\mathbb R}\|L(t)-h(t-A)\|_1\,dt=\sum_a m_a J(y)
 \asymp\sum_a m_a y^2 .                                             \tag{5}
\]

Fix \(0<\epsilon<0.001\). For all \(T\ge T_0(\epsilon)\), take \(H=T^{27/82+\epsilon}\) and \(I=[T-H/2,T+H/2]\). Then
\[
 \frac1H\int_I\|L(t)-h(t-A)\|_1\,dt
 \ll_\epsilon \frac1{\log T}.                                      \tag{6}
\]
To prove this, let \(M(u)\) count critical-strip zeros of real part greater than \(1/2+u\) and ordinate in \((T-H,T+H]\). Karatsuba and Korolev, Chapter I, §3, Theorem 1, give \(M(u)\le 13H\log T\exp[-(\epsilon/5)u\log T]\) for \(0\le u\le1/2\). Reflection about the critical line and integration of each squared displacement give
\[
 \sum_{T-H<x\le T+H}m_a y^2
 =4\int_0^{1/2}uM(u)\,du\le\frac{1300H}{\epsilon^2\log T}.          \tag{7}
\]
Choices of boundary convention at a jump in \(u\) have no effect on the integral. For the ordinates in this sum, (4) bounds their full contribution to (6) before division by \(H\). For the remainder with \(|x|\le3T\), the kernel absolute values are bounded by \(1/|\sinh(\pi(t-x))|\ll e^{-\pi H/2}\) on \(I\). There are \(O(T\log T)\) such ordinates. For \(|x|>3T\), \(|x-t|\ge |x|/3\) and summation by parts with the ordinary Riemann–von Mangoldt bound gives an exponentially decreasing remainder. This proves (6), uniformly in the center. The result allows exceptional points inside each window. The arithmetic theorem controls the full interval \((T-H,T+H]\) at every center at the stated scale. [Karatsuba and Korolev, *Behaviour of the argument of the Riemann zeta function on the critical line*, Russian Math. Surveys 61 (2006), Chapter I, §3, Theorem 1](https://doi.org/10.1070/RM2006v061n03ABEH004328)

As a further consequence, the part of (1) from \(x>T\) is \(O_\epsilon(1/(T\log T))\), uniformly in \(s\), and \(O_{\epsilon,s}(1/(T^3\log T))\) at fixed \(s\). In fact (7) covers each dyadic slab \([V,2V]\) by \(O(V/H(V))\) windows with centers comparable to \(V\) and radii comparable to \(H(V)\), so its total squared displacement is \(O_\epsilon(V/\log V)\). Multiply by \(V^{-2}\) using (2), or by \(s^2 V^{-4}\) for \(V\ge |s|\), and sum the geometric series. The existing reflection-sensitive Weil-form estimate uses quadratic cancellation and a dyadic zero-density theorem in a different operator and norm. [Earlier endpoint-form density bound](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilEndpointDensityTail.md)

## Why small projection error does not count off-line zeros

The real-divisor operator \(H_{\mathrm{real}}\) only retains the coordinates with \(y=0\). Its translated trace deficit gives mass one to every missing zero. Projection gives the same zero the continuous error \(J(y)\to0\). In particular replacing \(H_{\mathrm{real}}\) by \(A\) in the missing-mass test would change its mathematical conclusion. [Exact missing-mass identity](XiTranslatedSechTrace.md)

For an analytic control with the ordinary counting asymptotic, choose increasing \(x_n>2\pi e\) by \(x_n\log(x_n/(2\pi e))/(2\pi)=2n\), \(n\ge1\). Give each of the four ordinates \(\pm x_n\pm i\eta_n\) multiplicity one, with \(\eta_n=c e^{-x_n}\), \(0<c<1\). The even product over positive-real-part representatives of \((1-z^2/a^2)\) converges on compact sets since \(\sum x_n^{-2}<\infty\). It is real entire with infinitely many off-line quartets, and the positive count is the Riemann–von Mangoldt main term plus \(O(1)\). Its order is one: for radius \(R\), summing \(\log(1+R^2/|a|^2)\) by parts with the counting bound gives \(O(R\log R)\), while the zero count precludes order below one. On the short windows used in (7), either the count is empty or \(u\le c e^{-(T-H)}\), where the exponential factor in the density bound tends uniformly to one and the total count is \((1/\pi+o(1))H\log T\). Yet (5) is at most \(128c^2\sum_n e^{-2x_n}\), arbitrarily small, while the integrated missing mass is infinite. Taking \(c\downarrow0\) also makes the global determinant bound from (2) arbitrarily small. These controls satisfy the strip symmetries and counting estimates; the zeta Euler data are an additional constraint. The estimates for the actual xi function leave open the vanishing of its projection error and the construction of an independently specified exact Hilbert–Pólya operator.

The [Lean companion](XiSechProjectionTransport.lean) proves the factored density difference, the two-sided pointwise comparison, the integrated minimum bound, the \(32y^2\) projection bound, and both the envelope and its equality case in (2). Equations (1), (3)–(7), the spectral interpretation, the density theorem and the control product have the analytical proofs above or the cited published inputs. They are outside the scope of those Lean declarations.
