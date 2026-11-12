# Endpoint cancellation in the gamma-relative primitive Weil problem

By grwtsk contributors.

Version 1, 2026-11-11 (America/Los_Angeles).

## Status, exact source, and mathematical consumer

This is a written analytical source candidate, not a Lean-checked theorem,
certified computation, or proof of RH/primitive Dirichlet GRH. The contribution
is an exact signed arithmetic estimate on the endpoint rays, with its mixed
entry retained, followed by a concrete negative-witness argument. It does not
prove the missing all-test arithmetic inequality. Originality is UNASSESSED.
Independent analytical review, Lean formalization, elaboration, fresh kernel
replay, transitive axiom audit, numerical certification, and repository-wide
validation are NOT_RUN. No new Lean declarations are asserted by this file.

Inspected mathematical main: 7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c;
complete base tree: 3336a2607ff3994a6880c0c06a44114c677691c4.
Lean: leanprover/lean4:v4.34.1. Mathlib:
d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination: math#1801,
scope comment 6817339822. No existing source, root import, dependency pin,
workflow, or historical evidence status is changed.

The exact arithmetic source is equation (2) of
[PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md). The consumers are
its arithmetic head/coupling problem, the signed discrepancy in
[WeilFlatBaselinePoleScale.md](WeilFlatBaselinePoleScale.md), and the two
separate suppliers in [WeilNegativeWitness.lean](WeilNegativeWitness.lean).
The full source, for primitive chi of conductor q, is

    Q_chi,L(f) = c_q,a ||f||^2 + Gamma_(a+1/2)(f)
                   - <f,P_chi,L f> + delta_chi <f,R_L f>,
    c_q,a = log(q/pi) + psi(1/4+a/2),
    k_b(s) = exp(-b*s)/(1-exp(-2*s)),
    Gamma_b(f,g) = integral_0^infinity
                    k_b(s)<f(.+s)-f,g(.+s)-g> ds.

Inner products are conjugate-linear in the first variable. Functions on (0,L)
are zero-extended. P_chi,L contains EVERY prime power with log n<L, coefficient
Lambda(n)/sqrt(n), and terms chi(n)T_(log n)+conj(chi(n))T_(log n)^*.
For q=1 the source is actual zeta and R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2).
For primitive q>1 there is no pole term. The scalar c_q,a is never shifted.
All nonreal-character correspondence with `primitiveArithmeticValue` retains
the existing inverse-character adapter in
[CHARACTER-ORIENTATION-v1.md](../DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md).
The physical plus-Fourier convention is not silently renamed to a same-character
canonical convention. No extension to imprimitive characters is claimed.

## 1. Audit of the inherited obstruction and domain

For smooth compact f, C_f(s)=integral conj(f(x))f(x+s) dx and
S_f(s)=C_f(s)+C_f(-s). With E_Psi(x)=Psi(x)-x, integration by parts gives

    <f,(P_L-C_+)f>
      = integral_(1,exp L) x^(-1/2) S_f(log x) [dPsi(x)-dx]
      = 2||f||^2 - integral_1^(exp L)
                    E_Psi(x) (x^(-1/2)S_f(log x))' dx.       (1)

At 1, E_Psi=-1 and S_f(0)=2||f||^2. At exp L the test factor vanishes.
Thus the lower-boundary sign in WFBP-v1-6 is retained. R_L=C_++C_- is an
identity of kernels, not positivity of R_L. The positive C_- term by itself
does not control (1).

The WEPO correction is still at most L*k_b(L)/32: its Theta factor is at most
k_b(L)/(8U_*), the phase square is at most 4, and V_*/U_*<=L, since every
overlap datum obeys m_j^2*mu_j<=1 and mu_j<=L. Therefore that certificate cannot
repair a flat bottom asymptotic to -exp(L/2). This says nothing comparable
about the true phase improvement. The unrestricted compact-subtraction
obstruction remains applicable; the estimates below concern a specific
energy-bounded family, not the operator norm of P_L-C_+.

