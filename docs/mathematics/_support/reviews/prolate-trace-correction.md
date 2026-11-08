# Finite-prolate trace correction with an explicit full Weil-operator cost

Local attribution: grwtsk contributors.
Research date: 2026-11-04 (America/Los_Angeles).
Original analytical exposition and source: repository MIT license.
AI-assisted analytical work and Lean drafting; independent review NOT_RUN.

## 0. Exact result and limits

This increment addresses the ACTUAL finite-prolate family in Connes,
*The Riemann Hypothesis: Past, Present and a Letter Through Time*,
arXiv:2602.04022v1, pp.28--30, not a hard cutoff of its Hermite limit.
Its zero-integral two-mode seed generally has a nonzero value at zero.
We compute that defect and repair it by a fixed explicit compact function.
The repair has a uniform weighted-transform price and an explicit graph-norm
price for the full, pole-inclusive arithmetic Weil operator.

For T>0, lambda=exp(T), define

    rho(u) = (1-u^2)^2*(1-7*u^2) for |u|<=1, and 0 otherwise,
    g_T(t) = 1_{[-T,T]}(t) * exp(t/2) * sum_{n>=1} rho(n*exp(t)).

Every sum here is finite at each t. Let

    c_inf = digamma(1/4) - log(pi),
    C = |c_inf| + 4 + log(3),
    C_arch = sqrt((80^2*C^2 + 360^2*(C^2+2*C+2))/pi),
    B_T = C_arch + 40*(1+T)*sqrt(lambda) + 320*lambda*T.

For the canonical FULL Weil operator A_T on L2([-T,T],dt), with zero extension,
we prove analytically, without RH or any spectral-separation premise,

    g_T in Dom(A_T),    ||g_T||_2 <= 40,    ||A_T g_T||_2 <= B_T.       (0.1)

For every 0<=a<1/2,

    sup_{|Im z|<=a} |g_hat_T(z)| <= 40/(1/2-a),                       (0.2)

with Fourier convention g_hat(z)=integral g(t)*exp(-i*z*t) dt.
No T-dependent exponential price is needed in (0.2).

For the source seed H_lambda in §1, put d_lambda=H_lambda(0),
H_lambda^sharp=H_lambda-d_lambda*rho, and restrict their summation-map images
to [lambda^-1,lambda]. In logarithmic coordinates call them K_T and K_T^sharp.
Then

    integral_R H_lambda^sharp = H_lambda^sharp(0) = 0,
    K_T^sharp - K_T = -d_lambda*g_T,
    ||A_T(K_T^sharp-K_T)||_2 <= |d_lambda|*B_T,
    sup_{|Im z|<=a}|K_hat_T^sharp(z)-K_hat_T(z)|
        <= 40*|d_lambda|/(1/2-a).                                   (0.3)

These are actual source-return estimates for a concrete correction, not a
formal residual assigned as a field. Both pole moments and all prime shifts
are charged. The archimedean multiplier is unbounded, so its domain and norm
are proved separately below.

**Not proved:** cofinal complementary coercivity, parity-sector separation,
genuine-minimizer convergence, all-real zeros, a complete finite-prolate
asymptotic theorem, RH, or Dirichlet GRH. The correction does NOT establish
that the corrected family escapes the old residual/gap obstruction. It repairs
one trace defect with a price; its full residual and an independent lower gap
still have to be compared. No claim of theorem-level novelty is made.

## 1. The two finite-prolate traces are different

Use real, L2-normalized regular prolate modes h_0,h_4 on [-lambda,lambda],
extended by zero, and choose their signs with positive values at zero.
Use the additive Fourier convention F_+h(y)=integral h(u)*exp(2*pi*i*u*y) du.
The source's restricted relations are

    F_+ h_0(y)=chi_0*h_0(y),   F_+ h_4(y)=chi_2*h_4(y), |y|<=lambda,
    1>chi_0>chi_2>0.                                                (1.1)

The index on chi_2 refers to h_4, as in the survey. The ordering follows from
its simple decreasing concentration eigenvalues and the positive signs of
these two Fourier eigenvalues. This is a property of the prolate operator,
not of the arithmetic Weil operator.

