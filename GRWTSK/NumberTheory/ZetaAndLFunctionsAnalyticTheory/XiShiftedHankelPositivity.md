# Strict positivity of the first sixteen xi Hankel matrices at every shift

Let \(g(w)=\xi(1/2+i\sqrt w)/\xi(1/2)\), defined by its even entire expansion, and set \(p_k=-k[w^k]\log g(w)\) for \(k\ge1\). For **every integer \(r\ge1\) and \(1\le d\le16\)**, the real symmetric matrix
\[
                 (p_{r+i+j})_{0\le i,j<d}
\]
is positive definite. The proof below combines the argument principle to height 100, a finite certificate in ball arithmetic, and a uniform estimate for all remaining shifts. Its inputs are the actual xi function and its functional equation. No external RH theorem or table of zero ordinates is used. Bickel, Pascoe and Sargent study related finite Hankel positivity conditions for logarithmic derivatives. Here the size is fixed and the power shift is unbounded. [Original xi moment construction](XiNewtonMomentHilbertPolya.md) · [Bickel–Pascoe–Sargent, *Zero-free regions near a line*](https://arxiv.org/abs/2108.04807)

## Counting the low zeros

For \(T=100\) use \(\vartheta(T)=\Im\log\Gamma(1/4+iT/2)-(T/2)\log\pi\), with the log-gamma branch real on the positive real axis. The argument principle gives
\[
 N(T)=1+\{\vartheta(T)+\arg\zeta(1/2+iT)\}/\pi ,
\]
where the argument follows the path from 2 to \(2+iT\) and then to \(1/2+iT\). Here \(N(T)\) counts all zeros of positive ordinate through \(T\) with multiplicity. On the vertical segment, \(|\zeta(2+it)-1|\le\zeta(2)-1<1\). Covering the horizontal segment by 128 equal closed intervals gives \(\Re\zeta(\sigma+100i)>0\) on each. Reflection excludes zeros on the other half of the top edge. The endpoint principal argument is therefore the continued one. Ball evaluation puts the right side strictly between \(28.5\) and \(29.5\). Independently, the real-valued function \(t\mapsto\xi(1/2+it)\) has 29 sign changes on consecutive intervals of the quarter-integer grid from 0 to 100. Every endpoint has certified nonzero sign. The count forces one simple zero in each interval and exhausts all zeros through height 100. The first bracket starts at 14. [Exact counting formula, Brent–Platt–Trudgian, §2](https://maths-people.anu.edu.au/~brent/pd/rpb276-electronic.pdf) · [Certificate](../../../scripts/verify_xi_shifted_hankel.py)

## A bound uniform in the shift

The genus-zero product of \(g\) gives \(p_k=\sum_\lambda\lambda^k\), where the reciprocals \(\lambda\) of its zeros occur with analytic multiplicity and \(\sum|\lambda|<\infty\). Equivalently take one \(\lambda=(\gamma-i(\beta-1/2))^{-2}\) for each zeta zero \(\beta+i\gamma\) of positive ordinate. Functional-equation pairing accounts for the lower half-plane without doubling this sum. This use of zeros proves an estimate for the coefficient-defined \(p_k\). For all these zeros \(\gamma>14\) and \(|\beta-1/2|\le1/2\), whence
\[
 \frac{\Re\lambda}{|\lambda|}=
 \frac{\gamma^2-(\beta-1/2)^2}{\gamma^2+(\beta-1/2)^2}\ge\frac35 .
\]
The center coefficient certificate gives \(0<p_1<3/100\), so \(\sum|\lambda|\le5p_1/3<1/20\). Write \(\eta=10^{-4}\). Every zero above the counted interval has \(|\lambda|\le\eta\).

Select the first sixteen sign-change brackets and let \(x_i>0\) be the corresponding reciprocal squares. If the height bracket is \((u_i,v_i)\), put \(\ell_i=v_i^{-2}\), \(h_i=u_i^{-2}\). Each \(\ell_i>\eta\). For \(|z|\le\eta\) the Lagrange basis polynomial at \(x_i\) satisfies
\[
 |L_i(z)|\le B_i=\prod_{j\ne i}
 \frac{\eta+h_j}{\max(\ell_i-h_j,\ell_j-h_i)} .
\]
The denominators are strictly positive because the chosen node intervals are disjoint. For a nonzero real polynomial \(Q\) of degree below 16 set \(E_r=\sum_i x_i^r Q(x_i)^2>0\). Interpolation followed by weighted Cauchy–Schwarz gives
\[
  |Q(z)|^2\le E_r\sum_i B_i^2/\ell_i^r .
\]
All remaining zeros below height 100 contribute nonnegatively to the quadratic form. The absolute value of the contribution from above 100 is at most \(E_r C_r\), where
\[
   C_r=\frac{\eta^{r-1}}{20}\sum_i B_i^2/\ell_i^r.
\]
Indeed \(\sum_{|\gamma|>100,\,\gamma>0}|\lambda|^r\le\eta^{r-1}\sum|\lambda|\). This controls the actual signed terms \(\lambda^r Q(\lambda)^2\), including any conjugate nonreal nodes. Each summand of \(C_r\) decreases because \(\eta/\ell_i<1\). The right endpoints of the selected height intervals, multiplied by four, are
\[
 57,85,101,122,132,151,164,174,193,200,212,226,238,244,261,269 .
\]
Each left endpoint is a quarter below its right endpoint. Exact rational substitution gives \(C_{47}<79/100\). Thus the quadratic form is at least \((1-C_{47})E_r>0\) for every \(r\ge47\). Positivity on real vectors implies Hermitian positivity on complex vectors because the matrix is real and symmetric. [Interpolation, strict node energy and summable complex tails in Lean](HankelInterpolationTail.lean)

## The remaining 46 shifts

At the regular point \(s=1/2\) calculate the ball Taylor series of \(\xi(1/2+y)\) from \(s(s-1)\pi^{-s/2}\Gamma(s/2)\zeta(s)/2\). If \(h(y)=\log(\xi(1/2+y)/\xi(1/2))\), then \(p_k=-k(-1)^k[y^{2k}]h(y)\). Arithmetic at 2048 bits through degree 152 encloses every needed moment through \(p_{76}\). For each \(1\le r\le46\) all sixteen leading principal determinants have strictly positive lower endpoints. Sylvester’s criterion proves positive definiteness. The largest dimension at \(r=46\) has determinant between \(3.3225\times10^{-3171}\) and \(3.3226\times10^{-3171}\). These are checks on the complete functions via rigorous Taylor arithmetic. [Executable calculation](../../../scripts/verify_xi_shifted_hankel.py) · [Johansson, *Arb: Efficient Arbitrary-Precision Midpoint-Radius Interval Arithmetic*](https://arxiv.org/abs/1611.02831)

An independent check recovers \(p_1,\ldots,p_{10}\) from the Jacobi theta integral in the source exchange. For \(t=\log x\), integrate \(e^{t/4}t^{2k}\sum_{n\ge1}e^{-\pi n^2 e^t}\) and divide by \(4^k(2k)!\) to obtain \(\beta_k\). Retain \(n\le8\) and \(0\le t\le5\). The inequality \(t^{2k}\le(2k)!e^t\) bounds each normalized omitted summand after substitution by \(\int_{x_0}^\infty e^{-(3n^2-1/4)x}\,dx\), since \(x^{1/4}\le e^{x/4}\). At \(n\ge9\), \(x_0=1\), successive upper bounds decrease at least geometrically with ratio \(1/2\). For the other eight summands \(x_0=e^5>140\). The total omitted contribution is at most \(2e^{-242}+8e^{-385}<10^{-104}\). From \(D=1/2-\beta_0/4\) and \(c_k=(-1)^k(\beta_{k-1}-\beta_k/4)/D\), use \(p_k=-kc_k-\sum_{j=1}^{k-1}p_jc_{k-j}\). Both sets of moment enclosures overlap term by term. The integral enclosures alone certify all leading determinants through dimension five for \(r=1,2\).

## Finite spectral multiplicities

A real spectral list matching the first 32 xi power sums must contain **at least 1,373 entries**, counted with multiplicity. Put \(b_i=p_{i+1}\) and \(D_{ij}=p_{i+j+2}\) for \(0\le i,j<16\). For any real eigenvalue list \(y_1,\ldots,y_m\) realizing these moments and polynomial \(V(t)=\sum_{i=0}^{15}v_it^{i+1}\),
\[
 0\le\sum_{k=1}^m(1-V(y_k))^2=m-2v^{\mathsf T}b+v^{\mathsf T}Dv.
\]
The certificate rounds each entry of \(D^{-1}b\) to a unique integer, then evaluates \(2v^{\mathsf T}b-v^{\mathsf T}Dv\) for that integer vector directly. Its value is between 1372.97 and 1372.98. The unrounded \(b^{\mathsf T}D^{-1}b\) lies in the same interval. It equals the sum of the inferred multiplicities in the 16-node Gaussian quadrature. Since it is nonintegral, these quadrature nodes and weights cannot supply the multiplicities of a determinant. [Rank inequality and Gaussian construction](XiNewtonMomentHilbertPolya.md#vii-gaussian-quadrature-spectral-multiplicity-and-finite-rank) · [Formal polynomial rank inequality](NewtonMomentRank.lean)

## Why a bound on the matrix size matters

For each \(d\ge1\) let \(\epsilon=1/[4d((d+1)!)^2]\) and consider
\[
       g_d(w)=(1+\epsilon^2 w^2)\prod_{j=1}^d(1-jw).
\]
Every shifted logarithmic-moment matrix through size \(d\) is positive definite. Indeed the real nodes \(1,\ldots,d\) give positive energy and, on \(|z|\le\epsilon\), each of their Lagrange basis polynomials has norm at most \((d+1)!\). The two other reciprocal nodes \(\pm i\epsilon\) together cost at most \(2\epsilon d((d+1)!)^2=1/2\) times that energy at shift one. Larger shifts only improve this bound. But \(g_d\) has two nonreal zeros. At size \(d+1\) its shift-two form already has a negative direction. Take \(Q(t)=\prod_{j=1}^{d}(1-t/j)\). It annihilates the real nodes, and \(|Q(i\epsilon)-1|\le e^{d\epsilon}-1<1/8\), which gives \(\Re Q(i\epsilon)^2>0\). The form is then \(-2\epsilon^2\Re Q(i\epsilon)^2<0\).

The dimension bound in the xi theorem leaves the all-size Stieltjes condition open. Lean proves the shift-47 rational budget, node separation and the infinite-tail implication for every shift \(47+k\), any sixteen nodes in the given brackets, and any complex tail satisfying the stated disk and first-absolute-moment bounds. The application to the genuine zeta zeros uses the classical analytic argument and Arb certificates above. The genuine zero count, ball enclosures and complete xi theorem have not been kernel-replayed in Lean. [Rational certificate](XiHankelTailBudget.lean) · [All-shift tail theorem](XiHankelTailReduction.lean) · [Verification issue](https://github.com/grwtsk/math/issues/124)

## Independent lower-order quadrature check

For the size-two, shift-one determinant \(D=p_1p_3-p_2^2\), direct
integration of the theta kernel, without zero ordinates, gives
\(1.94933555481914<10^9D<1.94933555481915\). This also checks the
positive sign with a different quadrature from the midpoint sum.
The 10,000-cell midpoint calculation on \([0,5]\), using 4 theta
terms and a cellwise second-derivative bound, encloses \(10^9D\)
strictly between \(1.94836\) and \(1.95023\). The 5,000-cell
calculation still gives a positive lower endpoint.

With \(g(w)=1+c_1w+c_2w^2+c_3w^3+\cdots\), Newton's identities give
\(D=c_1^2c_2+3c_1c_3-4c_2^2\). On the coefficient box from the
10,000-cell check, the three partial derivatives \(2c_1c_2+3c_3\),
\(c_1^2-8c_2\), and \(3c_1\) are strictly negative. Evaluating at the
upper and lower corners therefore gives valid endpoints and avoids
repeated use of the same uncertain variable in interval arithmetic.
This is a finite computer-assisted calculation. The source-integral
enclosure has no Lean kernel certificate. [Direct theta-integral check](../../../scripts/verify_xi_shifted_hankel.py)
