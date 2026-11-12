# Primitive Weil forms: a Neumann decomposition and complete Schur budgets

By grwtsk contributors.

Version 1, 2026-11-11 (America/Los_Angeles).

## Status, consumer, and prior art

This note advances the arithmetic NONNEGATIVITY side of the consumer in
[WeilNegativeWitness.lean](WeilNegativeWitness.lean). It provides a source-exact
finite-to-infinite certification theorem, not its universal certificate-existence
hypothesis and not an RH/GRH proof. Its companion
[CompactConvolutionWeilWitness.md](CompactConvolutionWeilWitness.md) supplies a
written off-critical detector. Together they explain precisely what a finite
negative certificate detects and what all-window positive certificates would need
to establish. No actual off-critical zero is asserted.

Inspected main: `daa8c88b644cf40ada77e76739d84f749068ffde`; complete root tree:
`ecae7d5d2cf49d0ac581342a0a6cdeaf6bb5a1ca`. Coordination: math#1801, scope comment
6814361620. Lean pin `leanprover/lean4:v4.34.1`; mathlib pin
`d13f23b723b8a846827a245b89c10fc7d3f11612`. No dependency or root import changes.

The method is NOT new: Hongmin Li [1], section 3, uses exponential Green responses
and a Neumann/mixed-boundary diagonal for the zeta parity sectors; bramble_trace
[2], section 2, bounds the full response family by a Carleman estimate and uses
Schur complements. Both acknowledge Yoshida's finite-matrix-plus-tail antecedent.
The present written derivation uses the FULL interval, both Dirichlet gamma
parities, the conductor term and complex character phases. It gives an explicit
uniform-in-mode boundary bound, scalar entry remainders and a deliberately coarse
but complete Schur enclosure. The published numerical endpoints in [1,2] are not
inputs and have not been rerun. Originality: UNASSESSED; no novelty is claimed.

Evidence is the analytical argument below. The companion
`GRWTSK/FunctionalAnalysis/HeadTailSchur.lean` contains only scalar square-completion
source candidates, with individual provenance. It does not formalize the Green
identity, operator domains, explicit formula, matrices or any positivity instance.
Elaboration, kernel replay, transitive axiom audit, independent analytical review,
actual interval certification and repository-wide validation: NOT_RUN. Existing
source evidence statuses and known failures are unchanged. A source publication
is not mathematical acceptance.

## 1. Exact primitive source and interval convention

Let chi be primitive of conductor q>=1; q=1 means the actual continued zeta source.
Let a in {0,1} be its parity, chi(-1)=(-1)^a, and delta=1 for q=1 and zero otherwise.
Use the plus Fourier convention F_f(z)=integral f(x) exp(i z x) dx. The full
spectral form is the signed conjugation-swap pairing of the preceding note, with
actual complex zero locations and multiplicities. It is NOT an absolute-square
sum off the real axis.

Translate the support to I=(0,L), L>0, and extend f by zero. Write

    C_f(u)=integral_R conj(f(x)) f(x+u) dx,   E_f=||f||_2^2,
    c0=a+1/2,    c_j=c0+2j,
    kappa_a(u)=exp(-c0*u)/(1-exp(-2u))  (u>0),
    b_chi=log(q/pi)+psi(1/4+a/2).

Translation changes the two exponential moments by reciprocal factors, so their
cross-products, C_f, and the entire Weil quadratic value are unchanged. Put
u(x)=exp((x-L/2)/2), v(x)=exp(-(x-L/2)/2), and let
R_L=u tensor v+v tensor u. Inner products below are conjugate-linear in the first
variable. For s>0 let (T_s f)(x)=1_(0<x<L-s) f(x+s); it is zero when s>=L.
Define the finite self-adjoint prime operator

    P_chi,L=sum_(n>=2, log n<L) Lambda(n)/sqrt(n)
                        [chi(n)T_(log n)+conj(chi(n))T_(log n)^*].      (1)

All prime powers occur through Lambda; the strict endpoint loses only a null
set. The full arithmetic source on C_c^infinity(I,C) is

    Q_chi(f)=b_chi E_f
      +integral_0^infinity kappa_a(u)[2E_f-C_f(u)-C_f(-u)]du
      -<f,P_chi,L f>+delta<f,R_L f>.                               (2)

