# Recovering xi nodes and multiplicities from shifted Newton pencils

**Attribution** — grwtsk contributors.

Let \(g(z^2)=\xi(1/2+iz)/\xi(1/2)\) and define
\(p_k=-k[w^k]\log g(w)\) from the actual Taylor coefficients at the
origin. Consider the following construction, which uses only the \(p_k\).
For integers \(r,n\ge1\), put
\[
 H_{n,r}=(p_{r+i+j})_{0\le i,j<n},\qquad
 Q_{n,r}(x)=\frac{\det(xH_{n,r}-H_{n,r+1})}{\det H_{n,r}} .
\]
Use sizes and shifts for which the denominator is nonzero and the monic
polynomial has distinct nonzero roots \(\alpha_j\). At those roots use the
Lagrange polynomials \(\ell_j\) of degree below \(n\), and set
\[
 B_{j,r}=\sum_{k=0}^{n-1}[x^k]\ell_j(x)\,p_{r+k},
 \qquad \widehat m_{j,r}= B_{j,r}/\alpha_j^r .
\]
Both conjugate and real roots are allowed. The spectral consumer is the
multiplicity in the desired Fredholm product. A Hankel pencil for a finite
divisor retrieves each distinct node once, even if the divisor has a
multiple zero. The fitted masses recover the missing integers.
[Xi moment source and sign conventions](XiNewtonMomentHilbertPolya.md)
· [Finite determinant and interpolation in Lean](NewtonHankelPencil.lean)

## Nodewise convergence

For the proof, let \(\Lambda\) be the distinct reciprocals of zeros of \(g\),
with orders \(m_u\). Its unconditional genus-zero product gives
\(p_k=\sum_{u\in\Lambda}m_u u^k\) and \(\sum m_u|u|<\infty\).
Choose a radius separating a finite outer set \(E\) of size \(n\)
from the remaining nodes. Write \(a=\min_{u\in E}|u|>0\) and choose
\(0<b<a\) with \(|v|\le b\) for \(v\notin E\).
Every individual node belongs to such a finite set because the only
possible accumulation point of the reciprocal nodes is zero. The radius
is used to state the theorem about the coefficient construction.

For all sufficiently large shifts the pencil is defined. There is exactly
one simple root \(\alpha_{u,r}\) near each \(u\in E\). As \(r\to\infty\),
\[
 \alpha_{u,r}-u=O\big((b/|u|)^r\big),\qquad
 B_{u,r}-m_u u^r=O(b^r),\qquad
 \widehat m_{u,r}-m_u=O\big(r(b/|u|)^r\big).
\]
The constants may depend on the separated set and \(b\). In particular,
rounding the real part of each fitted mass to the nearest integer
eventually gives the exact order of the corresponding zero.

To prove the assertions, let \(V_{u,k}=u^k\) for \(0\le k<n\). Then
\[
 H_{n,r}=V^{\mathsf T}\operatorname{diag}(m_u u^r)V+T_r,\qquad
 \|T_r\|=O(b^r).
\]
Indeed an entry of the tail is bounded by
\(b^{r-1}\max(1,b^{2n-2})\sum_{v\notin E}m_v|v|\).
The transpose here is the ordinary transpose, as the source moments
contain powers without complex conjugation. The inverse of the finite
main term is \(O(a^{-r})\) as \(V\) is nonsingular. The Neumann series
therefore proves eventual invertibility and \(\|H_{n,r}^{-1}\|=O(a^{-r})\).

Solving \(H_{n,r}q=-(p_{r+n+i})_{0\le i<n}\) gives the lower
coefficients of \(Q_{n,r}\). To see this, the first \(n-1\) columns of
\(H_{n,r}^{-1}H_{n,r+1}\) are the next coordinate vectors, and its
last column is \(-q\). This is the companion matrix for that monic
polynomial. Let \(Q_*=\prod_{u\in E}(x-u)\). In the same linear system
the residual of the coefficients of \(Q_*\) comes entirely from the
tail, and is \(O(b^r)\). Consequently \(Q_{n,r}-Q_*=O((b/a)^r)\)
coefficientwise. Disjoint small circles around the distinct \(u\)'s give
one simple root each by Rouché's theorem. In particular the coefficients
of the \(Q_{n,r}\) and of the \(\ell_j\) are bounded uniformly in \(r\).

