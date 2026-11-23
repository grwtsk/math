# The last theta collision and the squared width of its zero cluster

grwtsk contributors

Use the even de Bruijn–Newman function \(H_t\) with \(H_0(w)=\xi(1/2+iw/2)/8\) and \(\partial_t H_t=-\partial_w^2 H_t\). At any real spatial zero \(x\) of order \(m\ge2\) at time \(T\), write
\[
 H_T(x+u)=u^m g(u),\quad
 q=g'(0)/g(0),\qquad S=q^2-g''(0)/g(0).
\]
Let \(\eta\) range over the zeros of the monic probabilists' Hermite polynomial \(\mathrm{He}_m\), and put \(a=i\sqrt2\,\eta\). At time \(T-h\), for \(h>0\) small, there is precisely one zero on each branch
\[
 z_a(h)=x+a\sqrt h-2qh+aS h^{3/2}+O(h^2).
\]
In particular its squared imaginary part is \(2\eta^2 h+4\eta^2 S h^2+O(h^3)\). All coefficients use spatial derivatives of the actual theta integral at one point. The leading Hermite splitting is D. H. J. Polymath's Proposition 3.1(ii). We compute its next two coefficients and apply them to the global maximum at a positive endpoint. [D. H. J. Polymath, arXiv:1904.12438v2, equations (3)–(4), Proposition 3.1 and Theorem 1.5](https://arxiv.org/pdf/1904.12438v2)

## Coefficient calculation

Put \(\epsilon=\sqrt h\), \(P_j(v)=\exp(\partial_v^2)v^j\), and \(r=g''(0)/(2g(0))\). The exponential is a finite sum on polynomials. The theta integral and all its derivatives converge locally uniformly in both complex variables by double-exponential decay. Taylor-expand at \((x,T)\) in space and time, evaluating at \((x+\epsilon v,T-\epsilon^2)\). A term with \(k\) time derivatives and \(j\) space derivatives has weight \(2k+j\) and involves exactly the spatial derivative of that order, by the heat equation. Thus division by \(\epsilon^m g(0)\) removes a common zero and gives a jointly analytic function of \((v,\epsilon)\) near each finite \(v\). Its first terms are
\[
 P_m(v)+\epsilon qP_{m+1}(v)+\epsilon^2 rP_{m+2}(v)+O(\epsilon^3).
\]
Indeed the coefficient associated with the monomial \(u^j\) is \(\sum_{k=0}^{\lfloor j/2\rfloor} j! v^{j-2k}/(k!(j-2k)!)\). This also identifies \(P_m(v)=(i\sqrt2)^m\mathrm{He}_m(v/(i\sqrt2))\).

The relations \(P_{n+1}=vP_n+2P'_n\) and \(P'_{n+1}=(n+1)P_n\) give \(2P''_n+vP'_n=nP_n\). At a root \(a\) of \(P_m\), set \(V=P'_m(a)\ne0\). Then
\[
 P_{m+1}(a)=2V,\quad P'_{m+1}(a)=0,\quad
 P_{m+2}(a)=2aV,\quad P''_m(a)=-aV/2 .
\]
The analytic implicit function theorem gives a unique scaled branch \(a+b\epsilon+c\epsilon^2+O(\epsilon^3)\). The coefficients solve
\[
 Vb+2qV=0,\qquad Vc-aVb^2/4+2raV=0.
\]
This yields \(b=-2q\), \(c=aS\). A fixed small circle about \(x\) contains exactly \(m\) zeros by the argument principle, so these branches exhaust the cluster. For real \(\epsilon\), complex conjugation and replacing \(\epsilon\) by \(-\epsilon\) both exchange the two unscaled branches with leading coefficients \(a,-a\). Uniqueness therefore makes the imaginary part odd in \(\epsilon\), giving the stated \(O(h^3)\) remainder for its square.

## At a positive all-real endpoint

Let \(W(t)=\sup_{H_t(z)=0}(\Im z)^2\). Suppose \(\Lambda>0\). On a closed interval about \(\Lambda\) contained in \((0,1/2]\), Polymath's high-ordinate theorem makes every sufficiently distant zero simple and real, uniformly in time. The global zero strip bounds the remaining imaginary coordinates. Take \(t_j\uparrow\Lambda\) with nonreal zeros at each \(t_j\). Compactness gives a limiting zero of \(H_\Lambda\). It is real by the defining endpoint theorem, and multiple since a simple real zero continues uniquely as a real zero for nearby real times. There are finitely many such endpoint collisions. The origin is excluded by positivity of \(H_t(0)\), and evenness pairs the remaining collisions. By disjoint disks, local uniform convergence and simplicity of the other bounded zeros, all nonreal zeros at sufficiently close earlier times belong to these finitely many clusters. [Polymath, Theorems 1.1 and 1.5, Proposition 3.1](https://arxiv.org/pdf/1904.12438v2)

