# Prime-window variances and the multiplicities on the outer zero line

grwtsk contributors

Let \(D=\sup_\rho |\Re\rho-1/2|\) over the nontrivial zeta zeros. Two arithmetic window measurements recover this displacement. A finite Gaussian-weighted prime variance has ordinary exponential rate \(2D^2\) on a range of window scales. An unweighted dyadic prime variance has abscissa of convergence \(D\). At that abscissa, two fixed window ratios recover the ordinates and analytic multiplicities of every zero with real part \(1/2+D\). The resulting self-adjoint multiplication operator has a Hilbert–Schmidt inverse. Its regularized determinant is identified below with the product over that outer line. Equality to the full normalized xi function remains equivalent to RH.

## A finite short-interval calculation on the actual prime grid

Put \(L=2n-\log n\), \(n\ge1\). On \([0,L]\) form the signed measure
\[
 d\mu_n=\sum_{\log m\le L}c_m\delta_{\log m}-f_n(u)\,du,\quad
 c_m=\Lambda(m)m^{-1/2}e^{-(\log m)^2/(4n)},\quad
 f_n(u)=e^{u/2-u^2/(4n)}.
\]
For \(0<d\le\log2\) define
\[
 V_n(d)=\frac1d\int_{\mathbb R}|\mu_n((x,x+d])|^2\,dx.
\]
This measures the signed local difference for prime powers between \(e^x\) and \(e^{x+d}\), with the cutoff understood. For any sequence of these widths with \(\log(1/d_n)=o(n)\),
\[
 \boxed{\lim_{n\to\infty}\frac{\log(1+V_n(d_n))}{2n}=D^2.} \tag{1}
\]
Under RH, \(V_n(d)\ll n[1+\log(1/d)]^2\), uniformly in the indicated widths. Conversely, any subexponential bound along an unbounded subsequence of rows with these widths implies RH. Both fixed dyadic windows and widths \(1/(2n^2)\) are admissible.

Write \(Q_n(a)=\int\cos(au)\,d\mu_n(u)\) and let \(\nu_n=(\mu_n+\check\mu_n)/2\), where the check denotes reflection about zero. For \(T_d(h)=(1-|h|/d)_+\) the normalized squared norm of a moving window is its double integral against \(T_d(u-v)\). Indeed the set of starts covering both atoms has length \((d-|u-v|)_+\). Fubini applies to the finite total variation. The reflected energy equals \((V_n(d)+C_n(d))/2\), where \(C_n=\iint T_d(u+v)\,d\mu_n(u)d\mu_n(v)\). Its support excludes prime atoms because \(d\le\log2\), with zero kernel on equality. Thus \(0\le C_n\le e^{d/2}d^2/2\) by integration on the positive triangle.

Periodize the reflected window function with period \(2\pi n\). Its support has length at most \(2L+d<2\pi n\), so distinct translates have disjoint interiors. At frequency \(j/n\) the window multiplier has modulus \(d|\operatorname{sinc}(jd/(2n))|\), with \(\operatorname{sinc}(0)=1\) and \(\operatorname{sinc}(v)=\sin(v)/v\). Fourier-series Parseval now gives the exact arithmetic identity
\[
 \frac{V_n(d)+C_n(d)}2=
 \frac{d}{2\pi n}\sum_{j\in\mathbb Z}
   Q_n(j/n)^2\operatorname{sinc}^2(jd/(2n)). \tag{2}
\]
This is the window Fourier-transform argument underlying Gallagher's lemma, here on a circle chosen to preserve the prescribed rational samples exactly. [Gallagher, *A large sieve density estimate near σ = 1*, Lemma 1 (1970)](https://doi.org/10.1007/BF01403187)

