# Joint prime translations, phase-isospectrality, and archimedean costs

By grwtsk contributors.

Version 1, 2026-11-11 (America/Los_Angeles).

## Scope, consumer, and evidence

This is a written analytical source candidate, not a Lean-checked result or a
proof of RH/primitive Dirichlet GRH. It retains the conductor-one zeta source.
Its immediate consumers are the complete prime/complement budgets in
[PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md) and the local
arithmetic side of [WeilNegativeWitness.lean](WeilNegativeWitness.lean).

Pinned math main: `8a5273686660e5718328fed95a9f67dacde7ea11`.
Complete root tree at that source pin: `906caaf1eddb882710ea29a8af6c287b55224268`.
The Neumann exposition has unchanged blob
`a7f0ff2b5ea1d331a2a989b01e024d2883d23785` at this pin.
Lean: `leanprover/lean4:v4.34.1`; mathlib:
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment 6815078119.

The previous downloadable `WeilPrimeOrbitLowerBounds.md` and
`WeilSplineArithmeticCertificates.md` remain uncommitted candidates. This note
does not promote or edit them. The boundary identity needed from the former
is rederived below, so the present canonical source has no missing sibling link.

The ingredients are classical: finite shift chains, singular values of
bidiagonal matrices, the Kronecker flow for prime logarithms, and the boundary
energy of a nonlocal form. No novelty is asserted. Stable local statement labels
WJPP-v1-1 through WJPP-v1-5 identify the statements below; they are not claims of
accepted frontier results. Originality: UNASSESSED. A finite prior-art comparison
cannot establish absence of prior results. See the individual source mapping
at the end.

Evidence is the written argument. Independent analytic review, formalization,
Lean elaboration, kernel replay, transitive axiom audit, numerical certification,
and repository-wide validation are NOT_RUN. No actual off-critical zero or
all-window certificate-existence theorem is claimed. Source publication, when
completed, establishes only delivery, not mathematical acceptance.

## 1. Unchanged source and a boundary identity

Let chi be primitive of conductor q>=1, a in {0,1} its parity, and delta=1 if q=1
and zero otherwise. For q=1 use the actual analytically continued zeta function.
L>0 is TOTAL support interval length, not a radius. Translate the support into
I=(0,L), and extend functions by zero. Inner products are conjugate-linear in
the first variable. Define

    b=a+1/2,   kappa_b(u)=exp(-b*u)/(1-exp(-2*u)), u>0,
    c_(q,a)=log(q/pi)+psi(1/4+a/2),
    C_f(u)=integral_R conj(f(x))*f(x+u) dx,  E_f=||f||_2^2,
    Gamma_b(f)=integral_0^infinity kappa_b(u)||f(.+u)-f||_2^2 du.

For s>0 put T_s f(x)=1_(0<x<L-s)f(x+s), with T_s=0 if s>=L.
The COMPLETE finite prime operator is

    P_chi,L=sum_(p prime, k>=1, k*log p<L) (log p)*p^(-k/2)
              [chi(p)^k T_(k log p)+conj(chi(p)^k)T_(k log p)^*].   (1)

The terms at p|q vanish. Strict endpoints are essential: T_L=0 on L2.
With u(x)=exp((x-L/2)/2), v(x)=exp(-(x-L/2)/2), put
R_L=u tensor v+v tensor u. The full source is

    Q_chi(f)=c_(q,a)E_f+Gamma_b(f)-<f,P_chi,L f>
                                      +delta*<f,R_L f>.          (2)

This is the plus-Fourier explicit-formula convention of the canonical sources.
The spectral expression retains actual complex z=-i(rho-1/2), multiplicities,
and F_f(z)*conj(F_f(conj z)); it is not an absolute-square sum off the real axis.
For nonreal chi the existing canonical `primitiveArithmeticValue` uses the inverse
character relative to (2). The established inverse-character/reflection adapter
is retained. Neither gamma parity nor the conductor nor either zeta pole is
removed by the arguments below. The poles are cross products, not positive squares.
The two nonzero eigenvalues of R_L are L+2sinh(L/2) and L-2sinh(L/2).

Let K_b(r)=integral_r^infinity kappa_b(u)du, r>0. Directly splitting translated
pairs according to whether both points are inside I gives

    Gamma_b(f)
      =integral_(0<x<y<L) kappa_b(y-x)|f(y)-f(x)|^2 dxdy
       +integral_0^L [K_b(x)+K_b(L-x)]|f(x)|^2 dx.               (3)

