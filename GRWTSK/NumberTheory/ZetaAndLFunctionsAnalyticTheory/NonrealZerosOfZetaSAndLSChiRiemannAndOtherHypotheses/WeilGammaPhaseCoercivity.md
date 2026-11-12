# Gamma-coupled phase coercivity for local primitive Weil forms

By grwtsk contributors.

Version 1, 2026-11-11 (America/Los_Angeles).

## Status, source, and consumer

This is a written analytical source candidate. It is not a Lean-checked theorem,
a numerical certificate, or a proof of RH/primitive Dirichlet GRH. The consumer
is the phase-sensitive low-energy problem left by
[WeilJointPrimePhaseBounds.md](WeilJointPrimePhaseBounds.md), especially its
sections 4-6, together with the complete spectral enclosures in
[PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md).

The new comparison concerns the FULL gamma-coupled, POLE-FREE form. It applies to
the actual primitive Dirichlet source of conductor q>1. Conductor-one zeta still
has both pole orientations and is treated separately below. The flat-phase
comparator is not asserted to be any primitive arithmetic L-function. Its lowest
value is not assumed nonnegative. A positive difference of lowest values is not
an absolute positivity certificate.

Inspected main: 720921a294636dc295a69c724ac94708aad1f1df; complete root tree:
b6c8dcdeb9f31090956a024218e6202159694608. The preceding phase note has blob
9a5e71f2106da61d64ac6c5b00313090940ba9a3; the Neumann note has blob
a7f0ff2b5ea1d331a2a989b01e024d2883d23785. Coordination: math#1801,
scope comment 6819773903. Lean pin: leanprover/lean4:v4.34.1; mathlib pin:
d13f23b723b8a846827a245b89c10fc7d3f11612. No imports or pins are changed.

The mechanisms are classical: diamagnetic comparison for magnetic jump forms,
positivity-improving resolvents, and perturbation of a simple isolated eigenvalue.
Hinz [1], equation (4), Lemma 4.3 and Corollary 9.2, provides the general magnetic
jump-form comparator. Keller--Lenz--Vogt--Wojciechowski [2] supplies the general
positivity-improving spectral context. The particular domain, equality case,
and second-variation argument are proved here rather than assumed from a theorem
whose hypotheses have not been checked. No novelty is asserted; originality is
UNASSESSED. Labels WGPC-v1-1--6 are versioned local statement identifiers, not
accepted frontier claim statuses or Lean declaration names.

Evidence: the analytical argument below. Independent analytical review,
formalization, Lean elaboration, kernel replay, transitive axiom audit, numerical
certification and repository-wide validation are NOT_RUN. Ordinary source
publication does not supply these observations. No proof-execution automation
or external verifier is dispatched by this source-only increment.

## 1. Exact source and the phase family

Fix L>0, I=(0,L), b in {1/2,3/2}, and a real scalar c. Inner products are
conjugate-linear in the first variable. Extend every f in L2(I) by zero and set

    kappa_b(u)=exp(-b*u)/(1-exp(-2*u)), u>0,
    Gamma_b(f)=integral_0^infinity kappa_b(u)||f(.+u)-f||_2^2 du,
    C_f(s)=integral_0^(L-s) conj(f(x))*f(x+s) dx, 0<s<L.

Let S be a subset of the primes p<exp(L). For every p in S include ALL k>=1
with s_(p,k)=k log p<L, and put w_(p,k)=log(p)*p^(-k/2)>0. The inventory is
finite. T_s f(x)=1_(0<x<L-s)f(x+s), with T_s=0 for s>=L. For phases
omega=(omega_p) in the product torus T^S define

    P_omega=sum_(p,k) w_(p,k)
                 [omega_p^k T_(s_(p,k))+conj(omega_p^k)T_(s_(p,k))^*],
    a_omega(f)=c||f||^2+Gamma_b(f)-<f,P_omega f>.                 (1)

Let A_omega represent this closed form and lambda(omega)=min sigma(A_omega).
Existence and the common domain are proved in section 2. Write A_0=A_1,
lambda_0=lambda(1) for the ALL-ONE phase vector, not the zero operator.

For a primitive Dirichlet character chi with conductor q>1, take

    S={p<exp(L):p does not divide q},
    b=a+1/2, chi(-1)=(-1)^a,
    c=log(q/pi)+psi(1/4+a/2), omega_p=chi(p).                    (2)