The full-line cosine transform of \(f_n\) is \(2\sqrt{\pi n}\,e^{n(1/4-a^2)}\cos(na)\), the explicit-formula pole contribution. Discarding \(u<0\) costs at most two and discarding \(u>L\) costs at most \(\sqrt n/k\), where \(k=L/(2n)-1/2>5/16\), by the Gaussian tangent bound. The omitted prime powers beyond \(e^L\) cost less than \(17\sqrt n\). The earlier explicit formula and unit-bin estimate for the true signed zero wave therefore imply, at every real center,
\[
 |Q_n(a)|\ll \sqrt n\, e^{nD^2}\log(2+|a|).
\]
For \(|a|\le1\) the same unit-bin argument applies on a bounded set; subtracting the pole before making this estimate is essential. In (2), splitting at \(|j|=n/d\) and then into dyadic outer shells bounds the weighted squared logarithms by \(O((n/d)[1+\log(1/d)]^2)\), using \(|\operatorname{sinc} v|\le\min(1,1/|v|)\). This proves the upper rate and the RH bound. [Explicit formula, cutoff and exposed conjugate-pair estimates](XiHeatPrimeCenterBounds.md)

If \(D>0\), for each \(0<\eta<D^2\) the same exposed-pair proof gives a fixed compact interval above one on which a single pair has exponent \(b(a)>D^2-\eta\) and a uniform exponential gap to every other branch. Uniformly for \(0\le d\le\log2\) this interval has a subinterval of length bounded below where \(|\operatorname{sinc}(ad/2)|\) is bounded away from zero. Indeed its maximum on an interior compact subinterval is continuous in \(d\) and positive for each \(d\), and the two-variable sinc is uniformly continuous there. Choose a positive phase maximum in the middle of the resulting interval and round to the nearest \(j/n\). The phase error is at most the transverse displacement, below half a radian, and \(n\le j\le n^3\) eventually. Here \(-Q_n(j/n)\gg_\eta\sqrt n\exp(n(D^2-\eta))\). Its single term proves the lower rate since the factor \(d_n\) is subexponential and \(C_n\) is bounded. This proves (1) using actual negative prime excursions inside the requested finite grid. For \(D=0\) the lower bound for \(\log(1+V_n)\) follows from positivity.

Taking \(d=1/(2n^2)\) makes \(|ad/2|\le1/4\) over the entire grid. There \(\operatorname{sinc}(ad/2)\ge95/96\) by \(\sin v\ge v-v^3/6\). Each normalized negative sample of the uncentered finite prime polynomial is therefore bounded by
\[
 \frac{2\sqrt\pi+2+16/5+(96/95)\sqrt{\pi(V_n(d)+C_n(d))/d}}{\log3}.
\]
Indeed \(a\ge1\) bounds the absolute pole by \(2\sqrt{\pi n}\); the two continuum tails control the remaining difference between the original sample and \(Q_n\). The variance is a sufficient deterministic control simultaneously for every center in each row. A subexponential estimate for it on infinitely many rows is open.

## Two controls on the arithmetic interpretation

The unsubtracted positive prime measure has variance of exponential rate \(1/2\) in \(n^{-1}\log\), for all the subexponential widths above. Its total mass is asymptotic to \(2\sqrt{\pi n}\,e^{n/4}\). For example, at \(a=0\) the explicit formula has that pole, the gamma term is bounded, and the zero sum decays exponentially by the first-zero gap and the Gaussian unit-bin count; prime truncation costs only \(O(\sqrt n)\). The squared total mass bounds the variance above. For the lower bound take \(j=0\) in (2) for the positive prime measure, whose reflection cross term vanishes. Thus this observable alone cannot suppress the pole.

At the other extreme,
\[
 V_n(d)=\sum_{\log m\le L}c_m^2+O\big(d n^{3/2}e^{n/2}\big).
\]
An atom at \(m\) has at most \(O(dm)\) other integers in its logarithmic neighborhood of radius \(d\), by counting the integer displacements on each side, even when both ranges are empty. Apply \(2c_mc_l\le c_m^2+c_l^2\) in the off-diagonal triangle sum. It costs \(O(d\sum m c_m^2)\). On \([0,L]\) the logarithmic slope of \(f_n\) has modulus at most \(1/2\), so the mixed term costs \(O(d\sum c_m f_n(\log m))\) and the continuous term costs \(O(d\int f_n^2)\). The mixed sum is at most \(\sum m c_m^2/\log 2\) since every nonzero \(\Lambda(m)\ge\log2\). The integral is \(O(\sqrt n e^{n/2})\) by completing the square. Finally the previously derived Chebyshev bound gives \(\sum m c_m^2\ll n^{3/2}e^{n/2}\), and the prime number theorem gives \(\sum_{\log m\le L}c_m^2\sim n\). Thus \(V_n(d_n)/n\to1\) unconditionally if \(d_n\sqrt n e^{n/2}\to0\). Polynomial growth on such fine windows cannot establish the needed coarse-window bound. [Coefficient bounds and primary mean-square comparison](XiHeatPrimeCenterBounds.md)