The gamma numerator is ||f(.+u)-f||_2^2. It is O(u^2) near zero on the smooth
core; the kernel decays at infinity. Formula (2) is the exact plus-orientation
explicit formula in the preceding note, section 7. The two zeta pole terms are
retained in R_L, not replaced by positive squares. The canonical repository
`primitiveArithmeticValue` has the inverse character orientation: for a nonreal
chi the return is at chi inverse, as already recorded in
`../DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md`.
No new same-character phase identification is introduced here.

## 2. One exponential kernel: exact positive boundary response

Let E_c be the integral operator with kernel exp(-c|x-y|), c>0. Let R_c^N be
the inverse of -d^2/dx^2+c^2 with Neumann conditions at 0,L. For x<=y,

    (2c R_c^N)(x,y)=2 cosh(cx)cosh(c(L-y))/sinh(cL).

This follows by solving the homogeneous equation on either side of y, imposing
the Neumann conditions, continuity and the derivative jump -2c. Set r=exp(-cL),
u_c(x)=exp(-cx), v_c(x)=exp(-c(L-x)). Direct subtraction gives

    B_c:=2cR_c^N-E_c
       =[u_c tensor u_c+v_c tensor v_c
                         +r(u_c tensor v_c+v_c tensor u_c)]/(1-r^2)
       = (u_c+v_c) tensor (u_c+v_c)/(2(1-r))
         +(u_c-v_c) tensor (u_c-v_c)/(2(1+r)).                    (3)

Thus B_c is positive and has rank at most two. This is an equality of actual
kernels, not a positive model substituted for the source. Reflection about L/2
splits this boundary response, but does not in general split the prime operator.

Let e_0=L^(-1/2) and e_n=(2/L)^(1/2)cos(pi*n*x/L), n>=1, be the Neumann
orthonormal basis. Write omega_n=pi*n/L and e_n=alpha_n cos(omega_n x), so
alpha_0=L^(-1/2), alpha_n=(2/L)^(1/2) for n>0. The eigenvalue of 2cR_c^N on e_n
is 2c/(c^2+omega_n^2). Consequently a finite gamma partial sum equals a diagonal
operator plus sum_j B_(c_j):

    b_chi I+sum_(0<=j<J)[(2/c_j)I-E_(c_j)]
       =D_chi,L^(J)+sum_(0<=j<J)B_(c_j),
    d_n^(J)=b_chi+sum_(0<=j<J) 2 omega_n^2/[c_j(c_j^2+omega_n^2)]. (4)

Never separate the divergent sum of 2/c_j from its compensating terms.

## 3. The complete boundary family is bounded, not silently discarded

The Neumann image expansion gives, for interior x,y,

    (2cR_c^N)(x,y)=sum_(m in Z)
       [exp(-c|x-y+2mL|)+exp(-c|x+y+2mL|)].

It can be checked by its Neumann boundary conditions and derivative jump, or by
summing the geometric series and comparing (3). Sum in j. The direct m=0 term
is exactly the kernel being subtracted. The two nearest reflected kernels in
B:=sum_(j>=0) B_(c_j) are kappa_a(x+y) and kappa_a(2L-x-y).
All remaining kernels are bounded in sum by 2 sum_(m>=1) kappa_a(mL): the direct
images have distances at least (2m-1)L and the remaining reflected images at least
2mL. The elementary inequality 1/(1-exp(-s))<=1+1/s yields

    kappa_a(s)<=1/(2s)+exp(-s/2),
    sum_(m>=1)kappa_a(mL)
      <=exp(-L/2)/[(1-exp(-L/2))(1-exp(-2L))].

The kernel 1/(x+y) on (0,L) has norm at most pi. Indeed Schur's test with weight
x^(-1/2) uses integral_0^infinity y^(-1/2)/(x+y)dy=pi*x^(-1/2), by y=x t^2.
Each exponential reflected kernel has norm 1-exp(-L). A constant kernel of
value K on I has norm KL. Therefore

    0<=B<=C_L I,
    C_L=pi+2(1-exp(-L))
          +2L exp(-L/2)/[(1-exp(-L/2))(1-exp(-2L))].            (5)

