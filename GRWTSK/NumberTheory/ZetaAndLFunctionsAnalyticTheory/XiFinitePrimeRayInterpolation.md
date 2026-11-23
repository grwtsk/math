# An off-line quartet with the same finite prime samples and Taylor coefficients as xi

grwtsk contributors

Let \(X(z)=\xi(1/2+iz)/\xi(1/2)\). For an even real entire function \(Y\) with the same zero strip and counting bound as \(X\), define its ray response by
\[
 A_Y(t)=\sum_{Y(a)=0}\exp\{tF(ia)\},\qquad F(s)=s+s^2/2,\quad t>0.
\]
The sum counts multiplicities. Since \(|\Im a|\le1/2\), its terms in absolute value are bounded by \(\exp(t(5/8-(\Re a)^2/2))\). For \(Y=X\), the Guinand–Weil formula identifies \(A_X(t)\) with the prime, gamma and elementary terms of \(2V_{t/2}(t)\). The complete ray determines the signed divisor, including multiplicities. We examine the information in a finite selection of its values. [Prime-ray normalization and complete-ray inversion](XiParabolicPrimeSpectrum.md)

**Theorem.** Fix distinct positive real \(t_1,\ldots,t_k\), an integer \(L\ge0\), a height \(T>0\), and a displacement \(0<d<1/2\). At arbitrarily large heights \(\Gamma>T\) there exists an even real entire function \(Y\) of order one such that

1. \(A_Y(t_j)=A_X(t_j)\) for every \(j\), and \(Y^{(n)}(0)=X^{(n)}(0)\) for \(0\le n\le 2L+1\).
2. The divisors agree on \(|\Re z|\le T\) and outside a bounded set. Their positive-height counts, including multiplicity, agree for every sufficiently large cutoff.
3. All zeros of \(Y\) have \(|\Im z|\le1/2\), and \(Y\) has new zeros at \(\pm(\Gamma+id),\pm(\Gamma-id)\).
4. \(Y/X\) is rational with value one at zero and limit one at infinity.

The theorem applies to the genuine finite vector of arithmetic samples and to the genuine Taylor coefficients of xi simultaneously. The comparison functions are specified by varying its divisor. Their role is to test what those observations determine.

## Independent variations at simple critical-line zeros

