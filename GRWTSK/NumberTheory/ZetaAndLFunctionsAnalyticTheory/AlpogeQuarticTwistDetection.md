# A single coefficient detects the aligned quartic CM twists

Let \(p\equiv3\pmod4\) be prime, \(q=p^2\), \(k=(p+1)/4\),
\(d=(q-1)/4\), and \(R=\mathbb Z_p[i]\), with residue field \(\mathbb F_q\).
For each unit \(c\in R\) take \(E_c:y^2=x^3-cx\), the frame \(t=-x/y\),
and the Taylor series \(m_c(z)=\log(\sigma_c(z)/t(z))=\sum_{j\ge1}\mu_j c^j z^{4j}\).
The coefficients are rational polynomials in the parameter degree by degree,
so this definition includes nonalgebraic local units. Use the two-site projector
of weight \((1,-p)\) modulo \(q-1\) on \(m_c(U+V)-m_c(U)-m_c(V)\) to define
\(\beta_c\). Write \(E_1,E_2\) for the exponentials of its first and second
additive coboundaries after substituting \(L(T)=\sum_{j\ge0}T^{q^j}/p^j\)
in each variable. These are the ordinary-coefficient tests of Rubinstein's
two-site example in §III.5, pp. 88–89. The prime 3 is illustrative. The
original local input has the additional restriction \(p\ge5\).
[November 21 draft](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)
[Original coboundaries and B4](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/ProductZerothFirstParts.lean)

**Model theorem.** The following three conditions are equivalent.

1. Both \(E_1,E_2\) have coefficients in \(R\) in every degree.
2. \(C(c)=[X^qY^{p-1}Z]E_1\) belongs to \(R\).
3. \(\bar c^d=-1\) in \(\mathbb F_q\).

In fact, \(pC(c)\in R\) and its full residue is
\[
 \overline{pC(c)}
 =-\tfrac12(-1)^k\binom{2k}{k}\,\bar c^k(1+\bar c^d).
\]
Thus exactly one quarter of the unit residue classes pass, and each failing
class has valuation exactly \(-1\) at the displayed coefficient. This theorem
classifies the elliptic example. Identifying the automorphic theta sections
at all places and bounding their global lattice losses are separate obligations.

### The two contributions

Every term of the first coboundary is divisible by \(Z\).
Only the exponent's linear term can contribute at \(Z^1\).
The total degree is \(q+p\), and the Honda substitution can only
replace one linear \(X\) by \(X^q/p\), or use no replacement. Before the
substitution the surviving bivariate monomials are \(U^pV\) and
\(U^{q+p-1}V\), both of the specified torus weight. The splitting
binomial factors are respectively \(p\) and \(\binom{q+p-1}{p-1}\).
Consequently
\[
 C(c)=c^k(A+B c^d),\qquad
 A=(p+1)\mu_k,\qquad
 B=(q+p)\binom{q+p-1}{p-1}\mu_{k+d}.
\]
In particular \(p=3\) gives \(-(5c+26c^3)/3\), with value \(-7i\)
at \(c=-i\) and \(-31/3\) at \(c=1\). Exchanging the two sites is
legitimate since the congruences \(a-pb=0\) and \(b-pa=0\) modulo \(q-1\)
are equivalent. It supplies the reflected test on \(E_2\).

### Computing the residue of the first contribution

