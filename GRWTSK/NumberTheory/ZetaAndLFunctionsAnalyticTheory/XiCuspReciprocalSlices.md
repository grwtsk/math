# Reciprocal slices of the modular determinant and the transverse trace

Put \(c=1/2\). Let \(B_Y\) denote the modular cusp block and \(N_Y\) its exact normal realization on the direct sum of rotated almost-periodic spaces. For every \(b>0\), define the arithmetic real integral
\[
 U(b)=\frac1{2\pi}\int_{\mathbb R}
      \log\left|\frac{\xi(c+1/(b+it))}{\xi(c)}\right|\,dt
     =\frac1{2\pi}\int_{\mathbb R}
      \log\left|\det\nolimits_2\left(I+\frac{iB_Y}{b+it}\right)\right|\,dt .      \tag{1}
\]
The equality uses the exact modular determinant. The new parameter samples circles tangent to the critical line at \(c\), centered at \(c+1/(2b)\) with that same radius \(1/(2b)\). The integral determines the multiplicities and magnitudes of the nonzero transverse eigenvalues of \(N_Y\), the Hilbert–Schmidt energy of its imaginary part, and the exponential growth rate of both signs of the original evolution. [Modular determinant](XiModularCuspSpectra.md) · [Normal operator and transverse trace](XiCuspFredholmDeficit.md)

## Exact line integral and spectra

For every zeta zero \(\rho\) in the open critical strip, write \(w_\rho=1/(\rho-c)\), \(d_\rho=\Re w_\rho\). Zeros in sums carry their analytic multiplicities. Then
\[
 \boxed{\qquad U(b)=\sum_{d_\rho>0}(d_\rho-b)_+.\qquad}                         \tag{2}
\]
Only finitely many terms are nonzero at a positive threshold. In the angular spectral realization the corresponding eigenvalue is \(iw_\rho\), whose imaginary part is \(d_\rho\). Conjugation of \(\rho\) preserves \(d_\rho\), while \(\rho\mapsto1-\rho\) changes its sign.

To prove (2), pair \(w,-w\) in the even Hadamard product at \(c\). A pair contributes \(1-w^2/(b+it)^2\), and \(\sum |w_\rho|^2<\infty\). Write \(w=x+iy\). The integral of its logarithmic modulus on the full real line is
\[
 \pi\big(|b-x|+|b+x|-2b\big)=2\pi(|x|-b)_+.                                   \tag{3}
\]
Indeed the numerator gives logarithmic distances with real offsets \(b-x,b+x\) and translated imaginary coordinates \(t-y,t+y\). With real offset \(h\) and variable \(u\), a primitive of \(\frac12\log(u^2+h^2)\) is
\[
 \frac{u}{2}\log(u^2+h^2)-u+h\arctan(u/h).
\]
For \(h=0\) take \(u\log|u|-u\), continued at zero. The integral of a single logarithmic distance between \(-R\) and \(R\), translated by any fixed \(y\), is \(2R\log R-2R+\pi|h|+o(1)\). This follows by inserting the endpoints, expanding \(\log(R\pm y)=\log R\pm y/R+O(R^{-2})\), and using the two arctangent limits. The offset-independent terms cancel, proving (3), including zeros on the contour. The finitely many singular factors have integrable logarithmic singularities. For \(|w|\le b/2\) the absolute value of the logarithm of the paired modulus is at most \(2|w|^2/(b^2+t^2)\), by the logarithm power series. Thus the tail converges in \(L^1(dt)\), proving (1)–(2) with full multiplicities.

One can also differentiate each regular finite factor with respect to \(b\). The result is the sum of the signed Poisson kernels with offsets \(b-x,b+x\) and centers \(y,-y\), minus twice the kernel with offset \(b\) centered at zero. Their integrals are \(\pi\operatorname{sgn}(h)\). At a crossing the integral of the pointwise derivative almost everywhere gives the midpoint of the two one-sided derivatives. Differentiation under the integral as an ordinary two-sided derivative would lose the corner.

