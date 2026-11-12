# Signed endpoint residuals and gamma-relative arithmetic coupling

By grwtsk contributors.

Version 1, 2026-11-11 (America/Los_Angeles).

## Status, source pins, and the premise supplied

This is a written analytical source candidate. It supplies an explicit estimate
for the coupling of the arithmetic endpoint space to its ENTIRE form-domain
complement. It does not prove the endpoint head sign, positivity on that
complement, universal Weil positivity, RH, or primitive Dirichlet GRH.
Originality is UNASSESSED. Independent analytical review, Lean formalization,
elaboration, fresh kernel replay, transitive axiom audit, numerical certification,
and repository-wide validation are NOT_RUN.

Inspected main: 1135f59fbcee3bb4ac4d1c0a8b276cb0b739b572; complete root tree:
f8858e39901c62d7ad6bb8bf9aff2c520d18f02a. Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination: math#1801,
scope comment 6817821104. No existing source, import, pin, or evidence status is
changed. The publication receipt belongs to that issue.

The immediate predecessor is [WeilEndpointGammaRelative.md](WeilEndpointGammaRelative.md),
blob c6c9a299199d356fd09b0f65e070915fa98e8b35. That note evaluates the two endpoint
diagonals and the mixed head entry. Here the new calculation is the full operator
applied to each endpoint vector, not another scalar Schur-completion lemma.
It exposes the literal arithmetic residual before Cauchy--Schwarz and pays all
complementary directions. The boundary-energy identity is REUSED from section 3,
equation (6), of [WeilGammaPhaseCoercivity.md](WeilGammaPhaseCoercivity.md), blob
1af078628992058c0def133e5ffaa9b8c346a72c. It is not claimed as a new result.

The complete source is equation (2) of
[PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md), blob
a7f0ff2b5ea1d331a2a989b01e024d2883d23785. Its sections 6-8 and the existing
`GRWTSK/FunctionalAnalysis/HeadTailSchur.lean` are the coupling consumers.
A positivity application still needs the actual head and complement inequalities;
this note supplies neither by renaming them as regularity assumptions.

## 1. Unchanged arithmetic form and domain

Fix L>0 and a primitive character chi of conductor q>=1. Set

    b=a+1/2, a in {0,1}, chi(-1)=(-1)^a,
    delta=1 if q=1, and 0 otherwise,
    c_q,a=log(q/pi)+psi(1/4+a/2),
    k_b(s)=exp(-b*s)/(1-exp(-2*s)), s>0.

Every function on I=(0,L) is extended by zero. Inner products are conjugate-linear
in the first variable. The form and its representing operator are denoted by

    Q_chi,L(f,g)=c_q,a <f,g>+Gamma_b(f,g)
                      -<f,P_chi,L g>+delta<f,R_L g>,
    A_chi,L : the lower-bounded self-adjoint operator associated with Q_chi,L,
    Gamma_b(f,g)=integral_0^infinity k_b(s)
                         <f(.+s)-f,g(.+s)-g> ds.

Here P_chi,L contains EVERY prime power through Lambda(n):

    P_chi,L=sum_(n>=2, log n<L) Lambda(n)/sqrt(n)
                       [chi(n)T_(log n)+conj(chi(n))T_(log n)^*],
    T_s f(x)=1_(0<x<L-s)f(x+s),
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2).

The source for q=1 is actual zeta; both pole orientations are present. A primitive
q>1 has no pole contribution. Values at nonunits remain zero, so ramification is
not replaced by an all-one-phase model. The physical plus-Fourier convention
continues to return to `primitiveArithmeticValue` at chi inverse, as recorded in
[CHARACTER-ORIENTATION-v1.md](../DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md),
blob ff97169c9f65f305a41617d002fb5cdfd67c4e06. No same-character convention is
silently imposed for nonreal characters.

Write V_L,b={f in L2(I):Gamma_b(f)<infinity}. The Fourier multiplier proof in
WGPC-v1-1 identifies this as a closed form domain, with C_c^infinity(I,C) as a
form core. Its weight is comparable to 1+log(1+|xi|). The Neumann note gives a
second written domain calculation. These domain arguments were inspected; they
are not independently reviewed or Lean verified here. Bounded P_chi,L and R_L
preserve the domain and core. Existence of A_chi,L does NOT imply A_chi,L>=0.