We use V_L,b={f in L2(0,L):Gamma_b(f)<infinity}. The proof of WGPC-v1-1 in
[WeilGammaPhaseCoercivity.md](WeilGammaPhaseCoercivity.md) was audited at the
level of written mathematics: Plancherel and the positive kernel expansion give

    Gamma_b(f) = (1/(2pi)) integral Psi_b(xi)|F_f(xi)|^2 dxi,
    Psi_b(xi) = sum_(j>=0) 2xi^2/[c_j(c_j^2+xi^2)], c_j=b+2j.

The weight 1+Psi_b is comparable to 1+log(1+|xi|). Its weighted Fourier L2
space is complete, and fixed spatial support is closed. Fourier cutoffs,
restricted to the bounded interval, are compact and approximate the embedding
V_L,b -> L2 uniformly on bounded energy sets. Inward dilation about L/2 and
then compact mollification converge in that weighted norm; they give a
C_c^infinity(0,L) form core. P_chi,L and R_L are bounded for each fixed L, so
Q is continuous in this form norm. These arguments justify domain extension
and smoothing, not nonnegativity. Compact resolvent is not used as a sign proof.

## 2. Exact endpoint matrix elements, with both gamma parities

Put X=exp L, t=X^(-1), and define

    u(x)=exp(-x/2), v(x)=exp(-(L-x)/2), 0<x<L,
    d=1-t, r=L*sqrt(t),
    h(t)=(1+t)log(1+t)-(1-t)log(1-t),
    j(t)=(1+t)log(1+t)+(1-t)log(1-t),
    A_0=pi/2+log 2,       B_0=pi/2+3log 2,
    A_1=-pi/2+3log 2,     B_1=pi/2-log 2,
    C_a=-log 2-gamma-psi(1/4+a/2).

Here gamma is Euler's constant and Li_2 is the usual real dilogarithm on (0,1).
One has 0<h(t)<=2t, j(t)>=0 and j(t)=O(t^2) as t tends to zero.
Indeed h is visibly positive, h(0)=0 and h'(t)=2+log(1-t^2)<=2;
j(0)=0 and j'(t)=log((1+t)/(1-t)).

**WEGR-v1-1 (endpoint identities).** For every L>0 and a in {0,1}, u,v belong
to V_L,a+1/2, and

    ||u||^2=||v||^2=d,                 <u,v>=r,
    G_0(L):=Gamma_(1/2)(u)=A_0+t(2L-B_0)+h(t),
    G_1(L):=Gamma_(3/2)(u)=A_1+t B_1-j(t),                 (2)
    Gamma_(a+1/2)(v)=G_a(L),
    Gamma_(a+1/2)(u,v)
       =sqrt(t)[C_a L-(1-a)L^2/2+pi^2/6-Li_2(t)].        (3)

The complete prime entries are

    <u,P_chi,L u>=<v,P_chi,L v>
      =2 Re sum_(n<=X) Lambda(n)chi(n)(1/n-1/X)
      =2 Re integral_1^X Psi_chi(y)/y^2 dy,               (4)
    <u,P_chi,L v>=sqrt(t)[F_chi(X)+W_conj(chi)(X)],       (5)
    Psi_chi(y)=sum_(n<=y) Lambda(n)chi(n),
    F_chi(X)=sum_(n<=X) Lambda(n)chi(n)log(X/n),
    W_chi(X)=sum_(n<=X) Lambda(n)chi(n)log(X/n)/n.

For zeta the two pole entries are exactly

    <u,R_L u>=<v,R_L v>=2L(1-t),
    <u,R_L v>=sqrt(t)[X-2+t+L^2].                        (6)

Proof. For 0<s<L, direct integration gives

    C_u(s)=exp(-s/2)-t exp(s/2),
    <u,T_s v>=sqrt(t)(L-s)exp(s/2),
    <u,T_s^* v>=sqrt(t)(L-s)exp(-s/2).