These are form/operator inequalities. The bound applies to arbitrary complex
L2 functions by applying the absolute kernel to their moduli. Finite response
sums are increasing positive operators bounded by C_L I; hence they have a
strong bounded positive limit. We do NOT assert operator-norm convergence of
this series. Boundary concentration can prevent such a claim. All full-response
couplings are retained in B and in the norm (5).

The increasing limits of (4) are

    d_n=log(q/pi)+Re psi(1/4+a/2+i omega_n/2),
    d_n-d_0=sum_(j>=0)2 omega_n^2/[c_j(c_j^2+omega_n^2)].       (6)

The second formula is the convergent digamma difference identity. It proves
that d_n is increasing. Splitting the sum at c_j=omega_n shows that d_n-d_0 is
comparable to log(n+2), up to additive constants for fixed L: below that point
the summands lie between 1/c_j and 2/c_j; above it their sum is bounded by a
constant using 2 omega_n^2/c_j^3. In particular d_n tends to infinity.

For smooth compact f, each compensated exponential form in (4) is nonnegative.
Monotone convergence in its gamma integral and in the diagonal sum, together
with the bounded response limit, proves the exact decomposition

    A_chi,L = D_chi,L+B-P_chi,L+delta R_L                       (7)

on the original core. D is diagonal with entries d_n. The remaining terms are
bounded self-adjoint operators.

## 4. Domain identification and closure

The diagonal form domain is

    V_L={f=sum f_n e_n: sum_n log(n+2)|f_n|^2<infinity}.         (8)

After a scalar shift D is nonnegative and closed there; bounded perturbation
preserves this domain and closedness. Its operator domain has log(n+2)^2 in
place of log(n+2). The resolvent is compact, since the diagonal entries tend
to infinity, and this is preserved under bounded self-adjoint perturbation.

The smooth compact core of (2) is a form core for (7). Here is a direct check,
so that no periodic-domain identification is assumed. Finite cosine sums are
dense in (8). For one such smooth sum p, cut off p on boundary strips of width
epsilon, with a smooth cutoff having derivatives of order O(epsilon^(-j)).
The error g_epsilon is supported on those strips, has L1 norm O(epsilon), and
has first-derivative L1 norm O(1). Its cosine coefficients therefore satisfy

    |<e_n,g_epsilon>|<=C_p min(epsilon,1/n), n>=1,
    |<e_0,g_epsilon>|<=C_p epsilon.

For the 1/n estimate integrate once by parts; the sine vanishes at both
endpoints, so no unaccounted boundary term remains. Splitting the weighted
series at n=1/epsilon gives

    sum_n log(n+2)|<e_n,g_epsilon>|^2
       =O_p(epsilon log(2/epsilon)) ->0.                       (9)

The bounded terms in (7) respect L2 convergence. Thus the closure of the actual
source form is exactly (7)-(8). In particular finite cosine sums, though their
zero extensions need not be smooth at the endpoints, are legitimate form-domain
vectors and can be approximated by admissible compact smooth tests. Negative
strict inequalities persist under this approximation. We have not changed the
original test domain in the RH/GRH criterion.

## 5. Exact matrix entries and finite numerical remainders

For c>0, direct integration gives

    I_n(c)=<e_n,u_c>
      =alpha_n*c*(1-(-1)^n exp(-cL))/(c^2+omega_n^2),
    <e_n,v_c>=(-1)^n I_n(c).

Substitution in (3) gives the following full boundary matrix:

    B_mn=0 if m+n is odd,
    B_mn=2 alpha_m alpha_n sum_(j>=0)
       c_j^2(1-(-1)^n exp(-c_j L))
          /[(c_j^2+omega_m^2)(c_j^2+omega_n^2)] otherwise.     (10)

The source prime matrix is finite and is evaluated from

    (T_s)_mn=integral_0^(L-s) e_m(x)e_n(x+s)dx  (0<s<L),

and zero for s>=L. The entries are elementary sine/cosine integrals. Character
values remain their actual algebraic roots of unity, or zero at nonunits. The
pole entries are r_m^+r_n^-+r_m^-r_n^+, where
r_n^plusminus=integral_0^L e_n(x)exp(plusminus(x-L/2)/2)dx.
These are elementary exponential/trigonometric integrals.