For clarity, the smooth-core argument is applicable to these exact zero
extensions: contract the support inward about L/2, then mollify inside the
remaining gap. Dilation is strongly continuous in the logarithmically weighted
Fourier norm by uniformly comparable weights and density; mollification converges
by weighted dominated convergence. Thus strict form inequalities can be returned
to the original smooth tests without assigning H1 regularity to boundary jumps.

## 2. Exact operator action on the endpoint profiles

Let

    u(x)=exp(-x/2), v(x)=exp(-(L-x)/2), y=L-x, d=1-exp(-L),
    Psi_chi(X)=sum_(n<=X) Lambda(n)chi(n),
    S_chi(X)=sum_(n<=X) Lambda(n)chi(n)/n,
    K_b(t)=integral_t^infinity k_b(s)ds,
    V_b,L(x)=K_b(x)+K_b(L-x).

The letter V_b,L(x) denotes a positive weight, not the form domain V_L,b.
Define the nonnegative logarithmic functions

    ell_0(x,y)=-(1/2)log(1-exp(-2x))-(1/2)log(tanh(y/2)),
    ell_1(x,y)=-(1/2)log(tanh(x/2))-(1/2)log(1-exp(-2y)).

**WERC-v1-1 (literal residual and operator-domain membership).** For every such
chi and every L>0, u and v belong to D(A_chi,L), and, for almost every x in I,

    r_chi,L(x):=(A_chi,L u)(x)
      =exp(-x/2)[log(q/(2pi))-gamma-(1-a)x+ell_a(x,L-x)
                 -S_chi(exp(L-x))-Psi_conj(chi)(exp x)
                 +delta(d exp x+L)],                              (1)

    (A_chi,L v)(x)=r_conj(chi),L(L-x).                            (2)

Here gamma is Euler's constant. In particular (1) is an L2 function, not a
formal distribution whose pairing with the complement remains unjustified.

Proof. Direct substitution into the finite shifts gives

    (P_chi,L u)(x)=exp(-x/2)[S_chi(exp(L-x))+Psi_conj(chi)(exp x)],
    (R_L u)(x)=exp(-x/2)[d exp x+L].                              (3)

The conjugate character in the SECOND term is required by T_s^*. Equality
thresholds are a finite null set in x; no prime-power mass is lost in integrals.
The two terms of R_L were integrated separately, not replaced by positive squares.

For the gamma part introduce a lower cutoff epsilon>0. Its bounded operator is

    G_b,epsilon f(x)=integral_epsilon^infinity
                    k_b(s)[2f(x)-f(x+s)-f(x-s)]ds.

At an interior point the limit on u, divided by u(x), is H_a(x)+J_a(y), where

    H_a(x)=integral_0^x k_b(s)(1-exp(s/2))ds+K_b(x),
    J_a(y)=integral_0^y k_b(s)(1-exp(-s/2))ds+K_b(y).             (4)

Each compensated integral is convergent. In particular we have not separated a
divergent integral of 2k_b from its compensating terms. Differentiation gives
H_a'(x)=-exp(-a*x)/(1-exp(-2x)) and
J_a'(y)=-exp(-(a+1)*y)/(1-exp(-2y)). Direct integration yields

    H_0(x)=pi/4+(3/2)log 2-x-(1/2)log(1-exp(-2x)),
    J_0(y)=pi/4+(1/2)log 2-(1/2)log(tanh(y/2)),
    H_1(x)=-pi/4+(1/2)log 2-(1/2)log(tanh(x/2)),
    J_1(y)=-pi/4+(3/2)log 2-(1/2)log(1-exp(-2y)).              (5)

To fix the constants rather than only the derivatives, put z=exp(-t/2). The
substitution in K_b gives the complete infinite tails

    K_(1/2)(t)=atanh(z)+atan(z),
    K_(3/2)(t)=atanh(z)-atan(z),
    atanh(z)=(1/2)log((1+z)/(1-z)).                            (6)

Consequently K_b(t)+(1/2)log t tends to log 2+pi/4 for b=1/2 and to
log 2-pi/4 for b=3/2. The compensated integrals in (4) tend to zero at the
lower endpoint. These limits fix all four constants in (5).

The standard values psi(1/4)=-gamma-pi/2-3log 2 and
psi(3/4)=-gamma+pi/2-3log 2 then give

    c_q,a+H_a(x)+J_a(y)
       =log(q/(2pi))-gamma-(1-a)x+ell_a(x,y).                 (7)