The correlations are zero for s>=L. These formulas prove (4)-(6), including
the conjugate character in the SECOND summand of (5). Partial summation in
(4) cancels the pointwise Psi_chi(X)/X term BEFORE taking any bound. All
endpoint n=X coefficients vanish; the strict source cutoff is unchanged.

For completeness, the gamma calculation can be checked without quadrature.
Set K_b(L)=integral_L^infinity k_b(s)ds. The squared translation increment is
2[d-C_u(s)] for s<L and 2d otherwise. Differentiating its convergent integral
for L>0 gives

    G_a'(L)=2t[K_b(L)-integral_0^L k_b(s)(exp(s/2)-1)ds].

The substitutions z=exp(-s) give respectively

    G_0'(L)=t[B_0-2L-log(1-t^2)],
    G_1'(L)=t[-B_1+log((1+t)/(1-t))].

These are the derivatives of (2). Both actual energies and the displayed
expressions tend to zero as L decreases to zero. For the former assertion,
the integral below L is O(L), since d-C_u(s)=O(s) there uniformly for L<=1;
the remaining part is O(L(1+|log L|)). This also proves finiteness and domain
membership, without falsely assigning zero-extension H1 regularity.

For (3), write D_a(L)=Gamma_b(u,v)/sqrt(t). Translation of zero extensions gives

    D_a(L)=2 integral_0^L k_b(s)[L-(L-s)cosh(s/2)]ds
                         +2L K_b(L).

Hence D_a''(L)=-2k_b(L)cosh(L/2)=-exp(-aL)/(1-exp(-L)).
Moreover D_a(0+)=0 and D_a'(L)+log L tends to C_a. To see the latter constant,
use z=exp(-2s) in 2K_b(L), obtaining

    2K_b(L)+log L -> -log 2-gamma-psi(b/2).

The integral of k_b(s)(1-cosh(s/2)) from 0 to L tends to zero. Integrating this
second derivative with the two stated boundary conditions gives (3), using
(Li_2(exp(-L)))'=log(1-exp(-L)) and Li_2(1)=pi^2/6. The digamma integral and
special values are those of [2]; no spectral-zero assumption enters. QED.

The taper in (4) is classical, not a novelty claim. It equals
2(1-X^(-1)) Re Phi_(Q,chi)(X) in Ihara--Murty--Shimura [1], section 2.2.
The local calculation above identifies its precise gamma/pole consumer.

## 3. Zeta: a signed discrepancy estimate with an unconditional shrinking tail

Define the absolutely convergent tail

    T_zeta(X)=integral_X^infinity (Psi(y)-y)/y^2 dy,
    kappa_zeta=2+gamma-log(4pi).

**WEGR-v1-2 (zeta endpoint cancellation).** For every L>0,

    D_zeta(L):=Q_zeta,L(u)=Q_zeta,L(v)
      =kappa_zeta+2T_zeta(X)+(gamma+log pi)/X+h(1/X),     (7)
    <u,(P_L-C_+)u>=-2gamma-2T_zeta(X)-2/X.              (8)

The same identity (8) holds for v. The remainder after kappa_zeta+2T_zeta
in (7) is strictly positive and at most (gamma+log pi+2)/X.
In particular D_zeta(L) tends to the strictly positive kappa_zeta.

More quantitatively, take any independently established unconditional PNT
constants A,c,x0>0 such that

    |Psi(y)-y|<=A*y*exp(-c*sqrt(log y)), y>=x0>1.        (9)

Such constants follow from the classical PNT error estimate; [3], section 1
and Theorem 1, gives stronger explicit versions with a logarithmic factor,
which can be absorbed by decreasing c. For L>=log x0, direct integration gives

    |T_zeta(exp L)|
      <=(2A/c^2)(1+c*sqrt L)exp(-c*sqrt L),
    D_zeta(L)
      >=kappa_zeta-(4A/c^2)(1+c*sqrt L)exp(-c*sqrt L).    (10)