Write a=h_0(0), b=h_4(0). These values are nonzero: a regular even solution of
the second-order prolate ODE has derivative zero at the ordinary point 0; if
its value were also zero, uniqueness would make it identically zero. This
uses the actual regular modes, not point evaluation as a bounded map on L2.

Evaluation of (1.1) at zero gives the genuine integral identities

    integral h_0 = chi_0*a,     integral h_4 = chi_2*b.

A denominator-free representative of the source's unique zero-integral
combination is

    H_lambda = chi_2*b*h_0 - chi_0*a*h_4.                            (1.2)

Its traces are exactly

    integral H_lambda = 0,
    d_lambda := H_lambda(0) = (chi_2-chi_0)*a*b != 0.                 (1.3)

More generally the two equations c*a+d*b=0 and c*chi_0*a+d*chi_2*b=0
force c=d=0. Their determinant is a*b*(chi_2-chi_0). Thus a nonzero vector in
this two-mode span cannot satisfy both source S_0 conditions exactly. This
calculation qualifies the application of (18); it is not a claim that the
survey proves the two conditions equivalent at finite lambda.

Cauchy--Schwarz and the unit norms, applied to the two actual integral
identities, also give

    |a| <= sqrt(2*lambda)/chi_0,    |b| <= sqrt(2*lambda)/chi_2,
    |d_lambda| <= 2*lambda*(chi_0-chi_2)/(chi_0*chi_2)
               <= 2*lambda*(1-chi_2)/(chi_0*chi_2).                 (1.4)

No complementary coercivity or inverse of A_T is used. This is an explicit
bound in the prolate eigenvalues, not an asserted asymptotic rate relative
to the unknown Weil gap.

## 2. Fixed compact repair and exact signed cancellation

The profile is

    p(u)=1-9*u^2+15*u^4-7*u^6,
    F(u)=u-3*u^3+3*u^5-u^7=u*(1-u^2)^3,   F'=p.

At u=+/-1 both p and p' vanish. The zero extension rho is therefore C1,
even, supported in [-1,1], and has rho(0)=1. Since F(1)=F(-1)=0,
integral rho=0. In particular it is an actual integrable correction, not a
function whose zero integral is assumed. Polynomial integration also gives
||rho||_2^2=3072/5005; no norm normalization of rho is needed.

Set H_lambda^sharp=H_lambda-d_lambda*rho. Since lambda>1, the correction
stays inside the source support. Both traces in (0.3) follow immediately.
It is still only piecewise smooth after zero extension of the prolate modes.
This construction does NOT give global Fourier invariance or membership in
the Schwartz class. We do not invoke a global-radical or Poisson theorem on
that unsupported basis.

The corrected seed is nonzero. Otherwise H_lambda would equal d_lambda*rho
and hence vanish on (1,lambda). Analyticity of the regular modes on the
connected interval (-lambda,lambda) would force H_lambda identically zero,
contradicting (1.3). Moreover on the nonempty interval
(max(1,lambda/2),lambda), only the n=1 summand survives and rho(u)=0.
Consequently the corrected windowed summation image is nonzero in L2.
This gives nonvanishing, not a cofinal quantitative lower norm bound.

The signed sums must be bounded before taking absolute values. For any
compactly supported absolutely continuous f on [0,infinity) with integral
zero and f' integrable,

    |sum_{n>=1} f(n*u)| <= integral_0^infinity |f'(v)| dv,   u>0.      (2.1)

Proof: subtract integral f from u*sum f(n*u), partition into intervals
[(n-1)u,n*u], and write f(n*u)-f(v)=integral_v^{n*u} f'(w) dw.
Taking absolute values and changing the order on each cell bounds the
numerator by u*integral |f'|. Division by u proves (2.1). All but finitely
many cells have zero contribution. A support-endpoint sample contributes
zero here, so floor and ceiling conventions agree.