Tonelli applies because the integrands are nonnegative. The derivative kappa_b'
is negative, so K_b is convex, and

    Gamma_b(f)>=2K_b(L/2) E_f.                                 (4)

For z=tanh(L/8), elementary integration gives the combined lower profile

    A_(q,a)(L):=c_(q,a)+2K_b(L/2)
       =log(q/[8*pi*z])-gamma_E+(2a-1)*2atan(z).                 (5)

To check the constants, set t=exp(-L/4). The two values of 2K_b(L/2) are
log((1+t)/(1-t))+2atan(t) for a=0 and the same logarithm minus 2atan(t) for a=1.
Use atan(t)+atan(z)=pi/4 and
psi(1/4)=-gamma_E-3log2-pi/2,
psi(3/4)=-gamma_E-3log2+pi/2. In particular

    A_(q,a)(L)>=log(q/(pi*L))-gamma_E-L/4.                     (6)

These estimates start on C_c^infinity(I,C) and extend to the same closed local
form in the canonical Neumann note. No new operator-domain identity is presumed.

## 2. An exact joint two-shift norm

**WJPP-v1-1.** Suppose L/2<=s<t<L. Let alpha,beta>=0 and let omega,nu be unit
complex numbers. Put

    P=alpha(omega*T_s+conj(omega)*T_s^*)
        +beta(nu*T_t+conj(nu)*T_t^*),
    ell=L-s,  d=t-s,  N=ceil(ell/d).

Then, with J_N the backward nilpotent shift with first superdiagonal equal to one,

    ||P||=||alpha*I_N+beta*J_N||.                              (7)

This is an exact full L2-operator identity for its norm, not a sampled compression.
For alpha,beta>0 the value is strictly less than alpha+beta. If N=2,

    ||P||=[beta+sqrt(beta^2+4alpha^2)]/2.                       (8)

Proof. The intervals (0,ell) and (s,L) are disjoint up to a null endpoint. Identify
both with (0,ell), the second by x=s+y. The middle interval is annihilated by P.
On these two copies P has block matrix

    [0 A; A^* 0],   A=alpha*omega*I+beta*nu*T_d^(ell).         (9)

This follows directly from T_t f(x)=f(x+s+d) for 0<x<ell-d; no clipping mask is
commuted through a translation. The norm of (9) is ||A||, by squaring it.

Write y=r+j*d, 0<r<d. Fubini gives a unitary direct-integral decomposition of
L2(0,ell) into chains of length n(r)<=N, with length N on a positive-measure set.
At an integral ratio ell/d, these chains have length exactly N almost everywhere.
On a chain, A=alpha*omega*I_n+beta*nu*J_n. Multiplication by the scalar conj(omega)
and conjugation by a diagonal unitary remove the relative phase. Thus its norm
is ||alpha*I_n+beta*J_n||. These finite norms are nondecreasing in n: padding a
vector with a final zero identifies its image in the larger matrix. This proves (7).

For N=2 the eigenvalues of A^*A solve
lambda^2-(2alpha^2+beta^2)*lambda+alpha^4=0. The positive square root of the
larger eigenvalue is (8). In general A^*A is tridiagonal, with diagonal
alpha^2,alpha^2+beta^2,...,alpha^2+beta^2 and off-diagonal alpha*beta.
It is a finite exact specification for the singular-value bound.

For strictness, if a unit vector attained norm alpha+beta, both triangle and
contraction inequalities would be equalities. Since alpha,beta>0, this forces
J_N x=x. Nilpotency then forces x=0, a contradiction. Finite dimensionality
ensures the norm is attained. Degenerate coefficients alpha=0 or beta=0 are
covered by (7)-(8), but the strict inequality is not asserted. QED.

Hostile check: alpha=beta=1 and N=2 give norm (1+sqrt5)/2, not 2 and not sqrt2.
This is a written exact algebraic check, not an executed numerical test.

### 2.1 Actual prime-pair consumer

Take s=log p and t=log r with e^(L/2)<=p<r<e^L, both unramified. These primes
have no active higher powers. Substitute alpha=log p/sqrt p and beta=log r/sqrt r
in (7). The result bounds their JOINT contribution and is strictly smaller than
the sum alpha+beta of their individual sharp norms.