Thus (3)-(7) prove the pointwise expression (1).

For the domain claim, the squared translation increment of u is O_L(s) near
zero and bounded at infinity; hence u is in V_L,b. For 0<epsilon<min(1,L),
(4) with the cutoff bounds |G_b,epsilon u(x)| by
C_L,b[1+|log x|+|log(L-x)|]. The compensated integrals are uniformly bounded
for this fixed L; K_b(max(x,epsilon))<=K_b(x) controls each boundary piece.
The majorant is in L2(I). Dominated convergence therefore gives an L2 limit
G_b,epsilon u -> G_b u with the expression (4)-(5). On every g in V_L,b,
the cutoff form converges to Gamma_b(u,g) by Cauchy--Schwarz in the translation
energy. It follows that Gamma_b(u,g)=<G_b u,g>. This is precisely the
associated-operator domain criterion. Adding the bounded prime and pole
operators proves u in D(A_chi,L) and (1).

Reflection Jf(x)=f(L-x) commutes with the gamma operator and the poles, but
J P_chi,L J=P_conj(chi),L. Hence A_chi,L J=J A_conj(chi),L, which proves (2)
and the v domain claim. These are operator-domain statements, not H1 claims
about the zero extensions. QED.

## 3. An arithmetic coupling bound paying the whole complement

Let H_L=span_C{u,v}. The predecessor's Gram matrix is

    G_L=[[d,r],[r,d]], r=L exp(-L/2),
    d-r=1-exp(-L)-L exp(-L/2)>0.                              (8)

Thus its L2 orthogonal projection maps V_L,b to V_L,b; WERC-v1-1 even gives
its range inside the operator domain. This is the same endpoint projection as
in WEGR-v1-4, NOT a newly asserted spectral projection of the gamma operator.

The existing boundary-energy identity is

    Gamma_b(g)=integral_(0<x<z<L) k_b(z-x)|g(z)-g(x)|^2 dxdz
                    +integral_0^L V_b,L(x)|g(x)|^2 dx.        (9)

It follows by splitting zero-extended pairs into inside and outside pairs;
Tonelli applies to their nonnegative integrands. Formula (6) evaluates the
whole gamma tail in its weight, not a finite truncation.

**WERC-v1-2 (gamma-relative full-complement coupling).** For h=alpha*u+beta*v,
set r_h=alpha*r_chi,L+beta*r_conj(chi),L(L-.) using (1), and put

    J_chi,L(h)=integral_0^L |r_h(x)|^2/V_b,L(x) dx.            (10)

This is finite, uses the literal signed arithmetic residual, and satisfies

    |Q_chi,L(h,g)|^2<=J_chi,L(h)*Gamma_b(g),  g in V_L,b.      (11)

In particular it applies to EVERY g in V_L,b intersect H_L^perp. For such g,
any w in H_L may be subtracted from r_h inside (10); the corresponding bound
remains valid. No optimal choice of w or unproved inverse is assumed.

Proof. WERC-v1-1 gives Q(h,g)=<A h,g>=<r_h,g>. Weighted Cauchy--Schwarz followed
by (9) proves (11). For fixed L, V_b,L is positive and bounded below by
2K_b(L)>0; r_h is in L2. This proves finiteness. More precisely, near an
endpoint the quotient of its squared logarithmic singularity by V_b,L has at
worst logarithmic growth and is integrable. If g is orthogonal to H_L, then
<w,g>=0, which justifies the stated subtraction. QED.

This is not the estimate obtained by bounding Gamma, P, and R separately.
Those terms were summed in (1) BEFORE their absolute value was taken in (10).
Both complex character phases and the gamma/prime/pole cross terms inside
|r_h|^2 remain. At fixed L the formula uses only the active finite prime-power
inventory and elementary functions, with the complete gamma tail (6).
There is no assumed bound on an unspecified arithmetic operator.

## 4. Zeta: pointwise pole cancellation and an independently bounded cost

Write E(X)=Psi_1(X)-X and

    T(X)=integral_X^infinity E(t)/t^2 dt.