On [0,1], p'=-18*u+60*u^3-42*u^5, hence integral |p'|<=9+15+7=31.
The second profile q(u)=u*p'(u)=-18*u^2+60*u^4-42*u^6 has primitive
G(u)=-6*u^3+12*u^5-6*u^7, which vanishes at 0 and 1. Its zero extension
is absolutely continuous (its value, though not its derivative, vanishes
at the support endpoint), and integral |q'|<=18+60+42=120. Thus

    |sum rho(n*u)| <=31 <=40,
    |sum (n*u)*rho'(n*u)| <=120 <=140.                               (2.2)

### Independent finite telescope used in the Lean candidate

For y=N*u, literal polynomial summation gives

    u*sum_{n=1}^N p(n*u) = F(y)+u*E(u,y),
    E=(p(y)-1)/2
      +u*(-3*y/2+5*y^3-7*y^5/2)
      +u^3*(-y/2+7*y^3/6)-u^5*y/6.                                 (2.3)

For q, the same identity has primitive G and endpoint

    E_q=q(y)/2+u*(-3*y+20*y^3-21*y^5)
        +u^3*(-2*y+7*y^3)-u^5*y.                                   (2.4)

Both identities follow by induction in N using polynomial algebra, and keep
all degree-six Euler endpoint corrections. If 0<u<=1 and N*u<=1<=(N+1)u,
then |F(y)|<=8u, |G(y)|<=24u, |E|<=29 and |E_q|<=114. Indeed 0<=y<=1,
0<=1-y<=u, F=y*(1-y)^3*(1+y)^3 and
G=-6*y^3*(1-y)^2*(1+y)^2. The endpoint bounds are termwise bounds on
polynomials of y, AFTER the signed sample sum has telescoped. Therefore the
sample sums have absolute values <=37 and <=138, respectively. The source
uses the convenient round bounds 40 and 140. Extending the finite sum beyond
N adds only zero corrector terms. This is a separate algebraic verification
of the complete signed-sum estimates, not a sampled numerical proof.

## 3. Uniform transform and derivative estimates

Let G_0(t)=E(rho)(exp(t)), without the support window. By support G_0=0 for
t>=0. For t<0 the sums are locally finite. The values and first derivatives
of a newly entering rho-term are zero at its support endpoint, so G_0 is C1
across every change of sample count. From (2.2), using the looser formal
constants,

    |G_0(t)| <=40*exp(t/2),
    |G_0'(t)| <=160*exp(t/2),       t<=0.                            (3.1)

For the second inequality differentiate each retained term:

    G_0'(t)=exp(t/2)*( (1/2)*sum rho(n*exp(t))
                          +sum n*exp(t)*rho'(n*exp(t)) ).

The bound is 40/2+140=160. At t=0 both G_0 and G_0' vanish.
For g_T=1_{[-T,0]}G_0, (3.1) gives

    ||g_T||_2<=40,    ||g_T||_1<=80,
    |g_hat_T(xi)|<=min(80,360/|xi|), xi real and nonzero.             (3.2)

The last estimate is integration by parts on [-T,0]. It retains the left
endpoint jump: |G_0(-T)|+integral_{-T}^0|G_0'|<=40+320=360.

For |Im z|<=a<1/2, integrate the pointwise estimate rather than multiplying
an unweighted L2 error by the growing support factor:

    |g_hat_T(z)| <=40*integral_{-T}^0 exp((1/2-a)*t)dt
                =40*(1-exp(-(1/2-a)*T))/(1/2-a)
                <=40/(1/2-a).                                     (3.3)

Thus the repair error is bounded by the right side of (0.3). At a=1/2 the
same bound becomes 40*T; no uniform boundary-strip claim is made. For a>1/2
this argument has a growing exponential price.

Additive evenness of H_lambda^sharp does not imply logarithmic evenness of
its summation image. With Jf(t)=f(-t), the CHANGE in reflection defect is at
most 2*|d_lambda|*||g_T||_2<=80*|d_lambda|. This controls only the additional
defect, not the original prolate image's reflection defect.

## 4. Exact arithmetic operator and its archimedean domain