Several disjoint pairs may be grouped this way. Every other active prime power
must still be retained: for example, a valid total budget is the sum of the
pair norms plus 2 sum Lambda(n)|chi(n)|/sqrt n over all remaining active n.
One may replace that remainder by any separately justified sharper bound.
This does not give independent simultaneous diagonalizations of all primes.
The approximation is only the final triangle inequality between groups.

## 3. A full-domain positivity instance through length log 4

**WJPP-v1-2.** For every primitive character of conductor q>=32, and every
admissible test supported in an interval of length at most log 4,

    Q_chi(f)>=(1/16)||f||_2^2.                                (10)

The same bound holds on the source-identified local closed form. It includes
complex characters; no RH/GRH hypothesis or prime-zero data is used. This is a
conservative local certificate, not a claim of a new best support range.

Proof. It is enough to put the support in an interval of length L0=log4.
The only active prime powers are 2 and 3: the endpoint 4 has T_(log4)=0.
If both primes are unramified, take s=log2, t=log3. Then s=L0/2 and

    1<(L0-s)/(t-s)<2,

since 3<4 and 8<9. Hence N=2. Write alpha=log2/sqrt2 and beta=log3/sqrt3.
If a prime is ramified, set its coefficient to zero. Formula (8) still applies
and cannot increase upon setting a nonnegative coefficient to zero.

The elementary bounds

    log2<7/10, sqrt2>7/5, log3<10/9, sqrt3>5/3

give alpha<1/2 and beta<2/3. Therefore

    ||P_chi,L0||<(2+sqrt13)/6<15/16,                          (11)

where sqrt13<29/8 proves the last step. The source has no poles because q>1.
Since pi<22/7 and L0<7/5,

    log(q/(pi*L0))>log(80/11)>39/20.

Together with gamma_E<3/5, (6) gives

    Q_chi(f)/||f||^2
       >39/20-3/5-7/20-15/16=1/16

for nonzero f. The zero vector gives equality. QED.

All scalar margins can be checked by finite rational inequalities. For detail,
log((1+x)/(1-x))=2 sum_(j>=0)x^(2j+1)/(2j+1). At x=1/3 it gives
842/1215<log2<25/36<7/10, and in particular log2>69/100. At x=1/2, bounding
all denominators after the first by 3 gives log3<10/9. Also

    log(80/11)=2log2+log(20/11)>69/50+18/31>39/20.

The square-root bounds follow by squaring. The integral
integral_0^1 x^4(1-x)^4/(1+x^2) dx=22/7-pi>0 gives pi<22/7.
Finally, with H_n=sum_(j=1)^n 1/j,

    H_n-log n-gamma_E
      =sum_(k>=n)[log(1+1/k)-1/(k+1)]>1/[2(n+1)].

The summand is integral_0^1 (1-t)/[(k+t)(k+1)]dt, which exceeds
1/[2(k+1)^2]. At n=4 the preceding lower bound for log2 gives

    gamma_E<25/12-1684/1215-1/10<3/5.

Thus no decimal eigenvalue test is hidden in (10). A future formal or interval
implementation must still verify its representation and exact source binding.
The result enlarges the earlier length-one candidate range for q>=32; it says
nothing new about q=1 or about all supports for one fixed character.

## 4. Arbitrary multiplicative phases do not change the isolated prime spectrum

This is a limitation on an unconstrained operator-norm strategy. It is NOT a
statement that character cancellation is absent from arithmetic observables.
Fix L and a finite set S of active unramified primes, and nonnegative fixed
coefficients a_(p,k) for k*log p<L. For theta in the product of |S| circles put

    P_theta=sum_(p in S,k) a_(p,k)
        [exp(i*k*theta_p)T_(k log p)+exp(-i*k*theta_p)T_(k log p)^*].   (12)

The actual arithmetic coefficients are a_(p,k)=log(p)*p^(-k/2). All powers of
one prime use the SAME phase theta_p, multiplied by k. Ramified primes are
excluded and cannot be restored by this operation.

**WJPP-v1-3.** For any theta,phi the bounded self-adjoint operators P_theta and
P_phi have exactly the same spectrum, norm, and upper spectral edge. More
precisely there are tau_j tending to positive infinity such that

    ||M_(tau_j)^* P_theta M_(tau_j)-P_phi|| ->0,
    (M_tau f)(x)=exp(i*tau*x)f(x).                            (13)

