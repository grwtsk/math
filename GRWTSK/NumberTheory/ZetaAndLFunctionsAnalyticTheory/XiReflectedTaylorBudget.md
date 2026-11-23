# Transverse displacement forced by the third exterior Taylor coefficient

Let \(L=\xi'/\xi\), \(P(t)=\Re L(3/2+it)\), and \(a_3(t)=L'''(3/2+it)/6\). If \(|a_3(t)|>P(t)\), the Riemann zeta function has a zero \(\rho=\beta+i\gamma\) satisfying
\[
 \beta>0.753,\qquad |\gamma-t|<2 .
\]
There is also a constraint on all nearby right-hand zeros, counted with their multiplicities:
\[
 \sum_{|\gamma-t|<4,\ \beta>0.6}m_\rho(\beta-1/2)^2
   >0.07421849 .
\]
The [prime-phase bounds](XiPrimePhasePacking.md) already localize such a height to \(3\cdot10^{12}-2<|t|<4.046\cdot10^{15}\). Excluding zeros to the right of 0.753 on this finite range enlarged by two units at each end would therefore prove the order-three bound at every real height. That exclusion is open here. The published low-height verification used in the localization is [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765).

## Compensating the absolute pole costs

At exterior radius \(r\), let \(P_r=\Re L(1/2+r+it)\). At \(r=1\) write \(P'=\partial_r P_r\). The Hadamard product, paired about the critical line, gives
\[
 P_r=\sum_\rho m_\rho\frac{r+1/2-\beta}{(r+1/2-\beta)^2+(t-\gamma)^2} .
\]
For the real part the constant of the genus-one logarithmic derivative cancels at the symmetry center, where \(\xi'(1/2)=0\); the real reciprocal parts there cancel in reflected pairs. Differentiation through third order on the exterior half-plane is justified by local uniform convergence of the differentiated tails, using \(N(U)=O(U\log U)\). In particular \(a_3=-\sum_\rho m_\rho(3/2+it-\rho)^{-4}\). This is the actual completed zeta divisor. [Hadamard, *Étude sur les propriétés des fonctions entières et en particulier d'une fonction considérée par Riemann* (1893)](https://www.numdam.org/item/JMPA_1893_4_9__171_0/)

Pair \(1/2\pm\sigma+i\gamma\), \(0<\sigma<1/2\), at their common multiplicity. Write \(x=(t-\gamma)^2\), \(\eta_\pm=1\pm\sigma\), \(D_\pm=\eta_\pm^2+x\) and \(S=\sum_\pm D_\pm^{-2}\). Here \(P_{\rm pair}=\sum\eta_\pm/D_\pm\) and \(P'_{\rm pair}=\sum(x-\eta_\pm^2)/D_\pm^2\). The compensated difference equals
\[
 F_h=P_{\rm pair}-P'_{\rm pair}-(1+h)S
     =\sum_\pm \frac{(\eta_\pm-1)x+\eta_\pm^2(\eta_\pm+1)-(1+h)}{D_\pm^2}.
\]
A critical-line zero alone contributes \((1-h)/(1+x)^2\). One way to find this compensation is to coalesce exterior radii: \((RP_1-P_R)/(R-1)\to P_1-P'\). At radii 1 and 2 the analogous real-pair slack \(4P_1/3-2P_2/3-S=6x/((1+x)^2(4+x))\) is already nonnegative.

The [exact rational fixture](../../../scripts/verify_xi_reflected_taylor_budget.py) proves the following estimates simultaneously for the indicated continuous regions.

| \(h\) | \(F_h\ge0\) at every \(x\ge0\) | \(F_h\ge0\) at every \(0\le\sigma\le1/2\) | Global charged bound |
|---|---|---|---|
| \(13/50\) | \(0\le\sigma\le253/1000\) | \(x\ge4\) | |
| \(13/20\) | \(0\le\sigma\le1/10\) | \(x\ge16\) | \(F_h+79\sigma^2\ge0\) |

In each box multiply by \((D_-D_+)^2>0\). For an interval \([l,u]\) and lower cutoff \(x_0\), substitute \(\sigma=(l+uv)/(1+v)\) and \(x=x_0+w\), and multiply by \((1+v)^k\), with \(k\) the degree in \(\sigma\). Every coefficient in \(v,w\) of each resulting rational polynomial is nonnegative, verified by exact expansion for five boxes. The endpoint \(\sigma=u\) follows by continuity. No sampling in \(x\) or \(\sigma\) enters this certificate.

## Paying for the radius derivative with the Euler product

Set \(T_0=3\cdot10^{12}-2\), \(g(t)=\tfrac12\log(|t|/(2\pi))\), \(b_0=-(\zeta'/\zeta)(3/2)\), and \(b_1=(\zeta'/\zeta)'(3/2)\). Write \(L=G+\zeta'/\zeta\), where \(G(s)=1/s+1/(s-1)+\psi(s/2)/2-(\log\pi)/2\). At \(|t|\ge T_0\) the [gamma and rational estimates](XiExteriorTaylorScale.md) give \(\Re G\ge g(t)-1/|t|\) and \(|G'|\le1/|t|\). The Euler part of \(hP+P'\) has coefficients \(\Lambda(m)m^{-3/2}(\log m-h)\) against \(\cos(t\log m)\). For both chosen \(h<\log 2\) these coefficients are nonnegative. Absolute convergence and the common phase therefore give
\[
 hP+P'\ \ge\ M_h(t)=h(g(t)+b_0)-b_1-(1+h)/|t|.
\]
The minimum over \(|t|\ge T_0\) occurs at \(T_0\). Differentiation of the real zeta series at \(3/2\), evaluated with Arb, gives \(M_{13/50}(T_0)>0.03232660\) and \(M_{13/20}(T_0)>5.86326087\).

If no pair has \(\sigma>0.253\) and \(|t-\gamma|<2\), the first row and the triangle inequality give \((1+h)|a_3|\le P-P'<(1+h)P\). For the second row, let \(E\) be the square-displacement sum in the statement. The same summation now gives \((1+h)|a_3|\le P-P'+79E\). Consequently \(|a_3|>P\) implies \(E>M_{13/20}(t)/79>0.07421849\). Both arguments account explicitly for each multiplicity. The geometric tests are necessary conditions for violation. A nearby off-line zero that passes the two tests need not cause a violation.

## Finite arithmetic control and verification scope

Let \(X=10^6\) and \(J(s)=g(T_0)-\sum_{m\le X}\Lambda(m)m^{-s}\). The fixture includes every prime power through \(X\), with 78,734 terms. It encloses \(g(T_0)-\sum\Lambda(m)/m>0.20798563\), so \(\Re J(s)>0\) on the whole half-plane \(\Re s\ge1\). At the real point \(3/2\), the actual finite sums yield \(|J'''(3/2)|/6-J(3/2)>2.66153079\). Thus these arithmetic coefficients, the aligned phases and positivity throughout the half-plane can coexist with failure of the order-three test. This control lacks the completed zeta divisor and makes no prediction about which heights realize nearly aligned phases in the full Euler product.

The [Lean companion](XiReflectedTaylorBudget.lean) proves the common reflected denominator and two numerators, the real-pair two-radius identity, and the algebraic excess-to-energy implication. The compensated polynomial certificates use rational arithmetic in python-flint. The gamma bound and divisor summation are analytic arguments. Lean 4.34.1 elaborated the five companion declarations at source blob `51637f036a6553016a0a269ad8dfaf92e580506d`, with Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The five transitive axiom audits used only standard axioms among `propext`, `Classical.choice`, and `Quot.sound`. The source-bound fresh kernel result is tracked on [issue #1850](https://github.com/grwtsk/math/issues/1850). An independent external analytic review is outstanding.