The source object is CCM, *Zeta Spectral Triples*, arXiv:2511.22755v1,
(3.5), (3.7)--(3.11), (3.19)--(3.20), Propositions 3.3--3.4 and Theorem 3.6.
Use antilinear-first inner products. In logarithmic coordinates the operator
on an admissible supported f is the restriction of the archimedean multiplier,
plus the pole operator, minus the finite symmetric prime translations:

    A_T f = P_T F^{-1}(w*F(f)) + P_pole f - P_prime f,
    w(xi)=Re digamma(1/4+i*xi/2)-log(pi),
    P_pole f(t)=exp(t/2)*M_-(f)+exp(-t/2)*M_+(f),
    P_prime f(t)=sum_{2<=n<lambda^2} Lambda(n)/sqrt(n)
                    *(f(t+log(n))+f(t-log(n))),                     (4.1)

where functions in the last line are extended by zero. At n=lambda^2 the
translations vanish almost everywhere, so equality at the cutoff contributes
zero, not an omitted unknown error. Both pole moments remain present.
The multiplier-form domain is the source's maximal finite-energy domain,
restricted to the supported subspace. If w*F(f) is in L2, (4.1) represents
the form against every vector in that domain; hence f belongs to Dom(A_T).
This is a sufficient domain criterion for these vectors, NOT an assertion
of essential self-adjointness on the trigonometric core of the real-zero theorem.

For explicit control set a_j=2j+1/2. The convergent digamma difference series
or the expansion of the source jump kernel gives

    m(xi):=w(xi)-c_inf
       =sum_{j>=0} 2*xi^2/(a_j*(a_j^2+xi^2)) >=0.                  (4.2)

The j=0 term is at most 4. For j>=1 the summand, as a function of a_j, is
nonnegative and decreasing. Comparing each term to the preceding interval
of length 2 gives

    m(xi)<=4+(1/2)*log(1+4*xi^2)
          <=4+log(1+2*|xi|).                                      (4.3)

For xi=0 this follows by continuity (all summands vanish). For xi!=0, the
integral used in the comparison is
integral_{1/2}^infinity 2*xi^2/[v*(v^2+xi^2)]dv=log(1+4*xi^2).
This checks the logarithmic growth without importing a Stirling estimate.

Consequently |w(xi)|<=C on |xi|<=1 and |w(xi)|<=C+log|xi| on |xi|>=1,
with C as in §0. Combining (3.2) and Plancherel in the stated Fourier convention,

    ||F^{-1}(w*F(g_T))||_2^2
       <=[80^2*C^2+360^2*(C^2+2*C+2)]/pi.                           (4.4)

Here integral_1^infinity (C+log x)^2/x^2 dx=C^2+2C+2, by x=exp(v).
The factor 1/pi accounts for the two frequency half-lines and the Plancherel
factor 1/(2*pi). Thus the unbounded archimedean part has the uniform norm
C_arch, and g_T satisfies the actual operator-domain criterion.

## 5. Every prime translation and both pole moments

Each zero-extended translation compressed to [-T,T] has norm at most one.
Using only 0<=Lambda(n)<=log n and sum_{n=1}^M n^(-1/2)<=2*sqrt(M),

    ||P_prime|| <=2*sum_{2<=n<lambda^2} Lambda(n)/sqrt(n)
                 <=8*lambda*T,
    ||P_prime g_T||_2 <=320*lambda*T.                               (5.1)

The finite-sum bound follows from comparison with the decreasing integral
of x^(-1/2), and floor(lambda^2)<=lambda^2. This estimate retains all prime
powers, including character-free coefficients and the full cutoff. No
favorable sign of a nonnegative hard-cutoff tail is used: rho and g_T change
sign, and the proof uses the absolute operator bound instead.

From (3.1),

    |M_+(g_T)|<=40*(1-exp(-T))<=40,
    |M_-(g_T)|<=40*T,
    ||1_{[-T,T]} exp(+/-t/2)||_2=sqrt(lambda-lambda^-1)<=sqrt(lambda).

Therefore

    ||P_pole g_T||_2<=40*(1+T)*sqrt(lambda).                         (5.2)

Equations (4.4), (5.1), and (5.2) prove (0.1). In particular a support-endpoint
jump does not invalidate these vectors: its Fourier contribution was retained
in the 360/|xi| bound and is integrable after the logarithmic multiplier.
The whole-line positive jump multiplier was used only for its graph estimate;
no positive whole-line arithmetic operator or global radical was assumed.