Compute the universal scalar at \(c=1\). Write \(D=(1+4t^4)^{1/2}\).
Solving the cubic in the chosen parameter gives \(x(t)=(1+D)/(2t^2)\).
The invariant differential \(dx/(2y)\) gives
\(\lambda'(t)=1/D\), where \(z=\lambda(t)\). Hence
\[
 \lambda(t)=\sum_{j\ge0}(-1)^j\binom{2j}{j}\,t^{4j+1}/(4j+1).
\]
Through exponent \(p+2\) every denominator is a unit since \(p\equiv3\bmod4\).
Series reversion gives integral coefficients of \(t(z)/z\) through degree
\(p+1\). Its first nonconstant degree is four. Taking the logarithm in
this range uses denominators at most \(k<p\).

Put \(a=[z^{p-1}]\wp(z)\). The second derivative of
\(\log(\sigma(z)/z)\) is \(-\wp(z)+z^{-2}\). It follows that
\(pA\equiv-a\pmod p\), once \(a\) is known integral.
Change variables in the formal residue for \(a\) to obtain
\[
 a=\operatorname{Res}_t x(t)\lambda(t)^{-p}\lambda'(t)\,dt.
\]
The unit \(U=\lambda(t)/t\) is integral through degree \(p+1\),
and starts with \(1+O(t^4)\). In this truncation \(U^{-p}\equiv1\bmod p\)
by Frobenius, since \(4p>p+1\). Using
\(x(t)\lambda'(t)=(1+D^{-1})/(2t^2)\) proves
\[
 \bar a=\tfrac12[t^{p+1}]D^{-1}
       =\tfrac12(-1)^k\binom{2k}{k}\ne0.
\]
The last assertion follows from \(2k<p\).

### Calibrating the second contribution from the elliptic curve

For **each** aligned residue \(\bar c^d=-1\), choose \(u\) in an algebraic
closure of the residue field with \(u^4=\bar c\). The map
\(\psi:(y^2=x^3-x)\to E_{\bar c}\), \((x,y)\mapsto(u^2x,u^3y)\), is an isomorphism.
The trace of the source curve’s \(p\)-Frobenius is zero by pairing \(x\) with \(-x\)
in the quadratic character sum, so its \(q\)-Frobenius is \([-p]\).
Conjugating the target \(q\)-Frobenius by \(\psi\) gives the extra
automorphism associated to \(u^{q-1}=\bar c^d=-1\), namely \([-1]\).
Therefore \(\operatorname{Fr}_q=[p]\) on the twisted curve, in its
original parameter over \(\mathbb F_q\).

For any integral lift of this residue the curve has good reduction.
Its multiplication-by-\(p\) series in \(t\) has linear coefficient \(p\)
and reduction exactly \(t^q\). The Lubin–Tate isomorphism for the uniformizer
\(p\) now identifies its formal group with the Honda law by the integral
strict series \(h=t\circ L\). In the integral frame \(t\), the inverse of the rigidified
theorem-of-the-cube section has scalar the exponential of the third
difference of \(m_c\), pulled back by the elliptic logarithms. This scalar
identification uses the normalized sigma section, its leading coefficient and the negative
third-difference sign in (S.1),
as derived in §§4 and 10 of the local comparison. Substitution of \(h\)
therefore gives an integral unit. Averaging its logarithm over the original
torus amounts to the unique constant-one \((q-1)\)-st root of the product
of its torus translates. Since \(q-1\) is a unit, this root is integral.
This proves condition 1 for every aligned lift. The formal formulas for the
cubical section commute with scalar extension, and the rational generic-fiber
identity in the parameter \(c\) specializes coefficientwise.
[Local scalar comparison and both coboundaries](AlpogeEllipticCubicalB4.md)
[Hazewinkel, §§2 and 5](https://www.numdam.org/article/AST_1979__63__73_0.pdf)
[Ando–Hopkins–Strickland, (1.1), Theorem 2.55](https://doi.org/10.1007/s002220100175)

There is at least one aligned unit \(t_0\), since the square of a generator
of \(\mathbb F_q^\times\) has \(d\)-th power \(-1\).
For this unit \(C(t_0)\) is integral, so the two-term formula gives
\(pB=((pC(t_0))/t_0^k-pA)/t_0^d\in R\).
Reducing gives \(\overline{pB}=\overline{pA}\). Together with the
nonzero Laurent residue this proves the displayed formula for every \(c\).
It proves condition 2 implies 3, and condition 1 already implies 2.

### Verification scope

The accompanying Lean module verifies coprimality of the binomial factor,
the principal-kernel residue test for division by a uniformizer, and the
calibration equivalence. The complete Laurent calculation, elliptic
Frobenius, sigma-section identification and model theorem above are
manuscript proofs. Their Lean verification and external independent review
are `NOT_RUN`. These statements concern the model with coefficient ring
of residue order precisely \(p^2\).
[Formal declarations](AlpogeQuarticTwistDetection.lean)

An exact calculation from the Weierstrass recurrence recovered the two
residues independently at primes 3, 7, 11, 19, 23 and 31, through total
degree 992 in the last case. They were respectively 1, 4, 10, 12, 21
and 13. Checking all 2,024 nonzero residue classes at these six primes
gave the predicted condition. At prime 3 the separate ordinary
exponential and Frobenius computations through degree 32 gave 709
terms in each polarization, with zero failures for the aligned twist.
For the unit twist each had 425 nonintegral coefficients and 276 failed
Frobenius congruences. The three formal declarations built and passed
fresh kernel and transitive axiom checks under Lean 4.34.1.
[Reproducible arithmetic check](../../../scripts/verify_alpoge_quartic_twists.py)
