# An explicit height bound for positive-time collisions

grwtsk contributors

Write \(H_t\) for the backward heat flow in the normalization \(H_0(z)=\xi(1/2+iz/2)/8\). For \(0<t\le1/2\) set \(X_t=4\pi\exp(32/t)\). The following bounds hold for the actual heat function.

* For real \(x\ge X_t\), the normalized derivative satisfies
  \[
     \left|\frac{d}{dx}\frac{H_t(x)}{B_t(x)}\right|>
                      0.13\log(x/(4\pi)).
  \]
  Here \(B_t\) is Polymath's nonzero gamma-factor approximation defined below. In particular a real multiple zero with \(x>4\pi\) must satisfy \(t\log(x/(4\pi))<32\).
* Every zero with real part at least \(X_t+1\) is real and simple. Consecutive positive zeros \(x_1<x_2\) in this region satisfy
  \[
   \frac{11}{\log(x_2/(4\pi))}<x_2-x_1<
   \frac{14}{\log(x_1/(4\pi))}.
  \]

Polymath's Theorem 1.5(i)–(ii) gives asymptotic reality, simplicity and phase localization with an unspecified absolute height constant. Here the input is instead its explicit two-sum estimate, Theorem 1.3. The constants above come from an upper-half-plane bound, reflection of the normalized remainder, and a family of rectangles defined by the phase of the two leading terms. At \(t=0\) these bounds give no exclusion region. [D. H. J. Polymath, arXiv:1904.12438v2, Theorems 1.3 and 1.5](https://arxiv.org/pdf/1904.12438v2#page=6)

## The two leading terms