The unconditional PNT error estimate makes this absolutely convergent.
The Euler logarithmic derivative and the Laurent constant at 1 give
integral_1^infinity E(t)/t^2 dt=-1-gamma, as derived in WEGR-v1-2.
Partial summation, keeping the lower boundary, therefore gives

    S_1(X)=log X-gamma+E(X)/X-T(X).                          (12)

**WERC-v1-3 (signed zeta residual and quantitative coupling).** For x in (0,L)
and y=L-x, the full residual in (1) is exactly

    r_zeta,L(x)=exp(-x/2)[-E(exp x)-log(2pi)
                    -exp(-y)(E(exp y)+1)+T(exp y)+ell_0(x,y)]. (13)

In particular all e^x and linear-L main terms have cancelled pointwise before
taking a norm. Define

    M(L)=integral_0^L exp(-x)|E(exp x)|^2/V_(1/2),L(x) dx,
    C_E=sup_(X>=1)|E(X)|/X,
    T_*=integral_1^infinity |E(X)|/X^2 dX,
    A_*=log(2pi)+C_E+1+T_*.

Both C_E and T_* are finite unconditionally. The following completely specified
constants are independent of L:

    d_1=-log(1-exp(-2)), d_2=-log(tanh(1/2)),
    U_1=2+2d_1+d_1^2+exp(-4)/(4(1-exp(-2))^2),
    U_2=2+2d_2+d_2^2+2exp(-2)/(1-exp(-1))^2,
    C_*=A_*+(sqrt(U_1)+sqrt(U_2))/(2sqrt(2)).

Then

    sqrt(J_zeta,L(u))<=sqrt(M(L))+C_*,
    sqrt(J_zeta,L(v))<=sqrt(M(L))+C_*,                       (14)
    |Q_zeta,L(alpha*u+beta*v,g)|
      <=(|alpha|+|beta|)(sqrt(M(L))+C_*)sqrt(Gamma_(1/2)(g)) (15)

for every g in V_L,1/2, including the entire orthogonal complement.

More explicitly, let A,c,x0>0, x0>1, be independently justified constants with

    |E(X)|<=A X exp(-c sqrt(log X)), X>=x0.                  (16)

For L>=2 max(1,log x0),

    M(L)<=C_E^2/3*(exp(3L/4)-1)
             +A^2 exp(L-sqrt(2)c sqrt(L))*(1-exp(-L/4)),     (17)
    sqrt(J_zeta,L(u))
      <=C_*+C_E/sqrt(3)*exp(3L/8)
                         +A exp(L/2-(c/sqrt(2))*sqrt(L)).   (18)

The same holds for v. Thus the coupling cost in (15), for bounded endpoint
coefficients, is o(exp(L/2)). It is NOT asserted to be bounded or to tend to
zero. This distinction is essential for the remaining positivity problem.

Proof. Substitute (12), Psi_1(exp x)=exp x+E(exp x), and d exp x=exp x-exp(-y)
into (1). The terms -x-y+L and the two leading exp x terms cancel; the two
Euler constants cancel as well. This proves (13), including the residual +1
inside exp(-y)(E(exp y)+1).

Since k_(1/2)(s)>=exp(-s/2),

    V_(1/2),L(x)>=2exp(-x/2),
    integral_0^L exp(-x)/V_(1/2),L(x) dx<=1.                 (19)

The non-logarithmic terms in (13), other than -E(exp x), have modulus at most
A_*. For the two logarithms, define

    I_1=integral_0^infinity exp(-x/2)log^2(1-exp(-2x)) dx,
    I_2=integral_0^infinity log^2(tanh(x/2)) dx.

Using (19), their respective weighted L2 norms are at most
sqrt(I_1)/(2sqrt(2)) and sqrt(I_2)/(2sqrt(2)). In the second bound discard
exp(-x/2)<=1 and change variable y=L-x. To bound these integrals explicitly,
for 0<x<=1 concavity gives

    1-exp(-2x)>=(1-exp(-2))*x,
    tanh(x/2)>=tanh(1/2)*x.

Consequently each negative logarithm is at most -log x+d_i. The integral of
(-log x+d_i)^2 on (0,1) is 2+2d_i+d_i^2. For x>=1 use

    -log(1-exp(-2x))<=exp(-2x)/(1-exp(-2)),
    -log(tanh(x/2))<=2exp(-x)/(1-exp(-1)).