At a collision abscissa \(x\) the order-one Hadamard product for \(H_\Lambda\), with the factor at \(x\) removed, gives
\[
 S(x)=\sum_{y\ne x}\frac{m_y}{(x-y)^2}\ \ge\ \frac{m}{4x^2}>0.
\]
Here \(y\) runs over the distinct endpoint zeros and \(m_y\) is their multiplicity. The linear exponential terms have zero second logarithmic derivative. The differentiated series converges locally uniformly off the remaining zeros since \(\sum |y|^{-2}<\infty\). The lower bound uses the full multiplicity at \(-x\). The expression is also determined directly by derivatives, writing \(f_j=\partial_x^jH_\Lambda(x)\):
\[
 S(x)=\left(\frac{f_{m+1}}{(m+1)f_m}\right)^2-
       \frac{2f_{m+2}}{(m+1)(m+2)f_m}.
\]
This identity follows by twice differentiating the remaining local factor. The sign depends on the all-real endpoint in the product argument.

Let \(M\) be the largest endpoint multiplicity, let \(\eta_M\) be the largest root of \(\mathrm{He}_M\), and let \(S_*\) be the maximum of \(S(x)\) over collisions of order \(M\). Hermite roots are simple and consecutive degrees strictly interlace, by the derivative recurrence and Rolle's theorem applied to the real-rooted Hermite polynomials. Hence the largest root increases strictly with degree. Taking the maximum over a finite set of local expansions gives
\[
 W(\Lambda-h)=2\eta_M^2 h+4\eta_M^2 S_* h^2+O(h^3)
 \qquad(h\downarrow0).
\]
Thus a positive endpoint forces one of a discrete set of leading slopes, and its second coefficient is strictly positive. For double collisions the slope is two. For a triple collision it is six. A positive endpoint remains possible under these necessary conditions. By the endpoint theorem and the lower bound \(\Lambda\ge0\), the requested determinant specialization still requires proving \(\Lambda=0\). [Endpoint operator and exact heat determinant](XiNewmanJacobiLimit.md) · [Rodgers and Tao, arXiv:1801.05914v5](https://arxiv.org/abs/1801.05914v5)

## Checks on the coefficients

An independent exact check uses \(f(z)=(z^2-A^2)^2\), \(A>0\). At time \(-h\) its heat polynomial is \(z^4+(12h-2A^2)z^2+A^4-4A^2h+12h^2\). The quadratic formula yields squared imaginary part
\[
  \big(\sqrt{A^4-4A^2h+12h^2}-A^2+6h\big)/2
      =2h+2h^2/A^2+O_A(h^3).
\]
The terminal sum gives precisely \(S=2/(2A)^2\). The polynomial \(f(z)=z^2\) has \(S=0\) and squared width exactly \(2h\), showing the role of the additional reflected zero in the theta result.

The actual theta flow has a previously isolated double zero near \((99.32846930557575,-1.877909072972535)\). On its entire certified box of radius \(10^{-9}\), 192-bit Arb arithmetic encloses the center drift \(-2q\) in \((0.83811554,0.83811558)\) and the squared-width coefficient \(4S\) in \((0.19854910,0.19854914)\). The fixture reruns the existence, uniqueness and quadrature checks, then encloses derivatives of orders two through four throughout that box. This is a local negative-time check of the expansion. [Theta fixture](../../../scripts/verify_xi_newman_terminal_jet.py) · [Collision and error bounds](XiNewmanCollisionCount.md)

The [Lean companion](XiNewmanTerminalJet.lean) defines the complex polynomial recurrence and proves its derivative identity, differential equation, values of the required neighboring polynomials at a root, the two perturbation equations' unique solutions, and the double-root conversion. The analytic implicit-function argument, the global localization and maximum, the Hadamard expansion and the interval evaluations are outside those declarations. External mathematical review is outstanding.

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated source blob 276c0df0007b83bf401b431afb12cf2f6781e092. The fresh kernel check reported 6 roots, 13313 declarations. All transitive axiom audits used only axioms among propext, Classical.choice and Quot.sound. [Published verification record](https://github.com/grwtsk/math/issues/1850)