The improved rate for an individual root is needed to recover masses of
smaller nodes in the presence of larger ones. For \(0\le i<n\) the
orthogonality equation is
\[
 \sum_{u\in E}u^i m_u u^r Q_{n,r}(u)
       =-\sum_{v\notin E}m_v v^{r+i}Q_{n,r}(v)=O(b^r).
\]
Applying the fixed inverse of \(V^{\mathsf T}\) gives
\(|Q_{n,r}(u)|=O((b/|u|)^r)\). Dividing by the other root factors,
which stay bounded away from zero at \(u\), proves the individual estimate.

For \(v\in E\setminus\{u\}\), \(\ell_u(\alpha_{v,r})=0\), so
\(\ell_u(v)=O((b/|v|)^r)\) by the bounded derivatives on a fixed disk.
Likewise \(\ell_u(u)=1+O((b/|u|)^r)\). Expanding
\(B_{u,r}=\sum_{v\in\Lambda}m_v v^r\ell_u(v)\) gives \(m_u u^r+O(b^r)\):
each of the finitely many competing outer nodes contributes \(O(b^r)\),
and the full inner tail has the same bound by absolute summability.
Finally, if \(\alpha_{u,r}=u(1+\varepsilon_r)\), then
\((1+\varepsilon_r)^{-r}=1+O(r|\varepsilon_r|)\) as
\(r|\varepsilon_r|\to0\). This proves the mass limit as claimed.

For any increasing exhaustion by such separated sets, the resulting
finite products, after taking the shift limit at each fixed size and
using the recovered integer exponents, converge locally uniformly to
\(g(w)\). This follows from \(\sum m_u |u|<\infty\), uniformly on each
bounded disk in \(w\). The argument gives neither a single uniform
shift for all sizes nor a rate without separation data. The complex
pencils can recover nonreal pairs; self-adjointness of an exact xi
operator still requires an independent argument.

## Prior work and checks

The polynomial recurrence is the finite moment reconstruction used in
Prony's method. Applied to the logarithmic derivative
\(-g'/g=\sum_{k\ge0}p_{k+1}w^k\), it has the same pole-separation
mechanism as fixed-denominator-degree Padé approximation. The simple
poles of the logarithmic derivative carry zero orders as residues; a
zero of order \(m\) supplies one pencil node with mass \(m\).
The determinant factorization and the direct estimates above apply this
classical mechanism to the actual xi normalization. The application does
not establish priority for the general convergence principle.
[De Montessus, *Sur les fractions continues algébriques*, 1902](https://numdam.org/articles/10.24033/bsmf.653/)
· [Quantitative Padé row convergence and pole rates, 1990](https://www.sciencedirect.com/science/article/pii/037704279090012O)

Ties of modulus must be taken together. For two nodes \(i,-i\) of equal
unit mass, the size-one denominator \(p_r\) vanishes at every odd shift.
For one node \(u\) of multiplicity \(m\), every defined size-one pencil
has root \(u\) and fitted mass \(m\). Thus the mass cannot be read from
the degree of its characteristic factor.

A four-node pencil from the xi Taylor series illustrates the effect of
rounding at finite shift. At shift 16 the fourth fitted height is about
30.81859 and its mass is between 1.5329 and 1.5330. At shift 40 the
height is about 30.43416 and the mass is between 1.024 and 1.026. The
latter shift places all four fitted masses within \(1/4\) of 1. At shift
80 all four masses are within \(10^{-3}\) of 1, and the fourth fitted
height is about 30.42489.
These intervals enclose the finite pencil computations. The previous
independent zero count through height 100 establishes simplicity of the
first four actual zeros. Premature integer rounding at shift 16 would
assign the fourth a multiplicity of two. The code finds four disjoint
sign changes of the monic polynomial and encloses each root by bisection
using ball arithmetic; it takes no zero ordinates as input.
[Finite coefficient calculation](../../../scripts/verify_xi_hankel_pencil.py)
· [Independent height count](XiShiftedHankelPositivity.md)

The Lean module proves the finite moment and pencil factorizations,
determinant identity and nonsingularity, interpolatory mass identity and
normalized infinite-tail bound. The nodewise asymptotic, its identification
with the actual xi divisor, and the compact-uniform iterated limit are
manuscript proofs. External independent review is pending.
