# Detecting the first elliptic denominator on every even Frobenius orbit

grwtsk contributors

For the normalized lemniscatic model \(y^2=x^3-cx\), the first nonintegral coefficient of either two-site polarization survives the full torus average on **each** even orbit, for every integral trace-dual basis. Its degree and its residue after multiplication by \(p\) are preserved. This concerns the specific elliptic series and the original orbit construction. A general selected CM curve has its own normalized section and place scalar. The transfer of integrality proved below applies to that construction as well. [Two-site elliptic classification](AlpogeHondaScalarDescent.md) · [Original orbit series and trace-dual coordinates](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/GaussSumParity/TrDual.lean#L23-L70) · [Rubinstein working draft, §III.5](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)

## Which two-site datum is needed

Let \(q=p^2\). In additive coordinates let \(f(U,V)\) vanish on both axes, and let \(P_2\) retain coefficients \(b_{ij}\) with \(i-pj\equiv0\pmod{q-1}\). The multiplier \(-p\) permutes the two weight conditions, since \(p^2\equiv1\). Thus for symmetric \(f\), \(P_2 f\) is symmetric. Splitting the first variable and rotating the three arguments gives precisely the second split. Substitution of the same \(\lambda(X)=\sum_{j\ge0}X^{q^j}/p^j\) in each and exponentiation preserve the identity.

Conversely, equality of the two exponentials after this rotation forces symmetry of the projected series. Take the formal logarithm and invert \(\lambda\) variable by variable. At three-variable index \((i,j,k)\) with \(i,j>0\), the split coefficients are \(\binom{i+j}{i}b_{i+j,k}\) and \(\binom{i+j}{i}b_{k,i+j}\). The binomial is nonzero in characteristic zero, so equality detects every asymmetric pair with an index at least two. The axes vanish and the remaining diagonal pair is symmetric. This tests equality of coefficients. Both exponentials can be integral without being equal.

There is a stronger obstruction to finite testing even among series of the form \(P_2(m(U+V)-m(U)-m(V))\). For an odd prime and \(L=p^h\), add \(z^{2(p+1)L}/p\) to any one-variable section logarithm \(m\) whose projected exponentials are integral. The degree is a multiple of four. Both perturbed polarized exponentials agree with the originals through degree \(2(p+1)L-1\). At degree \(2(p+1)L\) the added coefficient at \(X^{pL}Y^{pL}Z^{2L}\) is
\[
 p^{-1}\binom{2(p+1)L}{2pL}\binom{2pL}{pL}.
\]
The torus retains this term because \(2pL-p(2L)=0\). No earlier term of the perturbation contributes under Honda substitution or exponentiation. The numerator reduces to \(1\cdot2\) modulo \(p\) by the base-\(p\) digit identity, so both polarizations first fail there. This construction also retains symmetry and the projected one-variable origin. An arbitrary additive perturbation need not arise from the normalized elliptic differential. For comparison, prescribing just the two symmetric monomials of bidegrees \((2pL,2L)\) and \((2L,2pL)\) with coefficient \(1/p\) gives the same obstruction with only the second binomial in the numerator. [Formal coefficient tests](AlpogeOrbitPolarization.lean)

The symmetry assumption also matters for *integrality* of just one split. Take \(g(U,V)=UV^m/p\) with \(m=p+(p^2-1)(1+pk)\), \(k\ge0\). Its weight is invariant, it vanishes on both axes, and its coefficients belong to \(\mathbb Q_p\). Its first additive defect is identically zero since it is linear in \(U\). In the second defect the lowest-degree coefficient at \(UV^{m-1}W\) is \(m/p\), of valuation \(-1\) because \(m\equiv-1\pmod p\). Honda substitution and exponentiation preserve that first coefficient. The first polarization can therefore be integral in *every* degree while the second first fails beyond an arbitrarily prescribed cutoff for an admissible B1–B3 input. This example is outside the symmetric elliptic class.

## Taking the torus average in two stages

Take any even \(d\ge2\). In a common unramified coefficient extension take the degree-\(d\) ring \(O_d\), arithmetic Frobenius \(\sigma\), an \(O_2\)-basis \(\omega_j\) and its ordinary trace-dual \(\omega_j^*\). The source applies the signs \(+,-\) on the even and odd sites and uses
\[
 L_s(T)=\sum_{i\ge0}p^{-i}T_{s-2i}^{q^i}.
\]
Let \(G=\mu_{p^d-1}\), \(H=\mu_{q-1}\), and \(M=|G/H|\). At \(u\in G\), the two additive linear forms for index \(j\) have coefficients \(\sigma^s(u\omega_j^*)\) on even sites and \(\sigma^s(u^{-1}\omega_j)\) on odd sites. For \(v\in H\), replacing \(u\) by \(uv\) multiplies these forms by \(v\) and \(v^{-p}\) respectively, because \(\sigma^2 v=v\). Hence the inner mean of \(f\) over \(H\) is already \(P_2 f\) evaluated on those two forms. This identity holds degree by degree before any integrality assumption or choice of half of the B4 conditions.

Write \(E_{2,i}\) for the projected two-site split exponential after Honda substitution, and \(E_{d,i}\) for the corresponding split exponential of the source's full mean. Fix coset representatives. The exact identity in characteristic zero is
\[
 (E_{d,i})^M=\prod_{u\in G/H}\prod_j E_{2,i}(A_{u,j},B_{u,j},C_{u,j}).                 \tag{1}
\]
Here the three entries use three disjoint input blocks. For the even split, the first two entries use copies of the even form with coefficient \(u\omega_j^*\), and the third uses the odd form with coefficient \(u^{-1}\omega_j\). For the odd split, order the two split odd copies first and the even singleton last, rotating the arguments of \(E_{2,2}\) accordingly. In each block the coordinate is \(\lambda^{-1}(\sum_{s\equiv e(2)}\sigma^s(v)L_s(T))\) with the designated \(v\). Its linear coefficient at \(T_s\) is precisely \(\sigma^s(v)\). Splitting one additive argument adds its two logarithmic forms, as required by B4. Averaging the logarithms then exponentiating gives (1), with a sum over basis elements in the logarithm and **no division by their number**.

Every coordinate on the right is integral with zero constant term. For completeness, put \(\Phi g=\sigma^2(g)(T^q)\) on series, where \(\sigma\) acts on coefficients. The additive form \(V\) obeys \((1-\Phi/p)V=\sum_{s\equiv e(2)}\sigma^s(v)T_s\) by the shift by two and \(\sigma^d v=v\). For an integral polynomial \(W\) of zero constant term the series
\[
 (1-\Phi/p)\lambda(W)
 =W+\sum_{i\ge1}p^{-i}\bigl((W^q)^{q^{i-1}}-(\Phi W)^{q^{i-1}}\bigr)
\]
is integral. Its two bases agree modulo \(p\) and taking a \(p\)-th power gains a digit on congruent integral elements. The correction at degree \(n\) depends only on lower coefficients. Recursively solving for \(W\) gives \(\lambda(W)=V\), since \(1-\Phi/p\) is injective on zero-constant series. This argument takes place in the unramified rings containing the basis and twists. It persists under extension to accommodate the coefficients of \(f\). [Integral parity coordinates and upstream comparison](AlpogeEllipticCubicalB4.md)

Because \(p\nmid M\), (1) transfers integrality **already through any specified degree**. Indeed the degree-\(n\) part of the \(M\)-th power of a constant-one series is \(M\) times its degree-\(n\) part plus an integer polynomial in lower coefficients. The same argument without a cutoff proves all-degree B4 for every orbit from the corresponding projected two-site test. Thus for a symmetric additive input one polarization at two sites suffices for both on every even orbit in this construction. For the selected curves in §19, the input is the additive-coordinate version of the original symmetric cubical logarithm. The two-site test remains an arithmetic requirement on that logarithm.

## A first denominator that survives the mean on each orbit

Assume one split of the two-site series is integral below \(D=N+p\), where \(N=q^a\), \(a\ge1\). Suppose the coefficient \(b=[X^N Y^{p-1}Z]E_{2,i}\) in split, split, singleton order has \(v_p(b)=-1\). For any site \(s\) of the split parity put
\[
                  r=s+2a,\qquad t=r+1\quad(\bmod d).
\]
Let \(b_d\) be the orbit coefficient at \(X_s^N Y_r^{p-1} Z_t\). Then
\[
                            b_d-b\in O.                                  \tag{2}
\]
In particular the orbit has exactly the same first failure degree. This applies individually to every admissible integral trace-dual basis.

To prove (2), multiply the selected coefficient of (1) by \(p\) and reduce modulo \(p\). All products of contributions of degrees strictly between zero and \(D\) are integral, so drop out. The lower-degree source coefficients remain integral even when nonlinear terms of \(A,B,C\) contribute. In total degree \(D\) only the three linear parts can act on a source coefficient of degree \(D\). They live on disjoint blocks, so the only possible source multidegree for the selected output is exactly \((N,p-1,1)\). This justifies the reduction for this coefficient even without a common denominator bound on other degree-\(D\) coefficients. This also puts the selected orbit coefficient in \(p^{-1}O\) by the power identity and the invertibility of \(M\). The left side reduces to \(M\overline{p b_d}\), since integrality below \(D\) was already transported from the base.

For an even split, set \(v_j=u\omega_j^*\), \(v'_j=u^{-1}\omega_j\). In the residue field,
\[
  (\overline{\sigma^s v_j})^N (\overline{\sigma^r v_j})^{p-1}
     \overline{\sigma^t v'_j}
   =\overline{\sigma^t(v_jv'_j)} .
\]
The equality uses \(r=s+2a\) and \(t=r+1\), including wraparound. For an odd split interchange \(\omega,\omega^*\) and invert \(u\), which gives the same product. The sum over \(j\) is **one**. In any finite separable extension with basis \(b_j\) and trace-dual \(b_j^*\), for every \(x\) the trace of \(x\sum b_j b_j^*\) is the sum of the diagonal entries of multiplication by \(x\) in that basis, hence equals the trace of \(x\). Nondegeneracy of the trace pairing gives \(\sum b_jb_j^*=1\). The reductions of the present bases are trace-dual by étaleness, or one may use the characteristic-zero equality before reduction. Consequently each coset contributes \(\overline{p b}\), and \(M\) is a unit. This proves (2). In particular a residue degree divisible by \(p\) does not erase the obstruction. [Trace pairing for finite étale morphisms](https://stacks.math.columbia.edu/tag/0BJF) · [Formal contraction including all Frobenius laps](AlpogeOrbitPolarization.lean)

## Application to the normalized elliptic twist

Take \(p\equiv3\pmod4\), \(c\) a unit of a finite unramified extension of \(K_0=\mathbb Q_p(i)\), and the fixed frame \(t=-x/y\). Use
\(m_c(z)=\log(\sigma_c(z)/t(z))\) and \(f=m_c(U+V)-m_c(U)-m_c(V)\). Here \(\sigma_c\) denotes the Weierstrass sigma function. The earlier two-site classification applies to exactly this frame and both polarizations. By (1) and (2), at **each even orbit length** and for either polarization:

* All coefficients are integral exactly when \(c\in K_0\) and \(\bar c^{(q-1)/4}=-1\).
* If the residue condition fails, the first failure is at \(q+p\).
* If the residue condition holds but \(c\notin K_0\), put \(j=v_p(c-\phi c)\) for \(\phi\) the arithmetic \(q\)-Frobenius. The first failure is at \(q^{j+1}+p\).

The proof uses the elliptic differential and the integral aligned model through the two-site theorem. The residue at the specified orbit coefficient is determined without computing the full theta expansion at that orbit. [Exact two-site theorem and normalization](AlpogeHondaScalarDescent.md)

As a separate computation, the fixture forms actual trace-dual power bases in the cyclotomic fields of conductors five and seven at \(p=3\), where their local absolute degrees are four and six. It expands the Weierstrass logarithm directly, enforcing the orbit character on each coefficient and summing the Honda powers over all partitions of the chosen exponent. The unsplit exponent is one, so the positive powers beyond the first in the exponential do not contribute. Both orientations reproduce the base residue at degrees 12, 84 and 732, including a wraparound and relative degree three. The aligned controls are integral at those coefficients. At degree 80 the fixture also reproduces all five two-site projection and split counts for \(p=3,5,7,11,19\). [Exact computation](../../../scripts/verify_alpoge_orbit_polarization.py)

The Lean module proves the coefficient symmetry criterion, the delayed split congruences, trace-dual contraction, its Frobenius specialization, and multivariate tame descent for a finite product of integral pullbacks. The full orbit identity, its elliptic application, (M), and the Hilbert–Pólya determinant remain outside that formal verification. [Lean source](AlpogeOrbitPolarization.lean)

At source blob `3367184c418651612cd52efc0bdc02d7c0377e6b` all seven public declarations elaborated and passed fresh native kernel replay with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Their transitive axiom audits returned subsets of `propext`, `Classical.choice` and `Quot.sound`. Full formal verification of (1), (2), and their application to the normalized elliptic family is `NOT_RUN`.