Thus a sufficiently large L satisfies a genuine nonnegative arithmetic bound
on either endpoint ray, without an RH hypothesis and without an unrestricted
L2 norm approximation. No numerical value of the threshold is certified here.

Proof. For real s>1, the Euler logarithmic derivative and partial summation give

    -zeta'(s)/zeta(s)=s/(s-1)+s integral_1^infinity
                                      (Psi(y)-y)y^(-s-1)dy.

The Laurent constant on the left at s=1 is -gamma. Bound (9) makes the
remaining integral absolutely convergent at 1 and justifies dominated
convergence. Therefore

    integral_1^infinity (Psi(y)-y)/y^2 dy=-1-gamma.

Formula (4) for zeta is consequently 2L-2-2gamma-2T_zeta(X).
Combine it with (2), (6), and
psi(1/4)=-gamma-pi/2-3log 2 to obtain (7).
Direct kernel integration gives <u,C_+u>=2(L-1+1/X), which proves (8).
Reflection proves the v statements. Substitution w=sqrt(log y) in the absolute
tail of (9) yields (10). Notice that (8) tends to NEGATIVE 2gamma: taking an
absolute value before the cancellation loses an essential favorable sign.

The positivity of kappa_zeta need not rest on decimal approximations.
Let xi(s)=s(s-1)pi^(-s/2)Gamma(s/2)zeta(s), with any nonzero constant factor.
Hadamard's logarithmic derivative at 1 minus that at 0, and xi(s)=xi(1-s), give

    kappa_zeta=sum_rho m_rho/[rho(1-rho)].                (11)

The sum is absolutely convergent. Its real part is a sum of strictly positive
terms, since for rho=beta+i*tau in the open critical strip,

    Re(1/[rho(1-rho)])
       =[beta(1-beta)+tau^2]/|rho(1-rho)|^2>0.

The usual unconditional critical-strip location and order-one product suffice;
no zero has been replaced by its ordinate. Multiplicities stay as m_rho.
There are nontrivial zeros, so the sum is positive. This is also consistent
with the logarithmic-derivative sum formula in [1], section 2.3. QED.

For f=alpha*u or alpha*v, (7),(10) feed directly into the requested inequality
(Z) for its form-domain extension: its right side minus its left side is
|alpha|^2 D_zeta(L). This supplies a restricted arithmetic estimate, NOT the
quantifier over all smooth tests. At fixed L with D_zeta(L)>0, continuity also
gives positive values for sufficiently close smooth form-core approximations.

## 4. Primitive nonprincipal diagonals, without excluding exceptional zeros

For fixed primitive chi of conductor q>1, define the convergent improper tail

    T_chi(X)=integral_X^infinity Psi_chi(y)/y^2 dy,
    kappa_chi=log(q/pi)+psi((a+1)/2)+2 Re(L'(1,chi)/L(1,chi)).

Convergence here can be deduced directly from [1], Corollary 2.2.3: the series
sum Lambda(n)chi(n)/n converges to -L'(1,chi)/L(1,chi). Kronecker's lemma gives
Psi_chi(X)/X -> 0, and partial summation then gives

    integral_1^infinity Psi_chi(y)/y^2 dy=-L'(1,chi)/L(1,chi).

Only this fixed-character convergence is required; no uniformity in q and no
exclusion of a possible exceptional real zero is being used.

**WEGR-v1-3 (primitive endpoint diagonals).** For every such chi and L>0,

    D_chi(L):=Q_chi,L(u)=Q_chi,L(v)
       =kappa_chi+2 Re T_chi(X)+R_chi,a(L),               (12)
    R_chi,0(L)=t[2L+gamma+log(pi/q)]+h(t),
    R_chi,1(L)=t[gamma+log(4pi/q)]-j(t).

One has kappa_chi>0. Consequently, for each fixed primitive chi, there exists
L_chi such that both diagonal values are positive for every L>=L_chi.
This is not an all-window theorem, and L_chi is not uniform in the conductor.

Proof. Subtract (4) from c_q,a*d+G_a(L) and use the preceding integral identity.
The displayed remainders follow from the two rational digamma values in [2].
They tend to zero for fixed q, and T_chi(X) tends to zero by its definition.
For the strict sign, use the entire completed primitive function

    calL_chi(s)=(q/pi)^((s+a)/2)Gamma((s+a)/2)L(s,chi).

The dual-character functional equation and conjugation yield
(calL_chi'/calL_chi)(0)=-conj((calL_chi'/calL_chi)(1)).
Subtracting the Hadamard logarithmic derivatives at 1 and 0 cancels the
undetermined exponential constant and proves

    kappa_chi=sum_rho m_rho/[rho(1-rho)]>0.              (13)