Then (1) is the actual full primitive Weil form in the maintained plus-Fourier
convention. The inverse-character adapter to `primitiveArithmeticValue` is
unchanged: for a nonreal chi that declaration is consumed at chi inverse.
No ordinate projection, omitted multiplicity or absolute-square replacement of
the signed zero pairing enters. The exact source is the canonical Neumann note,
section 1, and the established source-local character-orientation record.

Replacing omega by 1 in (1) preserves c,b,S,L and all coefficient magnitudes.
It is only an auxiliary comparison, NOT a replacement principal character of
conductor q. For q=1 the ACTUAL source is a_1(f)+<f,R_L f>, where
R_L=u tensor v+v tensor u, u=exp((x-L/2)/2), v=exp(-(x-L/2)/2).
Its two pole orientations will not be dropped; see section 8.

## 2. The common domain, compactness, and the original smooth core

**WGPC-v1-1.** On V={f in L2(I):Gamma_b(f)<infinity}, (1) is closed and lower
bounded, has compact resolvent, and has C_c^infinity(I,C) as a form core.
The modulus of any member of V also belongs to V.

Proof. Plancherel for the zero extension, with F_f(xi)=integral f(x)exp(i xi x)dx,
and Tonelli give

    Gamma_b(f)=(1/(2pi)) integral_R Psi_b(xi)|F_f(xi)|^2 dxi,
    Psi_b(xi)=2 integral_0^infinity kappa_b(u)(1-cos(xi*u))du
      =sum_(j>=0) 2xi^2/[c_j(c_j^2+xi^2)], c_j=b+2j.          (3)

The last identity follows by expanding the positive geometric kernel and
integrating each exponential. It does not assume a digamma identity.
Near zero kappa_b(u)=1/(2u)+O_b(1), and its tail is integrable. Moreover,
for 0<u<=1, kappa_b(u)>=exp(-b)/(2u). For |xi|>=1 this yields

    Psi_b(xi)>=exp(-b)(log|xi|-3).                             (4)

Indeed substitute v=|xi|u; the part v<1 is nonnegative, and integration by parts
bounds |integral_1^R cos(v)/v dv| by 3. Splitting the upper integral at
min(1,1/|xi|) and using 1-cos v<=min(v^2/2,2) proves

    Psi_b(xi)<=C_b(1+log(1+|xi|)).                             (5)

Thus 1+Psi_b is comparable to 1+log(1+|xi|). Its weighted L2 Fourier norm is
complete. The support condition is a closed L2 condition, so Gamma_b is closed
on V. It is densely defined since smooth compact functions belong to V.

For R>exp(3), (4) bounds the L2 Fourier mass outside [-R,R] of a bounded
Gamma-energy family by a constant divided by log R-3. Fourier projection onto
[-R,R], followed by restriction to I, is a compact operator on L2(I): its kernel
is sin(R(x-y))/(pi(x-y)), continuous on the diagonal and square-integrable on
I times I. These compact operators approximate the embedding V->L2 uniformly
on its bounded sets. Hence that embedding is compact.

For the core assertion first contract a function about L/2 by a factor r<1,
with its L2-preserving factor r^(-1/2). Dilation is strongly continuous as r->1
in the weighted Fourier norm: for 1/2<=r<=1 the logarithmic weights after
rescaling are uniformly comparable, and the assertion follows first for compact
frequency support and then by density. The Fourier phase from centering is
continuous by domination. The contracted support lies strictly inside I.
Convolve with a compact smooth approximate identity of radius smaller than
the remaining boundary gap. Its Fourier multipliers are bounded by one and
converge pointwise to one; weighted dominated convergence proves form-norm
convergence. The resulting functions belong to C_c^infinity(I).

P_omega is bounded self-adjoint, with norm at most 2 sum_(p,k)w_(p,k), so adding
it and c preserves the form domain, core and compact embedding. The associated
lower-bounded self-adjoint operator has compact resolvent. Finally
|| |f|(.+u)-|f| ||_2<=||f(.+u)-f||_2 proves the modulus assertion. QED.

This gives a direct Fourier proof independent of the cosine-domain calculation
in the Neumann note. The two proofs use the SAME actual gamma form, not different
positive spectral models. Their written status is not independent review.

## 3. Exact modulus defect; no global Weil positivity is assumed

Put K_b(r)=integral_r^infinity kappa_b(u)du and
W_b(x)=K_b(x)+K_b(L-x). Splitting inside and outside pairs proves

    Gamma_b(f)=integral_(0<x<y<L) kappa_b(y-x)|f(y)-f(x)|^2 dxdy
                        +integral_I W_b(x)|f(x)|^2 dx.         (6)

