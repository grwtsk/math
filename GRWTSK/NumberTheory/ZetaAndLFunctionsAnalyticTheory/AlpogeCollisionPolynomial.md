# Collision polynomials for the normalized elliptic theta test

Fix an odd prime \(p\equiv3\pmod4\), put \(q=p^2\),
\(k=(p+1)/4\), \(d=(q-1)/4\), \(m_j=(q^j-1)/(q-1)\).
Let \(K_0=\mathbb Q_p(i)\), with integers \(O_0\) and valuation
\(v(p)=1\). Take any unit \(c\) in the integers of \(\mathbb C_p\).
Use the two-site normalized elliptic exponential \(E_c\) of the first
polarization for \(y^2=x^3-cx\), frame \(t=-x/y\), weights \((1,-p)\),
and the Honda logarithm \(L(X)=\sum_{j\ge0}X^{q^j}/p^j\). Define
\[
 C_r(c)=[X^{q^r}Y^{p-1}Z]E_c=c^k P_r(c^d),\qquad r\ge1.
\]
The second polarization has the exchanged coefficient. These are
specific coefficients of the model in the November 21, 2026 exposition
of the theta argument. They depend on the elliptic differential, the
frame, and the torus projection.
[Rubinstein et al., §III.5](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)
[Scalar transport and both polarizations](AlpogeHondaScalarDescent.md)

**Theorem.** Write \(\mathcal A=-1+pO_0\) and \(U=c^d\).
Exactly \(q^{r-1}\) roots of \(P_r\) are units. They are simple,
belong to \(\mathcal A\), and represent its classes modulo \(p^r\)
once each. The remaining \(m_{r-1}\) roots, counted with multiplicities,
have positive valuation. In particular
\[
 C_r(c)\text{ is integral}\quad\Longleftrightarrow\quad
       \exists A\in\mathcal A,\ v(U-A)\ge r.
\]
A single coefficient decides integrality of **every** coefficient of
the model through total degree \(q^r+p\). The entire sequence decides
all-degree integrality, equivalently \(c\in O_0^\times\) and
\(\bar c^d=-1\). No unramified hypothesis on the input is needed.

There is also an exact denominator after failure. If \(U\notin\mathcal A\),
let \(\tau=\max_{A\in\mathcal A}v(U-A)=s+\delta\), with
\(s\in\mathbb Z_{\ge0}\), \(0\le\delta<1\). The maximum is attained by
compactness. For all \(r>s\),
\[
             v(C_r(c))=-m_{r-s}+\delta q^{r-s-1}.
\]
In particular the first failing total degree is \(q^{s+1}+p\) and its
displayed coefficient has valuation \(-1+\delta\).

## Arithmetic coefficients and global reduction

Let \(\mu_j=[z^{4j}]\log(\sigma_1(z)/t_1(z))\) in the specified
normalization. The exponent has positive degree in the unsplit
variable, whose degree here is one, so the exponential contributes
only its linear term to this coefficient. The torus congruence and the
binomial split give
\[
 [U^h]P_r=(4j)\binom{4j-1}{p-1}\mu_j
      [X^{q^r}]L(X)^{1+(q-1)h},\qquad
 j=k+dh,\quad 0\le h\le m_r.
\]
Indeed the unsplit site contributes one linear factor, the split site
has degree \(4j-1\equiv p\pmod{q-1}\), and its second block supplies
\(p-1<q\) linear factors. This gives a polynomial over \(\mathbb Q\)
of degree at most \(m_r\).

For aligned \(c_0\in O_0^\times\) with \(\bar c_0^d=-1\), the elliptic
Frobenius and inverse cubical section give an integral \(E_{c_0}\).
Write \(F(X)=[Y^{p-1}Z]E_{c_0}\). It has zero constant term and
\[
 F'(0)=pA c_0^k,\qquad
 \kappa=\overline{pA}=-(-1)^k\binom{2k}k/2\ne0.
\]
Here \(A=(p+1)\mu_k\); the nonvanishing uses \(2k<p\).
For an indeterminate \(u\), twist transport and the linear terms in
the other two blocks give
\(C_r(c_0u^4)=u^p[X^{q^r}]F(L^{-1}(uL(X)))\).
These two model-specific facts are established in the earlier
manuscripts, including the sign of the cubical section and the computation
of the Laurent residue.
[Aligned comparison](AlpogeQuarticTwistDetection.md)
[Unit derivative and scalar transport](AlpogeHondaScalarDescent.md)