Let P_N project onto modes 0,...,N, and let H_N=P_N A P_N. Let H_N^(J) use the
first J terms of both (4) and (10), but the COMPLETE finite prime and pole
matrices. For J>=1 define c_J=c0+2J. The omitted diagonal and boundary terms
are positive. Using the decreasing-series integral bound gives

    0<=H_N-H_N^(J)<=Theta_(N,J) I,
    Theta_(N,J)=2 omega_N^2[c_J^(-3)+(4c_J^2)^(-1)]
        +4(2N+1)/L *[c_J^(-2)+(2c_J)^(-1)].                  (11)

For the first part use 2 omega_n^2/c_j^3 and sum_(j>=J)c_j^(-3)
<=c_J^(-3)+(4c_J^2)^(-1). For the response remainder use (10),
1-(-1)^n exp(-c_jL)<=2, and bound its positive finite compression by its trace:
its n-th diagonal remainder is <=4 alpha_n^2 sum_(j>=J)c_j^(-2).
Finally sum_(n<=N)alpha_n^2=(2N+1)/L. This proves (11).

If a rational Hermitian matrix M approximates H_N^(J) with certified norm error
r>=0, and [l,u] encloses its least eigenvalue, then

    l-r <= min sigma(H_N) <= u+r+Theta_(N,J).                 (12)

For a lower bound alone the omitted positive responses need not be subtracted.
They may not be omitted from an equality or from an asserted upper bound.
Roundoff, evaluation of the complete prime inventory, and source identity are
additional obligations, not covered by Theta. For Hermitian interval entries,
a certified maximum row sum of absolute entry errors is one usable norm bound.
An exact rational LDL* test or a residual-certified congruence can certify the
finite inequality; bare floating pivots do not. Rump [3], Lemmas 10.13-10.14,
discusses this distinction. Complex Hermitian matrices require their complex
phases or an exact realification, not merely the real parts of their entries.

## 6. Complete infinite-complement estimate

Define explicit constants

    p_chi,L=2 sum_(n>=2, log n<L) Lambda(n)|chi(n)|/sqrt(n),
    r_minus(L)=2sinh(L/2)-L,
    r_plus(L)=2sinh(L/2)+L,
    v_chi,L=C_L+p_chi,L+delta*r_plus(L).

The pole operator has eigenvalues L+2sinh(L/2), L-2sinh(L/2), and zero on the
orthogonal complement of its rank-two range. This follows from
||u||^2=||v||^2=2sinh(L/2), <u,v>=L. In particular it has a negative direction;
its sign is not discarded. Each T_s is a contraction, so

    ||P_chi,L||<=p_chi,L,
    ||B-P_chi,L+delta R_L||<=v_chi,L.

Using B>=0, the high-frequency complement Q_N=I-P_N has the lower bound

    Q_N A Q_N >= eta_N Q_N,
    eta_N=d_(N+1)-p_chi,L-delta*r_minus(L) ->infinity.          (13)

The cross block equals P_N(B-P_chi,L+delta R_L)Q_N, since D is diagonal, and
has norm <=v_chi,L. This estimates the ENTIRE complement, not sampled modes.

**Theorem 1 (finite lower certificate for the full operator).** Let s be real.
Suppose eta_N>s and an actual lower bound a_N for min sigma(H_N) satisfies

    (a_N-s)(eta_N-s)>=v_chi,L^2.                              (14)

Then Q_chi(f)>=s||f||_2^2 on the complete form domain, in particular on the
original compact smooth tests.

Proof. Put x=||P_N f|| and y=||Q_N f||. Equations (13) and the cross norm bound give

    Q_chi(f)>=a_N x^2-2v_chi,L*x*y+eta_N y^2.

For c>0 the scalar identity

    c(a x^2-2bxy+c y^2)
      =(ac-b^2)x^2+(bx-cy)^2                                 (15)

proves nonnegativity if ac>=b^2. Apply this with a=a_N-s, b=v_chi,L,
c=eta_N-s, and use ||f||^2=x^2+y^2. QED.

The companion Lean module records (15), its nonnegativity consequence and this
shifted scalar consumer. It does not assume or formalize the analytic suppliers.
Use (12) for a_N, an outward lower bound for eta_N, and an outward upper bound
for v_chi,L. Thus every part of (14) can be a finite strict rational inequality
once the necessary finite entry enclosures have actually been computed.