A symmetric real zero pair \(\pm g\) contributes \(2e^{-t_jg^2/2}\cos(t_jg)\) to the \(j\)-th ray value. Its normalized factor \(p_g(z)=1-z^2/g^2\) contributes \(-g^{-2r}/r\) to the coefficient of \(z^{2r}\) in the logarithm at zero. Include an additional coordinate \(\log g\) to control the leading constants of the rational factors at infinity. Write
\[
 v(g)=\left((2e^{-t_jg^2/2}\cos(t_jg))_{j=1}^k,\
               (-g^{-2r}/r)_{r=1}^{L},\ \log g\right)
 \in\mathbb R^{D},\qquad D=k+L+1.
\]
Let \(S_T\) be the positive simple real zeros of \(X\) above \(T\). Then \(\{v'(g):g\in S_T\}\) spans \(\mathbb R^D\). The arithmetic input is that \(\#(S_T\cap[1,U])\gg U\log U\) for all sufficiently large \(U\). This follows from Conrey's lower bound for the proportion of simple critical-line zeros and the Riemann–von Mangoldt count. [J. B. Conrey, *J. reine angew. Math.* 399 (1989), pp. 1–26, §1, opening result](https://doi.org/10.1515/crll.1989.399.1) · [H. M. Bui, J. B. Conrey and M. P. Young, *Acta Arith.* 150 (2011), Theorem 1.1, \(\kappa^*\)](https://doi.org/10.4064/aa150-1-3)

To prove the span, take a nonzero real linear combination \(B(g)\) of the coordinate derivatives. The derivatives of the last \(L+1\) coordinates are the distinct powers \(2g^{-2r-1}\) and \(1/g\). If any of their coefficients is nonzero, the slowest decaying one determines the eventual sign, since all Gaussian derivatives decay faster than every inverse power.

Otherwise let \(t\) be the least selected time with nonzero coefficient, denoted \(b\). The derivative at time \(u\) is
\[
 -2u g e^{-ug^2/2}\big(\cos(ug)+g^{-1}\sin(ug)\big).
\]
Dividing \(B(g)\) by \(-2btg e^{-tg^2/2}\) gives \(\cos(tg)+E(g)\). The \(t\)-term in \(E\) is \(g^{-1}\sin(tg)\). Each term for \(u>t\) is a constant times \(e^{-(u-t)g^2/2}(\cos(ug)+g^{-1}\sin(ug))\). Differentiating this finite list gives \(|E(g)|+|E'(g)|=O(1/g)\). At large \(g\) all zeros must lie in the intervals \(|tg-(\pi/2+\ell\pi)|<\pi/6\), since outside them \(|\cos(tg)|\ge1/2\). In each interval the derivative of \(\cos(tg)\) has fixed sign and magnitude at least \(t\sqrt3/2\). The perturbed derivative has the same sign, so at most one zero lies there. This gives \(O(1+U)\) zeros on \([1,U]\), with a finite initial contribution by real analyticity. In either case \(B\) cannot vanish on \(S_T\). This proves the span.

## Matching the arithmetic observations

Choose \(g_1,\ldots,g_D\in S_T\) with independent derivative vectors. For \(u=(u_1,\ldots,u_D)\) set \(G(u)=\sum_i v(u_i)\). Its Jacobian at \(g=(g_1,\ldots,g_D)\) has the selected columns. By the inverse function theorem, \(G(g)+\delta\) is attained at a point \(u\) near \(g\) for every sufficiently small real vector \(\delta\), with \(u\to g\) as \(\delta\to0\). Choose the coordinate neighborhoods disjoint, above \(T\), and containing no other genuine real zero.

Remove two further simple real zero pairs \(\pm b,\pm c\) with \(b,c\) distinct and tending to infinity. Choose \(\sqrt{bc}<\Gamma<\sqrt{bc}+1\) away from the real parts of all zeros of \(X\). Put \(a=\Gamma+id\). Insert the four zeros of \(p_a p_{\bar a}\), where \(p_a(z)=1-z^2/a^2\). Their contribution \(w\) to our coordinate vector has entries
\[
 \left(\sum_{\alpha\in\{a,-a,\bar a,-\bar a\}}e^{t_jF(i\alpha)}\right)_j,\qquad
 \left(-2\Re(a^{-2r})/r\right)_r,\qquad 2\log |a|.
\]
The ray entries are real by symmetry. Both their Gaussian upper bounds and the inverse-power entries tend to zero. The last-coordinate correction is
\[
 \log b+\log c-2\log|a|=\log\frac{bc}{\Gamma^2+d^2}\longrightarrow0.
\]
Thus \(\delta=v(b)+v(c)-w\) tends to zero in every coordinate. Choose \(u\) so that \(G(u)=G(g)+\delta\), and define
\[
 R(z)=\frac{p_a(z)p_{\bar a}(z)}{p_b(z)p_c(z)}
             \prod_{i=1}^D\frac{p_{u_i}(z)}{p_{g_i}(z)},\qquad
 Y(z)=X(z)R(z).
\]
The simple real pairs removed from the genuine divisor cancel every pole of \(R\) in \(Y\). All factors are normalized at zero, and the equality of the logarithmic height coordinates gives \(R(\infty)=1\) by comparing leading coefficients. The rational function is nonconstant since the selected quartet was absent from the genuine divisor. Multiplication by this rational factor preserves order one. The numerator and denominator replace the same number of positive-height zeros, counting all multiplicities, so their cumulative counts agree above the last change. All other zeros are inherited, with multiplicity.

The first \(k\) coordinates of \(G(u)-G(g)=v(b)+v(c)-w\) assert equality of the ray sums by exact cancellation. The next \(L\) say that the normalized analytic logarithm of \(R\) at zero has vanishing coefficients through \(z^{2L}\). Evenness and \(R(0)=1\) give \(R(z)=1+O(z^{2L+2})\), proving the Taylor assertion.

## Where the arithmetic distinguishes the functions

A self-adjoint operator with Hilbert–Schmidt inverse gives a regularized determinant with real zeros. The function \(Y\) fails this necessary condition even when all the displayed sample and coefficient equalities hold. The full arithmetic ray contains additional information. The construction supplies no Euler product for \(Y\).

One can detect these particular perturbations on the positive real \(s\)-axis. Keep the genuine factors of completed zeta and replace its zeta factor by \(Z(s)=R((s-1/2)/i)\zeta(s)\). Then \(Z(\sigma)\to1\) as \(\sigma\to+\infty\). The ordinary Dirichlet series for \(\zeta\) gives \(\zeta(\sigma)=1+O(2^{-\sigma})\), by bounding its tail through the decreasing integral from 2. If \(Z(\sigma)=1+O(2^{-\sigma})\) also held, division would imply \(R((\sigma-1/2)/i)-1=O(2^{-\sigma})\). Every nonzero rational function tending to zero at infinity has a leading nonzero inverse power there. This contradicts the nonconstancy of \(R\). The exponential estimate therefore excludes the whole finite modification constructed here. Transferring it to a candidate self-adjoint determinant still requires a global identification with arithmetic data.

The interpolation and obstruction above are manuscript arguments. Independent external review is outstanding. Lean elaboration, fresh kernel verification and transitive axiom auditing for this theorem are **NOT_RUN**.