Their squared tails integrate to the remaining terms in U_1 and U_2; dropping
exp(-x/2) in the first integral only increases its bound. Hence I_i<=U_i.
The triangle inequality in L2(dx/V) proves (14), reflection gives the v bound,
and another triangle inequality proves (15).

For (17) split at x=L/2. On the first half use |E(exp x)|<=C_E exp x and
V>=2exp(-x/2), obtaining C_E^2(exp(3L/4)-1)/3. On the second half use (16),
sqrt(x)>=sqrt(L/2), and V>=2exp(-(L-x)/2). The resulting integral is

    (A^2/2) exp(L/2-sqrt(2)c sqrt(L))
                              integral_(L/2)^L exp(x/2) dx,

which is precisely the second term in (17). Taking square roots and using
sqrt(a+b)<=sqrt(a)+sqrt(b) proves (18). QED.

There are no unproved PNT constants hidden in the availability of (16).
For example Johnston--Yang [2], Theorem 1.1, gives for every X>=2

    |E(X)|<=9.39 X (log X)^1.515 exp(-0.8274 sqrt(log X)).

One may take x0=2, c=2/5, and the explicit real constant

    A=(939/100)*( (303/100)/(exp(1)*(2137/5000)) )^(303/100), (20)

because the maximum of z^r exp(-d z) on z>=0 is (r/(exp(1)d))^r.
The decimal constants in the cited theorem are interpreted exactly as written;
(20) is not a newly certified numerical evaluation. On 1<=X<2 one has E(X)=-X.
Thus C_E<=max(1,A), and a fully explicit bound for T_* is

    T_*<=log 2+(2A/c^2)(1+c sqrt(log 2))*exp(-c sqrt(log 2)). (21)

The point X=2 is immaterial to the integral. The cited theorem is an external
unconditional input; its computational ingredients have not been rerun here.
Neither (20) nor (21) is an RH assumption.

For L>=2, let g_*=1-exp(-2)-2exp(-1)>0. Equation (8) gives
|alpha|+|beta|<=sqrt(2/g_*)||alpha*u+beta*v||. Therefore (15),(18) also give a
normalized endpoint-to-complement bound with coefficient sqrt(2/g_*) times
the right side of (18). All its constants are independent of L in the stated
range. No uniformity over growing conductors is inferred from this zeta estimate.

## 5. An alternative mean-zero residual estimate

The boundary weight in (9) becomes small in the middle of a long interval.
It is therefore useful to keep an alternative estimate which uses an interior
gamma multiplier rather than only that weight. This does not replace the
arithmetic residual by a positive model: the residual remains (1).

**WERC-v1-4 (mean-zero gamma dual bound).** For any primitive chi, L>0, and
h=alpha*u+beta*v, put

    theta_h=(integral_0^L r_h(x)dx)/(2(1-exp(-L/2))),
    R_h=r_h-theta_h*u,
    F_h(x)=integral_0^x R_h(t)dt, 0<x<L,

and extend R_h and F_h by zero. Then for every g in V_L,b intersect H_L^perp,

    |Q_chi,L(h,g)|^2
       <=(b/2)(||R_h||_2^2+b^2||F_h||_2^2)*Gamma_b(g).      (22)

All quantities on the right are finite and determined by (1). In particular,
this bound covers both parities without requiring any uniform estimate for the
nonprincipal twisted Chebyshev sums. It does NOT assert that those sums are small.

Proof. The denominator is integral_0^L u and is strictly positive. Thus R_h
has integral zero, F_h lies in H1_0(0,L), and its zero extension has weak derivative
R_h. Because g is orthogonal to u, Q(h,g)=<R_h,g>. With the plus Fourier
convention, Rhat_h(xi)=-i xi Fhat_h(xi). The positive expansion already established
in WGPC equation (3) gives

    Psi_b(xi)=sum_(j>=0)2xi^2/[(b+2j)((b+2j)^2+xi^2)]
                  >=2xi^2/[b(b^2+xi^2)]=:m_b(xi).

Apply Fourier Cauchy--Schwarz with weights m_b and 1/m_b. The zero at xi=0
causes no divergence: Rhat_h/xi=-i Fhat_h in L2. Plancherel gives exactly

    (1/(2pi))integral_R |Rhat_h(xi)|^2/m_b(xi) dxi
                  =(b/2)(||R_h||_2^2+b^2||F_h||_2^2).