Proof. Direct substitution retains the endpoint masks and gives

    M_tau^* T_s M_tau=exp(i*tau*s)T_s.                        (14)

The logarithms of distinct primes are linearly independent over Q: clear the
denominators in a rational relation, exponentiate, and use unique factorization.
The continuous Kronecker flow tau -> (exp(i*tau*log p))_(p in S) is consequently
dense in its full torus, and visits every nonempty open set at arbitrarily large
tau. One direct proof uses time averages of monomials: for any nonzero integer
vector m, the average of exp(i*tau*sum m_p log p) on [0,T] tends to zero.
Uniform approximation by trigonometric polynomials transfers the averages to
continuous functions. A nonnegative continuous bump on any open set has positive
Haar integral, proving arbitrarily late visits. This is the standard classical
Kronecker/Bohr argument, with sources [2,3]; no effective visit-time bound is used.

Choose tau_j so the prime phase errors are at most epsilon_j ->0. Since
|u^k-v^k|<=k|u-v| for unit u,v,

    ||M_(tau_j)^*P_theta M_(tau_j)-P_phi||
        <=2epsilon_j sum_(p,k) k*a_(p,k).                    (15)

The sum is finite. Norm continuity proves equality of norms. For bounded
self-adjoint A,B, their spectra are within ||A-B|| in Hausdorff distance: a point
farther from sigma(A) has resolvent norm below 1/||A-B|| and the Neumann series
makes it a resolvent point of B; exchange A,B for the reverse inclusion.
Apply this to (15), noting every conjugate has the same spectrum as P_theta.
This proves the remaining assertions. QED.

For Dirichlet characters with a fixed conductor q and fixed L, their isolated
prime operators therefore have the same spectrum. Their ramified-prime omissions
are identical. The all-positive phase operator is a COMPARATOR with those same
omissions, not a replacement primitive arithmetic L-function.

There need not be ONE exact modulation achieving a prescribed phase assignment.
Equation (13) is approximate unitary equivalence, not asserted exact conjugacy.
It does not identify finite Galerkin compressions: their trial subspaces need
not be invariant under modulation. In particular complex cross-parity entries
of the full arithmetic matrix must not be deleted.

## 5. Why phase removal does not preserve the full Weil energy

**WJPP-v1-4.** For each fixed nonzero f in C_c^infinity(0,L),

    Gamma_b(M_tau f)=||f||_2^2 log|tau|+O_(b,f)(1),
    Q_chi(M_tau f)=||f||_2^2 log|tau|+O_(chi,L,f)(1),
                                                as |tau| ->infinity.          (16)

Proof. C_(M_tau f)(u)=exp(i*tau*u)C_f(u). Let E=||f||_2^2. On (0,1),
write kappa_b(u)=1/(2u)+r_b(u), where r_b is integrable (indeed bounded near 0).
The expansion follows directly from the exponential functions defining kappa_b.
Also

    |E-C_f(u)|<=u*||f||_2*||f'||_2.

Split the gamma integral at 1. The part on (0,1) equals

    2E integral_0^1 kappa_b(u)(1-cos(tau*u))du
       +2Re integral_0^1 kappa_b(u)exp(i*tau*u)(E-C_f(u))du.

The second term is bounded uniformly in tau by the displayed translation estimate.
Replacing kappa_b by 1/(2u) in the first term has bounded error. The tail past 1
is bounded by 4E integral_1^infinity kappa_b. Finally

    integral_0^1 (1-cos(tau*u))/u du=log|tau|+O(1).

For |tau|>=1 this follows by v=|tau|u and integration by parts for
integral_1^T cos(v)/v dv. This proves the first line. The prime operator is bounded
independently of tau, as is R_L on the fixed interval, and c_(q,a)E is constant.
Equation (2) proves the second line. QED.

Thus the arbitrarily large modulations used in (13) cost unbounded gamma energy
on each fixed nonzero template. The theorem does NOT assert a uniform lower bound
over tau-dependent templates: choosing f_tau=M_(-tau)f would defeat that claim.
The isolated prime norm is phase-independent, whereas constrained low-energy
arithmetic optimization may genuinely depend on character phases. The whole
conductor, parity, gamma energy, and zeta poles must remain coupled to the prime
term in such an optimization.

## 6. Quantitative relative control at a newly active shift

The earlier small-overlap counterexample concerned L2-operator norm. The gamma
energy supplies a different, vanishing relative bound.