Absolute convergence and positivity of the real part follow as in (11).
These are the actual complex zeros of L(s,chi), with multiplicity. A real
exceptional zero contributes a positive 1/[beta(1-beta)], and a central zero
contributes 4 times its multiplicity; neither is discarded. This does not
locate any zero on the critical line. The completed-function identities and
nonvanishing at 1 are classical inputs, recorded in [1], section 2.3, and [4].
The proof applies to the primitive source, not an imprimitive Euler-product
substitute. QED.

This supplies the analogue of the restricted estimate in section 3 for (Dchi).
The estimates still require the source-local inverse-character adapter when
consumed by the canonical arithmetic declaration. The quantified family of
primitive characters is closed under inversion; individual source identities
are not identified without that adapter.

## 5. The unresolved mixed arithmetic term lies in a gamma-low-energy space

Let E(X)=Psi(X)-X and

    F_E(X)=integral_1^X E(y)/y dy.

**WEGR-v1-4 (literal mixed entries and domain-compatible projection).**
For zeta the mixed entry B_zeta(L)=Q_zeta,L(u,v) is real and equals

    sqrt(t)[-F_E(X)+L^2/2-(gamma+log(2pi))L
             -1+t+pi^2/6-Li_2(t)-W_1(X)].               (14)

For primitive q>1 it equals the generally COMPLEX number

    B_chi(L)=sqrt(t)[(log(q/(2pi))-gamma)L-(1-a)L^2/2
                  +pi^2/6-Li_2(t)-F_chi(X)-W_conj(chi)(X)]. (15)

For arbitrary alpha,beta in C, the exact value on H_L=span_C{u,v} is

    Q_chi,L(alpha*u+beta*v)
       =D_chi(L)(|alpha|^2+|beta|^2)
                           +2 Re(conj(alpha)*beta*B_chi(L)). (16)

In particular this restriction is nonnegative if and only if D_chi(L)>=|B_chi(L)|.
No assertion of this inequality is made here.

For every L>=2 and b in {1/2,3/2}, every f in H_L satisfies

    Gamma_b(f)<=K ||f||^2,
    K=2(A_0+6 exp(-2))/(1-exp(-2)-2exp(-1)).              (17)

K is independent of L, q, chi and b. The orthogonal projection Pi_L onto H_L
maps L2(0,L) into V_L,b; consequently both Pi_L f and f-Pi_L f belong to V_L,b
whenever f does. This projection is an explicit endpoint projection, NOT a
spectral projection of the gamma operator.

Proof. Equations (3),(5),(6) give (14),(15); for zeta use
F_1(X)=X-1+F_E(X). The scalar-gamma coefficient simplifies because
c_q,a+C_a=log(q/(2pi))-gamma. Polarization gives (16).
The Gram matrix of u,v is [[d,r],[r,d]], where r=L exp(-L/2), NOT L exp(-L).
Its smaller eigenvalue is

    g(L)=1-exp(-L)-L exp(-L/2)>0.