All integrals have nonnegative integrands, so Tonelli justifies the split even
before their finiteness is known. Let r=|f| and write f(x)=r(x)z(x), with |z|=1
where r>0 and an arbitrary unit value otherwise. For f in V,

    a_omega(f)-a_1(r)
      =integral_(x<y) kappa_b(y-x)r(x)r(y)|z(y)-z(x)|^2 dxdy
       +sum_(p,k) w_(p,k) integral_0^(L-s_(p,k))
          r(x)r(x+s_(p,k))|z(x)-omega_p^k z(x+s_(p,k))|^2 dx. (7)

To verify (7), expand the differences of the two squared moduli in (6) and
expand each prime cross term. The boundary and scalar terms cancel exactly.
The difference of the two gamma integrands is pointwise nonnegative and bounded
by the original finite-energy integrand, so there is no subtraction of divergent
integrals. The prime inventory is finite. Both terms on the right are nonnegative.

In particular lambda(omega)>=lambda_0. Equation (7) is a positive expression
for a COMPARISON DEFECT. It does not express the full arithmetic form as a
nonnegative sum; a_1(r) remains and can be negative.

## 4. The flat-phase ground state is simple and positive almost everywhere

**WGPC-v1-2.** A_0 has a normalized real ground state g>0 almost everywhere,
unique up to constant complex phase. Its next spectral value is strictly larger
than lambda_0.

Proof. Compact resolvent gives a minimizing eigenvector. By (7), its modulus is
also a minimizer. To establish strict positivity without an unproved pointwise
regularity assumption, set kappa_*=kappa_b(L)>0 and let Jf=(integral_I f)1_I.
The bounded rank-one operator J has norm L. Let B=A_0+kappa_* J.
Since

    integral_(x<y)|f(y)-f(x)|^2 dxdy
                        =L||f||^2-|integral_I f|^2,

the form of B replaces the interior kernel in (6) by kappa_b(y-x)-kappa_*>=0,
and adds kappa_* L to its multiplication coefficient. Its prime cross terms
still have positive real coefficients. Hence b(|f|)<=b(f).

For sufficiently large alpha, B+alpha is strictly positive. Its inverse R_B
preserves nonnegative functions: minimize
b(u)+alpha||u||^2-2 Re<h,u> for real h>=0 and replace u by |u|.
The minimizer is unique. It follows that R_B h>=0. Also R_B1_I>0 almost
everywhere. Otherwise on a positive-measure set E where it vanishes,

    0=<1_E,R_B1_I>=<R_B1_E,1_I>,

contradicting positivity and injectivity of R_B, since R_B1_E is a nonzero
nonnegative L2 function on a finite interval.

Increase alpha so kappa_* L||R_B||<1. The norm-convergent resolvent expansion is

    (A_0+alpha)^(-1)=sum_(n>=0)(kappa_* R_B J)^n R_B.           (8)

Every term preserves positivity. For nonzero h>=0 the n=1 term is
kappa_*<1_I,R_B h>R_B1_I>0 almost everywhere. Thus (8) is positivity improving.
Apply its eigenvector equation to the nonnegative ground state to obtain g>0
almost everywhere.

For any other ground eigenvector f, its modulus is again a nonnegative ground
eigenvector and hence positive almost everywhere by the same resolvent argument.
Equality in (7) at omega=1 forces z(y)=z(x) for almost every pair x,y, because
kappa_b(y-x)>0. Thus f is a constant phase times a strictly positive function.
If the ground eigenspace had dimension greater than one, it would contain a
nonzero vector orthogonal to g, which is impossible for such a function.
Simplicity and compact resolvent yield the positive gap
Delta=lambda_1(A_0)-lambda_0>0. QED.

No continuity or pointwise lower bound for g at the boundary has been assumed.
Positivity improving means strictly positive almost everywhere, not a certified
uniform lower bound for g.

## 5. Strict phase comparison

**WGPC-v1-3.** For the family (1),

    lambda(omega)=lambda_0 iff omega_p=1 for every p in S.     (9)

When S is empty this is a vacuous equality, not a strict statement.

Proof. Suppose equality holds and choose a normalized minimizing eigenvector f
of A_omega. Equation (7) and the variational principle imply that |f| is a ground
state of A_0 and both defect terms vanish. By section 4, |f|=g. The continuous
term forces a constant phase, so f=zeta*g. The atomic term is then

    sum_(p,k) w_(p,k)|1-omega_p^k|^2 C_g(s_(p,k)),