**WJPP-v1-5.** Let L=s+epsilon with 0<epsilon<s. For every unit omega and every
zero-extended f with finite Gamma_b,

    |<f,(omega*T_s+conj(omega)*T_s^*)f>|
       <=min(||f||_2^2, Gamma_b(f)/K_b(epsilon)).              (17)

For 0<epsilon<1 one may replace the second bound by

    [2exp(b)/log(1/epsilon)] Gamma_b(f).                      (18)

Proof. C_f(s) is an integral only over (0,epsilon). The inequality 2|uv|<=|u|^2+|v|^2
gives

    2|C_f(s)| <= integral_0^epsilon |f(x)|^2 dx
                   + integral_s^(s+epsilon)|f(x)|^2 dx.

The two boundary strips are disjoint, so this is at most ||f||^2. On each strip
one of K_b(x),K_b(L-x) is at least K_b(epsilon). The nonnegative decomposition
(3) proves the other bound in (17). Finally for epsilon<u<1,

    kappa_b(u)>=exp(-b)/(2u),

which gives K_b(epsilon)>=(exp(-b)/2)log(1/epsilon). QED.

In fact K_b(epsilon)=(1/2)log(1/epsilon)+O_b(1), by the same local expansion as
in section 5. Hence the reciprocal bound has order 1/log(1/epsilon).
The norm of the isolated shift combination is nevertheless exactly one: take a
normalized smooth bump on (0,epsilon), duplicate it at distance s with the
appropriate phase, and divide by sqrt2. Equation (17) shows that these saturating
vectors have Gamma_b at least K_b(epsilon), which diverges as epsilon decreases.
There is no contradiction between the norm jump and vanishing effect on a
uniformly gamma-bounded family.

For any finite family of new shifts L-epsilon<=s_j<L, with epsilon<L/2,
coefficients w_j>=0 and arbitrary unit phases, (17) gives the simultaneous bound

    |<f,sum_j w_j(omega_j T_(s_j)+conj(omega_j)T_(s_j)^*)f>|
        <= [sum_j w_j/K_b(epsilon)] Gamma_b(f).               (19)

Every weight and threshold must be included in the sum; no global bound on it
is inferred. This supplies an explicit absorption budget for new prime powers.
It does not by itself prove continuity of every spectral quantity or positivity
on successively larger windows.

## 7. Use in the full Neumann Schur consumer

Keep the source identity A=D+B-P+delta R_L from the canonical note, with
0<=B<=C_L I and increasing diagonal d_n. Let p_new be a justified norm bound
for P obtained by grouping disjoint pairs as in section 2 and retaining the
complete remainder. Then valid complete complement/coupling constants are

    eta_N=max(d_(N+1), A_(q,a)(L))-p_new-delta[2sinh(L/2)-L],
    v=C_L+p_new+delta[2sinh(L/2)+L].                          (20)

Both lower estimates inside the maximum hold on every vector in the high-mode
subspace. The cross block of D vanishes, but the cross blocks of the other terms
remain. If a_N is a sound lower bound for the EXACT finite head, the existing
scalar Schur consumer requires

    eta_N>s0,  (a_N-s0)(eta_N-s0)>=v^2                       (21)

to infer A>=s0 I. No claim that (21) is universally satisfied is made here.
The source-local positivity instance (10) is stronger than testing any finite
head in that window: it applies to the complete local form first, and hence to
every restriction. On a nonorthonormal spline basis its matrix statement uses
the L2 mass matrix, not automatically the identity.

## 8. Failure modes, research disposition, and source status

- (7) requires L/2<=s<t<L. Below half length the bipartite splitting fails; longer
  paths and additional couplings cannot be omitted. At t=L the shift is zero,
  and the active-shift formula must not be continued blindly through the endpoint.
- The two-prime example at L=log4 has no active 4-term, exactly because of support.
  Immediately above log4, that term must be restored. No fixed prime list covers
  all supports.
- (13) preserves a fixed set of omitted/ramified primes. It does not equate
  operators having different coefficient magnitudes or different omitted primes.
- Multiplicativity is necessary: arbitrary unrelated phases assigned separately
  to p and p^2 need not be removable by this torus flow.
- All assertions about phase-independent spectrum concern the isolated bounded
  prime operator on full L2(0,L). They do not justify replacing the full Weil
  form, its finite matrix, or its signed zero pairing by a phase-free model.
