# First failure of the normalized elliptic theta test over an unramified extension

Let \(p\equiv3\pmod4\) be prime, \(q=p^2\), and let \(K/K_0\) be a finite
unramified extension of \(K_0=\mathbb Q_p(i)\). Let \(R\) be its ring of
integers and \(\phi\) its arithmetic \(q\)-Frobenius. Use the frame
\(t=-x/y\) on the curve \(y^2=x^3-cx\), the normalized sigma ratio
\(m_c(z)=\log(\sigma_c(z)/t(z))\), the original two-site torus average of
weight \((1,-p)\), and both additive coboundaries after substituting the
Honda logarithm \(L(T)=\sum_{j\ge0}T^{q^j}/p^j\). Denote the two resulting
exponentials by \(E_{c,1},E_{c,2}\). We consider units \(c\in R^\times\).
These are the explicit elliptic series in §III.5 of the November 21
exposition. Their residual coefficient integrality is a local model for
one input to the original arithmetic inequality.
[Rubinstein draft, pp. 88–89](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)
[Original site logarithms and conditions](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/OrbitPlaces.lean)

**Theorem.** Put \(d=(q-1)/4\). Integrality of every coefficient of
either exponential is equivalent to
\[
        c\in\mathcal O_{K_0}^{\times}\quad\text{and}\quad \bar c^d=-1 .
\]
The first nonintegral coefficient, when one exists, has the following
total degree. If \(\bar c^d\ne-1\), it occurs at \(q+p\).
If \(\bar c^d=-1\) and \(c\notin K_0\), put
\(s=v_p(c-\phi(c))\ge1\); it occurs at \(q^{s+1}+p\).
For \(N=q\) or \(q^{s+1}\) respectively, the particular coefficient
\([X^NY^{p-1}Z]E_{c,1}\) has valuation exactly \(-1\).
The second polarization has the corresponding permuted witness.
The original quadratic base is essential to any purported sufficiency
test using the first collision alone.

### Detecting the scalar by an integral theta series

Choose once a unit \(c_0\in\mathcal O_{K_0}\) with \(\bar c_0^d=-1\).
The aligned-case elliptic Frobenius, strict Honda coordinate and
normalized inverse cubical section give all-degree integrality of both
\(E_{c_0,i}\) over the quadratic base. Only this aligned case is used
below. Its proof does not require integrality for general twists.
[Elliptic classification over the quadratic base](AlpogeQuarticTwistDetection.md)
[Normalized cubical section, §10](AlpogeEllipticCubicalB4.md)