where C_g(s)>0 for every 0<s<L because g>0 almost everywhere. Every active prime
has its first power in the inventory, so each omega_p must equal one. Conversely
the all-one phases reproduce A_0. QED.

Also the variational principle and the bounded perturbation give

    |lambda(omega)-lambda(nu)|
      <=2 sum_(p,k)w_(p,k)|omega_p^k-nu_p^k|
      <=2 sum_(p,k)k*w_(p,k)|omega_p-nu_p|.                    (10)

Conjugation gives lambda(conj omega)=lambda(omega). Neither this symmetry nor
(9) says that lambda is monotone in individual angular coordinates.

For actual q>1 characters, any nontrivial active value gives a strict rise of
the local Weil bottom over its flat-phase comparator. Both values may still
be negative. The bottom of the isolated prime operator remains phase-isospectral
as proved in the preceding note. Retaining Gamma_b is essential to (9).

## 6. The relaxed small-phase coefficient is positive definite

**WGPC-v1-4.** Let S be nonempty and alpha=(alpha_p) in R^S. For
omega_p(t)=exp(i t alpha_p), the lowest spectral value is analytic near t=0,
even in t, and

    lambda(omega(t))=lambda_0+t^2 C(alpha)+O_alpha(t^4),       (11)

where C is a positive-definite quadratic form on R^S.

Here is its exact expression, including eigenfunction relaxation. Put

    d_(p,k)=k alpha_p,
    S_alpha=sum_(p,k) w_(p,k)d_(p,k)(T_s-T_s^*),
    J_alpha=-i S_alpha,
    C_fixed(alpha)=sum_(p,k)w_(p,k)d_(p,k)^2 C_g(s).

S_alpha is real skew-adjoint and J_alpha is self-adjoint. Let R be
(A_0-lambda_0)^(-1) on g perpendicular, extended by Rg=0. This is bounded,
positive and real, with norm 1/Delta. Then

    C(alpha)=C_fixed(alpha)-<J_alpha g,R J_alpha g>
            =C_fixed(alpha)-<S_alpha g,R S_alpha g>.          (12)

Thus the nonnegative second term is SUBTRACTED. Keeping the original ground
state fixed gives an upper estimate for this coefficient, not a lower estimate.

Proof of the expansion. A_omega(t) is an analytic bounded perturbation of A_0
on its unchanged operator domain. A resolvent Neumann expansion on a small
circle around the isolated simple lambda_0 gives an analytic rank-one Riesz
projection and eigenvector. For real small t the eigenvalue stays the lowest,
since the perturbation norm is smaller than the original gap. Normalize the
vector f_t with <g,f_t> real and positive. Complex conjugation identifies the
families at t and -t, proving evenness of lambda.

Direct differentiation gives A'(0)=J_alpha, <g,J_alpha g>=0, and
A''(0)=sum w*d^2(T_s+T_s^*). Differentiating the eigenvector equation, with
<g,f'_0>=0, gives

    f'_0=-R J_alpha g=i u,   u=R S_alpha g real, <g,u>=0.

Differentiating the eigenvalue twice now yields (11)-(12). Equivalently,

    C(alpha)=inf_(v real in V, v perpendicular g)
       [a_1(v)-lambda_0||v||^2-2<v,S_alpha g>+C_fixed(alpha)], (13)

with the minimum attained at v=u. This follows by square completion with the
positive operator A_0-lambda_0 on g perpendicular, whose lower bound is Delta.
The cited analytic facts have just been obtained from a bounded resolvent
expansion, not an assumption of simplicity for A_omega far from t=0.

Strict positivity requires more than the nonnegativity of lambda(omega)-lambda_0.
Suppose C(alpha)=0. From L2 differentiability choose a sequence t_n->0 such
that (f_(t_n)-g)/t_n -> i u almost everywhere. The finitely many shifted versions
have this property on their overlap intervals as well. Write v=u/g almost
everywhere, using g>0. The phases z_t=f_t/|f_t| satisfy

    (z_(t_n)(x)-1)/t_n -> i v(x),  |f_(t_n)(x)| -> g(x)

almost everywhere. Apply (7) to f_(t_n), divide by t_n^2, and note that
a_1(|f_(t_n)|)-lambda_0>=0 because ||f_(t_n)||=1. Fatou's lemma yields

    C(alpha)>=integral_(x<y) kappa_b(y-x)g(x)g(y)(v(y)-v(x))^2 dxdy
      +sum_(p,k)w_(p,k) integral_0^(L-s)
           g(x)g(x+s)(v(x+s)-v(x)+d_(p,k))^2 dx.             (14)

