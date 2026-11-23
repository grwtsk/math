# The exact convergence radius and first denominator of the elliptic theta model

Let \(p\equiv3\pmod4\) be prime, \(q=p^2\), \(\theta=1/(q-1)\),
\(d=(q-1)/4\), and \(O_0=\mathbb Z_p[i]\). Normalize \(v(p)=1\).
Use the elliptic parameter \(t=-x/y\), the normalized sigma ratio on
\(y^2=x^3-cx\), both additive coboundaries, and the original torus
projection of the two-site model. Its Honda logarithm is
\(L(X)=\sum_{j\ge0}X^{q^j}/p^j\). Write \(E_c\) for either
polarization, with the split variables first. Fix one aligned unit
\(c_0\in O_0\) satisfying \(\bar c_0^d=-1\), and take
\(u^4=c/c_0\) in \(\mathbb C_p\), with \(c\ne0\) integral.
All four choices differ by a unit of \(O_0\).
[Rubinstein et al., working draft of November 21, §III.5](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)
[Aligned cubical section in the stated frame](AlpogeQuarticTwistDetection.md)

**First failure.** If \(u\in O_0\), all coefficients are integral.
Otherwise put \(w=v(u)=l+\epsilon\), \(l=\lfloor w\rfloor\).

* When \(0<\epsilon<1\), put \(D=p+1\) and
  \(k=\lfloor D\epsilon\rfloor+1\). The first failing total degree is
  \(q^l(D+(q-1)k)\). A coefficient there has valuation \(D\epsilon-k\).
* When \(\epsilon=0\), write \(v_0=u/p^l\) and
  \(s+\delta=\max_{b\in O_0}v(v_0-b)\), \(s\) integral,
  \(0\le\delta<1\). The first failing total degree is
  \(q^l(q^{s+1}+p)\). A coefficient there has valuation \(-1+\delta\).

These formulas hold on **each even orbit**, with the shifted site
logarithms and every integral trace-dual basis in the orbit construction.
They concern the stated elliptic input. They include the nonunit twists,
for which the usual single-linear-block coefficient can conceal the first
denominator. At \(p=3\), for instance, \(c_0=-i\), \(c=-9i\) first
fails in total degree 28; its usual coefficients at degrees 12 and 84
have valuations 1 and \(-4\), respectively.

**Convergence.** For \(u\notin O_0\), put
\[
 S+e=\max_{b\in O_0}v(u-b),\qquad
 \lambda=q^{-S}(\theta-e/q),\qquad 0\le e<1 .
\]
The isotropic open radius of the full power series on each even orbit
is exactly \(p^{-\lambda}\). Normal convergence on the closed polydisc
of that radius fails. For every \(a>S\) both the two-site slice at
\((q^a,p-1,1)\) and its shifted even-orbit counterpart below have
valuation
\[
 p w+\theta-q^a\lambda
 =p w-\frac{q^{a-S}-1}{q-1}+e q^{a-S-1}.
\]
Their ratio has residue one. This identifies even the later, increasingly
large denominators after lower coefficients have already failed.

## The first one-variable coefficient and its scope

The quadratic equation in \(x\) obtained from \(t=-x/y\) gives
\(x=(1+\sqrt{1+4ct^4})/(2t^2)\). Substitution in \(dx/(2y)\)
gives the differential \(dt/\sqrt{1+4ct^4}\). Its integral
\(\ell_c(t)\) has coefficient
\((-1)^j\binom{2j}j c^j/(4j+1)\) at degree \(4j+1\).
Let \(t_c=\ell_c^{-1}\) and \(b_j=[z^{4j+1}]t_1(z)\).
For \(4j+1<q\) a denominator divisible by \(p\) has valuation one.
Writing \(p=4m+3\), the units digit of such \(j\) is \(3m+2\), so
doubling it gives a carry. The central binomial coefficient cancels
this denominator by the factorial valuation formula. At degree \(q\)
there is exactly one carry; deleting complete factorial blocks with
Wilson's congruence gives \(\binom{2d}{d}/p\equiv-1\pmod p\).
The full block computation is already kernel-verified in the repository.
Since \(d\) is even, the logarithm coefficient has residue \(-1\)
after multiplication by \(p\) at \(c=1\). For a strict series,
composition with its inverse at degree \(q\) adds the two degree-\(q\)
coefficients to an integral polynomial in lower coefficients. Those
lower inverse coefficients are integral by the same triangular recursion.
Hence \(p b_d\equiv1\pmod p\). Only two terms contribute to
\([X^q]t_c(L)=1/p+b_d c^d\), and the entire truncation through \(q\)
is integral exactly when \(c^d+1\in pO_{\mathbb C_p}\).
At 3 this is \((5+2c^2)/15\), giving \(1/5\) at \(-i\) and
\(7/15\) at 1. This reproduces the first-coordinate source argument,
including its unramified case. For every nonunit \(c\) this coordinate
fails already at \(q\), regardless of the markedly different theta
cutoff above.
[Formal exceptional binomial congruence](AlpogeHondaBinomialResidue.lean)
[Factorial computation](AlpogeHondaScalarDescent.md)

