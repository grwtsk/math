# An integral secant formula and a twelve-degree test for the elliptic sigma cube

Let \(U_c\) be the normalized, **unprojected** three-variable sigma cube of
\(y^2=x^3-cx\) in the parameter \(t=-x/y\). In Rubinstein's two-site
example the two polarized units are obtained from this cube by the
specified Honda coordinate changes, finite torus norms and prime-to-\(p\)
roots. We compute the cube on the entire formal chart using only
inversions of series with constant one. Its coefficients are integral
over \(\mathbb Z[c]\). At every base ring, the three numbers
\(5(c-e),c^2-e^2,c^3-e^3\) generate the exact ideal of all coefficient
differences of \(U_c,U_e\); in particular degrees through twelve detect
all congruences between these cubes. [Rubinstein et al., November 21 exposition,
§III.5](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)
· [Normalized cubical frame, §10](AlpogeEllipticCubicalB4.md)

## Cancelling the determinants on the whole formal chart

Work first with three indeterminates \(x,y,z\) denoting **local parameters**,
distinct from the affine Weierstrass coordinates. For a variable \(t\) set
\[
 v_t=t^2(1-cv_t^2),\quad C_t=1-cv_t^2,\quad w_t=t v_t.
\]
The equation determines \(v_t\in t^2\mathbb Z[c][[t]]\) uniquely
coefficient by coefficient. In Weierstrass coordinates \(v_t=1/x_E\),
\(w_t=-1/y_E\). For a pair \(x,y\) use the following expressions:
\[
 \begin{split}
 K_{xy}&=\frac{C_xC_y}{1+c v_xv_y},&
 a&=v_x+y(x+y)K_{xy},& b&=-xy(x+y)K_{xy},\\
 S_{xy}&=1+\frac{2caxyK_{xy}}{1-ca^2},&
 F&=(x+y)S_{xy}.
 \end{split}                                                     \tag{1}
\]
Here \(a,b\) always refer to the indicated ordered pair in (1);
evaluating \(S_{Fz}\) uses a new pair. The following formula gives the
positive third difference of \(\log(\sigma/t)\):
\[
 \boxed{\displaystyle
 U_c(x,y,z)=
 \frac{C_xC_yC_z(1-ca^2)}
      {(1+cz(w_z+az+b))S_{Fz}}\,
 \frac{S_{xy}S_{xz}S_{yz}}{K_{xy}K_{xz}K_{yz}} .}                 \tag{2}
\]
Every denominator is a unit before \(c\) is specialized. Thus the
resulting series specializes even at characteristic two or at a
singular cubic. At a singular specialization this asserts an integral
formal identity for the specialization of (2); an elliptic scheme at that
fiber is unnecessary.

Indeed \(v_y-v_x=(y^2-x^2)K_{xy}\) by the defining quadratic. The chord
in the chart \((t,w)\) has equation \(w=at+b\). Substituting this into
\(w=t^3-ctw^2\) gives
\[
 P(t)=(1-ca^2)t^3-2cabt^2-(a+cb^2)t-b .
\]
Its first two roots are \(x,y\). The sum of all three roots and
negation \(t\mapsto-t\) show the third root is \(-F\), so \(F\) is
the formal group sum. Put
\(D=(w_z-az-b)/((z-x)(z-y))\) temporarily in the fraction field.
Subtract the curve equation at \(w_z\) and the equation evaluated on
the chord at \(az+b\). Factoring \(P(z)\) gives
\[
 D(1+cz(w_z+az+b))=(1-ca^2)(z+F).
\]
In particular \(D/F(F,z)=(1-ca^2)/((1+cz(w_z+az+b))S_{Fz})\),
where \(F(F,z)=(F+z)S_{Fz}\) denotes the formal group sum in three
variables. This cancels even the divisor at which the sum of the points
is zero, as well as the two collision divisors used to define \(D\).

To fix the scalar, use AHS equation (1.1) and Definition 2.56 in their
rigidified ideal line. In the chart \([-t:1:-w_t]\) each cyclic two-row
minor is \(t_i t_j(t_j-t_i)(t_j+t_i)K_{ij}\). The three-row alternating
determinant, with the sign convention of the frame in §10, is
\(-\prod_{i<j}(t_j-t_i)D\). Substitution in the determinant expression
and division by the full \(t\)-frame gives the reciprocal of
\[
 (D/F(F,z))\prod_i(w_i/t_i^3)
                    \prod_{i<j} (F(t_i,t_j)/(t_i+t_j))/K_{ij}.
\]
The sign is fixed by the unit constant coefficient and the rigidified
first jet at zero. The AHS scalar is the **negative** third difference
in the exponential; the displayed expression is its inverse, exactly
the positive cube in (2). The cancelled expression is regular on the
formal chart, so the universal identity specializes also at coincident
parameters. This is an independent check of the source argument's
normalization, with the division replaced by explicit unit factors.
[Ando, Hopkins and Strickland, (1.1), Definition 2.56 and Proposition
2.57](https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/musix2.pdf)

## Exact ideal of twist differences