The derivative is exp(-L/2)[exp(-L/2)-1+L/2]>=0. Thus for L>=2 it is at least
g_*=1-exp(-2)-2exp(-1)>0. Positivity also follows directly from
2sinh(L/2)>L. For L>=2, (2) and h(t)<=2t give G_0(L)<=A_0+6exp(-2).
Since k_(3/2)<=k_(1/2), and the squared norm of a sum is at most twice the
sum of squared norms,

    Gamma_b(alpha*u+beta*v)
       <=2G_0(L)(|alpha|^2+|beta|^2),
    ||alpha*u+beta*v||^2>=g_*(|alpha|^2+|beta|^2).

This proves (17). The orthogonal projection coefficients are explicitly

    [alpha,beta]^T=(d^2-r^2)^(-1) [[d,-r],[-r,d]]
                                      [<u,f>,<v,f>]^T.

Its finite-dimensional range lies in V_L,b by (2), proving domain compatibility.
No sign estimate on the infinite complement follows from (17). All terms
Q(Pi f), Q((1-Pi)f), and 2 Re Q(Pi f,(1-Pi)f) remain necessary for any Schur
certificate. In particular (17) is NOT a supplied complement gap. QED.

This diagnoses the limitation of the current arithmetic advance. The diagonal
signed discrepancy tends to -2gamma, but the mixed discrepancy contains F_E
with weight y^(-1), rather than the integrable y^(-2) tail in (7).
Bound (9), applied after absolute values, gives at most a bound of the shape

    |F_E(X)|<=M+A sqrt(X)+A X exp(-(c/sqrt(2))*sqrt(log X))

for sufficiently large X, with a fixed finite M. Split the integral at sqrt(X)
to obtain this inequality. After division by sqrt(X), its last term grows.
It therefore cannot certify D_zeta>=|B_zeta|. This is a failure of that bound,
not an actual large mixed value and not a counterexample to RH. The problem
already persists in the uniformly gamma-bounded family (17); sending all hard
directions to a high-energy complement does not remove it.

## 6. A concrete negative-witness supplier, not a positivity supplier

**WEGR-v1-5 (endpoint detection of an off-critical zero).** Fix zeta or one
primitive chi of conductor q>1. If the continued source has a zero in the open
critical strip off Re s=1/2, then for every L0>0 there is L>=L0 and a nonzero
f in H_L with Q_chi,L(f)<0. At that same L there is a complex smooth compact
function in (0,L) with strictly negative value of the SAME arithmetic form.
This assertion does not assume any zero is off the line.

Proof. Suppose instead that the endpoint restriction is nonnegative for every
L>=some L0. Equations (7),(12) show its diagonal D_chi(L) is bounded as L tends
to infinity. Equation (16) then bounds |B_chi(L)| as well. The elementary bound
Lambda(n)<=log n, |chi(n)|<=1 and sum_(n<=X)1/n<=1+log X gives

    |W_chi(X)|<=L^2(1+L).

All other terms in (14),(15) apart from F_E or F_chi are O_q(1+L^3).
Consequently the assumed endpoint nonnegativity implies respectively

    F_E(X)=O(sqrt(X)), or F_chi(X)=O_chi(sqrt(X)).         (18)

For Re s>1, absolute convergence and the Euler logarithmic derivative give

    integral_1^infinity F_E(X) X^(-s-1)dX
          =-zeta'(s)/(s^2 zeta(s))-1/[s(s-1)],           (19)
    integral_1^infinity F_chi(X) X^(-s-1)dX
          =-L'(s,chi)/(s^2 L(s,chi)).                    (20)

For example, integrate log(X/n) from X=n to infinity to get n^(-s)/s^2.
For (19), the integral of (X-1)X^(-s-1) is 1/[s(s-1)]. Thus both identities
retain the literal Euler source, not a prescribed positive spectral model.