Use principal logarithms in the functions \(M_0,M_t\) of Polymath, equations (6)–(11). In particular
\[
 \alpha(s)=\frac{1}{2s}+\frac{1}{s-1}+\frac12\log(s/(2\pi)),\qquad
 M_t=M_0 e^{t\alpha^2/4},\qquad
 \beta(s)=\frac{M_t'(s)}{M_t(s)}=\alpha(s)(1+t\alpha'(s)/2).
\]
Define \(A(z)=M_t((1+iz)/2)\), \(B(z)=M_t((1-iz)/2)\), \(\gamma=A/B\) and \(E=H_t/B-1-\gamma\). All four are holomorphic in the regions below; in particular the arguments of \(M_t\) avoid its cut and \(A,B\) do not vanish. Conjugation interchanges \(A,B\), while \(H_t(\bar z)=\overline{H_t(z)}\). [Normalization, equations (6)–(17)](https://arxiv.org/pdf/1904.12438v2#page=4)

Let \(x\ge X_t,\ L=\log(x/(4\pi))\ge64\). The following upper-strip estimates apply at \(z=v+iy,\ |v-x|\le1/L,\ 0\le y\le1\). Write \(l=\log(v/(4\pi))\). The mean-value theorem gives \(|l-L|<0.001\), since \(x\ge4\pi e^{64}\). Thus \(l>63\) and \(v=4\pi e^l>12e^l\). In the notation of Theorem 1.3,
\[
 N=\lfloor\sqrt{e^l+t/16}\rfloor,\quad b_n=e^{t\log^2(n)/4},\quad
 \begin{aligned}
 \log N&\le l/2+0.001,\\
 |\gamma|&\le e^{(0.02-l/2)y}\le1,\\
 \Re s_\ast&\ge (1+y)/2+tl/4-0.001,\\
 |\kappa|&\le\frac{ty}{2(v-6)}<0.001,\qquad N^{|\kappa|}<1.001.
 \end{aligned}
\]
The first inequality follows using \(\log(1+h)\le h\); the next three are immediate from (20)–(22), including \(|\kappa|\log N\le (l/2+0.001)/(4(v-6))\). We use \(N\) separately at each observation point. [Truncation and bounds, equations (19)–(22)](https://arxiv.org/pdf/1904.12438v2#page=6)

For \(1\le n\le N\) one has \(b_n\le n^{t\log N/4}\). For the two sums in (14) the exponent of decay is bounded below, in both cases, by
\[
 \Re s_\ast-y-|\kappa|-t\log N/4
 \ \ge\ (1-y)/2+tL/8-0.003 .
\]
Here \(tL\ge32\) and \(0<t\le1/2\). The right side exceeds \(4\) on \(0\le y\le 1/64\) and \(7/2\) on the full strip. Both \(n=1\) terms are removed in \(E\). The sum of the absolute tails is thus at most \(2\cdot2^{-p}(1+2/(p-1))\), using the decreasing integral test with \(p=4\) or \(7/2\). The two bounds are \(5/24\) and \(9/(20\sqrt{2})\).

Here are explicit checks for the residual errors in (23)–(24). In (23), \(|l-2\log n|\le l\) for \(n\le N\); hence the exponent inside the summand is at most \((l^2/64+0.626)/(v-6.66)<10^{-19}\). The remaining sum of positive weights is bounded by \(2.001\sum_{n\ge1}n^{-7/2}<3\). Therefore \(e_A+e_B<6\cdot10^{-19}\). For (24), discarding the favorable \(-tl^2/16\) gives
\[
 e_{C,0}\le e^{-l/4}\exp\!\left(
  \frac{5}{e^{l/2}-9/8}+\frac{3(l+2)+11}{v-12}\right)<10^{-6}.
\]
In these elementary inequalities one may use \(e>8/3\), \(l\ge63\), \(v-12>11e^l\) and the decrease of \(l^j e^{-l}\) for \(j=0,1,2\) in this range. The exponent correcting \(e^{-l/4}\) is less than \(0.001\). Combining the three source errors and the tails yields
\[
   |E(v+iy)|<0.21\quad (0\le y\le1/64),\qquad
   |E(v+iy)|<0.33\quad(0\le y\le1).                                      \tag{1}
\]
These bounds are for the holomorphic residual \(E\). The finite Dirichlet approximant itself may jump when \(N\) changes. [Polymath, equations (13)–(24)](https://arxiv.org/pdf/1904.12438v2#page=6)

## Cauchy's estimate through the lower half-disk

For \(s=(1\pm iz)/2\) and \(|y|\le1\), \(|s|,|s-1|\ge v/2\) and \(0\le\Re s\le1\). Thus
\[
 |\alpha-\tfrac12\log(s/(2\pi))|\le3/v,\qquad
 |\alpha'|\le1/v+6/v^2<2/v,\qquad
 |\log|s/(2\pi)|-l|\le 2/v^2 .
\]
Since \(|\arg s|\le\pi/2\), we have throughout these regions
\[
 |\beta(s)|\le\left(\tfrac12(l+2/v^2+\pi/2)+3/v\right)(1+1/(2v))<0.52L.
\]
On the real line at \(x\), \(\Re\alpha((1+ix)/2)\ge L/2-3/x\) and the correction \(|t\alpha\alpha'/2|\le |\alpha|/(2x)\). Hence
\[
 0.49L<\Re\beta((1+ix)/2)<0.52L.
\]
In particular \(|\gamma(x)|=1\) and a continuous real phase \(\varphi=\arg\gamma\) satisfies \(\varphi'(x)=\Re\beta((1+ix)/2)\) by differentiation of the quotient. This uses both terms of its logarithmic derivative. [Explicit logarithmic derivative and its large-height use, equations (9), (100)–(101)](https://arxiv.org/pdf/1904.12438v2#page=59)

Along a vertical segment from \(v\) the complex derivative \(\partial_y\log\gamma\) is the negative half-sum of \(\beta\) at the two arguments above. Its modulus is \(<0.52L\). For \(0\le y\le1/L\) it follows that \(|1/\gamma(v+iy)|<e^{0.52}<1.7\). Reflection gives the exact identity
\[
 E(\bar z)=\overline{E(z)}/\overline{\gamma(z)} .
\]
Equation (1) now bounds \(E\) by \(0.36\) on the **whole** circle \(|z-x|=1/L\), since \(0.21\cdot1.7<0.36\). The Cauchy derivative bound gives \(|E'(x)|\le0.36L\); \(|\gamma'(x)|>0.49L\) since \(|\gamma(x)|=1\). The reverse triangle inequality gives the first asserted estimate. At any zero, \((H_t/B)'=H'_t/B\), proving simplicity there. Away from a zero this is a bound on the derivative of the quotient.

## One zero per complete phase interval

The increasing phase \(\varphi(x)\) tends to infinity. Let \(b_0\) be the first point of \([X_t,\infty)\) with \(\gamma(b_0)=1\). Since \(\varphi'>0.49\log(X_t/(4\pi))\ge0.49\cdot64\), \(b_0<X_t+1\). Denote successive such points by \(b_1,b_2,\ldots\) and consider the closed rectangle \(b_j\le v\le b_{j+1}\), \(-1\le y\le1\).

On the upper half of its boundary compare \(H_t\) with \(A+B\), first dividing by \(B\). On the horizontal edge \(y=1\), or a vertical edge with \(y\ge1/\log(v/(4\pi))\), the bound for \(\gamma\) gives \(|1+\gamma|\ge1-e^{-1/2+0.02/64}>0.39>0.33\). On the rest of a vertical edge, \(\gamma(v)=1\), and integration of the complex logarithmic derivative gives \(|\gamma(v+iy)-1|\le e^{0.52}-1<0.7\). Thus \(|1+\gamma|>1.3\) there. By (1) the contour comparison is strict. On the lower boundary reflect the *unnormalized* comparison: \(A+B\) and \(H_t-(A+B)\) both commute with conjugation. This establishes \(|H_t-(A+B)|<|A+B|\) on the entire boundary.

Inside the upper half of the rectangle (20) implies \(|\gamma|<1\) for \(y>0\), so \(A+B\) has no zeros there; conjugation gives the same on the lower half. On the real segment it has precisely one zero, where \(\varphi=(2k+1)\pi\), and its derivative there is nonzero. Rouché's theorem gives exactly one zero of \(H_t\) in the rectangle, counted with multiplicity. Conjugation makes that zero real, and its multiplicity is one. The de Bruijn strip theorem starting at time zero bounds all imaginary parts by \(\sqrt{1-2t}\) for these times, so the rectangles cover every zero with real part at least \(X_t+1\). The proof uses (20) for the reference function at complex points; sign alternation at real sample points alone does not exclude an additional pair. [Polymath, Theorem 3.2](https://arxiv.org/pdf/1904.12438v2#page=14)

At a real zero, (1) gives \(|1+e^{i\varphi}|<0.21\). Thus within its complete phase interval, \(\varphi\) differs from the odd multiple of \(\pi\) by less than \(0.22\) radians, since \(2\sin(0.11)>0.21\). For zeros in consecutive complete intervals their phase increment is therefore between \(2\pi-0.44\) and \(2\pi+0.44\). Integrating the bounds on \(\varphi'\), using monotonicity of the logarithm and \(3.14<\pi<3.15\), gives the asserted two-sided gap estimate.

## Consequence for the finite collision test

Fix \(0<\tau\le1/2\). A verification that \((H_t,H_t')\) has no common real zero for
\[
          0\le x\le 4\pi e^{32/\tau},\qquad \tau\le t\le1/2
\]
excludes all positive-real collisions in this time range by the first bound. The endpoint count then implies that every zero of \(H_\tau\) is real, hence \(\Lambda\le\tau\). The verification already available on \(0\le x\le110\) handles only the leftmost part. Taking \(\tau\downarrow0\) leaves a growing region where a uniform proof is needed. Neither the explicit threshold nor the spacing in the outer region supplies that proof. [Source collision count and verified finite rectangle](XiNewmanCollisionCount.md)

## Formal and computational scope

The [exact rational fixture](../../../scripts/verify_xi_newman_escape.py) checks the numerical margins in the uniform residual and phase estimates, using a geometric bound on the Taylor remainder of the exponential. It verifies constants after the analytic reduction to the endpoint of the monotone bounds.

The [Lean module](XiNewmanEffectiveEscape.lean) proves the two exponent inequalities dirichlet_exponent and strip_dirichlet_exponent, the exact reflection-bound transfer reflected_circle_bound and the analytic derivative bound cauchy_residual from the full circular bound. The other declarations are normalized_derivative_margin, rouche_domination and phase_gap. They formalize the reverse-triangle margin, conversion of the normalized comparison to the original functions, and the two-sided spacing arithmetic. Its seven declarations at SHA-256 66729d790cc80e626e116df49a644b0403da802a55cc524e334dce65a9771038 passed native elaboration and fresh kernel verification of their 46,589-declaration dependency closure. Transitive axiom audits contained only propext, Classical.choice and Quot.sound. The Polymath estimates, the arithmetic heat function and the Rouché count are used analytically in this manuscript; a joint formalization of them remains open.