- (16) is a fixed-template asymptotic, not a coercivity estimate uniform over all
  moving templates. (17)-(19) retain the actual gamma energy and overlap scale.
- Local positivity for q>=32 at length log4 is not fixed-character all-window
  positivity. It gives neither a new zeta certificate nor a better global
  zero-free exponent. All critical-strip targets and their quantifiers remain.
- These proofs establish additional geometry bounds and a limitation of
  character-sensitive bare-norm estimates. Universal arithmetic nonnegativity,
  or the earlier subexponential dispersion estimate, remains unresolved.

The specific next arithmetic target must retain the gamma/pole interaction with
the prime operator, or impose and justify a low-energy constraint. A proposed
uniform improvement of ||P_chi,L|| solely from its unit character phases would
contradict WJPP-v1-3. This does not obstruct cancellation estimates for prescribed
smoothed prime sums, which are different observables on a constrained test family.

No maintained source, root import, pin, existing claim status, or historical
failed check is altered. Local Lean/Lake and a verified canonical skill checkout
were not found. The canonical `noe-proof-automation/SKILL.md` path returned 404
at noeaaeue main `8b50d43323f27bb13bdcae9f2e2b4a81c9895827`; dependent proof
execution was not launched. Ordinary source authoring and publication are
separate. File checksums/readback establish byte identity only; no executed
symbolic, numerical, kernel, or independent verification is claimed.

## References and statement correspondence

[1] grwtsk contributors, `PrimitiveWeilNeumannSchur.md`, at the pinned math
revision above, blob a7f0ff2b5ea1d331a2a989b01e024d2883d23785, sections 1,4,6-8.
Consumer and actual full primitive source for (1)-(2),(20)-(21). Its dependencies
and formal-source evidence retain their existing statuses. The companion
`CompactConvolutionWeilWitness.md`, blob 8d0cf2b78101cd29a5785fcd8016408cb65bbdd5,
sections 1,6-7 supplies the signed pairing, pole-inclusive return and the
independent negative-detection obligation. Neither is assumed positive globally.

[2] Ingo Schoolmann, *On Bohr's theorem for general Dirichlet series*,
Mathematische Nachrichten 293 (2020), 1591-1612, section 4.3, paragraph before
Theorem 4.7 and equation (4.3); arXiv:1812.04925. Primary comparator for the
continuous Kronecker flow and Q-independent prime logarithms in WJPP-v1-3.
The truncated-operator norm limit (15) is proved separately here.
https://doi.org/10.1002/mana.201800542
https://arxiv.org/abs/1812.04925

[3] Hakan Hedenmalm, Peter Lindqvist, Kristian Seip, *A Hilbert space of Dirichlet
series and systems of dilated functions in L2(0,1)*, Duke Math. J. 86 (1997),
1-37; arXiv:math/9512211. Primary historical comparator for multiplicative
characters as vertical limits. No theorem about the Weil operator is attributed
to this source. https://arxiv.org/abs/math/9512211

[4] NIST DLMF, sections 5.4 and 5.5, digamma rational values and
reflection/duplication identities. Source for the standard constants used in
(5); the boundary decomposition and all rational certificate estimates are
proved directly above. https://dlmf.nist.gov/5.4
https://dlmf.nist.gov/5.5

[5] bramble_trace, *Rational Schur sources for the Weil prime operator: uniform
image and mixed Gram bounds*, rStation paper 143 v1, 10 November 2026,
sections 1-3, especially (6) and the retained clipping masks. This is adjacent
prior art for joint prime-source estimates, not an input to WJPP-v1-1--5. Its
restricted rational coupling families are not identified with full L2 here;
its estimates do not establish a full core sign or full-tail positivity.
https://rstation.ai/problems/riemann_hypothesis/papers/143

[6] Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of
prime numbers, I*, Rend. Lincei Mat. Appl. 11 (2000), 183-233, abstract and
introduction. Supplied edition RLIN_2000_9_11_3_183_0.pdf. Historical comparator
for classical small-support positivity, not a claim that (10) is a new support
record or a substitute for its variational hypotheses.

No individual Lean declaration is claimed for these local analytical labels.
The finite-dimensional tridiagonal singular-value calculation is derived
explicitly, not attributed to a nonexistent general simultaneous-diagonalization
result. All obligations not executed remain NOT_RUN.