This argument asserts a lower inequality, not an unproved ground-state-transform
equality on a domain of quotients by g. It requires no boundary regularity of g
or preassigned integrability of v; the nonnegative integrals are defined by
Tonelli, and (14) bounds them.

If C(alpha)=0, the first term implies v is constant almost everywhere. Since
<g,u>=integral g^2 v=0, that constant is zero. The remaining term is
C_fixed(alpha). Every first-power overlap C_g(log p) is positive, so this
vanishes only if alpha=0. Hence C(alpha)>0 for alpha!=0. As (12) is a real
quadratic form on a finite-dimensional space, it is positive definite. QED.

The order of reasoning is important: strictness of (9) ALONE would permit a
quartic minimum. The Fatou argument proves the nondegenerate quadratic term.

## 7. A global torus gap and its exact constant dependencies

**WGPC-v1-5.** For each fixed L,b,S with S nonempty there exists c_(L,b,S)>0
such that

    lambda(omega)-lambda_0
                >=c_(L,b,S) sum_(p in S)|omega_p-1|^2        (15)

for all omega in T^S. The constant is independent of the added scalar c in (1).

Proof. Multivariate analytic perturbation gives
lambda(exp(i theta))=lambda_0+C(theta)+O(||theta||^4). Odd total degrees vanish
under theta -> -theta. Positive definiteness in section 6 gives a quadratic
lower bound near zero, and chord distances are at most angular distances there.
On the compact complement of such a neighborhood, (9)-(10) give a strictly
positive minimum of the gap. Divide that minimum by 4|S|, an upper bound for
the chord-distance sum, and combine the bounds. Adding c shifts every eigenvalue
equally and does not change g, Delta, R, or the difference. QED.

There are only finitely many subsets of primes p<exp(L), and two possible gamma
parities. Taking the minimum over their nonempty choices gives a constant c_L>0
valid for all primitive conductors q>1 at this FIXED L, with each actual ramified
prime omitted. If there are no primes p<exp(L), take c_L=1; the sums below are
then empty. The same empty-sum convention applies to any S that is empty. Thus

    lambda_chi(L)>=lambda_flat(q,a,S,L)
                    +c_L sum_(p<exp(L),p not dividing q)|chi(p)-1|^2. (16)

No numerical value, effective implementation, or useful lower asymptotic for c_L
is supplied. Compactness is an existence argument, not a numerical certificate.
As L changes, the inventory and constants change. Nothing here controls c_L as
L tends to infinity or as a new prime threshold is approached.

If one active value differs from one, its order is at most phi(q), giving
|chi(p)-1|>=2sin(pi/phi(q))>=4/phi(q). Therefore the rise in (16) is at least
16c_L/phi(q)^2. This is also an existence bound with c_L unevaluated, not an
absolute positive lower bound for the source operator. Nonprincipal characters
can have all their currently active values equal to one; no rise is then claimed.

## 8. Zeta poles, finite certification, and a hostile finite model

For conductor one, the actual source retains R_L. Its lower eigenvalue is
L-2sinh(L/2), so the valid inherited inequality is only

    lambda_zeta(L)>=lambda_flat,polefree(L)-[2sinh(L/2)-L].   (17)

The modulus comparison cannot simply delete R_L. On a centered interval, a real
odd function has M_+=-M_- and pole value -2|M_+|^2; its nonzero modulus is even
and has positive pole value. Thus this term does not obey the required modulus
direction. Also a pole-neutral test class is not preserved under taking modulus.
No claim that the entire zeta form satisfies or violates a new modulus theorem
is made here; the proof in sections 3-7 is specifically pole-free.

**WGPC-v1-6 (finite detection of a relative phase gap).** For fixed nontrivial
omega with computable entries (in particular actual Dirichlet character phases),
the exact compact-resolvent local operators A_omega,A_0 admit finite source-bound
spectral enclosures eventually proving lambda(omega)>lambda_0.

Proof. The canonical Neumann note supplies two-sided convergent enclosures for
both operators: its argument uses only the stated gamma, finite prime shifts,
real scalar and optional pole term, not a separate functional equation for the
flat comparator. Let ell_N^omega tend to lambda(omega) from below and let
u_M^0 be finite upper approximations tending to lambda_0. Monotonicity of the
lower sequence is unnecessary. Since (9) gives a strictly positive gap,
eventually ell_N^omega>u_M^0, writing u_M^0 for the same upper bound. Finite
entry intervals and complete analytic tail budgets can retain a positive rational
slack. This proves strict-margin certificate existence for the RELATIVE
comparison, not an executed certificate, not nonnegativity of lambda_0, and not
universal all-window Weil positivity. QED.

