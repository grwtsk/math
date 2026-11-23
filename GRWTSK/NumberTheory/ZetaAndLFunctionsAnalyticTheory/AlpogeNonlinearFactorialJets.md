# Factorial jets under nonlinear coordinate changes

grwtsk contributors

Let \(K\) be a characteristic-zero field with a nonarchimedean valuation extending \(v_p(p)=1\), and let \(\mathcal O=\{x:v_p(x)\ge0\}\). Give zero valuation \(+\infty\). For \(F\in K[[X_1,\ldots,X_s]]\), put
\[
  J_\kappa F=\kappa![X^\kappa]F,\qquad
  \kappa!=\prod_i\kappa_i!.
\]
These are the ordinary iterated coordinate derivatives at the origin. For a substitution \(X_i=G_i(Y)\) with zero constant terms, integrality of all factorial jets of the \(G_i\) suffices to transport integral factorial jets of \(F\), even when the ordinary power series coefficients have denominators. A coefficientwise valuation test gives the exact condition for transporting an entire weighted jet lattice. Its arithmetic use is control of coordinate changes in the [original normalized theta-lift problem](https://github.com/grwtsk/math/issues/1850).

## Formula and valuation

For a nonzero multi-index \(\alpha\) in the target variables, take all arrays of nonnegative integers \(n_{i,\beta}\), where \(\beta\ne0\), satisfying
\[
 \sum_{i,\beta}n_{i,\beta}\beta=\alpha,\qquad
 \kappa_i=\sum_\beta n_{i,\beta}.
\]
The sum is finite. Direct expansion of \(F(G_1,\ldots,G_s)\) gives
\[
 J_\alpha(F\circ G)
 =\sum_{n} M(\alpha,n)\,J_\kappa F\prod_{i,\beta}(J_\beta G_i)^{n_{i,\beta}},
 \qquad
 M(\alpha,n)=
 \frac{\alpha!}{\prod_{i,\beta}n_{i,\beta}!\,(\beta!)^{n_{i,\beta}}}. \tag{1}
\]
Indeed expanding \(G_i^{\kappa_i}\) supplies the factor \(\kappa_i!/\prod_\beta n_{i,\beta}!\), which cancels the factorial normalization of the outer jet. The integer \(M\) counts partitions of labeled sets of \(\alpha_j\) objects of each color \(j\) into unordered blocks carrying index \(i\) and color profile \(\beta\). Permutations inside each block and permutations of blocks of identical type supply precisely its denominator. At \(\alpha=0\) the composed value is \(F(0)\). Formula (1) is the formal-series version of the multivariate Faà di Bruno formula. [Constantine and Savits, *A Multivariate Faà di Bruno Formula with Applications*, Trans. AMS 348 (1996), Theorem 2.1](https://www.ams.org/tran/1996-348-02/S0002-9947-96-01501-2/S0002-9947-96-01501-2.pdf).

Consequently the composite jet has valuation at least
\[
 \min_n\bigg[v_p(J_\kappa F)
     +\sum_{n_{i,\beta}>0}n_{i,\beta}v_p(J_\beta G_i)
     +v_p(M(\alpha,n))\bigg]. \tag{2}
\]
Here \(v_p(M)\) is determined exactly by subtracting the factorial valuations in (1), with \(v_p(m!)=\sum_{e\ge1}\lfloor m/p^e\rfloor\). A unique minimizing nonzero term gives equality. When two or more terms attain the minimum, their residues can cancel. Only input derivatives of order at most \(|\alpha|\) enter. This proves transport through any prescribed finite order for formal series by truncation. Without the zero-constant hypothesis even the value can lose integrality: \(F=X^3/6,\ G=1+Y\) at \(p=3\) gives \(F(G(0))=1/6\).

## Exact anisotropic criterion and inverse

For integer weights \(c=(c_i)\), write \(\mathcal J_c\) for the lattice \(v_p(J_\kappa F)\ge c\cdot\kappa\) at every order. Fix target weights \(d=(d_j)\). Then
\[
 \boxed{\quad
  F\in\mathcal J_c\Longrightarrow F\circ G\in\mathcal J_d
       \ \text{for every }F
  \ \Longleftrightarrow\
  v_p(J_\beta G_i)\ge d\cdot\beta-c_i
       \ \text{for all }i,\ \beta\ne0 .
 \quad} \tag{3}
\]
For sufficiency insert the bounds in (2): the \(c_i\kappa_i\) terms cancel and the remaining weight is \(d\cdot\alpha\). For necessity use \(F=p^{c_i}X_i\) separately for every input coordinate. The same test characterizes transport through order \(N\) when \(|\kappa|,|\beta|,|\alpha|\) are restricted to at most \(N\). A common additive lower bound on the outer valuations passes through unchanged by (2).

Equivalently rescale the outer series to \(F(p^{-c_i}X_i)\) and the coordinate maps to \(\widetilde G_i(Y)=p^{c_i}G_i(p^{-d_j}Y_j)\). Their ordinary factorial-jet integrality yields (3). When the numbers of variables agree, a unit determinant of the rescaled Jacobian over \(\mathcal O\), together with (3), also gives the inverse substitution with the opposite weight transport. Indeed the formal inverse \(H\) of \(\widetilde G\) has linear term equal to the inverse Jacobian. At order \(n\ge2\) in \(\widetilde G(H)=Y\), the only terms depending on degree-\(n\) jets of \(H\) are their product by that same Jacobian. All the others in (1) use lower-order jets of \(H\). Induction and the integral inverse matrix prove integrality at every order. This is a formal inverse at the origin; questions of analytic convergence lie outside the statement.

## Source checks and the first lost derivative

At \(p=3\), the verifier's polynomial \(F=X^3/6+XY+Y^2/2\) has integral factorial jets. With \(X=U+V,\ Y=3U+2V\), its degree-two part becomes \(15U^2/2+11UV+4V^2\); its three degree-two jets are \(15,11,8\). Each of its four degree-three jets equals \(1\). The inverse matrix has rows \((-2,1),(3,-1)\), so the reverse substitution also preserves the lattice. The source's second control uses \(F=X^3/6\) and \(X=U/9\); the third derivative becomes \(1/729\), of exact valuation \(-6\). This realizes (2) with a single repeated linear direction. The randomized control covers linear maps in dimensions two and three at primes \(2,3,5\); it exercises the singleton-block specialization of (1). All three comparisons concern finite polynomial jets.

A nonlinear change can fail for the first time strictly later than its first nonintegral coordinate derivative. At \(p=3\), take \(F=X^3/6,\ G=Y+Y^2/6\). Then \(J_2G=1/3\) and
\[
 F(G)=Y^3/6+Y^4/12+Y^5/72+Y^6/1296.
\]
Its successive factorial jets at orders zero through six are \(0,0,0,1,2,5/3,5/9\). The first lost derivative is the fifth. In order four the block sizes \(1,1,2\) give \(M=6\), which cancels the factor of \(3\) in \(J_2G\); in order five the sizes \(1,2,2\) give \(M=15\), canceling only one of the two factors. This directly checks the \(v_p(M)\) term in (2).

Ordinary integrality also permits a failure specific to the anisotropic bound. Use \(c=d=(0,1)\), \(F=X_1\), \(G_1=Y_1+Y_2^2/2,\ G_2=Y_2\). The Jacobian is the identity and every coordinate factorial jet is integral. At degree two \(J_{(0,2)}(F\circ G)=1\) has valuation zero against the required lower bound two. The condition for this particular \((i,\beta)\) in (3) catches the loss.

The [Lean module](AlpogeNonlinearFactorialJets.lean) proves the coordinate chain rule for actual multivariate polynomials, finite-order preservation of iterated derivatives in an arbitrary subring, the diagonal rescaling identity, weighted preservation in rescaled coordinates, and the exact seven rational fixture values. The partition formula, valuation characterization and inverse-series argument above are written mathematics. Applying these results to a theta lift requires its actual local coefficient bounds and coordinate maps; these transport statements alone do not supply the arithmetic inequality (M).

The Lean 4.34.1 build and fresh kernel replay passed at SHA-256 `8ed4cdf3a80b0c4e16073f219c736d2262fe85008a6c3965f38f8e71d7e4853e`. Transitive axiom auditing of all eight public declarations found only `propext`, `Classical.choice`, `Quot.sound`. The full partition formula and universal valuation converse have not been formalized in this module. Independent mathematical review is pending.