The other factor is bounded by Gamma_b(g), proving (22). QED.

Equations (11) and (22) are two valid estimates with different losses. One may
use their smaller certified upper bound for a specified h. Neither establishes
a uniform small coupling as L grows, and no quantitative improvement of the
signed Chebyshev head entry is deduced from (22). Their proofs use common
arithmetic source identities; they are not independent reviews of those identities.

## 6. Source audits, falsification, and the remaining sign

**WERC-v1-5 (checks and the scalar-shift obstruction).** In the empty-prime
regime 0<L<log 2, Psi_1(exp x)=S_1(exp y)=0 for interior x,y. Here
E(exp x)=-exp x and T(exp y)=-1-gamma+y. Substitution in (13) yields exactly
exp(-x/2)[c_1,0+H_0(x)+J_0(y)+d exp x+L], agreeing with the direct gamma-plus-pole
operator in (3)-(7). This checks the lower-boundary constant and pole signs.

When a prime power becomes active at log n=L, its shift has zero overlap.
The pointwise threshold changes affect null sets; the form changes are not
manufactured by replacing the strict cutoff with a nonzero boundary atom.
All phase factors in (1) remain chi(n) or conj(chi(n)); reflection exchanges
the characters, not two falsely decoupled parity blocks.

For every fixed L the endpoint logarithms are square integrable. Equations
(11),(22) allow arbitrary high-frequency remainders and arbitrary boundary
concentration in the form domain. They do not assert smallness in unrestricted
L2 operator norm and do not contradict WFBP-v1-6's compact-subtraction obstruction.
The exact infinite gamma tail is present through (6); no omitted positive tail
has been treated as zero in an equality.

A separate exact hostile check shows why coupling control cannot supply the
missing sign. Replacing the source by Q-M||.||^2 would leave Q(h,g) unchanged
for h in H_L and g in H_L^perp, while replacing Q(h) by Q(h)-M||h||^2. Taking
M>Q(u)/||u||^2 makes this altered head negative. For h=u even the residual R_h
in (22) is unchanged: r_u changes by -M u and theta_u changes by -M. Thus a
valid gamma-relative coupling bound and a positive gamma energy do not force
head nonnegativity. This is a countercheck for an invalid inference, not an
arithmetic counterexample; the actual scalar c_q,a is NEVER changed in (1)-(22).

The inherited pole-centered identities are retained:

    R_L=C_++C_-,
    Q_zeta(f)=c_zeta||f||^2+Gamma_(1/2)(f)+<f,C_-f>-<f,(P_L-C_+)f>,
    <f,(P_L-C_+)f>=2||f||^2
       -integral_1^(exp L) E(X)(X^(-1/2)S_f(log X))'dX.

The lower boundary 2||f||^2 is essential. The WEPO lower-certificate ceiling
L*k_b(L)/32 and the flat asymptotic -exp(L/2) are unaffected. They constrain the
previous certificate, not the true character phase effect. The new estimate
controls a source-exact coupling; it does not restart unrestricted compact
subtraction or an all-one-phase comparison.

For the existing endpoint head, WEGR-v1-4 gives the exact value

    Q(h)=D_chi(L)(|alpha|^2+|beta|^2)
                              +2 Re(conj(alpha)*beta*B_chi(L)).

The inequality D_chi(L)>=|B_chi(L)| remains UNSUPPLIED. For zeta its mixed entry
contains exp(-L/2) integral_1^(exp L) E(X)/X dX; (17) does not supply its needed
signed bound. Nor is a lower bound for Q on all of H_L^perp proved here.

Precisely, for f=h+g with g in the form-domain complement, (11) supplies

    Q(f)>=Q(h)+Q(g)-2sqrt(J_chi,L(h)*Gamma_b(g)).              (23)

An application using a positive gamma-relative complement bound would still
need Q(g)>=eta Gamma_b(g), eta>0, and a sufficiently large actual head relative
to J/eta. These are remaining premises, not new definitions of positivity.
The existing Neumann high-mode estimate supplies a different, explicitly chosen
complement; it cannot be transferred to the endpoint-only complement without
proof. No new scalar square-completion theorem is added.

The bound (18) improves the exponential SCALE of this coupling after exact
cancellation, but still permits growth. Its failure to close (23) is retained.
The alternative (22) avoids the small boundary weight but, without a further
arithmetic estimate, likewise does not close the head/complement balance.
No finite positive compression, numerical sign, or universal certificate
existence is asserted. Every required L and primitive character remains quantified
in the original all-test inequality.