The locally finite distributional second derivative on \((0,\infty)\) is \(U''=\sum_{d_\rho>0}\delta_{d_\rho}\). In particular \(-U'_+(b)=\#\{\rho:d_\rho>b\}\) and \(-U'_-(b)=\#\{\rho:d_\rho\ge b\}\). These are counts of positive transverse eigenvalues, including distinct zeros with the same transverse displacement. The maximum such displacement, taken as zero if the set is empty, equals \(\sup\{b>0:U(b)>0\}\) with the same convention. Spectral mapping identifies it with the exponential growth rate of the original modular evolution. For \(p>1\), integration term by term with nonnegative integrands gives
\[
 \operatorname{Tr}|\Im N_Y|^p
   =2p(p-1)\int_0^\infty b^{p-2}U(b)\,db.                                      \tag{4}
\]
Indeed the integral of \(b^{p-2}(d-b)\) from zero to \(d\) is \(d^p/[p(p-1)]\). In particular \(D_\perp=4\int_0^\infty U(b)\,db\). Moreover \(|d_\rho|\le |w_\rho|^2/2\) by the critical strip, so \(\Im N_Y\) is trace class. Monotone convergence at \(b=0\) gives \(\operatorname{Tr}|\Im N_Y|=2U(0+)\).

For any height \(T\) up to which all zeros have been proved on the critical line, \(d_\rho>0\) implies \(0<d_\rho<1/(2T^2)\). Hence \(U(b)=0\) for every \(b\ge1/(2T^2)\). Platt and Trudgian's published verification permits \(T=3\cdot10^{12}\). Convexity allows a positive corner at an arbitrarily small \(b\), so exact zero on this whole outer range leaves a possible inner range. The entire identity requires \(U(0+)=0\). [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765)

## A convergent arithmetic endpoint

Direct substitution \(b=0\) into (1) gives minus infinity. Near \(t=0\), Stirling on the critical line and a polynomial bound for \(\zeta\) give \(\log|\xi(c+1/(it))|\le-\pi/(4|t|)+O(\log(1/|t|))\). The finite limit of the integrated expression therefore needs its own boundary calculation.

Set \(g(s)=(s-1)\zeta(s)\), continued at one, with \(g(c)>0\). One has the absolutely convergent trace-norm formula
\[
 \boxed{\quad \operatorname{Tr}|\Im N_Y|
   =\frac1\pi\int_{\mathbb R}\log\left|\frac{g(c+it)}{g(c)}\right|\frac{dt}{t^2}
    -\frac{g'(c)}{g(c)} .\quad}                                                   \tag{5}
\]
Indeed the disc transform of \(g\) on \(\Re s>c\) is in \(H^{1/3}\) and has no singular inner factor by Balazard, Saias and Yor. Its canonical factorization, evaluated at \(s=c+h\) for small \(h>0\), gives
\[
 \log\left|\frac{g(c+h)}{g(c)}\right|=
 \frac h\pi\int_{\mathbb R}\frac{\log|g(c+it)/g(c)|}{h^2+t^2}\,dt
 -\sum_{\Re a>0}\log\left|\frac{h+\bar a}{h-a}\right|,\qquad a=\rho-c.
\]
The log modulus on the boundary is integrable with weight \((1+t^2)^{-1}\) by that factorization. At zero it vanishes to second order because \(g\) is real and nonzero at \(c\). Divide by \(h\) and pass to zero in its Poisson integral by dominated convergence. Each zero contributes \(2\Re a/|a|^2\) in the Blaschke sum: the term is \(\tfrac12\log(1+4h\Re a/|h-a|^2)\), and for small \(h\) its quotient by \(h\) is bounded by \(8\Re a/|a|^2\) uniformly, since the divisor stays a positive distance from the center. This majorant is summable. Reality gives \(g'(c)/g(c)\) on the left. The zero sum is \(2U(0+)\), proving (5). [Balazard, Saias and Yor, *Notes sur la fonction ζ de Riemann, 2*, pp. 284–287, proof, second step](https://translations.thosgood.net/AIM-143-1999-284.pdf)

A formula in \(\zeta\) alone follows:
\[
 \operatorname{Tr}|\Im N_Y|=4-\frac{\zeta'(c)}{\zeta(c)}
  +\frac1\pi\int_{\mathbb R}\log\left|\frac{\zeta(c+it)}{\zeta(c)}\right|
                                      \frac{dt}{t^2}.
\]
Indeed \(g'/g(c)=-2+\zeta'/\zeta(c)\) and the contribution of \(|c+it-1|/|c-1|\) to the integral divided by \(\pi\) is \(2\), by integration by parts on \(\frac12\log(1+4t^2)/t^2\). Differentiating the functional equation at \(c\) gives \(\zeta'/\zeta(c)=(\log\pi-\Gamma'(1/4)/\Gamma(1/4))/2\).

The unweighted pole and gamma factors can also be removed on every finite slice. If \(h(s)=\pi^{-s/2}\Gamma(1+s/2)\), then \(\xi=hg\), \(d_h=h'(c)/h(c)=-g'(c)/g(c)\). The logarithm of \(h(c+1/w)/h(c)\) is analytic for \(\Re w>0\) and equals \(d_h/w+O(w^{-2})\) at infinity. Closing a half-circle to the right of \(\Re w=b>0\) shows that subtracting \(d_h/w\) leaves real-part integral zero. The first-order term has real-part integral \(\pi d_h\). Thus at every such \(b\),
\[
 2\pi U(b)=\int_{\mathbb R}\log\left|\frac{g(c+1/(b+it))}{g(c)}\right|dt
                 -\pi\, g'(c)/g(c).
\]
The classical Balazard–Saias–Yor test uses a single Poisson weight based at \(s=1\). Equation (5) is its boundary normal-derivative calculation for the same canonical factorization. The positive-\(b\) family uses parallel lines after inversion at \(c\), recovering all the transverse slices. Other logarithmic integral criteria and a disc finite-radius variant use related Jensen arguments. No novelty of the general complex-analysis method is claimed. [Sekatskii, Beltraminelli and Merlini (2008)](https://arxiv.org/abs/0806.1596) · [Wunderlich (2026)](https://arxiv.org/abs/2610.10584)

## Why ordinary Euler cutoffs cannot prove the identity by passage to a limit

For a prime cutoff \(P\) let \(Z_P(s)=\prod_{p\le P}(1-p^{-s})^{-1}\) and \(d_P=(Z_P'/Z_P)(c)\). At each cutoff remove the constant and linear terms at infinity by putting
\[
 E_P(w)=\frac{Z_P(c+1/w)}{Z_P(c)}\exp(-d_P/w).
\]
This is analytic and nonvanishing in \(\Re w>0\). Its analytic logarithm chosen to vanish at infinity is \(O_P(w^{-2})\). Closing the contour to the right proves
\[
 \int_{\mathbb R}\log|E_P(b+it)|\,dt=0 \qquad(P<\infty,\ b>0).                  \tag{6}
\]
Nevertheless at each fixed \(b>0\), locally uniformly for real \(t\),
\[
 \lim_{P\to\infty}\frac{\log|E_P(b+it)|}{\sqrt P}=\frac{2b}{b^2+t^2}.           \tag{7}
\]
Indeed the prime number theorem and partial summation give
\(-d_P=\sum_{p\le P}\log p/(\sqrt p-1)\sim 2\sqrt P\). For example, replacing the denominator by \(\sqrt p\) costs \(O(\log^2 P)\) using the sum over all integers, and summation against \(\sum_{p\le x}\log p\sim x\) gives the leading term. Also \(\log Z_P(c)=O(\sqrt P/\log P)=o(\sqrt P)\) by partial summation applied to the prime count, with prime powers of order at least two contributing \(O(\log P)\). On each bounded interval of \(t\) there is a fixed \(\eta>0\) with \(\Re(c+1/(b+it))\ge c+\eta\). There \(\big|\log|Z_P(c+1/(b+it))|\big|\ll_\eta\sum_{n\le P} n^{-1/2-\eta}=o(\sqrt P)\). The exponential multiplier supplies the remaining limit. [Hadamard, *Sur la distribution des zéros de la fonction ζ(s) et ses conséquences arithmétiques* (1896)](https://www.numdam.org/item/BSMF_1896__24__199_1/)

In particular the integral of the normalized left side of (7) over \([-M,M]\) tends to \(4\arctan(M/b)\). The complementary integral tends to its negative by (6), and the iterated limits as \(M\to\infty\) are \(2\pi\) and \(-2\pi\). Thus the finite products produce divergent logarithmic mass on every fixed interval and compensating signed mass at infinity. They cannot converge in slice \(L^1\) to the correctly normalized arithmetic log modulus. This obstruction is unconditional and persists even if RH holds.

Removing a fixed number of additional Taylor terms still fails on each neighborhood of \(t=0\). For an integer \(k\ge1\), subtract from \(\log Z_P(c+1/w)\) its Taylor polynomial through order \(k\) in \(1/w\), calling the result \(R_{P,k}(w)\). For each \(j\ge1\),
\[
 (\log Z_P)^{(j)}(c)\sim (-1)^j\,2\sqrt P\,(\log P)^{j-1}.
\]
The first prime powers contribute \((-1)^j\sum_{p\le P}(\log p)^j/\sqrt p\), with the displayed asymptotic by partial summation against \(\sum_{p\le x}\log p\sim x\). Higher prime powers contribute \(O_j(\sum_{n\le P}(\log n)^j/n)=O_j((\log P)^{j+1})\), since \(\sum_{\ell\ge2}\ell^{j-1}p^{-\ell/2}\ll_j p^{-1}\). The highest subtracted derivative consequently dominates, giving locally uniformly in \(t\)
\[
 \frac{\Re R_{P,k}(b+it)}{\sqrt P(\log P)^{k-1}}
 \longrightarrow \frac{2(-1)^{k+1}}{k!}\Re(b+it)^{-k}.
\]
The right side is nonzero in a neighborhood of zero. For every fixed \(k\) the full line integral is zero by contour closure. For \(k\ge2\) the limiting profile itself has integral zero, unlike the profile in (7). The local divergence therefore survives every fixed Taylor-jet subtraction.

As a finite control, put \(F(w)=1-(x+iy)^2/w^2\) where \(x>0\). Its transform is exactly \((x-b)_+\) by (3), and its pointwise log derivative gives both the half jump at \(b=x\) and the full jump across that value. At \(x=1/4,\ y=9/7\), interval evaluation of the primitive on \([-2^{64},2^{64}]\) with the paired logarithm tail bound encloses \(1/8,0,0\) for \(b=1/8,1/4,1/2\), respectively, to radii below \(9\cdot10^{-20}\). Multiplying by the conjugate-coefficient factor gives a real even control with the same positive profile doubled, so the symmetry of the completed determinant cannot force flatness. For the actual \(\xi\), a 144-bit Arb quadrature with python-flint 0.8.0 at \(b=1/4,1/2\) enclosed both \(U(b)\) in \([-1.10,1.10]10^{-26}\). Before adding the tail and dividing by \(\pi\), the two half-line integrals up to \(R=2^{28}\) are respectively \(8.60728066988996072448\cdot10^{-11}\) and \(8.60728066988996070208\cdot10^{-11}\), each with absolute radius below \(4.2\cdot10^{-32}\). For verification, integrate the real part of \(\tfrac12\log(F((b+it)^{-1})F((b-it)^{-1}))\) on dyadic intervals, with \(F(v)=\xi(c+v)/\xi(c)\). The even Taylor coefficients of \(F\) are nonnegative and \(F(1)<2\) by the theta formula and center bound. Writing \(a=F''(0)/2\), one has \(|\log F(v)-av^2|\le2|v|^4\) for \(|v|\le1/2\): the tail after the quadratic term in \(F\) is at most \(|v|^4\), and the logarithm after its linear term costs at most \(|F(v)-1|^2/(2(1-|F(v)-1|))\). The integrated tail is consequently \(-aR/(b^2+R^2)\) to absolute error at most \(2/(3R^3)\). These two enclosures independently check the cancellation against a known zero slice. [Theta and center bounds](XiCoefficientHankelOperator.md)

The [Lean component](XiCuspReciprocalSlices.lean) proves the log-distance normal derivative, its exact finite-interval integral including a zero on the contour, the whole-line signed kernel mass, the piecewise flux with its boundary half jump, and the elementary slice area. The global xi product, Hardy boundary calculation, prime-cutoff asymptotic and its connection to \(N_Y\) are analytic results. Vanishing of \(U(b)\) for every \(b>0\) remains unresolved.

At source blob `10690952958d7b97b4379dd8070715c8ec7e62be` all 11 public declarations built, passed explicit fresh kernel replay, and returned only `propext`, `Classical.choice` and `Quot.sound` in the transitive axiom audit, with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No independent external review is recorded.