Choose \(\pi^{q-1}=p\). The series \(L(\pi X)/\pi\) and its
compositional inverse are integral. The former reduces to \(X+X^q\)
since its level \(j\) coefficient is \(p^{m_j-j}\). The inverse
therefore reduces to \(\sum_{j\ge0}(-1)^jX^{q^j}\), as direct
composition shows. Also \(F(\pi X)/\pi\) reduces to \(F'(0)X\).
Applying these identities over the polynomial ring in \(u\) gives
\[
 p^{m_r}C_r(c_0u^4)\equiv
 F'(0)(-1)^{r-1}u^p(u^{q^{r-1}}-u^{q^r})\pmod\pi.
\]
Coefficientwise integrality descends through \(U=c_0^d u^{q-1}\)
because its distinct powers are distinct monomials with unit coefficients.
Dividing by \(c_0^k u^{p+1}\) and using \(m_{r-1}\equiv r-1\pmod2\)
gives a polynomial over \(\mathbb Z_{(p)}\) with reduction
\[
             p^{m_r}P_r(U)\equiv
               \kappa U^{m_{r-1}}(1+U)^{q^{r-1}}\pmod p .
\]
In particular its leading coefficient is a unit and its degree is
exactly \(m_r\).

## Reduction on every last residue disc

Suppose \(r\ge2\) and fix \(A_*\in\mathcal A\). There is a unit
\(c_*\in O_0\) with \(c_*^d=A_*\): the residue roots of
\(x^d=-1\) are in \(\mathbb F_q\) since \(2d\mid q-1\), and they
are simple. Use this aligned lift as the base for \(F\).
Take any integral \(T\) in any finite unramified extension of \(K_0\)
and the unique \(u\equiv1\pmod p\) with
\(u^{q-1}=1+p^{r-1}T/A_*\). If \(\phi\) is its arithmetic
\(q\)-Frobenius then
\[
 (u-\phi u)/p^{r-1}\equiv
 (T-T^q)/((q-1)A_*)\equiv T-T^q\pmod p .
\]
For \(h=L^{-1}(uL)\) apply \(B(g)=g-\phi(g)(X^q)/p\).
Explicitly \(B(L(h))=uX+(u-\phi u)\sum_{j\ge1}X^{q^j}/p^j\).
For integral zero-constant \(a\), \(B(L(a))\) is integral, since
\(a^q-\phi(a)(X^q)\) is divisible by \(p\) and taking successive
\(p\)-th powers increases the congruence precision. Comparing with
each lower truncation of \(h\) proves by induction integrality below
\(q^r\), and at degree \(q^r\) gives
\(p[X^{q^r}]h\equiv (u-\phi u)/p^{r-1}\pmod p\).
Thus \(u^p F'(0)\) is the only multiplier of a possible denominator in
the transported slice. Dividing by \((c_*u^4)^k\) gives
\[
        pP_r(A_*+p^{r-1}T)\equiv \kappa(T-T^q)\pmod p.
\]
This is coefficientwise. Indeed the left side is integral-valued in
every finite unramified extension. A negative minimum coefficient
valuation would, after clearing it, give a nonzero residual polynomial
vanishing on the infinite field \(\overline{\mathbb F}_q\). The same
argument applied to the difference proves the claimed reduction.
The integral correction is the scalar functional-equation calculation.
[Hazewinkel, Astérisque 63 (1979), §2](https://www.numdam.org/item/AST_1979__63__73_0/)

Hensel's lemma gives one simple unit root above each of the \(q\)
residue choices of \(T\) on each of the \(q^{r-2}\) discs of
\(\mathcal A\bmod p^{r-1}\). For \(r=1\) use the simple root in the global
reduction directly. Dividing the globally integral polynomial by its
unit leading coefficient gives a monic polynomial. Factoring over
\(\mathbb C_p\) and reducing shows exactly \(m_{r-1}\) roots over zero
and \(q^{r-1}\) roots over \(-1\), with multiplicities. The simple
roots already found account for the entire unit part.

## Valuations and ramified transfer to the full exponential

For \(U\) a unit, the roots over zero contribute valuation zero.
The leading coefficient contributes \(-m_r\). If \(U\) equals a unit
root the integrality test is immediate. Otherwise let \(\alpha\) be
a closest unit root with \(t=v(U-\alpha)\). For every other unit root
\(\beta\), ultrametricity and maximality give
\(v(U-\beta)=\min(t,v(\alpha-\beta))\), also in the equality case.
For each integer \(1\le j\le r\) there are \(q^{r-j}\) roots congruent
to \(\alpha\) modulo \(p^j\), including \(\alpha\). At \(t=r\) the sum
of the truncated contacts is consequently \(\sum_{j=1}^r q^{r-j}=m_r\).
It increases strictly with \(t\), since \(\alpha\) contributes \(t\)
and every other summand is nondecreasing. Thus integrality is equivalent
to \(t\ge r\), equivalently to membership in one of the stated discs.
For \(r>\tau\) the closest root has \(t=\tau\) since the roots represent
every class in \(\mathcal A\bmod p^r\). Summing the first \(s\) integer
layers and the fraction \(\delta\) of the next gives the denominator
formula. For an unramified input all distances are integers; after the
first failure the valuations are \(-1,-(q+1),-(q^2+q+1),\ldots\).

Suppose the level-\(r\) test passes. Choose \(A\in\mathcal A\) within
precision \(r\) of \(c^d\) and a \(d\)-th root \(c_*\) of \(A\) with
the residue of \(c\). Then \(v(c-c_*)\ge r\), since \(d\) is a unit.
Choose the fourth root \(u\) of \(c/c_*\) with \(v(u-1)\ge r\).
In the integral Honda formal group the coordinate
\(h=L^{-1}(uL)\) is the group sum of \(X\) and \(L^{-1}((u-1)L)\).
We show the latter integral below degree \(q^{r+1}\), over the given
ramified field. In this range every coefficient of \((u-1)L\) is
integral, and all except possibly the one at \(q^r\) are divisible
by \(p\). From the \(\pi\)-rescaling above,
\(v([X^j]L^{-1})\ge -(j-1)/(q-1)\); only \(j\equiv1\pmod{q-1}\)
occur by root-of-unity symmetry. In a nonlinear term \(j\ge q\)
fewer than \(q\) of its input factors can have degree \(q^r\).
The other factors supply valuation at least
\(j-(q-1)\ge(j-1)/(q-1)\), as required. The linear term is integral.
For the initial case before the first test, \(h=uX+O(X^q)\) for any
unit fourth root and any aligned base.

The nonconstant terms of the aligned exponential have total degree at
least \(p+1\), by the torus congruence with both site degrees positive.
Consequently this transport makes every term of degree less than
\(q^{r+1}+p\) integral whenever the level-\(r\) test passes. Failure
at level \(r\) is already witnessed in degree \(q^r+p\). Finally
\(\mathcal A\) is closed, so passing every level forces \(c^d\in\mathcal A\);
all its \(d\)-th roots belong to \(O_0\) by the simple-root argument.
This proves the asserted all-degree equivalence.

## All roots, all scalar fibers, and a polynomial basis

A single calculation on the scalar line also resolves the entire part
of the Newton polygon above zero. Fix the aligned \(c_0\) and set
\[
 D_r(u)=[X^{q^r}]F(L^{-1}(uL(X)))=c_0^k uP_r(c_0^d u^{q-1}).
\]
The equality follows by cancellation in a polynomial ring, including
at \(u=0\). For any \(b\in O_0\) replace \(u\) in the Honda defect
calculation by \(b+p^{r-1}T\). Since \(\phi b=b\), for \(r\ge1\)
it now gives, coefficientwise,
\[
       Q_b(T)=pD_r(b+p^{r-1}T)\equiv F'(0)(T-T^q)\pmod p.
\]
The argument at \(r=1\) also follows from the global rescaling and
\(\bar b^q=\bar b\). For \(b\in O_0\), \(h_b\) and \(D_r(b)\) are integral
by the same defect induction since \(b-\phi b=0\). Thus on every
disc centered at \(b\) modulo \(p^r\),
\[
 D_r(b+p^rT)=D_r(b)+Q_b'(0)T+pR_b(T),\qquad R_b\in O_0[T],
 \quad \overline{Q_b'(0)}=\overline{F'(0)}\ne0 .
\]
This map in the variable \(T\) is an isometry of the integer ring onto
itself (subtract two values for the isometry and lift the unique simple
residue root for surjectivity). This works over \(O_{\mathbb C_p}\) by
contraction as well. Consequently for **every** \(w\in O_0\),
\(D_r(u)-w\) splits into \(q^r\) simple roots in \(O_0\), exactly one
in each class modulo \(p^r\). The degree is exactly \(q^r\).

Take \(w=0\). One root is zero, and multiplication by the
\((q-1)\)-st roots of unity acts freely on the others. The map
\(u\mapsto U=c_0^d u^{q-1}\) identifies their orbits with the
simple roots of \(P_r\). On the shell \(v(u)=j<r\) raising its unit
part to the \((q-1)\)-st power maps the residue-unit group modulo
\(p^{r-j}\) onto the principal units with precisely that torsion
kernel. This follows by Hensel lifting on principal units and the
decomposition into Teichmüller units and principal units. Hence for
each \(j=0,\ldots,r-1\) there are exactly \(q^{r-j-1}\) simple roots
with \(v(U)=(q-1)j\), all in \(K_0\). Their scaled values
\(p^{-(q-1)j}U\) represent \(\mathcal A\bmod p^{r-j}\) once each.
Since \(P_r\) is rational, Frobenius permutes the roots by permuting
these classes. The number of fixed classes in that shell is
\(p^{r-j-1}\), using the unramified integers
\(O_0=\mathbb Z_p[i]\). Thus exactly \((p^r-1)/(p-1)\) roots are in
\(\mathbb Q_p\); all other irreducible factors over \(\mathbb Q_p\)
have degree two.

The scalar calculation also decides the all-degree question for
nonunit parameters in the coefficientwise family. Let \(c\ne0\)
and choose \(u^4=c/c_0\). All four choices differ by units of \(O_0\).
If \(u\in O_0\), integral transport gives the full two-site exponential.
For integral \(u\notin O_0\), apply the root-contact argument to the
\(q^r\) scalar roots representing *all* of \(O_0\bmod p^r\).
The leading coefficient of \(D_r\) has valuation \(-m_r\);
with \(s+\delta=\max_{b\in O_0}v(u-b)\) the same layer sum gives
\(v(D_r(u))=-m_{r-s}+\delta q^{r-s-1}\) for \(r>s\).
This tends to minus infinity, so the fixed shift
\(v(C_r(c))=p\,v(u)+v(D_r(u))\) cannot restore integrality at
every level. When \(v(u)<0\), all roots of \(D_r\) are integral and
\(v(D_r(u))=-m_r+q^r v(u)\), with the same conclusion.
Thus **for the entire coefficientwise elliptic family**, all collision
coefficients are integral exactly when every coefficient of the
exponential is integral, equivalently when \(c=0\) or
\(c=p^{4j}c_*\) with \(j\ge0\), \(c_*\in O_0^\times\),
\(\bar c_*^d=-1\). At zero the formal polynomial specialization is
the constant one. For a nonunit, the extra factor \(u^p\) matters
for the first failed level. The locus for this coefficientwise extension
does not assert good reduction for the specialized elliptic curve.

Finally the scalar polynomials supply a regular \(O_0\)-basis of
\(\operatorname{Int}(O_0)=\{f\in K_0[X]:f(O_0)\subset O_0\}\).
Take \(D_0=F'(0)X\). If \(n=\sum_i n_i q^i\) in base \(q\),
\(B_n=\prod_i D_i^{n_i}\) has degree \(n\), is integer-valued,
and has leading valuation
\(-\sum_i n_i m_i=-\sum_{j\ge1}\lfloor n/q^j\rfloor\).
For completeness, enumerate residue digits in \(O_0\) starting at zero
and let \(a_n\) have the base-\(p\) expansion with digits indexed by
the base-\(q\) expansion of \(n\). In the first \(n\) points every
residue class modulo \(p^j\) occurs at least \(\lfloor n/q^j\rfloor\)
times, with equality for the class of \(a_n\). The Newton polynomial
\(\prod_{h<n}\frac{X-a_h}{a_n-a_h}\) is therefore integer-valued and has
the same leading valuation as \(B_n\). Interpolation at successive
\(a_n\) proves the Newton polynomials form a basis; triangular change
of basis with unit diagonal entries proves the assertion for \(B_n\).
This identifies an integral interpolation basis extracted from the
actual normalized elliptic series. The general regular-basis method
belongs to the theory of orderings in a discrete valuation ring.
[Bhargava, J. reine angew. Math. 490 (1997), 101–127](https://doi.org/10.1515/crll.1997.490.101)

## Checks and limits

At \(p=3,r=2\) the reduced polynomial on the disc centered at \(-1\)
is \(T-T^9\). Direct expansion gives
\[
 C_2(-i)=
 i\,7109870427383233146882397592536214309/
 9225341050208863777507671356201171875,\qquad v_3(C_2(1))=-10.
\]
The fixture uses the elliptic differential equation for the moments,
then enumerates partitions of the Honda degree. It checks both valuation
vectors from the degree-84 source calculation, all 50 aligned Gaussian
controls in its box, the unit and scalar disc reductions, every Newton
polygon shell, and fractional
valuations in Eisenstein extensions. These tests compare actual rational
coefficients with the general proof. They do not supply it.
[Exact coefficient fixture](../../../scripts/verify_alpoge_collision_polynomial.py)

The companion Lean source proves the two Frobenius monomials, their
coefficient in the truncated rescaled inverse, the additive root-contact
threshold, and the sublevel criterion for a product of linear factors
over any nonarchimedean normed field. The elliptic identity,
Hensel count, full ramified descent, global inequality (M) and RH have
no complete Lean verification here. The all-degree criterion uses the
aligned cubical-section comparison in the specified frame. General theta
series with independent high coefficients need not satisfy it, and the
original global theta lifts still require independent arithmetic input.
[Lean declarations](AlpogeCollisionPolynomial.lean)

At Lean source blob `024cec573f3ab2b22fce28067c97bc5ba7392fe6`, the six public declarations passed native elaboration, fresh kernel replay, and transitive axiom auditing with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The audits returned only `propext`, `Classical.choice` and `Quot.sound`. The exact rational fixture passed at levels 1–3 for 3 and levels 1–2 for 7.