## The scaled Honda scalar at its boundary

Put \([a](X)=L^{-1}(aL(X))\). The Honda formal group law is integral
over \(O_0\), and \([b]\) is integral for \(b\in O_0\), by the scalar
functional-equation lemma. The aligned elliptic coordinate
\(B_0=t_{c_0}\circ L\) is strict and integral. Homogeneity of the
elliptic logarithm gives \(t_c(L)=u^{-1}B_0([u])\).
Similarly \(E_c=E_{c_0}([u](X),[u](Y),[u](Z))\). Every nonconstant
term of \(E_{c_0}\) has degree at least \(D=p+1\). Its slice
\(F=[Y^{p-1}Z]E_{c_0}\) is integral with \(F(0)=0\) and unit
\(F'(0)\). Consequently the same slice of \(E_c\) is \(u^p F([u])\).
[Scalar transport, degree and derivative](AlpogeHondaScalarDescent.md)
[Hazewinkel, Astérisque 63, §2](https://www.numdam.org/item/AST_1979__63__73_0/)

Choose a closest \(b\in O_0\) by compactness. Put \(a=u-b\), choose
\(\pi^{q-1}=p\) and \(v(\rho)=\lambda\). Such scales exist since
valuations of nonzero elements of \(\mathbb C_p\) are rational.
The series \(L(\pi X)/\pi\) is integral with reduction \(X+X^q\)
and its inverse reduces to \(I(T)=\sum_{j\ge0}(-1)^j T^{q^j}\).
The weights of the terms in \(W=aL(\rho X)/\pi\) are
\(S+e+q^j\lambda-j-\theta\). Their successive differences are
\((q-1)q^j\lambda-1\), so their minimum is zero exactly at \(S+1\)
and also at \(S\) when \(e=0\). Thus
\([a](\rho X)/\pi\) is integral with reduction \(I(\bar W)\).
If \(e>0\), \(\bar W\) is a nonzero monomial of degree \(q^{S+1}\).
If \(e=0\), choose \(\rho^{q^S}=\pi\). Then
\[
 \bar W=A(X^{q^S}+X^{q^{S+1}}),\qquad A=\overline{a/p^S}\notin\mathbb F_q.
\]
Indeed if \(A\in\mathbb F_q\) then a residue lift in \(O_0\) improves
the approximation to \(u\). In both cases every coefficient of
\(I(\bar W)\) at \(q^j\), \(j>S\), is nonzero: in the second case it
is \((-1)^{j-S-1}(A^{q^{j-S-1}}-A^{q^{j-S}})\).

For any one-variable integral \(B\) with zero constant term,
\[
 \frac{B([u](\rho X))-B([b](\rho X))}{\pi}
       \equiv B'(0)I(\bar W)\quad\text{in the residue field}.
\]
Indeed \([u]\) is the Honda group sum of \([b]\) and \([a]\). The
difference from \([b]\) is divisible by \([a]\) with quotient reducing
to one, because \([b](\rho X)\) and \([a](\rho X)\) reduce to zero.
The divided difference of \(B\) then reduces to its linear coefficient.
All operations here are formal coefficientwise. The integral baseline
term has weighted valuation at least \(q^j\lambda>\theta\) in the
specified degrees. This proves the claimed slice valuation and the
same exact open radius for \(t_c(L)\) when \(u\notin O_0\).
For unit \(u\) the first failure of the strict coordinate is at
\(q^{S+1}\): writing \([u]=[b]+_H[a]\), \(aL\) is integral below
that degree and is divisible by \(p\) there except possibly at
\(q^S\). In a nonlinear term of \(L^{-1}\) of order \(j\ge q\)
at most \(q-1\) factors can have this last degree, and
\(j-(q-1)\ge(j-1)/(q-1)\) absorbs the inverse coefficient loss.
For \(S=0\) the lower coefficients follow directly from
\([u]=uX+O(X^q)\). For \(u\in O_0^\times\) the coordinate and its
strict inverse are integral to all degrees.

In the three-variable series all inputs at scale \(\rho\) are divisible
in valuation by at least \(\lambda\), since \(\lambda\le\theta\).
Thus its scaled coefficients are bounded. More precisely, subtracting
the integral baseline \(E_{c_0}([b],[b],[b])\) gives weighted valuation
at least \(\theta+p\lambda\), by telescoping a monomial of degree at
least \(p+1\) with one changed factor. Bounded coefficients give
convergence on each strictly smaller closed polydisc. The slice
coefficients at \(q^j\) have constant weighted valuation after adding
the other \(p\) degrees; this prevents convergence on the boundary.
The argument for the full even-orbit series is given below.

## First total degree for fractional valuation

For \(0<\epsilon<1\), put \(\beta=\theta/q^l\) and choose
\(\rho_0^{q^l}=\pi\). The two lowest weights in \(uL(\rho_0 X)\)
are at \(l,l+1\), both \(\epsilon+\theta\). After division by the
coefficient of the first, its reduction is \(X^{q^l}+X^{q^{l+1}}\).
The composition with \(L^{-1}\) has the same reduction, since
\(v([z^j]L^{-1})\ge-(j-1)\theta\) and \(\epsilon>0\). After
normalizing by the \(D\)-th power of that coefficient, the scaled
\(E_c-1\) therefore reduces to the aligned homogeneous degree-\(D\)
part evaluated on these binomials in each variable.

The sharper integral cutoff between the two adjacent breaks needs
integer degree information. In the series \(E_{c_0}(L^{-1},L^{-1},L^{-1})-1\)
every coefficient in total degree \(J\ge D\) has valuation at least
\(-\lfloor(J-D)/(q-1)\rfloor\). This follows termwise from the inverse
bound and the integral aligned model over the **unramified** base.
Substitute \(uL\) in each variable. A term with logarithm levels
\(j_1,\ldots,j_J\) has valuation at least
\(Jw-\sum j_i-\lfloor(J-D)/(q-1)\rfloor\).
For this lower bound to be negative one needs
\[
 \sum_i(j_i-l)\ge \lfloor J\epsilon\rfloor+1-
                          \lfloor(J-D)/(q-1)\rfloor .
\]
For every integral \(j\ge0\),
\(q^j\ge q^l(1+(q-1)(j-l))\), by the binomial theorem above \(l\)
and a nonpositive right side below it. Summing gives total degree
at least \(q^l(D+(q-1)k)\), including when \(D\epsilon\) is integral.

At this degree a coefficient attains valuation \(D\epsilon-k\).
Indeed the degree-\(D\) part has precisely the terms
\(X^iY^{p-i}Z\), \(1\le i<p\), all with unit coefficients: the
projected terms in the two original variables have exponents \((p,1)\)
and \((1,p)\); the split kills the latter. The former gives
\(A c_0^{(p+1)/4}\binom pi\) with \(v(A)=-1\).
Choose the upper power for whole blocks of multiplicities totaling
\(k\) and the lower power for the others. For \(k<p\) take
\(i=k\) and the first block; for \(k=p\) take both split blocks;
for \(k=p+1\) take all three. No other source monomial or mixed
choice supplies the same exponents, since after division by \(q^l\)
the exponents modulo \(q-1\) determine the initial multiplicities,
each strictly smaller than \(q-1\). This proves the claim, including
sharpness rather than just a bound for a slice.

## First total degree for integer valuation

Write \(u=p^l v_0\) with \(v_0\) a unit outside \(O_0\).
Apply the boundary argument to \(v_0\), with its \(s,\delta\), radius
parameter \(\lambda_0\) and \(D'=q^{s+1}+p\).
For this unit twist every degree below \(D'\) is integral, and
multidegree \((q^{s+1},p-1,1)\) has valuation \(-1+\delta\).
This follows by the lower integral truncation of the scalar proved
above, the minimum order \(p+1\), and the unit derivative of the
slice. The baseline subtraction proves that at every degree \(J\ge D'\)
all valuations are at least
\(-1+\delta-(J-D')\lambda_0\).

The endomorphism \([p^l]\) is integral and reduces to \(X^{q^l}\):
use \(pL=pX+L(X^q)\) and the integral formal group to see
\([p]\equiv X^q\pmod p\), since \(L^{-1}(pX)\equiv0\pmod p\).
The coefficients outside the unique residual monomial lie in \(pO_0\).
Substitute \([p^l]\) in each variable of the unit-twist exponential.
For an output of degree below \(q^l D'\), a term of input degree
\(J\ge D'\) needs at least \(J-D'+1\) factors of degree below \(q^l\).
They supply that many powers of \(p\); the bound above with
\(\lambda_0<1\) proves integrality. At degree \(q^l D'\) the terms
of \(J>D'\) have valuation strictly greater than \(-1+\delta\).
For \(J=D'\), all choices except the pure \(q^l\)-th power in
every factor gain at least one power of \(p\). Hence the dilated
witness \(q^l(q^{s+1},p-1,1)\) has the claimed valuation.

## Transport on each even orbit

Use the integral three-block substitutions and exact finite product
\(E_{\rm orb}^M=\prod_{\eta,j}E_c(A,B,C)\) for the torus quotient
of order \(M\) prime to \(p\). Each substitution is zero-constant and
linear on each individual site through degree \(p-1\); the nonlinear
terms begin at degree \(q\). This follows directly from the shifted
Honda logarithms. In a split block their tangents are
\(\sigma^h v_j\), with \(v_j=\eta\omega_j^*\), and in the singleton
block they are \(\sigma^h v'_j\), with \(v'_j=\eta^{-1}\omega_j\);
the odd split exchanges the dual roles. Coefficients come from the
unramified basis before base change. Tame extraction of the constant-one
\(M\)-th root preserves integral truncations and bounded coefficients
after scaling (the degree recursion divides only by \(M\)).
[Orbit product, torus and trace-dual coordinates](AlpogeOrbitPolarization.md)

At the first failing total degree, products of lower terms are integral.
Only three linear tangent factors raised to the chosen exponents can
affect its leading residue, because the blocks are disjoint and we
test only one site in each block. For the fractional witness write
its exponents as \((i q^{t_1},(p-i)q^{t_2},q^{t_3})\), with
\(t_j\in\{l,l+1\}\). Choose even split site indices \(h_1,h_2\)
and odd singleton \(h_3\) so that
\(h_1+2t_1=h_2+2t_2=R\), \(h_3+2t_3=R+1\) modulo the even orbit
length. In the residue field the multiplier becomes
\((\sigma^R v_j)^p\sigma^{R+1}v'_j=\sigma^{R+1}(v_jv'_j)\).
For the integer witness use multiplicities \((1,p-1,1)\) and
\((t_1,t_2,t_3)=(l+s+1,l,l)\). Change both parities for the other
split. The trace-dual identity \(\sum_j\omega_j\omega_j^*=1\)
shows that the sum is one for each coset, including when the prime
divides the relative degree. Division by \(M\) leaves the two-site
leading residue unchanged.

At every later degree \((q^a,p-1,1)\), the singleton variable is
linear. Thus extracting it from the product or its \(M\)-th power
is *exactly additive*, since every nonconstant term involves this
block. The other low block supplies only its tangent to power \(p-1\).
The remaining one-variable series per summand is \(u^p F([u](A(X)))\).
Subtract the integral baseline before the scalar \(u^p\) and rescale
the first variable by \(\rho\). Since \(A(\rho X)/\rho\) reduces to
its linear tangent, the divided difference computed at the convergence
boundary again has the original nonzero residual coefficient at
\(q^a\), multiplied by the tangent to that power. The integral
baseline cannot contribute at this valuation, since \(q^a\lambda>\theta\).
The same trace contraction with \((t_1,t_2,t_3)=(a,0,0)\) proves
the assertion about every later valuation and the exact radius.
Here the numerator and denominator of the residue comparison both
include \(u^p\), even if \(v(u)>0\).

## Evidence and remaining scope

The companion Lean module proves the global weighted minimum, the integer
supporting-line bound, the coefficient recurrence of the full residual
power-series equation, nonvanishing along its Frobenius tail, and the
effect of a linear reduction on coefficients of a substituted series.
The identification with the elliptic and orbit data and the full
analytic theorems above remain manuscript results. They use the earlier
aligned elliptic comparison, without a global zero-free input.
[Lean source](AlpogeHondaConvergence.lean)

The exact fixture compares two rational recurrences for the inverse
elliptic logarithm at six inert primes, computes all terms in the first
failing two-site jets at 3 for three fractional scalar valuations,
and computes three consecutive collision levels on the quartic and sextic
cyclotomic orbits in both polarizations. The required global normalized
theta lifts, remaining geometric suppliers of (M), and the exact
Hilbert–Pólya identity require separate arguments.
[Exact fixture](../../../scripts/verify_alpoge_honda_convergence.py)

At Lean source blob `a6d2d8309531036d791c6a96465ce2cbcae304b9`, all 7 public declarations built and passed fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The only returned axioms were `propext`, `Classical.choice` and `Quot.sound`. The full-jet tests found the first denominator in degrees 20, 28 and 36 for the three fractional examples. The exact integer-dilation coefficient at (81,18,9) had valuation −1 and its lower rectangular coefficient range was integral.