**Theorem 2 (unconditional two-sided bottom approximation).** Write a_N^exact
for min sigma(H_N), and lambda_0 for inf sigma(A). Then

    ell_N <=lambda_0<=a_N^exact,
    ell_N=(a_N^exact+eta_N
       -sqrt((eta_N-a_N^exact)^2+4v_chi,L^2))/2.               (16)

For eta_N>a_N^exact,

    0<=a_N^exact-lambda_0
       <=v_chi,L^2/(eta_N-a_N^exact).                         (17)

Proof. The least eigenvalue of the real 2-by-2 matrix with diagonal
(a_N^exact,eta_N) and off-diagonal -v is ell_N. Apply its Rayleigh bound to (x,y).
The upper bound is the variational principle on the finite subspace. Rationalizing
the square root gives (17). The finite minima decrease with N and are bounded
above by a_0^exact, while eta_N tends to infinity. Therefore both bounds converge
to lambda_0, without RH, without a simplicity hypothesis, and even when lambda_0
is zero or negative. No claimed efficient rate is hidden: eta grows only
logarithmically and v may be large. The enclosure may be computationally very
expensive. QED.

Also, if eta_N>0, the local negative index is at most N+1: projection onto the
first N+1 modes is injective on any negative subspace, since a vector entirely
in the complement has positive form. This is a local finite bound, not a bound
on the global number of off-critical zeros.

## 7. Complex characters do not have independent parity sectors

Let Jf(x)=f(L-x). Then J T_s J=T_s^*, whereas D, B, and R_L commute with J.
Consequently

    J A_chi,L J=A_conj(chi),L.                               (18)

If chi is real, reflection commutes with the operator and the even/odd split is
valid. For a nonreal chi, the prime term contains

    Re(chi(k))(T_s+T_s^*) + i Im(chi(k))(T_s-T_s^*),  s=log k.

The first summand preserves reflection parity; the second exchanges it. With
J e_n=(-1)^n e_n one has (T_s)_nm=(-1)^(m+n)(T_s)_mn. Thus for basis indices m,n,

    (P_chi,L)_mn=sum_(k>=2, log k<L) Lambda(k)/sqrt(k)
       [chi(k)+(-1)^(m+n)conj(chi(k))](T_(log k))_mn.         (19)

Same-parity entries use 2Re chi(k); cross-parity entries use 2i Im chi(k).
They are Hermitian couplings and must be retained. The full-interval proof above
does so. Positivity of the two diagonal parity blocks is insufficient: the
Hermitian matrix [[1,2i],[-2i,1]] has positive diagonal blocks and eigenvalues
3,-1. This is an exact finite countercheck, not an arithmetic counterexample.

## 8. Return to off-critical detection and the universal quantifiers

Theorem 2 makes a genuinely negative local bottom detectable by a finite matrix:
if lambda_0<0, then eventually min sigma(H_N)<0. Its negative vector lies in the
form domain and can be made compact smooth by section 4 while retaining a strict
negative margin. Conversely a negative compact witness from the preceding note
lies in some finite interval and its cosine projections converge in the form norm.
Thus the whole-divisor negative witness is not lost in the arithmetic Galerkin
passage. For a finite negative-definite witness subspace, approximate a basis;
its finitely many form entries converge, preserving its negative gap.

In particular the algebraic negative index has the exact arithmetic exhaustion

    n_-(Q_chi)=sup_(L in positive integers, N>=0) n_-(H_chi,L,N), (20)

where either side may be infinite. Translation invariance places any finite
collection of compact tests in (0,L) for some integer L. Every finite negative
matrix subspace also transfers back to smooth tests by the form-core argument.
Combined with the previous note, (20) counts DISTINCT off-critical spectral
conjugate pairs, not their multiplicities. No numerical count is reported here.

For nonnegativity, allowing a tolerance avoids requiring a positive gap at a
possibly degenerate window. For each fixed primitive chi and L, the following
are equivalent:

(a) A_chi,L>=0.
(b) For every epsilon>0 there exist N and finite certified lower/upper bounds
    in (12)-(14) proving A_chi,L>=-epsilon I.