The actual prolate images K_T and K_T^sharp are compact piecewise C1 with
finitely many jumps on each fixed window: only n<=lambda^2 can occur and the
regular prolate modes are smooth up to the endpoints. The same elementary
Fourier O(1/|xi|) argument establishes their individual membership in Dom(A_T).
Endpoint values on a finite set of t do not change L2 functions or integrals.
This does not justify a pointwise Poisson identity with unspecified endpoint
averaging, which is not used here.

## 6. Rayleigh and residual prices, without a fabricated gap

Let d=d_lambda, eta=|d|, K=K_T, Ksharp=K-d*g_T, n=||K||_2, and q=Q_T(K).
Linearity and self-adjointness yield, for any real spectral center z,

    ||(A_T-z)(Ksharp-K)||_2 <=eta*(B_T+40*|z|),
    |Q_T(Ksharp)-Q_T(K)| <=2*eta*B_T*n+40*eta^2*B_T,                 (6.1)
    ||Ksharp||_2>=n-40*eta,
    | ||Ksharp||_2^2-n^2 |<=80*eta*n+1600*eta^2.                    (6.2)

For example the mixed form is <A_T g_T,K>, so its absolute value is bounded
by B_T*n; there is no need to infer it from an energy inequality on a
possibly indefinite form. The eta^2 term is retained.
If n>40*eta, set mu=q/n^2. Then

    |mu_sharp-mu| <=
      [2*eta*B_T*n+40*eta^2*B_T
         +|mu|*(80*eta*n+1600*eta^2)]/(n-40*eta)^2.                  (6.3)

This follows by writing the difference over the new squared norm, and uses
the OLD mu explicitly. It neither assumes nor proves a positive ground
energy, a complementary lower bound, or a residual smaller than a gap.
The source seed's nonzero image proves n>0; the stronger quantitative
condition in (6.3) must still be established where this estimate is used.

## 7. A fixed, nonzero normalization under explicit Hermite phases

Set A=2^(1/4)=sqrt(sqrt(2)), and use the standard real L2-normalized phases

    h_0^inf(u)=A*exp(-pi*u^2),
    h_4^inf(u)=A/(8*sqrt(6))*(64*pi^2*u^4-96*pi*u^2+12)*exp(-pi*u^2).

Both values at zero are positive. A direct polynomial calculation gives

    (-sqrt(3)/2)*[h_4^inf(0)*h_0^inf-h_0^inf(0)*h_4^inf]
       =2*pi*u^2*(2*pi*u^2-3)*exp(-pi*u^2)=4*h_p(u).                (7.1)

The scalar -sqrt(3)/2 is nonzero and contains no denominator depending on
lambda, a central zeta value, or an unknown spectral projection.
If the actual finite modes converge with these phases and with sufficient
control of their values at zero, and chi_0,chi_2 tend to one, this is the
normalization that yields the corrected limiting kernel rather than the
printed h_p. The correction coefficient d_lambda then tends to zero with
whatever rate is proved by those asymptotics.

Equation (7.1) is an exact identity, not a proof of those asymptotics.
L2 convergence alone does not control point evaluation, and this increment
does not prove the full finite-prolate Fact 6.4, its strip range, or comparison
with the genuine Weil minimizer. The previous factor-four limiting-kernel
audit is not counted as a new result; (7.1) calibrates a particular
DENOMINATOR-FREE FINITE-FAMILY REPRESENTATIVE under explicit phases.

## 8. Consumer, scope, and remaining first unsupported implication

The result supplies a concrete way to repair the two trace constraints while
controlling the full arithmetic operator and the multiplicative transform.
The transform control is stronger than a naive supported-L2 estimate for
this correction, because the signed summation map has a sqrt(u) bound near
zero. The arithmetic graph estimate prevents treating a small coefficient
change as a free operation under an unbounded operator.

It DOES NOT supply the lower-bound mechanism requested for cofinal windows.
The first still unsupported implication would be to deduce an independently
proved beta_T>mu_T from the corrected seed's small trace defect or small
absolute correction cost. No such inference is made. A full residual bound
for K_T^sharp and lower bounds on the odd sector and even complement remain
necessary if the residual/gap method is chosen. A direct weighted comparison
with an independently identified genuine ground state remains an alternative.

