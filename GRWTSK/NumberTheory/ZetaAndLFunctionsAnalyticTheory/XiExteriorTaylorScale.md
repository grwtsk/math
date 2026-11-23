# Exterior Taylor bounds at moving centers and exceptional heights at order three

Put \(s=1/2+r+it\), \(L=\xi'/\xi\), \(P_r(t)=\Re L(s)>0\), and \(a_{n,r}(t)=L^{(n)}(s)/n!\). At every **fixed** \(r>1/2\), the exterior coefficient comparison detects the rightmost zero as in [the fixed-center argument](XiTranslatedTaylorRadii.md), now with horizontal distance \(1/2+r-\sup\Re\rho\). Thus requiring \(r^n|a_{n,r}|\le P_r\) at all orders and heights at any one such radius is equivalent to RH. The following statements use the actual zeta Euler product.

* At all real heights the normalized inequality holds at orders 3, 4, 8, 16 and 32 at every radius at least \(53/50,5/4,5/2,4,7\), respectively.
* At the original radius 1 and order 3, at most 2,192,972 positive-side integer unit cells can contain any strict violation. The total length of the positive exceptional set is less than 23,115.353. Conjugation gives the same bounds on the negative side.
* For every \(c>1/2\), uniformly in all heights and all \(r\ge c n/\log n\), the ratio \(r^n|a_{n,r}|/P_r\) tends to zero. An explicit order-one entire function with off-line zeros exhibits the sharp displacement threshold for this moving-center phenomenon.

The second statement bounds the number and measure of potential exceptions without determining their locations or showing that the set is empty. The global fixed-center inequality at order three remains open here.

## The finite orders at all real heights

Write \(B_n(r)=\sum_{m\ge2}\Lambda(m)(\log m)^n m^{-1/2-r}/n!\), also for \(n=0\). Euler comparison gives \(|a_{n,r}|\le B_n(r)+|G_n|\), where \(G_n\) is the Taylor coefficient of the rational and gamma terms of \(L\). As in the [explicit polygamma bounds](XiTranslatedTaylorRadii.md), for \(r\ge1\), \(|t|\ge5\), one has
\[
 |G_n|\le |t|^{-n},\qquad P_r\ge\tfrac12\log(|t|/(2\pi))-B_0(r)-1/|t|.
\]
Indeed each denominator in the differentiated formula has modulus at least \(|t|\), so factoring \(|t|^{-(n-1)}\) reduces the estimate to the sum–integral bound at order one. The gamma lower bound uses the total variation of \(x/(x^2+(t/2)^2)\), valid at every positive real part of the gamma argument.

Set \(T=3\cdot10^{12}\). At \(|t|\le T-200\) and \(1\le r\le100\) the verified height controls every individual pole contribution at every order \(n\ge2\). A critical-line zero has horizontal distance \(\eta=r\) and total distance \(D\ge r\). An unverified zero has \(\eta\ge r/2\) and \(D\ge200\ge2r\). In both cases \(r^n/D^{n+1}\le\eta/D^2\). Sum over the actual divisor with multiplicity. [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765)

Above that height use the preceding Euler bounds. On a bin \([l,u]\), \(B_n(r)\le B_n(l)\) by positivity, while \(r^n\le u^n\). These are enclosing inequalities for the entire bin. The [Arb fixture](../../../scripts/verify_xi_exterior_taylor_scale.py) differentiates \(\log\zeta\) at the real left endpoint. It certifies the five stated intervals through radius 100. At order three the smallest lower margin over 529 radius bins exceeds 0.0270. The other orders have margins exceeding 1.87.

For \(r\ge100\) and \(3\le n\le32\) the bounds extend without any height cutoff. Tilting the Euler weight to \(3/2\), and maximizing \(x^ne^{-x}/n!\le1/\sqrt{2\pi n}\) by Stirling's lower factorial inequality, gives
\[
 r^nB_n(r)\le (r/(r-1))^n B_0(1)/\sqrt{2\pi n}<0.49 .
\]
One has \(B_0(r)\le 2^{-(r-1)}B_0(1)\), \(B_0(1)<1.506\). From the polygamma series at every \(t\),
\[
 r^n|G_n|\le \frac{(r/(r-1/2))^n}{r-1/2}+\frac1{2n}<0.19.
\]
Use decreasing sum–integral comparison for \(\sum_{k\ge1}(r+1/2+2k)^{-n-1}\). Also \(\Re\psi(a+ib)\ge\psi(a)\ge\log a-1/a\) for \(a>0\), by the digamma series and the same comparison for \(1/(a+x)\). Consequently \(P_r(t)\ge\tfrac12\log((r+1/2)/(2\pi))-1/(r+1/2)-B_0(r)>1.3\). These estimates prove the full unbounded-radius statements.

## A finite-height moment estimate for the original third derivative

Set \(r=1\), \(b_j=B_j(1)\), \(t>0\), and
\[
 w_p=\frac{(\log p)^4}{6p^{3/2}},\quad F(t)=\sum_{p\le10^6}w_p p^{-it},\quad
 W=\sum w_p,\quad A=\sum w_p^2,\quad B=\sum p w_p^2,\quad C=\sum w_p|\log p-7|.
\]
All sums here run over primes. The omitted prime powers and primes have total unsigned Euler mass \(b_3-W\). Thus a violation at \(t\ge5\) forces
\[
 |F(t)|>W+\tfrac12\log(t/(2\pi))-b_0-b_3-2/t .
\]
At heights through \(T-2\) the per-pole bound already holds. At and above \(10^{16}\) the right side exceeds \(W\) by the evaluated Euler envelopes and monotonicity. Only the intervening finite range requires a measure estimate. On that range the same increasing lower bound for \(P_1\) and decreasing upper bound for \(|a_{3,1}|\) give the unconditional global ratio bound \(|a_{3,1}|/P_1<1.339258\), by evaluation at \(T-2\).

For \(k\in\mathbb N_{>0}\) and an interval \([u,v]\), one has
\[
 \int_u^v |F(t)|^{2k}dt\le k!\left((v-u)A^k+
                   3\pi(1+2^{-k})B^k\right).                      \tag{1}
\]
For the proof expand \(F^k=\sum d_m m^{-it}\). The number of ordered tuples giving any product of \(k\) primes is at most \(k!\) by unique factorization. Cauchy–Schwarz on each fiber gives \(\sum|d_m|^2\le k!A^k\) and \(\sum m|d_m|^2\le k!B^k\). Integrate the off-diagonal exponentials. Each of the two endpoint forms is bounded by the weighted Hilbert inequality with constant \(3\pi/2\), for frequencies \(\log m\) with local separation \(\delta_m\ge\log(1+1/m)\ge1/(m+1)\). All products satisfy \(m\ge2^k\), so \(\delta_m^{-1}\le(1+2^{-k})m\). This proves (1). [Montgomery and Vaughan, *Hilbert’s inequality*, Theorem 2 (1974)](https://doi.org/10.1112/jlms/s2-8.1.73)

In each of the integer ranges \([U,V]=[T-2,6\cdot10^{13}]\), \([6\cdot10^{13},10^{16}]\), take respectively \(k=5,6\). Work on \([u,v]=[U-1,V+1]\). Put \(\lambda(x)=W+\tfrac12\log(x/(2\pi))-b_0-b_3-3/u\). For a bad \(t\) and \(|s-t|\le\epsilon<1/2\) in this range, the mean-value theorem for the logarithm gives \(|F(t)|>\lambda(s)\). The derivative of \(e^{7it}F(t)\) is at most \(C\) in modulus, hence \(|F(s)|>\lambda(s)-C\epsilon\).

For a positive increasing denominator \(g(x)=\lambda(x)-C\epsilon\), partial integration of (1) on every prefix from \(u\) gives
\[
 \int_u^v\frac{|F(x)|^{2k}}{g(x)^{2k}}dx\le k!\left(
 A^k\int_u^v g(x)^{-2k}dx+
 3\pi(1+2^{-k})B^k g(u)^{-2k}\right).
\]
Taking \(\epsilon=0\) bounds the length of the bad set directly. To bound occupied cells choose one bad point per occupied cell \([j,j+1]\) inside the integer range. Within each parity of \(j\) their \(\epsilon\)-neighborhoods are disjoint. On each such neighborhood the integrand exceeds 1. The total number of cells is therefore at most the displayed bound divided by \(\epsilon\). Take \(\epsilon=\lambda(u)/((2k+1)C)\). The integer endpoints bounding the entire range satisfy the tested inequality, so including closed cells does not add a crossing from outside the ranges. Internal endpoints may be counted on both sides, which is valid for an upper bound.

The [fixture](../../../scripts/verify_xi_exterior_taylor_scale.py) computes the four prime sums by a sieve, bounds the integral from above by monotone left rectangles, and tests the positive denominators. The two ranges together give a cell-count upper bound less than 2,192,972.320 and a length upper bound less than 23,115.353. These are global finite-range statements for the actual fixed-center derivative. A height interval of small measure can still contain a nonreal zero.

## An all-order moving-center region and its limitation

Put \(\sigma=r+1/2\). The elementary bound \(\Lambda(m)\le\log m\) gives a sharper large-order estimate than the fixed tilt above:
\[
 r^nB_n(r)\le \frac{(n+1)r^n}{(r-1/2)^{n+2}}
       +\frac{r^n}{n!}\left(\frac{n+1}{e(r+1/2)}\right)^{n+1}.
\]
Indeed \((\log x)^{n+1}x^{-\sigma}\) is unimodal on \([1,\infty)\); its sum over the integers is bounded by the integral plus its maximum. The integral follows by \(u=\log x\), and the maximum occurs at \(u=(n+1)/\sigma\). Splitting the sum on either side of its largest integer term proves the sum–integral bound.

Suppose \(r\ge c n/\log n\) where \(c>1/2\) is fixed. The first term is \(O_c((\log n)^2 n^{-1+1/(2c)+o(1)})\), using \(\log(r/(r-1/2))\le1/(2r-1)\). For the second term Stirling's lower bound for \(n!\) gives \(O(\sqrt n/(r+1/2))=O_c(\log n/\sqrt n)\), even after dropping the factor \((r/(r+1/2))^n\). The previously bounded scaled gamma term tends to zero by the same first exponential estimate. The lower bound for \(P_r(t)\) grows uniformly as \(r\to\infty\). This proves
\[
 \sup_{r\ge cn/\log n,\ t\in\mathbb R} \frac{r^n |a_{n,r}(t)|}{P_r(t)}\longrightarrow0 .
\]
In particular allowing these centers to depend on order has a substantially different consequence from testing every order at one fixed center.

For a comparison with a genuine nonreal spectral divisor take \(0<\delta<1/2\) and
\[
 H_\delta(z)=\frac{\sinh(\pi z)}z(z^2-\delta^2)
\]
in the centered variable \(z=s-1/2\). This real even entire function of order one is nonzero at zero. It has the off-axis pair \(z=\pm\delta\). Consider its logarithmic derivative at \(r+it\), with \(r=c n/\log n\), \(c>0\). The uniform real-part budget tends to \(\pi\): its log derivative is \(\pi\coth(\pi z)-1/z+1/(z-\delta)+1/(z+\delta)\). The scaled positive-order coefficients of the lattice term tend uniformly to zero. To verify this, expand \(\pi\coth(\pi z)=\pi+2\pi\sum_{k\ge1}e^{-2\pi k z}\). The sum of the absolute scaled coefficients is bounded by \(1/r+2\pi/\sqrt{2\pi n}\), using the integral plus the maximum for \(x^ne^{-x}/n!\) on a grid of spacing \(2\pi r\). The removed central pole and the left-shifted pole each contribute at most \(1/r\). The remaining pole contributes at most
\[
 \frac{r^n}{(r-\delta)^{n+1}}
   \sim \frac{\log n}{c}\, n^{\delta/c-1},
\]
with equality in the absolute bound at \(t=0\). The asymptotic follows since \(n/r^2\to0\). If \(c>\delta\), the ratio tends uniformly to zero despite the off-axis zeros. If \(c\le\delta\), the ratio at \(t=0\) tends to infinity. This identifies the sharp threshold for that family. It also shows why the unconditional large-radius bound, by itself, cannot remove transverse spectrum.

The [Lean companion](XiExteriorTaylorScale.lean) proves the two scaled per-pole charges, the translated disk identity and a one-term exponential tilt. At Lean blob `7c06276d925753dfbf0e60ea6c811f9cdff0a6a9`, native elaboration and fresh kernel replay passed. The four transitive axiom audits returned only `propext`, `Classical.choice` and `Quot.sound`. The analytic sums, moment inequality, limiting statements and the resulting zeta bounds are manuscript arguments. No independent external analytic review is recorded.