Bounds (18) make the integrals holomorphic throughout Re s>1/2, by locally
uniform absolute convergence, also after complex differentiation. By the
meromorphic identity theorem their right sides have no pole there. In (19)
the pole at 1 is explicitly removable. A zero rho in this half-plane would
produce a pole of the logarithmic derivative with nonzero residue m_rho;
the factor 1/s^2 cannot remove it. Hence there are no such zeros.
For zeta its functional equation excludes zeros on the opposite side of the
critical strip. For chi, the dual-character equation sends rho to 1-rho for
conj(chi), and conjugation then gives 1-conj(rho) for chi itself. It likewise
excludes the opposite side, including possible real zeros. Therefore eventual
endpoint positivity would imply the unchanged critical-strip statement.
The contrapositive proves arbitrarily large negative endpoint windows.

For large L the diagonal is positive by (7) or (12). A negative endpoint
restriction must then have |B|>D. In (16), take alpha=1 and
beta=-conj(B)/|B| to obtain the negative value 2(D-|B|). For zeta this reduces
to u+v or u-v. At any fixed negative window, inward dilation and compact
mollification from section 1 converge in the form norm. Since Q is continuous
in that norm and the negative margin is strict, one approximation remains
negative and belongs to C_c^infinity(0,L,C). No Gaussian-tail hypothesis or
free assignment of transform values is needed for this written detector. QED.

This is a concrete analytic supplier for the role of `hdetect` in
`GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`.
It is NOT a new Lean inhabitant of that hypothesis. The Lean realization of
(19),(20), holomorphic continuation, the domain/core arguments, and the literal
arithmetic adapter has not been implemented or checked here. The proof's
boundedness-to-zero-exclusion mechanism is classical; compare [5] for related
screw-function bounds and positivity criteria. No originality is asserted.
The separate `hpositive` premise remains unresolved, even on H_L.

The canonical target stays

    criticalStripStatement chi :=
      forall rho, DirichletCharacter.LFunction chi rho=0 ->
        0<rho.re -> rho.re<1 -> rho.re=1/2.

Its conductor-one specialization is the actual `riemannZeta` statement via
`modOne_criticalStripStatement`. This note neither weakens that target nor
replaces its continued functions by totalized Dirichlet series.

## 7. Falsification checks and exact remaining obligations

**WEGR-v1-6 (scope checks).** In the empty-prime regime 0<L<log 2, Psi=0 on
[1,X] and T_zeta(X)=-1-gamma+L. Substitution in (7) gives exactly
c_zeta*d+G_0(L)+2L*d, with prime term zero. Thus the lower boundary and the
pole signs survive this check. At newly active prime powers n=X, both tapers
1/n-1/X and log(X/n) vanish; there is no spurious endpoint jump. Complex
character phases remain in F_chi and W_conj(chi), not their magnitudes.

The profiles have boundary jumps in their zero extensions; only their
logarithmic energy and form-core approximation are asserted. High-frequency
modulations are not covered by (17), and no uniform bound for all L2 tests is
claimed. A replacement c -> c-M would replace the exact source by a different
one and lower the endpoint diagonal by M*d and the mixed entry by M*r;
positive gamma energy would not restore the omitted scalar. We make no such
replacement. The source sum (11),(13) keeps complex locations, multiplicities,
central zeros, exceptional real zeros and the dual-character relation.

The precise unresolved arithmetic estimate is D_chi(L)>=|B_chi(L)| on every
required window, and beyond it the full endpoint/complement coupling and
complement lower bound (or a different direct all-test estimate). Even proving
the endpoint inequality on finitely many windows would not supply universal
coverage. No finite numerical computation or positive compression is presented
as such a supplier. A source-exact Schur argument would still need its actual
arithmetic head, full infinite tail, coupling and numerical-error inputs.

The first advance here is (7)-(10), not the conditional implication in section
6: the troublesome exponential terms on a concrete low-energy ray have been
cancelled exactly and replaced by an unconditional shrinking arithmetic tail.
The offdiagonal obstruction (14) explains the remaining failure of extending
that ray estimate to the full low-energy span. RH and primitive Dirichlet GRH
have not been established by these results.

## 8. Individual provenance and declaration correspondence

The labels WEGR-v1-1--6 are local versioned statement identifiers, not accepted
frontier claim statuses or Lean declaration names. No registry or earlier
claim meaning is migrated. All comparisons below are dated 2026-11-11.