The coefficient at total degree \(4j>0\) in (2) is an integer multiple
of \(c^j\), and all other positive degrees vanish. Indeed rescaling
every input \(t\mapsto u t\) in (1) changes \(v_t\) to
\(u^2 v_t\) for the scaled parameter \(u^4c\), the chord slope and
intercept to \(u^2a,u^3b\), and the formal sum to \(uF\). All
dimensionless factors in (2) consequently evaluate at \(u^4c\).
The identity \(U_c(ux,uy,uz)=U_{u^4c}(x,y,z)\) over a polynomial
base proves the coefficient statement.

At degree four the three permutations of \((1,1,2)\) have coefficient
\(-5c\), and these exhaust that degree since setting any variable to
zero gives one. Higher coefficients used below are
\[
 [x y z^6]U_c=c^2,\qquad [x y z^{10}]U_c=-2c^3,\qquad
 [x^3y^3z^6]U_c=-57c^3.                                          \tag{3}
\]
For the whole two-linear slice let \(m=\log(\sigma/t)\) in the
additive parameter and \(\ell\) the elliptic logarithm. Every
nonconstant term of the normalized cube uses all three variables, so
the coefficient of \(xy\) in the exponential equals that in the
logarithm. It is \(m''(\ell(z))-m''(0)\), with \(m''(0)=0\).
Use \((\log\sigma)''=-\wp\), \(t'^2=1+4ct^4,\ t''=8ct^3\), and
\(\wp=(1+\sqrt{1+4ct^4})/(2t^2)\). This gives
\([xy]U_c=-4cz^2-c v_z\), proving the first two identities of (3).
For the last identity one can truncate (1)–(2); independently the
logarithm coefficient is \(-656c^3/3\). All terms of the logarithm
have degree a positive multiple of four and meet every variable.
Taking its exponential with the quadratic and cubic terms included
gives \(-57c^3\). The exact checker implements both calculations from
different recurrences in three variables. [Exact coefficient verification](../../../scripts/verify_alpoge_cubical_secant.py)

Now let \(c,e\) be elements of any commutative ring \(R\). The ideal
generated by the nonconstant coefficients of \(U_c-U_e\) is exactly
\[
                (5(c-e),\ c^2-e^2,\ c^3-e^3)\subseteq R .
\]
The displayed coefficients yield all three generators since
\(28(-2)-(-57)=1\). For the reverse containment, every \(j\ge2\)
is in the additive semigroup generated by 2 and 3, and
\(c^{a+b}-e^{a+b}=c^a(c^b-e^b)+e^b(c^a-e^a)\).
Together with degree four and integral homogeneity, this accounts for
all coefficients. Thus reduction modulo any ideal can be tested through
degree twelve. For example over \(\mathbb F_5[\epsilon]/(\epsilon^2)\)
one has \(U_\epsilon=U_0\). Over any valued field with integral \(c,e\),
the least valuation of a difference coefficient is the minimum of the
valuations of the three generators, using \(v(0)=+\infty\). At residue
characteristic five this still equals \(v(c-e)\) when one parameter is
a unit: \(c+e\) and \(c^2+ce+e^2\) cannot both vanish modulo the
maximal ideal in that case. At other residue characteristics 5 is a
unit. Over any valued field of characteristic zero, \(U_c\) itself
has integral coefficients exactly when \(c\) is integral, since the
degree-eight coefficient \(c^2\) detects every negative valuation.

## Return to the source comparison

In the aligned quadratic base, compose the unit (2) with the three
strict integral Honda coordinates in the two specified torus actions.
Their products are integral. The normalized \((p^2-1)\)-st roots
exist and are integral by degree recursion because \(p^2-1\) is
a unit. The formal logarithm of each product is exactly the sum
of the twisted third differences: \(L(\zeta X)=\zeta L(X)\).
This proves the two required polarized units for this elliptic model.
The four integer coefficients in (3) and degree four refer to the
**unprojected elliptic chart**. Integrality after a particular Honda
projection has its separate twist condition.
[Complete coefficient descent](AlpogeStrictCoordinateComparison.md) ·
[Twist detector for the projected model](AlpogeQuarticTwistDetection.md)

The exact computation compared every coefficient of (2) against the
Weierstrass sigma logarithm through total degree twenty. It reproduces
the source's 179 terms through degree sixteen including the constant;
at \(c=-i\) the degree-twelve log and exponential entries are
\(-656i/3\) and \(-57i\). Through degree 24 the two Honda
polarizations have 302 terms each, with zero integrality and Frobenius
failures at \(c=-i\), and respectively 121 and 68 at \(c=1\).
The Lean module verifies the cleared secant algebra over general
commutative rings, the residual formula over a domain, and the ideal
operations for detecting arbitrary higher powers. The identification
of the geometric section, the infinite series (2), and its use on the
two projected cubes are manuscript arguments. The global normalized
theta lifts and inequality (M) require additional data.
[Lean source](AlpogeCubicalSecant.lean)

At source blob **f28d13b41db2ca3bc8d446abe3f58c8e4f9cd245**, the eight public declarations passed native Lean 4.34.1 compilation, fresh kernel replay and transitive auditing. Only propext, Classical.choice and Quot.sound occurred across the audit, using Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