## 7. Canonical return and individual provenance

The unchanged formal target is
`GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement chi`, using
`DirichletCharacter.LFunction`, with its explicit conductor-one equivalence
`modOne_criticalStripStatement` to `riemannZeta` in the open critical strip.
The consumer `criticalStripStatement_of_detection_and_nonnegativity` keeps
`hdetect` and `hpositive` separate. Source blob at inspection:
abd27c24bfac7422baa4c2482ae71e684b558ff0.

No new Lean declaration is supplied by this note. WERC-v1-1 requires a formal
realization of the physical closed form and its operator-domain integration;
WERC-v1-2--4 require its Bochner/Fourier estimates and literal prime-source
adapter. Those analytic constructions are not replaced by opaque assumptions
merely to obtain an elaborating wrapper. The predecessor's written negative
witness is not a Lean inhabitant of hdetect, and these coupling results are not
inhabitants of hpositive. Existing conditional declarations keep their meanings.

All spectral returns must still use z_rho=-i(rho-1/2) and the signed pairing
sum m_rho F(z_rho)conj(F(conj(z_rho))). No proof here replaces that pairing by
absolute squares, removes central or exceptional real zeros, suppresses
multiplicities, or drops the dual-character functional equation. No imprimitive
or broader-family transfer is claimed.

The following local, versioned identifiers are written statement identifiers,
not accepted frontier statuses. Prior-art comparisons are dated 2026-11-11;
the search is bounded and establishes no absence of earlier results.

- WERC-v1-1: direct action of the literal source in the Neumann note, section 1,
  and the endpoint profiles in WEGR-v1-1. Gamma constants use [1]; (3)-(7) and
  the L2 cutoff argument are supplied here. Compare [3], Theorem 1.1 and section
  2.1, for the general localized operator/domain setting, not this particular
  endpoint formula. Consumer: the arithmetic endpoint coupling in (23).
- WERC-v1-2: reuses WGPC section 3, equation (6), followed by weighted
  Cauchy--Schwarz on the residual (1). It is not a new abstract Schur theorem.
  Consumer: complete complementary and cross-term budgets in the Neumann note.
- WERC-v1-3: local signed substitution using WEGR-v1-2's Laurent/PNT identity;
  quantitative input [2], Theorem 1.1, exactly as stated. The source does not
  attribute (13)-(21) to that paper, nor claim to rerun its computations.
- WERC-v1-4: local mean-zero residual subtraction and Fourier dual estimate,
  using the first term of the already maintained positive gamma multiplier.
  Consumer: an alternative arithmetic coupling cost for both primitive parities.
- WERC-v1-5: direct empty-prime and scalar-shift checks of the same formulas.
  It preserves WFBP-v1-1--6 and the known phase-orientation counterexample.
  It is not evidence for an actual off-critical zero or independent verification.

Written proofs above constitute the present evidence. Formalization, elaboration,
kernel replay, transitive axiom audit, interval certification, independent review,
and repository-wide validation remain NOT_RUN. Originality remains UNASSESSED.

## References

[1] NIST Digital Library of Mathematical Functions, Chapter 5, sections 5.4(ii)
and 5.9(ii), especially equation 5.9.16 and the rational digamma values.
https://dlmf.nist.gov/5.4 and https://dlmf.nist.gov/5.9.E16
The cutoff-tail evaluations (6) are also proved directly by substitution above.

[2] Daniel R. Johnston and Andrew Yang, *Some explicit estimates for the error
term in the prime number theorem*, arXiv:2204.01980v2, Theorem 1.1, equation
(1.3). https://arxiv.org/html/2204.01980v2
Use the explicit inequality including its factor X; no numerical table is needed.

[3] Masatoshi Suzuki, *Weil's quadratic form via the screw function*, supplied
arXiv:2606.09096v3, version of 24 September 2026, Theorem 1.1 (page 4) and section
2.1 (pages 7-8). https://arxiv.org/pdf/2606.09096v3
Its localized lower-bounded operator result is a comparator, not a positivity
supplier. The RH-dependent spectral-convergence results in the separately
supplied arXiv:2610.32704v1 are not used as unconditional inputs.
