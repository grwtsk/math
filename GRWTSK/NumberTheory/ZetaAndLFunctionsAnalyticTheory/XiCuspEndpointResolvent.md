# The sharp modular resolvent at the first embedded height

For the centered modular cusp operator \(B_Y=(i/2)T(I-T/4)^{-1}\),
the imaginary-axis resolvent satisfies
\[
 \left\|(I-i(2r-\tfrac12)B_Y)^{-1}\right\|
     \sim \frac{\sqrt r}{2\sqrt\pi}\,Y^{2r}\qquad(r\to\infty),
 \qquad 1\le Y<4\pi e^{-\gamma_E}.
\]
In particular the height-one operator also fails bounded similarity to
a normal operator, although its exponential growth rate vanishes. Its
geometric scalar resolvent determines an arithmetic Laplace density
with singularities at every \(\log(Yn)\).
[Modular-cusp construction and determinant](XiModularCuspSpectra.md) ·
[Previous two-sided estimates for \(Y>1\)](XiModularResolventObstruction.md)

## Endpoint and rank-one asymptotic

Müller's spectral description applies at truncation height one. The
open cusp \(y>1\) is embedded in the modular surface; only the limiting
horocycle meets the order-two elliptic orbit at the identified point.
The average \(f_0(y)\) of an energy-space function on the collar on
the cusp side has its ordinary one-dimensional trace at 1. In the
height variation proof the representing function for a cut between
1 and \(1+\delta\) is constant below 1, linear in the cusp collar,
and zero above \(1+\delta\). Its matching boundary values give an
\(H^1\) function (equivalently take the restriction of the continuous
piecewise Lipschitz representative on the fundamental domain).
Integration of its derivative against \(f_0'\) on the *open* collar
gives exactly \(\overline{f_0(1)}\) since \(f_0(1+\delta)=0\).
There is no boundary term of positive measure at the identified point.
The form domain with vanishing cut trace is the orthogonal form sum
with the interval Dirichlet constant mode split off; extension by zero
of that one-dimensional mode has matching trace zero. Thus the Green
rank-one variation and its **right** derivative in (8) of the
construction apply also at \(Y=1\), with the same normalized
determinant. [Müller, Theorem 0.1](https://arxiv.org/abs/math/0703340) ·
[Lagarias and Suzuki, Theorem 3](https://arxiv.org/abs/math/0412039)

Put \(v=1/2-r,\ t=v(v-1),\ A=I+tG,\ Q=G^{1/2}\), with \(G\)
the positive noncuspidal Green operator, and \(h\) the indicator below
\(Y\). For \(r>1\), set \(m(t)=\langle A^{-1}h,h\rangle\).
The rank-one determinant ratio and the completed constant term give
\[
 \rho=Y^{-2r}\Lambda(2r)/\Lambda(2r+1),\qquad
 \eta=1-Y|v|m(t)=\frac{2r}{r+1/2}\frac{\rho}{1+\rho}.
\]
Since \(\Lambda(s)=\pi^{-s/2}\Gamma(s/2)\zeta(s)\), Stirling's
formula gives \(\eta\sim2\sqrt{\pi/r}\,Y^{-2r}\) at all these heights.
It also explains why continuing the same geometric positive-\(G\)
identities to \(Y<1\) is impossible: they would give
\(\rho\to\infty,\eta\to2\), whereas \(m(t)\ge0\) forces \(\eta\le1\).

Write \(T=T_0-Y e\otimes e,\ e=(h,0)\), where
\(T_0=\left(\begin{smallmatrix}G&-Q\\ Q&0\end{smallmatrix}\right)\).
Its real quadratic form is nonnegative. The free inverse
\(R_0=(I-vT_0)^{-1}\) exists by Schur elimination and is contractive
for \(v<0\). The full inverse is
\[
 R=(I-vT)^{-1}
   =R_0+(Y|v|/\eta)(R_0e)\otimes(R_0^*e).
\]
The first column applied to \(h\) gives
\(R_0 e=(A^{-1}h,vQ A^{-1}h)\); conjugating by the sign on the
second summand identifies the adjoint column, so its norm is equal.
Put \(s=\|R_0e\|^2\).
The spectral measure of \(h\) for \(G\) shows \(v^2/t\le s/m\le1\)
by applying these bounds to \((1+v^2g)/(1+tg)\) for \(g\ge0\).
As \(v^2/t\to1\) and \(Y|v|m=1-\eta\to1\), the rank-one term
has norm asymptotic to \(1/\eta\). Subtracting or adding the
contraction changes the norm by at most one. For \(c=1/4\), the
centered resolvent is exactly
\((I-cT)R=(1-c/v)R+(c/v)I\), proving the displayed asymptotic.
Every compact normal operator with this divisor has norm of its
imaginary-axis resolvent equal to one for large positive imaginary
arguments by the critical strip bound. The divergent
\(\sqrt r/(2\sqrt\pi)\) at height one suffices to exclude even bounded
normal similarity there.

## Arithmetic information in the positive Green data

The value of \(m(r^2-1/4)\) determines \(\rho\) by inversion of
the scalar equation above. For \(r>1/2\) there is an exact Laplace
representation, with variable \(s=2r\),
\[
 \rho=\int_0^\infty e^{-s x}K_Y(x)\,dx,\qquad
 K_Y(x)=2\sum_{Yn<e^x}
     \frac{\varphi(n)/n}{\sqrt{1-(Yn)^2e^{-2x}}}.
\]
Indeed \(\zeta(s)/\zeta(s+1)=\sum_n(\varphi(n)/n)n^{-s}\) by
the Euler factors, while the substitution \(u=e^{-2w}\) gives
\(B(s/2,1/2)=2\int_0^\infty e^{-sw}/\sqrt{1-e^{-2w}}\,dw\).
Multiplying and translating by \(\log(Yn)\) gives the identity by
positivity. At \(x_n=\log(Yn)\) the one-sided singular coefficient is
\(\lim_{x\downarrow x_n}\sqrt{2(x-x_n)}K_Y(x)=2\varphi(n)/n\).
Thus the Green response determines every coefficient, including
multiplicities inherent in the totient weights, by uniqueness of the
Laplace transform.

This response is completely monotone in \(s>1\). Nevertheless it
cannot equal a generalized Stieltjes transform
\(\int_0^\infty(s+\alpha_0+u)^{-\alpha}\,d\mu(u)\) on any common
right half-line, with \(\mu\ge0,\alpha>0,\alpha_0\in\mathbb R\).
Indeed finiteness at one real point bounds a polynomially weighted
integral of \(\mu\). Gamma integration and Tonelli give the
inverse-Laplace density
\(e^{-\alpha_0 x}x^{\alpha-1}\int e^{-ux}d\mu(u)/\Gamma(\alpha)\),
continuous and bounded on every compact subinterval of \(x>0\) by
dominated convergence. Uniqueness would give equality almost
everywhere with \(K_Y\), impossible on the right of \(\log(2Y)\).
A constant term in such a representation must vanish by decay at
infinity. This excludes a positive-resolvent representation of
this particular reflection coefficient in the stated variable.
The analytic results here have no independent kernel verification.