This result neither repeats nor invalidates the ordinary-cone and hard-cutoff
obstructions. It does not rely on the historical hard-cutoff global radical
identity. The multiplier/source-domain correspondence it does use was checked
against CCM (3.19)--(3.20) and derived in §4. The inherited historical proofs
are not thereby independently reviewed in full.

The all-character source work at eeaa5cdad0b93964c1a898a5a7e870e5a5db3d84,
issue #1673, is retained. None of its complete compact inventories,
additive approximations, right-half-plane tails or finite Hodge estimates
proves a lower bound for the arithmetic Weil operator. No character-dependent
spectral conclusion is imported by analogy; conductor, parity, gamma,
conjugate-character and inducing-character returns remain separate.

## 9. Sources, prior comparison and formal evidence

Primary source versions inspected:

* Connes, arXiv:2602.04022v1, pp.28--30, (17), (18), Facts 6.3--6.4 and §6.6.
  The actual finite-prolate construction and its two distinct remaining
  obligations are preserved. The figure on p.29 is a plotted comparison,
  not a lower-bound certificate.
* Connes--Consani--Moscovici, arXiv:2511.22755v1, exact full-form and operator
  statements listed in §4; CC BY 4.0 source attribution retained.
* Connes--van Suijlekom, arXiv:2511.23257v1, Theorem 6.1 and its explicit
  essential-self-adjoint trigonometric-core hypothesis. No application claimed.
* Suzuki, arXiv:2610.32704v1, Theorems 1.1--1.2: RH is an explicit premise and
  the limiting canonical product counts distinct ordinates. Not imported.
* Zhu, arXiv:2608.24827v2, Theorem 6.2: the reported simple-even certificate is
  for support [-0.8,0.8]. Not independently replayed or imported here.

The closest mechanisms are the source's two-mode prolate approximation,
its S_0 Poisson relation, elementary signed quadrature, and the existing
logarithmic multiplier domain argument. The contribution is the explicit
finite trace defect, concrete repair, and fully priced source comparison.
The polynomial correction and elementary techniques are standard in nature;
no worldwide novelty or independent proof of the spectral programme is claimed.

The exact `openai/math` Nonvanishing.lean source was reread, but its transitive
proof was not adopted. TauCeti was resolved through the connector; the focused
prolate search returned no matches, which is not evidence of absence. The exact
`deepmind/formal-research` repository lookup again returned 404. No theorem from
these repositories enters this proof. No 7/8 zero-free claim is used to shrink
a convergence strip.

Formal source scope:

* `GRWTSK/MeasureAndIntegration/CompactPolynomialMomentCorrection.lean`:
  literal profile, derivative and primitive identities, actual integrability
  and zero integral, correction, exact finite telescopes, uniform signed
  sample bounds, and complete cutoff stabilization.
* `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ProlateTraceCorrection.lean`:
  trace adapter with explicit source-relation inputs, defect, two-mode
  incompatibility, repair, finite summation-map bounds, slope-expression
  bound and the exact Hermite normalization identity.

The full Fourier/Weil graph argument, ODE nonvanishing, prolate existence and
spectral ordering are not formalized in these modules. They must not be
inferred from the module names or theorem counts. Compiler parsing,
elaboration, fresh kernel checking, transitive axiom audit and independent
analytical review are all NOT_RUN. Lean/Lake/elan were absent in this runtime.
The canonical proof-automation skill returned 404 at noeaaeue revision
53f1622af5dc87a29e20408c25f76bbb55243eb1, so no dependent automation ran.
Root Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 are unchanged.

Exact SymPy algebra checked both finite telescope increments, both primitives,
zero moments, and (7.1). Additionally 3,240 exact rational cases u=num/den,
1<=num<=den<=80, N=floor(1/u), checked the signed 40/140 bounds. These finite
checks are diagnostic corroboration, not a substitute for the universal proofs
or for Lean acceptance. No numerical prolate spectrum was certified.