WEGR-v1-1: local integration of the literal source in the Neumann note,
section 1; gamma calculation uses [2], sections 5.4(ii), 5.9(ii). The prime
taper is [1], section 2.2, specialized to Q; no novelty in that taper. Intended
formal consumer: physical primitive arithmetic source and its inverse-character
adapter. Gamma integration and physical endpoint formalization: NOT_RUN.

WEGR-v1-2: local pole-inclusive cancellation using WEGR-v1-1, the Laurent
expansion at 1, and the unconditional PNT error input [3], section 1, Theorem 1.
The Hadamard sum is compared with [1], section 2.3, Theorem 2. Consumer: the
restricted signed-discrepancy inequality (Z). All-test extension remains open.
No paper's numerical constants or certificates have been rerun.

WEGR-v1-3: local gamma-relative endpoint consequence of [1], Corollary 2.2.3
and Theorem 2, with [4]'s completed-function conventions. Retains every fixed
primitive character, parity, conductor, possible exceptional zero and central
multiplicity. Consumer: the restricted inequality (Dchi), not a uniform-q or
all-window supplier. Lean declaration correspondence is prospective only.

WEGR-v1-4: local exact mixed-source calculation, elementary Gram inverse and
finite-dimensional energy bound. Consumer: the unresolved actual arithmetic
head and coupling estimates in PrimitiveWeilNeumannSchur.md. It is not a new
Schur-complement theorem and does not duplicate HeadTailSchur.lean.

WEGR-v1-5: classical Mellin holomorphy/pole obstruction applied to the exact
endpoint entries; compare [5], Theorems 1.6--1.7, for RELATED, not identical,
screw-function criteria. Written consumer: `hdetect` of
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`.
Source-return and Lean suppliers remain explicit obligations. It is not a
direct formalization of a theorem of [5], and is not evidence for `hpositive`.

WEGR-v1-6: local empty-prime, boundary, character-orientation, and scalar-shift
checks against equations (1)-(20). These are analytical checks in this note,
not an independent review, automated test suite, or certified computation.

## References

[1] Yasutaka Ihara, V. Kumar Murty, Mahoro Shimura,
*On the logarithmic derivatives of Dirichlet L-functions at s=1*,
Acta Arithmetica 137 (2009), 253-276, DOI 10.4064/aa137-3-6.
Sections 2.2-2.4, especially Theorem 1, Corollary 2.2.3, and Theorem 2.
https://www.impan.pl/shop/en/publication/transaction/download/product/82940
The GRH-dependent estimates in their section 3 are NOT used.

[2] NIST Digital Library of Mathematical Functions, Chapter 5,
sections 5.4(ii) and 5.9(ii), digamma special values and integral representation.
https://dlmf.nist.gov/5.4 and https://dlmf.nist.gov/5.9
These formulas are analytic inputs, not formal-library verification receipts.

[3] David J. Platt and Timothy S. Trudgian,
*The error term in the prime number theorem*, arXiv:1809.03134v2
(20 July 2020), section 1 and Theorem 1; published in Mathematics of
Computation 90 (2021), 871-881, DOI 10.1090/mcom/3583.
https://arxiv.org/abs/1809.03134v2
Only the unconditional error-estimate shape is used, not a numerical threshold.

[4] NIST Digital Library of Mathematical Functions, section 25.15,
Dirichlet L-functions, primitive functional equation and zeros.
https://dlmf.nist.gov/25.15
The critical-line assertion there is not used as an unconditional fact.

[5] Masatoshi Suzuki, *Aspects of the screw function corresponding to the
Riemann zeta-function*, Journal of the London Mathematical Society (2023),
DOI 10.1112/jlms.12785, Theorems 1.6-1.7.
https://doi.org/10.1112/jlms.12785
A prior-art comparison of the transform/positivity mechanism, not a supplier
of the missing arithmetic inequality. Search incompleteness proves no novelty.