## The unweighted dyadic abscissa

On \([0,\infty)\) let \(\tau=\sum_m\Lambda(m)m^{-1/2}\delta_{\log m}-e^{u/2}du\). For fixed \(d>0\) define \(E_d(x)=\tau((x,x+d])\) on all of \(\mathbb R\); it vanishes for \(x<-d\). Define the nonnegative arithmetic abscissa as the infimum of \(\sigma>0\) for which \(\int e^{-2\sigma x}|E_d(x)|^2dx<\infty\). It equals \(D\), independently of \(d\). In particular \(d=\log2\) suffices.

For \(\Re s>1/2\), absolute convergence and integration over the allowed window starts give
\[
 \int_{\mathbb R}e^{-sx}E_d(x)dx =
 K_d(s) Z(s),\qquad K_d(s)=\frac{e^{ds}-1}{s},\qquad
 Z(s)=-\frac{\zeta'}{\zeta}(1/2+s)-\frac1{s-1/2}.
\]
Use the removable values at zero for \(K_d\) and at \(1/2\) for \(Z\). A nontrivial zero \(\rho\) of multiplicity \(m\) supplies a pole of residue \(-m\) at \(s=\rho-1/2\). If the asserted weighted square integral is finite at \(0\le\sigma<D\), Cauchy–Schwarz makes the Laplace integral analytic on \(\Re s>\sigma\). A pole with larger positive real part exists by reflection and the definition of \(D\), and \(K_d\) cannot vanish there. This contradicts analytic continuation.

For \(\sigma>D\) the transform is in \(L^2(dt)\) on \(s=\sigma+it\). Here are the estimates and the contour shift used in this direction. Uniformly on a bounded strip of horizontal coordinates containing \([D,D+1]\), staying in \(\Re s\ge0\), at large \(|t|\) subtract the paired Hadamard logarithmic derivative of xi at \(2+it\) from that at \(1/2+s\). For zeros with \(|\gamma-t|>1\) the difference costs \(O((1+|\gamma-t|)^{-2})\) per copy. The unit-bin count gives \(O(\log(2+|t|))\) in total. The reference zeta derivative is bounded by its absolutely convergent Euler series, the gamma terms are \(O(\log(2+|t|))\) by Stirling, and the reference terms for the nearby zeros have the same logarithmic bound. It follows that \(Z(s)\) differs from the sum of \(-m/(s-(\rho-1/2))\) over the nearby distinct zeros by \(O(\log(2+|t|))\). On closed vertical strips strictly to the right of \(D\), all denominators stay away from zero. The multiplier \(K_d\) gains a factor \((1+|t|)^{-1}\). To identify the square-integrable inverse transform, pair with any smooth compactly supported test function in \(x\), use ordinary inversion on a line to the right of \(1/2\), and shift to \(\Re s=\sigma\). The entire transform of the test function decays faster than any power uniformly on the finite strip; the horizontal sides tend to zero by the bounds just proved. This proves distributional inversion, and Plancherel gives, for every \(\sigma>D\),
\[
 \int e^{-2\sigma x}|E_d(x)|^2dx=
 \frac1{2\pi}\int_{\mathbb R}|K_d(\sigma+it)Z(\sigma+it)|^2dt.
\]
Brent, Platt and Trudgian study the integral over a dyadic range of the squared global error in the prime number theorem. Here the dyadic interval first defines the local window error, and its translated Abel correlation resolves the attained outer line. The common input is the zeta divisor. [Brent, Platt and Trudgian, introduction and Theorem 1](https://maths-people.anu.edu.au/brent/pd/rpb274-final.pdf)

These arguments use the genuine zeta logarithmic derivative and its multiplicities. [Euler series and explicit positive-ordinate zero counting used in the local bound](XiHeatPrimeCenterBounds.md) · [Hadamard logarithmic derivative and regularization](XiPoissonCellCertificate.md)

## Boundary correlations and a self-adjoint operator

Write \(f_{\epsilon,d}(x)=e^{-(D+\epsilon)x}E_d(x)\). The following limits define a finite positive measure \(\eta_d\) by its Fourier transform, using prime data and the arithmetic abscissa just defined:
\[
 \lim_{\epsilon\downarrow0}2\epsilon\int f_{\epsilon,d}(x)f_{\epsilon,d}(x+h)\,dx
 =\int e^{ith}\,d\eta_d(t),\qquad
 \eta_d=\sum_{\rho:\Re\rho=1/2+D}m_\rho^2
       |K_d(D+i\Im\rho)|^2\,\delta_{\Im\rho}.
 \tag{3}
\]
The sum is over distinct signed ordinates. The first equality is the arithmetic definition; the second identifies the measure and proves existence. For \(h=0\) this in particular gives the residue of the weighted prime-window norm as the abscissa is approached.

Indeed, by Plancherel and reality, the measures before passage to the limit have symmetric densities \((\epsilon/\pi)|K_d Z|^2\) on the line \(D+\epsilon+it\). On a bounded ordinate interval isolate each boundary pole in a small neighborhood. There the transform equals its residue divided by \(\epsilon+i(t-\gamma)\) plus a bounded analytic function. The normalized squared pole yields the Cauchy approximate identity of mass one times the squared residue. Against any bounded continuous test the mixed term vanishes by Cauchy–Schwarz, as does the bounded square. Finite compact sets away from the boundary poles contribute zero. If \(K_d\) vanishes at a boundary pole the product is regular there and its limiting mass is zero. There are no real-ordinate nontrivial zeros of zeta.

The estimates also give tightness as \(\epsilon\downarrow0\). On a unit interval with large integer endpoint \(k\), the number \(M_k\) of nearby zero copies with \(|\gamma-k|\le2\) is \(O(\log(2+|k|))\). Bound the squared sum of nearby reciprocal distances by \(M_k\) times the sum of squared moduli over copies. Each squared reciprocal integrates to at most \(\pi/\epsilon\), since its horizontal distance is at least \(\epsilon\). The remaining logarithmic error and the multiplier \(K_d\ll_d(1+|k|)^{-1}\) give uniform total tail \(O_d(\sum_{|k|>T}\log^2(2+|k|)/k^2)\) for \(0<\epsilon\le1\). Thus the compact calculation extends to all bounded continuous tests, including the translation characters. The measures are symmetric, so either Fourier-sign convention yields (3). This proof requires no separation among ordinates at increasing height. It also covers a supremum \(D>0\) attained by no zero, in which case both boundary measures vanish despite the positive abscissa.

Use the two fixed widths \(d_2=\log2,d_3=\log3\), and let \(\eta=\eta_{d_2}+\eta_{d_3}\), \(b(a)=|K_{d_2}(D+ia)|^2+|K_{d_3}(D+ia)|^2\). Then \(b(a)>0\) for real \(a\). For \(D>0\) either summand is nonzero. For \(D=0\), a common zero at nonzero \(a\) would give \(a\log2,a\log3\in2\pi\mathbb Z\), contradicting unique factorization. Both removable values at zero are positive. One can recover each atom by the ordinary mean of the known correlation times \(e^{-iah}\) in \(h\in[0,T]\) as \(T\to\infty\), by dominated convergence for the finite measure. Its mass divided by \(b(a)\) is the square of the multiplicity.

For each integer \(j\ge1\) put \(A_j=\{a:\eta(\{a\})\ge j^2 b(a)\}\). These sets are Borel because each is a subset of the countable atoms of a finite measure. On \(\bigoplus_{j\ge1}L^2(\eta|_{A_j})\) take multiplication by the real variable \(a\), with domain of vectors for which the sum of the integrals of \(|a g_j(a)|^2\) is finite. This is a self-adjoint operator on a dense domain by the multiplication spectral theorem, or by inverting its shifts by \(\pm i\) using bounded multipliers. Its definition uses prime correlations, without specifying a zeta-zero list. From (3) an edge ordinate of multiplicity \(m\) has precisely \(m\) one-dimensional layers. No other spectral points occur, since there are finitely many zeta zeros in every bounded rectangle. The verified zero gap and classical counting imply a bounded Hilbert–Schmidt inverse, with squared norm \(\sum_{\mathrm{edge}}m_\rho/|\Im\rho|^2\). In the empty-edge case the Hilbert space is zero-dimensional. Pairing the signed ordinates cancels the regularizing linear exponentials. The Hilbert–Schmidt product definition then gives the following unconditional formula. [Simon, *Trace Ideals and Their Applications*, second edition, Chapter 9](https://doi.org/10.1090/surv/120)
\[
 \det{}_2(I-z H_{\mathrm{edge}}^{-1})
 =\prod_{\substack{\Re\rho=1/2+D\\ \Im\rho>0}}(1-z^2/(\Im\rho)^2)^{m_\rho}.
\]
Under RH all zeros occur here, and the even normalized Hadamard product identifies this with \(\xi(1/2+iz)/\xi(1/2)\) for every complex \(z\). Conversely, any off-line zero gives the normalized xi function a nonreal zero, whereas this determinant has only real zeros. Thus full equality for this particular arithmetic operator remains equivalent to RH. The unproved step is to establish that the arithmetic abscissa is zero, equivalently the subexponential coarse variance bound. This operator recovers a complete attained edge with its multiplicities and does not prove that all zeros lie there.

For \(D>0\) the same arithmetic data give an actual entire outer-line factor of xi. The two distinct boundary lines are interchanged by the functional equation. The product of the regularized determinants formed with \((H_{\mathrm{edge}}+iD)^{-1}\) and \((H_{\mathrm{edge}}-iD)^{-1}\) equals
\[
 \prod_{\substack{\Re\rho=1/2+D\\ \gamma=\Im\rho>0}}
 \left[(1-z^2/(\gamma+iD)^2)(1-z^2/(\gamma-iD)^2)\right]^{m_\rho}.
\]
Indeed the four eigenvalues per positive ordinate come in opposite pairs across the two shifted operators, canceling the exponential factors. The shifts have Hilbert–Schmidt inverses by the same counting bound. This product divides the normalized xi function as an entire function, since its zero multiplicities agree exactly with those on both attained boundaries. The quotient supplies the possible zeros strictly inside those two lines. At \(D=0\) the two lines coincide and only the single self-adjoint determinant is taken.

## Finite controls and formal scope

The interval fixture partitions the actual prime window at every entering and leaving prime power and at both continuum clipping boundaries. Equal rational breakpoints are combined exactly. On each interval it integrates the squared difference using the Gaussian error-function antiderivative with Arb complex-ball quadrature. For \(n=2,3,4\) it checks both the dyadic ratio and \(1+1/(2n^2)\). For instance at \(n=4,d=\log 2\), \(V_n(d)\) lies in \((0.5486220709657,0.5486220709659)\); the reflected energy is between 0.3217653729562 and 0.3217653729564. Direct evaluation of the sum in (2) through \(|j|=64\) gives between 0.2429271435418 and 0.2429271435420. At ratio \(65537/65536\), the row-five variance is below the diagonal sum by an amount between 0.000936428057 and 0.000936428060. An independent dyadic Laplace evaluation at \(s=2+3i\) agrees with the absolutely convergent prime sum, with omitted-prime error below 0.000029. These are finite enclosures. [Reproducible window and Mellin checks](../../../scripts/verify_xi_heat_prime_grid_moments.py)

The [Lean module](XiHeatPrimeGridMoments.lean) proves the interval overlap and finite signed-atom quadratic form, single-coefficient energy bound from Mathlib's Fourier-series Parseval theorem, period support, weight variation, pole mass and integer-layer inequality. The signed-continuum assembly, infinite arithmetic abscissa, limiting correlation measure, operator domain and determinant are analytic manuscript results. Independent external verification of the full analytic argument remains open.

Lean 4.34.1 with Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612` elaborated source blob `12261e78f248da2d2f73045adbe494897ad0adca`. The fresh native kernel replay passed. All eleven transitive audits reported only axioms among `propext`, `Classical.choice` and `Quot.sound`. The finite fixture ran successfully with python-flint 0.9.0 at blob `f9bb7de4bbddac7eaadb310fcd63aa588c93f70b`.
