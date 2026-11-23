# Multiplicity-resolved measures from the xi function and its first two derivatives

grwtsk contributors

Write \(X(z)=\xi(1/2+iz)\), using the entire completed zeta function defined by its theta integral. Two families of positive densities, computed from \(X,X',X''\), define coordinate multiplication operators by taking limits on compactly supported tests. The planar operator \(N\) is normal and has the exact xi determinant. The real operator \(H\) is self-adjoint and counts all critical-line zeros with their analytic multiplicities. A single nonnegative difference between their reciprocal-square traces detects the missing zeros. Proving that this difference vanishes remains equivalent to RH. [Theta-integral source](XiThetaSchurSource.md) · [Exact determinant problem](https://github.com/grwtsk/math/issues/124)

## Two positive families

Use the following quotient as a meromorphic function, extending across common zeros by cancellation,
\[
 J=\frac{(X')^2}{(X')^2-X X''}.
\]
The denominator is nonzero at zero since \(X'(0)=0\), \(X(0)>0\), and \(X''(0)<0\) by the positive theta representation. View \(|J|\) as a continuous function with values in \([0,\infty]\). For integers \(k\ge0\) define \(b_k(s)=\min(1,\max(0,s-k))\), \(h_k(s)=b_k(s)/\max(1,s)\), with \(b_k(\infty)=1\), \(h_k(\infty)=0\). For \(\epsilon>0\), use the densities
\[
 \begin{aligned}
 d\mu_{k,\epsilon}(z)&=h_k(|J(z)|)
       \frac{\epsilon^2|X'(z)|^2}{\pi(\epsilon^2+|X(z)|^2)^2}\,dA(z),\\
 d\sigma_{k,\epsilon}(t)&=b_k(|J(t)|)
       \frac{\epsilon |X'(t)|}{\pi(\epsilon^2+X(t)^2)}\,dt,\qquad t\in\mathbb R .
 \end{aligned}                                                    \tag{1}
\]
Here \(dA\) is ordinary planar area. The input to (1) is the theta function and its derivatives at the integration variable. The local limit below explains how (1) extracts its divisor.

**Local limit.** The vague limits \(\mu_k,\sigma_k\) exist. The planar limit has unit mass at each distinct zero of order \(m>k\), and the real limit has unit mass at each distinct real zero of order \(m>k\). Both limits vanish elsewhere.

To see how the layer selects its order, write \(X(a+t)=t^m u(t)\) near a zero, with \(u(0)\ne0\). Then
\[
 J(a+t)=\frac{(m u+t u')^2}{m u^2+t^2((u')^2-u u'')},\qquad J(a)=m.
\]
This is the classical root-multiplicity estimator. J.-L. Lagouanelle studied polynomial roots in *Comptes rendus de l’Académie des sciences* 262A (1966), 626–627. Petković and Neta give this local factorization for the Schröder quotient. The use here is to weight the two divisor measures. [Petković and Neta, *J. Comput. Appl. Math.* 308 (2016), p. 219, equation (13) and the following calculation](https://faculty.nps.edu/bneta/papers/1-s2.0-S0377042716302783-main.pdf)

For a general nonzero entire function \(f\), the denominator could vanish identically. On any disk where \(f\ne0\) this would give \((f'/f)'=0\), hence \(f=C e^{az}\) there and everywhere by analytic continuation. These zero-free controls have empty divisor and fall outside the quotient definition. The displayed local formula excludes this degeneracy as soon as a control has a zero of positive finite order. At an isolated pole of \(J\) the weights take the declared values, and both unweighted regularizers vanish in the limit on compact zero-free neighborhoods.

For the planar density first omit \(h_k\). Take a local analytic \(m\)-th root of \(u\); then \(w=t u(t)^{1/m}\) is biholomorphic near zero and \(X=w^m\). The Jacobian cancels the coordinate change in \(|X'|^2dA\). On \(|w|<R\) the mass is
\[
 2m^2\int_0^R\frac{\epsilon^2 r^{2m-1}}{(\epsilon^2+r^{2m})^2}\,dr
  =\frac{mR^{2m}}{\epsilon^2+R^{2m}}\longrightarrow m .
\]
Every compact set separated from the divisor has uniformly vanishing density. Given a compactly supported continuous test, isolate its finitely many relevant zeros in these coordinate disks, approximate the test there by its center value, and use the displayed mass bound \(m\). This proves vague convergence of the unweighted planar densities. Multiplication by the continuous weight \(h_k(|J|)\) gives mass \(m h_k(m)=\mathbf 1_{m>k}\). This radial calculation is the one-variable regularization underlying the Lelong–Poincaré divisor formula. [Demailly, *Analytic Methods in Algebraic Geometry*, Chapter 1, formula (1.20)](https://www-fourier.univ-grenoble-alpes.fr/~demailly/manuscripts/analmeth_book.pdf)

On the real line, first omit \(b_k\). Each isolated zero has a sufficiently small one-sided interval on either side on which \(X'\) has constant sign. The mass on either interval equals the absolute change of \(\pi^{-1}\arctan(X/\epsilon)\) and tends to \(1/2\). This also holds for an even-order zero, at which \(X\) retains its sign. Compact sets away from the zeros again have uniformly vanishing density. The corresponding continuity argument yields mass one per distinct real zero. Restoring \(b_k\) gives the real assertion.

## Two closed operators and their determinants

On finite sequences of smooth compactly supported tests on the plane define a positive semidefinite form by
\[
 \langle f,g\rangle=\lim_{\epsilon\downarrow0}\sum_k
       \int \overline{f_k(z)}g_k(z)\,d\mu_{k,\epsilon}(z).
\]
Divide by its null space and complete. On the test quotient take multiplication by the coordinate \(z\) and close its graph, obtaining \(N\). On the real line apply the same construction with \(\sigma_{k,\epsilon}\) and coordinate \(t\), obtaining \(H\). Multiplication preserves the null space by the local limit. In either completion the evaluation map identifies the norm with the sum of squares on pairs \((a,k)\), where \(a\) is a relevant zero and \(0\le k<m_a\). An isolating bump in the chosen layer realizes the unit vector at any such pair. Finitely supported vectors are dense in the weighted norm \(\sum_{a,k}(1+|a|^2)|v_{a,k}|^2\), so tests give a graph core. The maximal domain is exactly the set of vectors with finite weighted norm. The adjoint multiplies by the conjugate coordinate on the same domain. Consequently \(N\) is normal, \(H\) is self-adjoint, and each eigenvalue of either operator has geometric and algebraic multiplicity \(m_a\). In particular, \((N-N^*)/(2i)\) on the common domain extends to a bounded self-adjoint operator of norm at most \(1/2\), by the classical critical strip.

Evenness, reality, \(X(0)\ne0\), and the order-one Hadamard product give
\[
 \det\nolimits_2(I-zN^{-1})=\frac{X(z)}{X(0)}
 =\det\nolimits_2(I-zH^{-1})\,E_{\rm off}(z),\qquad
 E_{\rm off}(z)=\!\!\prod_{\substack{\Re a>0,\ \Im a>0\\X(a)=0}}
 \big[(1-z^2/a^2)(1-z^2/\bar a^2)\big]^{m_a}.                 \tag{2}
\]
Indeed \(\sum_a m_a |a|^{-2}<\infty\) by order one, counted over distinct zeros. Both inverse operators are Hilbert–Schmidt and compact. Pairing the determinant factors at \(a\) and \(-a\) cancels their exponential factors. In the xi product normalization at zero fixes the constant and evenness kills the residual linear exponential. There are no purely imaginary zeros, since \(X(iy)=\xi(1/2-y)>0\) for real \(y\) by its positive theta-cosh integral. Thus each off-line orbit contains precisely the four distinct points used in (2). The products converge locally uniformly. The residual factor is strictly positive on both coordinate axes, since on either axis each quartet gives the squared modulus of a nonzero number and the product is absolutely convergent. The exact identity for the self-adjoint operator holds precisely when \(E_{\rm off}\equiv1\). [Hadamard product and positive theta integral](XiThetaSchurSource.md) · [Related exact determinant with a non-normal division operator](XiDeBrangesRankOne.md)

## A trace difference with a fixed sign

The same functions in (1) define a scalar test. Put
\[
 D=-\frac{X''(0)}{X(0)}-\operatorname{Tr}(H^{-2}).
\]
Both terms have expressions in the input functions. Choose even upper cutoffs \(0\le\chi_L\le1\) with compact support increasing to one, e.g. \(\chi_L(t)=\min(1,\max(0,2-|t|/L))\), and a fixed even continuous cutoff \(\eta\) zero on \(|t|\le1/2\) and one for \(|t|\ge1\). With the integrand extended by zero near zero, the trace is
\[
 \operatorname{Tr}(H^{-2})=
 \lim_{K,L\to\infty}\ \lim_{\epsilon\downarrow0}
 \sum_{k<K}\int \eta(t)\chi_L(t)t^{-2}\,d\sigma_{k,\epsilon}(t).
\]
The outer limit is monotone after the inner limit. For the fixed cutoff use the elementary zero-free disk \(|a|>3/2\). Indeed \(g(z^2)=X(z)/X(0)\) and \(g(-w)\) has positive coefficients, so \(|g(w)-1|\le\xi(2)/X(0)-1<1\) for \(|w|\le9/4\). The explicit theta estimate \(X(0)>1/3\) and \(\xi(2)=\pi/6<2/3\) give the strict inequality. [Coefficient and center estimate](XiCoefficientHankelOperator.md)

Twice differentiating the logarithm of (2) at zero and using conjugation yields
\[
 \frac79\sum_{a\notin\mathbb R}\frac{m_a}{|a|^2}
 \ \le\ D=\sum_{a\notin\mathbb R}m_a\Re(a^{-2})
 \ \le\sum_{a\notin\mathbb R}\frac{m_a}{|a|^2}.                \tag{3}
\]
In fact \(\Re(a^{-2})/|a|^{-2}=1-2(\Im a)^2/|a|^2\) lies between \(7/9\) and one by the strip and disk bounds. Thus \(D=0\) is equivalent to RH. An off-line quartet of radius at most \(R\) contributes at least \(28/(9R^2)\), independent of its distance from the real axis. Formula (3) supplies no estimate forcing \(D=0\).

At a single imaginary argument one gets an exact positive Fredholm determinant test,
\[
 \det(I+H^{-2}/4)\ \le\ \frac{1}{4X(0)^2},
 \qquad \text{with equality if and only if RH holds}.                 \tag{4}
\]
Indeed \(X(i/2)=\xi(0)=1/2\). Pairing the two real eigenvalues \(a,-a\) shows that \(\det_2(I-(i/2)H^{-1})=\sqrt{\det(I+H^{-2}/4)}\), choosing the positive root. At \(z=it\), each off-line quartet gives
\[
 \left(1+2t^2\Re(a^{-2})+t^4/|a|^4\right)^{m_a}.
\]
By (3) the factor exceeds one for \(t\ne0\). In particular, if one such quartet has \(|a|\le R\), the ratio \(1/(2X(0)\sqrt{\det(I+H^{-2}/4)})\) is at least \(1+7/(18R^2)+1/(16R^4)\). The operator inside the determinant in (4) differs from the identity by a positive trace-class operator. Equality in (4) remains unproved.

## An independent multiplicity check and a finite example

For \(k\ge0\) put \(Q_k(z)=\sum_{j<k}|X^{(j)}(z)|^2\). Apply the unweighted planar density above to \(X^{(k)}\), multiply by \(\delta^2/(\delta^2+Q_k(z))\), then first let \(\epsilon\downarrow0\) and next \(\delta\downarrow0\). The second limit is on a locally finite set. A zero of order \(m\) of \(X\) contributes \((m-k)_+\), by differentiation, and every other point contributes zero. Here for \(k=0\) the filter is one; for \(k>0\) it requires that \(X\) and every derivative of order below \(k\) vanish. The \(X^{(k)}\) are nonconstant since \(X\) is transcendental. Differences of consecutive limiting measures recover the same unit layers \(\mu_k\). This derivation only uses the ordinary analytic order and the radial identity, and independently checks the multiplicity convention in (1).

For \(P(z)=(z^2-4)^2((z-3)^2+1/16)((z+3)^2+1/16)\) there are two real double roots and four nonreal simple roots. The planar layers have sizes six and two. The real layers have sizes two and two. All higher layers vanish. The real trace is one, and the missing quartet contributes \(4(9-1/16)/(9+1/16)^2=9152/21025\) to the analog of (3). A single scalar space with measure \(\sum m_a\delta_a\) would have dimension one at a double root. Separate layers give the required two-dimensional fiber. As a check on (4), at \(t=1/2\) the ratio of \(P(i/2)/P(0)\) to the positive real-operator determinant square root is \(153/145>1\).

Under RH, the scalar Weil Hilbert space studied by Suzuki has one coordinate per distinct zero, with multiplicities entering its norm. Suzuki explicitly observes that the resulting self-adjoint operator has simple spectrum even if a xi zero has higher multiplicity. Formula (1) instead obtains independent copies from local analytic layers. Earlier constructions in this repository discuss the normal multiplication operator using the zero divisor as input and positive moment reconstruction conditional on universal positivity. Here the test norms are specified by positive Lebesgue densities before either divisor is identified. Both operators extract a divisor from the given \(X\). The planar extraction has the exact xi determinant and is self-adjoint precisely under RH. The real extraction is self-adjoint unconditionally, but the full determinant requires \(D=0\). An independent self-adjoint Hilbert–Pólya realization still requires a proof that the entire divisor lies on the real axis, or a distinct arithmetic construction yielding that conclusion. [Suzuki, *On the Hilbert space derived from the Weil distribution*, §6, final two paragraphs](https://arxiv.org/pdf/2301.00421) · [Normal multiplication from the divisor](XiSelfAdjointDefect.md) · [Conditional moment reconstruction](XiNewtonMomentHilbertPolya.md)

The companion Lean module proves the local jet-energy criterion, finiteness of the analytic order of the actual xi function, its exact layer weights, the second-derivative quotient limit at every positive finite order, the radial integration and limiting formulas, and the scalar \(7/9\) inequality. The global measure limits, closed-operator domains, determinant products, and trace identity above are analytical arguments. [Lean declarations](XiJetDivisorMeasures.lean)