After a further finite unramified extension if needed, choose
\(u^4=c/c_0\). Such a root lifts a residue-field root by Hensel's lemma.
From the Laurent equation we have \(m_c(z)=m_{c_0}(uz)\) coefficient by
coefficient. Hence, with \(h=L^{-1}(uL)\),
\[
 E_{c,i}(X,Y,Z)=E_{c_0,i}(h(X),h(Y),h(Z)).
\]
This preserves the signs and the actual torus action. In particular
\(h(T)=uT+O(T^q)\). Put
\(F(T)=[Y^{p-1}Z]E_{c_0,1}(T,Y,Z)\). Then the corresponding slice for
\(c\) is precisely \(u^p F(h(T))\).
Here \(F(0)=0\) and \(F'(0)=p A c_0^{(p+1)/4}\) is a unit, with
\(A=(p+1)[z^{p+1}]m_1\). Indeed the only contribution to this linear
coefficient is the projected monomial \(U^pV\), polarized with
binomial coefficient \(p\). The residue of \(pA\) is computed below.
Thus \(F\) has an integral compositional inverse, and descent of this
one slice already detects integrality of \(h\).

Every nonconstant term of \(E_{c_0,i}\) has degree at least \(p+1\).
An admissible monomial in the exponent has both positive site degrees
\(a,b\) and \(a-pb\equiv0\pmod{q-1}\). When \(a+b\le p\), the
difference has magnitude less than \(q-1\), and \(a=pb\) is impossible.
Coboundaries, the Honda substitution and exponentiation preserve the
lower bound. Consequently if \(h\) first fails at degree \(N\), all
degrees below \(N+p\) of the entire exponential are integral. In the
indicated slice the coefficient at degree \(N\) is the nonintegral
coefficient of \(h\) times \(u^pF'(0)\), plus an integral element.

### Exact Honda depth

On zero-constant formal series define
\(B(g)=g-\phi(g)(T^q)/p\), with \(\phi\) acting on coefficients.
For integral \(a(T)\) of constant term zero, expand
\[
 B(L(a))=a+\sum_{j\ge1}
 \frac{(a^q)^{q^{j-1}}-(\phi(a)(T^q))^{q^{j-1}}}{p^j}.
\]
The difference \(a^q-\phi(a)(T^q)\) lies in \(pR[[T]]\). Each raising
to a \(p\)-th power raises the congruence precision by at least one, by the
binomial theorem. Thus each summand is integral, and only finitely many
affect a fixed degree. Conversely, if \(h\) is integral through degree
\(n-1\), insert its integral truncation \(a=h_{<n}\). Since \(L\) has
linear coefficient one and \(B\)'s second term raises the order by \(q\),
\[
 [T^n] B(L(h))-[T^n] B(L(a))=[T^n]h.
\]
This induction proves equivalence at every finite truncation, including
the valuation of the first failing coefficient. It is the scalar Honda case
of the functional-equation lemma with its coefficient filtration made explicit.
[Hazewinkel, Astérisque 63 (1979), §2, (2.3)–(2.7)](https://www.numdam.org/article/AST_1979__63__73_0.pdf)

For \(h=L^{-1}(uL)\) the defect is
\[
 B(uL)=uT+(u-\phi u)\sum_{j\ge1}T^{q^j}/p^j.
\]
If \(u\ne\phi u\), the first failing degree is exactly
\(N=q^{v_p(u-\phi u)+1}\), with valuation \(-1\). Otherwise \(h\)
is integral. Changing \(u\) by a fourth root of unity leaves this test
unchanged, since all fourth roots of unity belong to \(K_0\).
Now \(\bar u^{q-1}=(\bar c/\bar c_0)^d\), so failure of the twist
congruence gives \(v_p(u-\phi u)=0\). Under the twist congruence,
\(\bar u=\overline{\phi u}\ne0\). The remaining factor in
\(u^4-(\phi u)^4\) then reduces to \(4\bar u^3\ne0\).
Thus the valuation equals \(v_p(c-\phi c)\) including the value
infinity. The fixed field of \(q\)-Frobenius is \(K_0\), also after the
auxiliary unramified extension. Testing integrality in that extension
reflects integrality in the original field. This finishes the theorem.

### Computing both first-collision residues directly

For \(c=1\) write \(D_0=(1+4t^4)^{1/2}\),
\(U=\lambda(t)/t\), where \(z=\lambda(t)\) is the elliptic logarithm, and
\(J=(1+D_0^{-1})/2\). Solving the cubic gives
\(x=(1+D_0)/(2t^2)\), \(d\lambda=D_0^{-1}dt\) and
\[
 U=\sum_{j\ge0}\frac{(-1)^j\binom{2j}{j}}{4j+1}t^{4j}.
\]
For \(4\mid D>0\), write \(\mu_{D/4}=[z^D]m_1(z)\).
Changing variables in the residue for \([z^{D-2}]\wp(z)\) gives
\([t^D]JU^{1-D}\). Moreover Lagrange inversion applied to
\(-\log U(t(z))=\log(t(z)/z)\) gives
\(D[z^D]\log(t(z)/z)=[t^D]U^{-D}\).
Using the second derivative of \(\log(\sigma(z)/z)\) yields
\[
 D\mu_{D/4}=-\frac{[t^D]JU^{1-D}}{D-1}-[t^D]U^{-D}.                 \tag{1}
\]
This calculation needs no integral theta section.

Put \(k=(p+1)/4\), \(D=q+p\). In the range through degree \(D\),
write \(U=V+(e/p)t^{q-1}\), where \(V\) is integral and
\(e=(-1)^d\binom{2d}{d}/p\). Indeed if \(p\mid4j+1\), the units
digit of \(j\) in base \(p\) is \((3p-1)/4\); adding that digit to
itself gives a carry, so \(p\mid\binom{2j}{j}\) by the factorial
valuation formula. The only denominator divisible by \(p^2\) in range
is \(q\). All such singular coefficients except this one are therefore
integral.

In fact \(e\equiv-1\pmod p\). Write \(p=4m+3\),
\(d=mp+(3m+2)\), \(2d=(2m+1)p+(2m+1)\). Removing the multiples of
\(p\) from a factorial gives
\[
 (ap+b)!/p^a\equiv(-1)^a a!b!\pmod p\qquad(0\le a,b<p),
\]
since every complete block of nonmultiples has product \(-1\) by Wilson.
There is one more factor of \(p\) in \((2d)!\) than in \((d!)^2\).
Wilson also gives \(m!(3m+2)!\equiv(-1)^{m+1}\) and
\(((2m+1)!)^2\equiv1\), by pairing the upper tail with its negatives.
Taking the quotient proves the claim, since \(d\) is even.

For \(A=(p+1)\mu_k\), equation (1) at \(D=p+1\) gives
\(pA\equiv-J_{p+1}\), where \(J_{p+1}=[t^{p+1}]J\):
\(U^{-p}\equiv1\) through that degree. For
\(B=D\binom{D-1}{p-1}\mu_{D/4}\), insert \(V+(e/p)t^{q-1}\) into (1).
There are no quadratic exceptional terms since \(2(q-1)>D\).
After multiplication by \(p\) the two surviving contributions are
\[
 e[t^{p+1}]JV^{-D}+De[t^{p+1}]V^{-D-1}.
\]
The second vanishes mod \(p\), and \(V^{-D}\equiv1\) through degree
\(p+1\), since \(p\mid D\) and \(V=1+O(t^4)\).
Finally \(\binom{D-1}{p-1}\equiv1\) by comparing degree \(p-1\)
in \((1+t)^{p^2+p-1}\). Thus
\[
 pA\equiv pB\equiv-\tfrac12(-1)^k\binom{2k}{k}\ne0\pmod p
\]
for every inert prime, because \(2k<p\). This proves the residue
congruence directly and independently of the aligned-curve calibration.

### Scope and finite checks

In the quartic extension at \(p=3\) take \(a^2=1+i\). The reduction of
\(1+i\) is a nonsquare in \(\mathbb F_9\), so this extension is
unramified and \(\phi a=-a\). For \(c_0=-i\), the unit choices
\(u=a,1+3a,1+9a\) give first bad total degrees \(12,84,732\).
The checker evaluates every coefficient up to the predicted first
failure in the detecting slice directly from the Weierstrass recurrence
and the full Honda substitution at that precision. Each first failure
has valuation \(-1\), with the predicted residue after multiplication
by 3. The source's six pairs of summands, selected Gaussian twist valuations
\(0,0,2,0,0,0\), and untwisted failures have also been reproduced.
[Exact coefficient fixture](../../../scripts/verify_alpoge_twist_descent.py)

The finite logarithmic correction and integral inverse-coordinate step
are formalized in Lean. The comparison of the theta slice, the resulting
unramified-field classification and the full analytic inequalities are
manuscript arguments. They supply no uniform global estimate for (M).
The finite model examples are independent of the zeta function.
[Formal logarithm and detector](AlpogeHondaScalarDescent.lean)

The exceptional central binomial residue and its factorial-block identity
also have Lean proofs. Both declarations and the four declarations in
the logarithm module elaborated, passed fresh kernel replay, and audited
transitively to subsets of `propext`, `Classical.choice` and `Quot.sound`.
The all-degree theta comparison as a whole has formal status `NOT_RUN`.
[Formal central binomial residue](AlpogeHondaBinomialResidue.lean)
