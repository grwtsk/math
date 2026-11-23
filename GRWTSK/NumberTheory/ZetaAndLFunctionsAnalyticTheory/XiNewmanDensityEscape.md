# Simple real heat zeros on almost every unit interval at time \(c/\log X\)

grwtsk contributors

Set \(L=\log(X/(4\pi))\), fix \(c>0\), and take a **single time** \(t=c/L\) for the whole interval \([X,2X]\). Use the theta heat function \(H_0(z)=\xi(1/2+iz/2)/8\). For any \(A,\nu>0\), all but \(O_{c,A,\nu}(X/L^A)\) of the integer unit intervals \([j,j+1]\subset[X,2X]\) have the following properties as \(X\to\infty\).

1. Every zero of \(H_t\) whose real part belongs to the interval is real and simple.
2. For a zero \(x\) there and the next real zero \(x+\Delta\), put \(l=\log(x/(4\pi))\), \(s=(1+ix)/2\), \(S=s+t\alpha(s)/2\), with \(\alpha=M_0'/M_0\) from Polymath's Stirling model. Then \(\zeta(S)\ne0\) and
   \[
   \Delta=\frac{4\pi}{l}-\frac{8\pi}{l^2}\Re\frac{\zeta'}{\zeta}(S)
              +O_{c,A,\nu}(L^{-3+\nu}).                                           \tag{1}
   \]

For every \(c>0\) and relative spacing tolerance \(\xi>0\), the count of intervals failing real simplicity or \(|l\Delta/(4\pi)-1|\le\xi\) is \(O_{c,\xi}(X^{1-\lambda(c,\xi)})\) with an explicit positive exponent below. Counting zeros with multiplicity, the proportion in the dyadic slab that are nonreal or multiple is \(O_c(X^{-\lambda(c,1)})\). For **\(2<c<4\)** and every \(\epsilon>0\), the exceptional count improves to \(O_{c,\epsilon}(X^{2/c+\epsilon})\), with remainder \(O_{c,\epsilon}(L^{-3})\) in (1). Here \(\Re S>1\), so the correction has an absolutely convergent von Mangoldt expansion. The previous uniform theorem already removes all exceptions for fixed \(c>148176/57695\) at sufficiently large \(X\). The power count adds information in the gap immediately above two. [Uniform Euler transition](XiNewmanEulerTransition.md)

The quantifier counts intervals, including the full vertical strip over each interval. It permits sparse bad intervals at every height. The constants depend on \(c\); the result supplies neither a bound at \(c=0\) nor an operator for the undeformed function.

## Finite heat sums on enlarged intervals

Work on \(x\in[j-2,j+3]\), so that two complete phase cells on either side of any point of \([j,j+1]\) fit inside once the spacing is \(O(1/L)\). For \(z=x+iy,\ 0\le y\le1\), write
\[
 s_A=(1+iz)/2,\quad s_B=(1-iz)/2,\quad S_d=s_d+(t/2)\alpha(s_d),\quad
 B=M_t(s_B),\quad \gamma=M_t(s_A)/B,\quad b_n=e^{t\log^2 n/4}.
\]
Polymath's two-sum formula is
\[
 H_t(z)/B=\sum_{n\le N} b_n n^{-S_B}
          +\gamma\sum_{n\le N} b_n n^{-S_A}+O_c(X^{-1/4}),\qquad
 N=\lfloor\sqrt{x/(4\pi)+t/16}\rfloor.                                        \tag{2}
\]
Indeed \(l=L+O(1)\); the exponential minus one in the source's (23) is \(O_c(1/X)\), and the positive weights after normalizing are bounded by \(O_c(1)\) for \(n\le N\). Equation (24) costs \(O_c(X^{-1/4})\). More explicitly
\[
 \Re S_{B,A}=(1\pm y)/2+t l/4+O_c(t/x),\quad
 |\Im S_d|=x/2+O_c(1/L),\quad |\gamma|\le e^{0.02y-yl/2}.
\]
The sign \(+y/2\) belongs to the denominator arm. These bounds also cover the endpoints where \(N\) jumps. The holomorphic functions compared below are \(H_t\) and the zeta models, not this discontinuously truncated finite sum. [D. H. J. Polymath, arXiv:1904.12438v2, Theorem 1.3, (6)–(24) and Corollaries 6.4–6.5](https://arxiv.org/pdf/1904.12438v2#page=6)

## Local maximal mean square

For quantities \(U_j\) write \(\|U\|_2=(X^{-1}\sum_j |U_j|^2)^{1/2}\). For \(M=2^m\), define \(D_{M,j}(a)\) as the supremum over all prefixes of \([M,2M)\) and all \(|w-j/2|\le 5\) of \(|\sum a_n n^{iw}|\). Either sign of \(w\) is allowed by conjugating coefficients. Then
\[
 \|D_M(a)\|_2\ll (1+\log(2M))^2
       \left(1+\frac{M\log(2M)}X\right)^{1/2}
       \left(\sum_{M\le n<2M}|a_n|^2\right)^{1/2}.                             \tag{3}
\]
To prove this directly, integrate the square of a block polynomial over an ordinate interval \(I\) of length \(O(X)\). Its diagonal contributes \(|I|\sum |a_n|^2\). The absolute value of the off-diagonal integration kernel at \(n\ne k\) is at most \(2/|\log(n/k)|\le4M/|n-k|\). The inequality \(2|a_n a_k|\le|a_n|^2+|a_k|^2\) and the harmonic sum bound give \(O(M\log(2M)\sum|a_n|^2)\). The same estimate for the derivative inserts \(\log^2(2M)\). For any continuously differentiable \(P\) on an interval of length ten, the fundamental theorem of calculus and Cauchy–Schwarz give \(\sup |P|^2\ll\int(|P|^2+|P'|^2)\). The windows indexed by \(j\) have bounded overlap. Each prefix is a disjoint union of at most \(m+1\) aligned binary blocks. Square by Cauchy–Schwarz and sum the energies of all the binary blocks; at each of \(m+1\) resolutions they partition the whole block. This proves (3), including the supremum over the changing endpoint. The stronger Montgomery–Vaughan mean-value bound eliminates the logarithm in the off-diagonal term; that improvement is unnecessary here. [Montgomery and Vaughan, *Hilbert's Inequality*, 1974](https://doi.org/10.1112/jlms/s2-8.1.73)

Partial summation multiplies (3) by \(O_c(b_M M^{-\Re S_d})\) for an arm of (2), allowing any cut at either end of the block. The logarithmic derivative of \(b_v v^{-\Re S_d}\) in \(\log v\) is bounded. Write \(u=\log M/L\). Including \(\gamma\) on the \(A\) arm gives in both arms the upper weight
\[
  O_c\bigl(M^{-1/2}\exp(-c u(1-u)L/4)\bigr).                                  \tag{4}
\]
The \(y\)-gains are \(e^{-yuL/2}\) and \(e^{-y(1-u)L/2}\), respectively. The error from replacing \(l\) by \(L\) in this expression is a bounded factor. The last block has \(u\le1/2+O(1/L)\); all ensuing exponent estimates allow this bounded endpoint displacement. In particular for fixed \(0<b<1/2\) the tails above \(Y=\lfloor e^{bL}\rfloor\), for both normalized arms on the entire strip, have norm
\[
    \ll_c L^3 e^{-c b(1-b)L/4}.                                                \tag{5}
\]
Here the norm is that of the supremum over the whole enlarged rectangle for each \(j\). Each of \(O(L)\) dyadic blocks costs (3) with \(a_n=1\) and (4), and \(u(1-u)\) is increasing up to \(1/2\). A cut through the first block changes its exponent by \(O_c(1/L)\).

## The power exceptional count for \(c>2\)

For \(2<c<4\), choose \(0<a<1-2/c\) and \(h>0\) small enough that \((1-h)/2+c(1-a)/4>1\). Apply (5) at \(b=a\). Outside \(O_c(X L^{10}e^{-c a(1-a)L/2})\) intervals the tails are \(O(L^{-2})\) uniformly, by squaring and counting. On \(|y|\le h\) Taylor expansion for \(n\le e^{aL}\) gives
\[
 H_t/B=Z(S_B)+\gamma Z(S_A)+O_c(L^{-2}),\qquad Z(w)=\zeta(w)+(t/4)\zeta''(w).
                                                                                \tag{6}
\]
The Taylor remainder costs \(O_c(t^2\sum n^{-1-\eta}\log^4(2n))\) for some \(\eta>0\), because \(b_n\le n^{ca/4}\). The tails of the ordinary differentiated series converge with a power saving. On \(h\le y\le1\), (6) has only its first arm up to the same error: in the short part of the other arm \(n^{y/2}|\gamma|\ll_c e^{-(1-a)yL/2}\), leaving an integrable weight. In every retained zeta factor the reciprocal and the first four derivatives are bounded. By the phase-cell argument below or the uniform transition proof, (6) suffices for (1) with remainder \(O_c(L^{-3})\). The exceptional exponent tends to \(2/c\) as \(a\uparrow1-2/c\), since
\[
 1-\tfrac c2(1-2/c)(2/c)=2/c.
\]
Choose \(a\) close enough to the endpoint and absorb the logarithm in \(X^\epsilon\). Constants here depend on the chosen margin. The endpoint \(a=1-2/c\) itself would lose absolute summability.

## A short Möbius inverse when \(c\) is any positive constant

Fix \(0<d<\min(c/32,1/16)\) and choose \(0<h<d\). The two shifted arguments in \(|y|\le h\), and \(S_B\) in the whole upper strip, lie for large \(X\) in a rectangle \(1/2+4d\le\Re w\le 3+c\), with either sign of \(\Im w\) in the windows of (3). We can enlarge the real range down to \(1/2+2d\) and the ordinate windows by a constant when applying Cauchy's formula. For a positive integer \(r\), take \(b>0\) sufficiently small that \(br<1/3,\ 2b<1/3,\ cb/4<d,\ b<h/8\). Increasing \(r\) decreases the allowed \(b\), and it remains fixed as \(X\to\infty\). Define
\[
 P_Y(w)=\sum_{n\le Y}n^{-w},\qquad Q_Y(w)=\sum_{n\le Y}\mu(n)n^{-w},\qquad
 Y=\lfloor e^{bL}\rfloor .
\]

**Inverse and derivative estimates.** The product \(P_Y Q_Y-1\) is supported on \(Y<n\le Y^2\), with coefficients bounded in absolute value by the number of divisors. Indeed for \(n\le Y\) its coefficient before subtraction is \(\sum_{k\mid n}\mu(k)=\mathbf 1_{n=1}\). On the enlarged rectangles the sup of \(P_Y Q_Y-1\) has norm \(O(X^{-\eta_1})\) for some \(\eta_1>0\), by (3), partial summation, and \(\tau(n)\ll_d n^{d/2}\). For each fixed derivative order \(i\), the \(2r\)-th moment of the supremum of \(P_Y^{(i)}\) on these rectangles is \(O_{c,i,r}(1)\), and the same holds for \(Q_Y\). Raise the polynomial to its \(r\)-th power before using (3). The length is at most \(Y^r\), the coefficients are bounded by \(\tau_r(n)(1+\log n)^{ir}\), and \(M^{1/2} M^{-1/2-2d}\) pays all dyadic logarithms and the divisor bound. For fixed \(r,\eta>0\), \(\tau_r(n)\ll_{r,\eta} n^\eta\): the prime-power coefficients are \(\binom{e+r-1}{r-1}\le r^e\); large primes absorb \(r^e\), and for each of the finitely many small primes a polynomial in \(e\) times \(p^{-\eta e}\) is bounded. All these sup estimates use partial summation in the real exponent and the ordinate window in (3), so they hold simultaneously throughout each rectangle.

**Replacing \(P_Y\) by zeta.** On the original rectangles and for each fixed \(i\), the sup of \(\zeta^{(i)}-P_Y^{(i)}\) has norm \(O_{c,b,i}(X^{-\eta_2})\) for some \(\eta_2>0\). To see this for \(i=0\) on the enlargement, take \(0<v<d\), \(N_1=\lfloor X^{1+v}\rfloor\). Euler–Maclaurin gives \(\zeta(w)=\sum_{n\le N_1}n^{-w}+O(X^{-\eta_3})\) uniformly there. Its integral endpoint term is \(O(N_1^{1-\Re w}/X)\), its finite corrections are \(O_k(N_1^{-\Re w}(X/N_1)^j)\), \(j\ge0\), and a remainder after \(k\) derivatives is \(O_k(X^k N_1^{1-\Re w-k})\), a power saving for large fixed \(k\). In the intervening tail \(Y<n\le X\), (3) with the weight \(M^{-1/2-2d}\) saves a power, even after the logarithms at \(M\asymp X\). For \(X\le M\le N_1\) the norms are \(\ll M^{-2d}(M/X)^{1/2}\log^3 X\), again a power saving since \(v<d\). Sum the blocks. Cauchy's estimate on each of the original rectangles supplies all fixed derivatives. [Euler–Maclaurin remainder, NIST DLMF, (25.11.7), applied to the Hurwitz tail](https://dlmf.nist.gov/25.11.E7)

Consequently, given \(\kappa>0\), \(A>0\), and any fixed list of derivative orders, outside \(O_{c,\kappa,A}(X/L^A)\) intervals all those zeta derivatives and \(Q_Y\) are \(O(L^\kappa)\) throughout the required rectangles. Choose \(2r\kappa>A\), use the moment bounds and discard the power-exceptional sets for the two polynomial approximations. On the surviving rectangles \(|P_Y Q_Y-1|\le1/4\) and \(|(\zeta-P_Y)Q_Y|\le1/4\), so
\[
              |1/\zeta(w)|\ll L^\kappa .                                        \tag{7}
\]
This finite arithmetic identity controls small values simultaneously across each window; a mean bound for zeta alone would not give (7).

## Heat comparison to arbitrary finite order

For an integer \(K\ge1\) put \(Z_K(w)=\sum_{m=0}^K (t/4)^m\zeta^{(2m)}(w)/m!\). In \(0\le y\le h\), the supremum of the error in
\[
 H_t/B= Z_K(S_B)+\gamma Z_K(S_A)+E                                           \tag{8}
\]
has norm \(O_{c,b,K}(L^{-K-1})\). On \(h\le y\le1\) this holds with just \(Z_K(S_B)\) on the right before \(E\). Here (5) handles both long tails. In the thin part, on a short block \(n\le Y\), the Taylor remainder for \(b_n\) is nonnegative, increasing in \(n\) and at most
\[
 C_K t^{K+1}(1+\log(2M))^{2K+2}(2M)^{cb/4+O_c(1/L)} .
\]
Its product with \(n^{-\Re S_d}\) has total variation at most twice the product of their separate suprema (use monotonicity of the two factors). Apply (3) to the unweighted prefixes. The remaining dyadic series converges since \(\Re S_d\ge1/2+4d\) and \(cb/4<d\). The same bound applies to the \(B\) arm throughout the strip. The finite Taylor polynomials now use the derivatives of \(P_Y\); the power approximation to zeta proved above replaces each derivative. In the thick part the entire short \(A\) arm is \(O_c(X^{-h/4})\), since \(|\gamma|\ll X^{-h/2}\), \(\Re S_A>0\), and \(Y^{1+cb/4}\ll X^{h/4}\) by the choice of \(b\). This proves (8).

Choose \(0<\kappa<\min(1/16,\nu/8)\), then \(K\) large enough that \(2(K+1-3)>A\). On discarding \(O_{c,A,\nu}(X/L^A)\) intervals we have \(|E|\le L^{-3}\) everywhere by (8) and the exceptional-count inequality. Use (7) and the derivative bounds through order \(2K+2\) to obtain
\[
 |Z_K/\zeta-1|\ll L^{-1+2\kappa},\qquad
 \frac{Z_K'}{Z_K}=\frac{\zeta'}{\zeta}+O(L^{-1+4\kappa}),\qquad
 \left|\left(\frac{\zeta'}{\zeta}\right)'\right|\ll L^{4\kappa}.                \tag{9}
\]
For example \(Z_K-\zeta\) and its derivative are \(O(L^{-1+\kappa})\); using \(|1/Z_K|\ll L^\kappa\) gives both errors by subtraction of the quotients. In the thick part \(H_t/B\) is nonzero since \(L^{-3}\ll |Z_K(S_B)|\).

## Phase cells and spacing

In a good enlarged thin rectangle set \(\mathcal M(s)=M_t(s)Z_K(s+t\alpha(s)/2)\), \(\Gamma=\mathcal M(s_A)/\mathcal M(s_B)\), and \(D=\mathcal M'/\mathcal M\). Write \(Z_K=Z\) here; in the absolute-convergence proof use \(Z\) from (6) instead. All retained factors are holomorphic and nonzero. Differentiation gives
\[
 D(s)=(1+t\alpha'(s)/2)\left(\alpha(s)+
                           (Z'/Z)(s+t\alpha(s)/2)\right),\qquad
 \partial_y\log\Gamma=-(D(s_A)+D(s_B))/2 .
\]
Here \(D=l/2+O(L^{2\kappa})\) as a complex estimate. On the real line \(\Gamma=e^{i\varphi}\) with \(\varphi'=\Re D(s_A)>0\). In the open upper half of the thin rectangle \(|\Gamma|<1\) by vertical integration. Use neighboring phase points \(\varphi\in2\pi\mathbb Z\) to bound each cell horizontally. On the top edge \(|\Gamma|\le e^{-h(l/2-O(L^{2\kappa}))}\). On a vertical edge \(\Gamma(x)=1\); for \(y\ge1/L\), \(|\Gamma|\le e^{-1/2+o(1)}\), and for \(0\le y\le1/L\), \(\Gamma=e^{-yl/2+O(yL^{2\kappa})}\) has positive real part. Thus \(|1+\Gamma|\) is bounded below on the upper contours. In (8) the error after division by \(Z(S_B)\) is \(O(L^{-3+\kappa})\); in (6) it is \(O_c(L^{-2})\). Reflect the inequality for the **unnormalized** holomorphic functions across the real axis to cover the lower contours. Their reference sum \(\mathcal M(s_A)+\mathcal M(s_B)\) has exactly one simple real zero per cell: the phase traverses \(2\pi\), its derivative is positive, and there are no off-axis zeros since \(|\Gamma|<1\) upstairs. Rouché's theorem gives the same total count for \(H_t\); conjugation forces its unique zero to be real and simple. The thick band was covered above and de Bruijn's strip theorem excludes \(|y|>1\). The enlargement in \(x\) handles incomplete cells touching a unit endpoint as well as the next zero beyond it. [Polymath, Theorem 3.2, strip contraction](https://arxiv.org/pdf/1904.12438v2#page=14)

At each zero the phase is within \(O(L^{-3+\kappa})\) of its cell's odd multiple of \(\pi\), hence \(\Delta=O(1/L)\). On that short segment \(S(v)-S(x)=O(1/L)\), and (9) gives
\[
 \varphi'(v)=l/2+\Re(\zeta'/\zeta)(S(x))+O(L^{-1+4\kappa}).
\]
Indeed the real Stirling derivative differs from \(l/2\) by \(O_c(1/x)\), and \(t|\alpha'|\ll1/(LX)\). The correction \(q=\Re(\zeta'/\zeta)(S(x))\) is \(O(L^{2\kappa})\). Integrating, then expanding the reciprocal, gives (1): both the derivative error and the quadratic reciprocal term contribute \(O(L^{-3+4\kappa})\), and the phase error contributes \(O(L^{-4+\kappa})\). In (6) the derivatives and reciprocals are uniformly bounded, yielding remainder \(O_c(L^{-3})\) even with phase error \(O_c(L^{-2})\).

For comparison, Lagarias treats the real and imaginary parts of *horizontal translates* of the completed zeta function. Their phase involves a shifted logarithmic derivative. The present computation involves a heat weight \(e^{t\log^2 n/4}\), a shift depending on \(x\), and an explicit exceptional count for every fixed positive value of \(t\log(X/(4\pi))\). Fixed-order expansion is needed to justify transferring the phase correction to the actual heat zeros. Voronin's small-value obstruction on this moving curve prevents replacing (7) by a uniform constant when \(0<c<2\). The surviving exceptional intervals could still contain every nonreal zero at selected times. [Lagarias, arXiv:math/0601653v2, §§2–4](https://arxiv.org/abs/math/0601653v2) · [Moving small values and the absolute-convergence obstruction](XiNewmanEulerTransition.md)

## A power-saving count for reality and relative spacing at every \(c>0\)

For any fixed \(c,\xi>0\), all except \(O_{c,\xi}(X^{1-\lambda})\) unit intervals have only real simple zeros above them, with \(|l\Delta/(4\pi)-1|\le\xi\), for an explicitly selectable \(\lambda(c,\xi)>0\). This estimate does not give the second term of (1) with a power exceptional count below \(c=2\). It uses a different comparison amplitude that retains the entire finite heat weight.

Take \(d=\min(c/64,1/32),\ h=d/2,\ \rho=d/16\),
\[
 b=\min(1/16,h/16,\rho^2/(64(c+1))),\quad g=cb(1-b)/4,\quad
 D=64(1+\rho^{-2}).
\]
Choose any
\[
 0<\theta<\min\left(\frac g{64},\frac h{64},\frac{\rho^2}{128(c+1)},
       \frac{\rho}{128(c+1)D},\frac1{128(c+1)D^2},
       \frac{\rho\min(1,\xi)}{1000}\right),\qquad
 \lambda=\min(\theta,bd,g/2).
\]
Use \(Y=\lfloor e^{bL}\rfloor\). The block moment argument with \(r=1\) gives bounded second moments of the local suprema of \(P_Y,Q_Y\). The product error has norm \(O_{c,b}(X^{-bd})\): each block above \(Y\) saves \(M^{-3d/2}\) before logarithms, using the divisor bound with exponent \(d/2\). Outside \(O_c(X^{1-\lambda})\) intervals we may therefore enforce \(|P_Y|,|Q_Y|\le e^{\theta L}\), \(|P_YQ_Y-1|\le1/4\) on all enlarged argument windows, and both normalized heat tails above \(Y\) at most \(O_c(e^{-gL/4})\) by (5). In particular \(|\log |P_Y||\le 2\theta L\) there for large \(X\). These are bounds on the whole windows; small values between sampled ordinates cannot be ignored.

Write \(P=P_Y\) and \(W(w)=\sum_{n\le Y}b_n n^{-w}\). Around every required shifted argument \(w\), the same bounds apply on disks of radius \(4\rho\), including a further displacement of the center by \(\rho\). The real-coordinate margin is available between \(1/2+4d\) and \(1/2+2d\), and \(|\Im w|-j/2\) lies between \(-2\) and \(2\). Choose a local analytic logarithm \(p=\log P\). On the disks shrunk by \(\rho\), \(|p'|,|p''|\le D\theta L\). Indeed the positive Fourier coefficients of \(\Re p\) on a circle of radius \(\rho\) equal one half of the scaled Taylor coefficients of \(p\). This gives \(|p^{(k)}|\le 2k!\sup|\Re p|/\rho^k\), \(k=1,2\), with no restriction on the imaginary constant of the chosen logarithm.

The map \(v\mapsto t p'(w+v)/2\) takes the closed disk \(|v|\le\rho/16\) into itself and is a strict contraction there. Its fixed point \(v_*\) satisfies \(|v_*|\le cD\theta/2\). For this complex \(v_*\) the exact finite Gaussian moment identity is
\[
 W(w)=(\pi t)^{-1/2}\int_{\mathbb R} e^{-(v_*+r)^2/t}P(w+v_*+r)\,dr .         \tag{10}
\]
For each monomial this follows by shifting the entire Gaussian contour, whose vertical sides at \(\pm R\) vanish as \(R\to\infty\); the sum is finite. Normalize the integrand by \(F=P(w+v_*)e^{-v_*^2/t}\). For \(|r|\le\rho\), the linear term vanishes by the fixed point equation. The normalized integrand is \(e^{-r^2/t+R(r)}\), with \(|R(r)|\le D\theta L r^2/2\). Its integrated difference from the centered Gaussian, divided by \(\sqrt{\pi t}\), is at most \((1-cD\theta/2)^{-1/2}-1<1/8\), by absolute integration.

For \(|r|\ge\rho\) one has \(\Re((r+v_*)^2)\ge3r^2/4\). The crude bound \(|P(w+r+v_*)|\le Y^{1+\rho+|r|}\) holds since \(\Re w>0\). Because \(bc\le\rho/8\) and \(b(1+\rho)\le\rho^2/(16c)\), the Gaussian-normalized absolute tail of (10) is \(O_c(e^{-\rho^2 L/(4c)})\) *before* division by \(F\). To check the exponent, absorb \(bL|r|\) into \(r^2/(8t)\), then bound the remaining Gaussian integral using \(e^{-5r^2/(8t)}\le e^{-3\rho^2/(8t)}e^{-r^2/(4t)}\). On the other hand \(e^{-3\theta L}\le|F|\le e^{3\theta L}\) by \(cD^2\theta<1\). The tail divided by \(|F|\) tends to zero, as does the omitted centered Gaussian tail. Thus \(|W/F-1|<1/4\) for large \(X\). Repeating this pointwise on the extra \(\rho\)-disks proves \(W\ne0\) and \(|\log|W||\le4\theta L\) there. The preceding first-derivative circle estimate gives \(|W'/W|\le 8\theta L/\rho\) at the centers.

Now use \(W\) as \(Z\) in the phase argument above. In the thin rectangle (2) differs from \(W(S_B)+\gamma W(S_A)\) by \(O_c(e^{-gL/4}+X^{-1/4})\); in the thick band the retained short \(A\)-arm is again \(O_c(X^{-h/4})\). After division by \(W(S_B)\) these errors are \(o(1)\) by the choices of \(\theta\) (in particular \(4\theta<1/4\)). Throughout the thin rectangle the logarithmic derivative of the full model differs from \(l/2\) in modulus by at most \(9\theta L/\rho+O_c(1)\). This bounds the real phase derivative away from zero and ensures that on \(0\le y\le 1/L\) the reference quotient on each vertical edge has argument of magnitude \(<1/4\). The other contour bounds, reflection and the root count apply unchanged. The phase difference between consecutive heat zeros is \(2\pi+o(1)\); the displayed derivative bound and \(1000\theta/\rho<\min(1,\xi)\) give the claimed relative spacing. This saddle calculation only needs exponential-scale control of \(P\) on a fixed complex neighborhood. Expanding \(W/P\) at the unshifted point under these coarse bounds alone would not control its linear term.

## Counting the zeros in the exceptional intervals

The number of nonreal zeros and real multiple zeros in \(X\le\Re z\le2X\), with each such zero counted with its multiplicity, is \(O_{c,\xi}(X^{1-\lambda}\log X)\). One can fix \(\xi=1\) here. This also bounds the number of real zeros starting a gap failing the stated relative tolerance, with the same choice of \(\xi\) as in the gap test. The conversion from intervals to multiplicities requires a local count valid on the discarded intervals themselves.

Put \(q=\min(c/16,1/8)\). On \(1-q\le y\le1\) the \(B\) arm of (2) equals \(\zeta(S_B)+O_c(1/L)\) uniformly: \(\Re S_B-c/8\ge1-q/2+c/8+O_c(1/L)>1\) with a fixed margin, so the error \(b_n-1\le(t/4)\log^2 n\, b_n\) is summable and the ordinary zeta tail is power-small. The \(A\) arm there is bounded by
\[
 \ll_c (1+L)\exp\left(\tfrac L2\bigl[\max(1-c/8,0)-(1-q)\bigr]\right)=o(1).
\]
This follows by taking absolute values, using \(b_n n^{-\Re S_A}\ll_c n^{-c/8}\) for \(n\le N\). Thus \(F(z)=H_t(z)/B(z)\) is bounded away from zero in that band by the absolute Euler product. Conjugation disposes of its reflected band. Throughout the entire strip \(|y|\le1\), \(|F|\ll_c X^2\): (2) gives a polynomial bound in the upper half even by the crude \(O_c(1)\) individual normalized weights, and reflecting to the lower half costs at most \(O_c(X^{1/2})\). For the latter bound differentiate the uncorrected gamma quotient in \(y\); its logarithmic modulus has derivative \(-l/2+O_c(1)\) and it has modulus one on the real line.

In the open rectangle \((j-1,j+2)\times(-1,1)\), take a conformal map from the unit disk with center mapping to \(j+1/2+i(1-q/2)\). The compact target \([j,j+1]\times[-1+q,1-q]\) has inverse image in a disk of radius \(r<1\) depending only on \(q\), by translation invariance. Jensen's formula at any fixed radius strictly between \(r\) and one bounds the number in the target by \(O_c(\log X)\), using the sup bound and the positive lower bound at the center. Zeros on the integration circle can be handled by increasing its radius slightly. There are none in the omitted upper/lower bands or outside the full strip. The same local count covers the two possible partial units at the endpoints. Summing over the power-exceptional intervals proves the claim. Each good interior interval contains \(\gg_c \log X\) distinct zeros by the phase derivative estimate. In particular the resulting proportion of nonreal or multiple zeros is \(O_c(X^{-\lambda(c,1)})\).

## Formal and finite evidence

The [Lean companion](XiNewmanDensityEscape.lean) proves the finite selected-block and exceptional-count inequalities, the worst-block bound, the strip margin, both identities for the power exponent, and the support and exact initial Möbius convolution of the two truncated arithmetic functions. The [verification fixture](../../../scripts/verify_xi_newman_density_escape.py) checks 257 binary prefixes, 38,900 exact product coefficients and an independent rational mesh of cutoff exponents. Using 144-bit Arb enclosures from (2), it certifies three disjoint real sign-changing brackets near \(X=2{,}000{,}000,\ t=1/8\) with \(c\approx1.4972\), and four near \(X=4{,}000{,}000,\ t=1/6\) with \(c\approx2.1118\). Each bracket has width \(1/16\). The signs alone give existence, without counting multiplicity. At both base ordinates the fixture also evaluates the exact 64-term complex heat polynomial, verifying a saddle-equation residual below \(10^{-14}\) after sixteen iterations and a relative error between 0.07 and 0.08 for the saddle leading term. The analytic interval estimates, phase comparison and density theorem are manuscript results; the full function-theoretic chain has not been formalized.

At Lean source SHA-256 0135ca79efb1e457c5eead44cb89d185cd35c148f136d665ba75da510205a497, all ten public declarations passed elaboration and a fresh kernel replay of 13,646 declarations. Their transitive axiom union was propext, Classical.choice and Quot.sound. The Gaussian contour and saddle estimates are included in the analytic scope above.