As a separate exact algebraic check, take kappa,w>0 and real v, and consider

    A_theta=[[kappa+v, -kappa-w exp(i theta)],
             [-kappa-w exp(-i theta), kappa+v]].

Its lowest value is kappa+v-|kappa+w exp(i theta)|. The rise over theta=0 is

    kappa+w-sqrt(kappa^2+w^2+2kappa*w*cos(theta)),

with small-angle coefficient kappa*w/[2(kappa+w)]. The fixed-state coefficient
is w/2, and the relaxation correction is w^2/[2(kappa+w)]. When kappa=0 the
rise vanishes, exactly as in an isolated phase-removable jump. The example
checks the sign and necessity of the correction in (12); it is not an arithmetic
matrix or evidence of an actual zero. This is a written calculation, not a
reported executed numerical or symbolic test.

## 9. Arithmetic disposition and references

The preceding phase-isospectrality theorem does not prevent a genuine phase
penalty after the actual gamma energy is retained. Here the continuous positive
jump kernel forces a constant phase at equality, while a nontrivial atomic prime
phase requires a conflicting phase difference. Compactness supplies a minimizer,
and the second-variation argument makes the resulting penalty quadratic locally.
This accounts for optimized, phase-dependent eigenfunctions, not just modulations
of one fixed template.

The outstanding arithmetic question is quantitative and absolute: establish a
source-bound lower estimate that pays the possibly negative flat comparator on
every required support. Neither the existence of c_L nor a verified relative gap
would establish that inequality. No improved zero-free exponent, actual
negative arithmetic witness, or proof of RH/GRH is claimed. The original full
pole-inclusive Weil criterion, all characters, windows, tests and precisions
remain unchanged. No infinite tail is replaced by finite numerical sampling.

[1] Michael Hinz, *Magnetic energies and Feynman-Kac-Ito formulas for symmetric
Markov processes*, arXiv:1409.7743v3 (2 August 2015), equation (4), Lemma 4.3 and
Corollary 9.2. Primary comparison for magnetic jump energies and diamagnetic
inequalities. We do not silently assume all hypotheses of that general Markov
framework for the present lower-bounded arithmetic form; (7) is proved directly.
https://arxiv.org/abs/1409.7743v3

[2] Matthias Keller, Daniel Lenz, Hendrik Vogt and Radoslaw Wojciechowski,
*Note on basic features of large time behaviour of heat kernels*,
arXiv:1101.0373v2 (18 December 2012), abstract and positivity-improving framework.
Historical comparator for the ground-state mechanism, not an arithmetic source
identity. Section 4 provides a direct rank-one resolvent proof for this form.
https://arxiv.org/abs/1101.0373v2

[3] Rupert L. Frank, Daniel Lenz and Daniel Wingert, *Intrinsic metrics for
non-local symmetric Dirichlet forms and applications to spectral theory*,
arXiv:1012.5050v1 (22 December 2010), ground-state-transform framework.
Adjacent comparison only. The inequality (14) is proved by Fatou and does not
import a quotient-domain ground-state identity from this paper.
https://arxiv.org/abs/1012.5050v1

[4] grwtsk contributors, `PrimitiveWeilNeumannSchur.md`, pinned blob above,
sections 1,4,6-8: exact primitive source, closure, complete enclosures, character
orientation and fixed-window certificate scopes. `WeilJointPrimePhaseBounds.md`,
pinned blob above, sections 4-6: isolated-prime phase-isospectrality, fixed-template
gamma cost, threshold relative bounds. These prior written arguments retain their
actual unverified formal/independent-review statuses.

The source-local map is: WGPC-v1-1 is the form-domain and compactness supplier;
WGPC-v1-2 supplies the positive simple comparator ground state; WGPC-v1-3 supplies
the strict relative lower sign; WGPC-v1-4 is its relaxed quadratic coefficient;
WGPC-v1-5 is the fixed-window torus/uniform-conductor existence bound; WGPC-v1-6
is the finite strict-relative-gap consumer. No Lean declaration or accepted
frontier claim is asserted for these analytical labels. Proof execution,
independent review and actual numerical certification remain NOT_RUN.