To prove (a)->(b), all exact finite minima are >=0. First choose N so that
eta_N+epsilon>2v^2/epsilon. Then choose J and entry precision so that the finite
lower bound a_N is >-epsilon/2; this is possible by (11)-(12) and exact finite
positive-margin certification. Condition (14) holds for s=-epsilon with strict
slack. Conversely (b) implies every fixed form value is nonnegative by letting
epsilon tend to zero. Restricting epsilon to positive reciprocal integers suffices.

Via the full explicit formula and the compact off-critical detector, the actual
primitive Dirichlet target (including conductor one) is therefore equivalent to

    for every primitive chi, every integer L>=1, every integer j>=1,
    there exist N,J and sound finite enclosures satisfying (14) with s=-1/j. (21)

These quantifiers are essential. This note proves the SOUNDNESS and fixed-window
strict-margin completeness of the verification method, not the universal existence
in (21). No finite successful collection supplies the omitted windows or characters.
Neither the preceding dispersion remainder nor universal arithmetic positivity
has been bounded by this work.

## 9. Falsification and evidence boundaries

- The complete response is bounded and positive, but its Fourier cross block need
  not vanish. Equations (13)-(15) pay it. A positive finite compression alone is
  not a certificate for the full operator.
- Pointwise positive kernels need not define positive operators. Positivity here
  comes from the explicit rank-two square decomposition (3), not kernel signs.
- The response series is used in strong operator topology. The finite-compression
  norm remainder (11) is not a global operator-norm tail claim.
- All active prime powers, character phases and both zeta poles remain. Fixed-window
  conductor dominance is not fixed-character positivity at every window.
- The source formula uses analytically continued L-functions and the established
  dual-character orientation. No totalized series is used outside convergence.
- An exact symbolic check verifies (3) after exponential substitution and (15).
  An exact 2-by-2 check verifies the parity-coupling counterexample. Numerical
  integral/formula comparisons are diagnostics only, not certified inequalities.
- No instance of (14) for an actual arithmetic operator has been interval-certified
  in this increment. Neither cited external numerical certificates nor local
  floating comparisons are reported as a fresh independent verification.

## References and declaration correspondence

[1] Hongmin Li, *Cutoff-free positivity of localized Weil forms through the
(log 11)/2 threshold*, rStation paper 45, v2, 9 November 2026, sections 3-5,
especially Lemma 3.1 and equations (3.3)-(3.4), (4.9). Primary comparator for
the zeta parity Green-response identity and complete Schur method. The numerical
endpoint is not an input here. https://rstation.ai/problems/riemann_hypothesis/papers/45

[2] bramble_trace, *Full-source Schur certificates for Weil positivity at support
radius two*, rStation paper 60, v1, 26 October 2026, section 2, equations
(2.5)-(2.7) and the form-core argument; section 9 for full-operator square
completions. Comparator for bounded full responses and infinite couplings. Its
large certificate is not rerun or imported as an accepted local proof.
https://rstation.ai/problems/riemann_hypothesis/papers/60

[3] Siegfried M. Rump, *Verification methods: Rigorous results using floating-point
arithmetic*, Acta Numerica 19 (2010), 287-449; supplied corrected author edition,
pp. 72-73, Lemmas 10.13-10.14. Used to distinguish residual/interval certification
from bare floating pivots. https://doi.org/10.1017/S096249291000005X

[4] Masatoshi Suzuki, *Weil's quadratic form via the screw function*, supplied
arXiv:2606.09096v3, 24 September 2026, sections 1.1 and 3. Comparator for the
localized closed form and the smooth-core issue in the zeta case. No RH-dependent
spectral-convergence theorem is used. https://arxiv.org/abs/2606.09096v3

[5] grwtsk contributors, *Compact convolution witnesses for the full primitive
Weil form*, at the source pin above, blob 8d0cf2b78101cd29a5785fcd8016408cb65bbdd5,
sections 1,5-7. Supplies the written signed source, negative index and exact
arithmetic return. The phase correction is inherited, not altered.

Formal-source correspondence is deliberately small: HeadTailSchur.schur_square_identity
is (15); HeadTailSchur.schur_quadratic_nonneg is its ordered-field consequence;
HeadTailSchur.lower_bound_of_head_tail_budget is the scalar step in Theorem 1.
All are under GRWTSK.FunctionalAnalysis. Their individual provenance records
identify the unchanged hypotheses and all unformalized analytic suppliers.
