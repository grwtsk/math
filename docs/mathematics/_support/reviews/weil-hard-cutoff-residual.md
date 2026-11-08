# Hard-cutoff residuals for the full Weil operator and the Xi normalization

Local attribution: grwtsk contributors. Research date: 2026-11-04 (America/Los_Angeles).
Original analytical exposition and companion Lean source: repository MIT license.
AI-assisted analytical work and manually authored source; no independent review.

## 0. Result and limits

This note concerns the canonical FULL, pole-inclusive Weil operator of
Connes--Consani--Moscovici (CCM), arXiv:2511.22755v1, not a compression and not
the pole-cancelled test space. It proves an obstruction to using the HARD
CUTOFF OF THE LIMITING HERMITE/XI KERNEL as a trial vector in an unweighted
operator-residual/complementary-gap certificate. It does not identify that
trial vector with the finite-parameter prolate construction k_lambda.

Write lambda = exp(T). Let phi be the real, positive, even function on R whose
Fourier transform is exactly Xi(z) = xi(1/2+iz), with
xi(s) = s(s-1) pi^(-s/2) Gamma(s/2) zeta(s)/2. Its explicit formula is in §2.
Set f_T = 1_{[-T,T]} phi, v_T = f_T/||f_T||, and mu_T = Q_T(v_T).
There are absolute c,C>0 and T_0 such that for every T>=T_0:

(A) f_T and all the derivative cutoffs used below belong to Dom(A_T).
(B) |mu_T| <= C lambda^10 (1+log lambda) exp(-2 pi lambda^2).
(C) E_{1,-}(T) <= C lambda^14 (1+log lambda) exp(-2 pi lambda^2), and
    E_{2,+}(T) <= C lambda^18 (1+log lambda) exp(-2 pi lambda^2).
(D) ||(A_T-mu_T)v_T|| >= c lambda^(7/2) exp(-pi lambda^2).

The eigenvalue bounds in (C) are UPPER bounds, not positivity statements.
No RH hypothesis or simplicity hypothesis occurs in (A)--(D).

If beta>mu_T is any number satisfying the literal complementary coercivity
inequality Q_T(w)>=beta||w||^2 for every w perpendicular to v_T, then

    R_T/(beta-mu_T) >=
      c exp(pi lambda^2)/(lambda^(21/2)(1+log lambda)) -> infinity.       (0.1)

If coercivity is required only on the EVEN complement, the analogous lower
bound has lambda^(29/2) instead of lambda^(21/2), and still diverges.
Thus no cofinal sequence of these hard-cutoff trial vectors can satisfy the
proposed small-residual-to-gap sufficient package. This does NOT show that
hard cutoffs fail to approximate a ground state in norm, and does NOT exclude
a direct transform comparison, weighted resolvent method, boundary-adapted
trial vectors, or the source's actual finite-lambda prolate vectors.

The same hard-cutoff functions satisfy, for every fixed a>=0,

    sup_{|Im z|<=a} |fhat_T(z)-Xi(z)|
        <= C_a lambda^(a+5/2) exp(-pi lambda^2).                       (0.2)

No all-real-zero assertion is made about fhat_T. Hence (0.2) does not prove RH.

A separate exact normalization audit finds that equation (13) of the attached
Connes survey, arXiv:2602.04022v1, as printed, gives Xi/4, not Xi. Multiplication
of that limiting h and k by FOUR is necessary for the specified Xi normalization.
This finding is not silently applied to an unspecified normalization of k_lambda.

The full analytical statements above are proved in this note. The companion
Lean module covers only explicitly identified scalar identities and inequalities.
Full operator formalization, elaboration, fresh kernel check, transitive axiom
audit, independent analytical review, and worldwide novelty assessment are NOT_RUN
or UNASSESSED as specified in §9. No cofinal LOWER separation bound, normalized
GROUND-state convergence, RH, or Dirichlet GRH is claimed.

## 1. Exact arithmetic form, domain, reflection, and poles

Use antilinear-first inner products, zero extension from [-T,T], and
fhat(z)=integral_R f(t) exp(-izt) dt. Put

    kappa(r)=exp(-r/2)/(1-exp(-2r)), r>0,
    C_f(r)=integral_R conjugate(f(t)) f(t+r) dt,
    M_+(f)=integral f(t)exp(t/2)dt, M_-(f)=integral f(t)exp(-t/2)dt.

CCM (3.5), (3.7)--(3.11), (3.19)--(3.20) give, after u=exp(t),

    Q_T(f)=c_infty ||f||^2 + E(f)
      +2 Re(M_+(f) conjugate(M_-(f)))
      -2 sum_{2<=n<exp(2T)} Lambda(n)/sqrt(n) Re C_f(log n),            (1.1)
    E(f)=integral_0^infty kappa(r)||f(.+r)-f||^2 dr,
    c_infty=psi(1/4)-log pi,

where psi is the digamma function and Lambda is von Mangoldt. Equivalently,

    Q_infty(f)=-(log(4pi)+gamma)||f||^2
       -integral_0^infty kappa(r)(2 Re C_f(r)-2exp(-r/2)||f||^2)dr.

Indeed c_infty equals -(log(4pi)+gamma)
+2 integral_0^infty (exp(-r/2)-1)kappa(r)dr. At r=2T the correlation is zero
because the overlap has measure zero. Strict and non-strict prime cutoffs
therefore agree. Pole moments and all boundary interactions remain present.

For a direct domain audit, expand kappa(r)=sum_{j>=0}exp(-(2j+1/2)r).
Tonelli and Plancherel give

    E(f)=(1/(2pi)) integral m(xi)|fhat(xi)|^2 dxi,
    m(xi)=2 sum_{j>=0}(1/(2j+1/2)
              -(2j+1/2)/((2j+1/2)^2+xi^2))
         =Re psi(1/4+i xi/2)-psi(1/4).                               (1.2)

The last equality is the convergent digamma difference series. It identifies
the MAXIMAL finite-energy domain of (1.1) with CCM's maximal multiplier-form
domain, not just its values on smooth tests:

    D(Q_T)={f in L^2([-T,T]): E(f)<infinity}.

The multiplier is nonnegative, continuous, and grows like log(2+|xi|).
Its multiplication form is closed; the supported subspace is closed. The pole
operator and finite prime shifts are bounded for each fixed T. This proves
closure and a finite lower bound on the stated domain. Compact resolvent follows
also directly: bounded form-norm sets have uniformly small Fourier L^2 tails
by (1.2); the time-restricted finite-band Fourier map is Hilbert--Schmidt, so
these sets are relatively compact. This is the argument of CCM Theorem 3.6.
The representation theorem supplies A_T and min--max supplies the eigenvalues.

Reflection Jf(t)=f(-t) preserves E, exchanges M_+ and M_-, and conjugates C_f(r).
It therefore preserves D(Q_T) and Q_T. If Q_T(g,f)=<g,h> for all g in D(Q_T),
then Q_T(g,Jf)=<g,Jh>; hence J preserves Dom(A_T) and A_T J=J A_T.
Complex conjugation has the same domain compatibility.

With C(f)=integral f(t)cosh(t/2)dt and S(f)=integral f(t)sinh(t/2)dt,
M_+=C+S, M_-=C-S. Expansion gives

    2 Re(M_+ conjugate(M_-))=2|C|^2-2|S|^2.                         (1.3)

Consequently the even pole perturbation is +2|cosh><cosh| and the odd one is
-2|sinh><sinh|. If B_{T,+/-} denotes archimedean-minus-prime restriction before
these perturbations, the secular equations away from the spectra of B are

    1+2<cosh,(B_{T,+}-z)^(-1)cosh>=0,
    1-2<sinh,(B_{T,-}-z)^(-1)sinh>=0.

These follow by solving (B+sigma |u><u|-z)f=0. They omit neither surviving
unperturbed eigenvectors orthogonal to u nor possible multiplicities; at an
unperturbed eigenvalue one must solve the original equation separately. We did
NOT obtain the inter-sector resolvent estimates needed to compare their roots.
Rank-one interlacing by itself supplies no such comparison.

The previous note's kernel B(r)=2cosh(r/2)-kappa(r) and sign change are consistent
with (1.1). Its ordinary-cone obstruction is retained, not counted as new progress.
No pointwise-cone argument at cofinal windows is attempted here.

## 2. Exact normalization of the limiting kernel

Keep the additive transform F_+h(y)=integral_R h(u)exp(2pi iuy)du distinct from
fhat. The survey's printed equation (13) is

    h_p(u)=(pi/2)u^2(2pi u^2-3)exp(-pi u^2),
    k_p(u)=E(h_p)(u)=sqrt(u) sum_{n>=1}h_p(nu).

For Re s>1 absolute convergence permits interchanging the sum and Mellin
integral. The Gaussian integral and Gamma recurrence yield

    integral_0^infty h_p(u)u^(s-1)du
      =pi^(-s/2)/4 [2 Gamma(s/2+2)-3 Gamma(s/2+1)]
      =s(s-1)pi^(-s/2)Gamma(s/2)/8.                                 (2.1)

Thus, with s=1/2-iz, the transform of k_p is xi(s)/4, NOT xi(s).
For completeness this is an entire-function identity, not just a formal Mellin
calculation. If G(u)=exp(-pi u^2), the Gaussian Fourier identities give

    F_+(u^2G)=(1/(2pi)-u^2)G,
    F_+(u^4G)=(u^4-3u^2/pi+3/(4pi^2))G.

Hence F_+h_p=h_p and h_p(0)=F_+h_p(0)=0. Poisson summation gives
k_p(u)=k_p(1/u). Both tails in logarithmic coordinates decay doubly exponentially,
so its transform is entire. Analytic continuation of (2.1), followed by the
functional equation xi(s)=xi(1-s), gives fhat=Xi/4 with our minus-sign convention.
The factor also follows independently by substituting x=u^2 in the first integral
on printed page 27: it produces four times the displayed 2 integral k_p cos.

We therefore DEFINE, explicitly correcting the normalization rather than silently
changing the specification,

    phi(t)=4 k_p(exp t)
      =2pi exp(5t/2) sum_{n>=1} n^2(2pi n^2 exp(2t)-3)
                                  exp(-pi n^2 exp(2t)).              (2.2)

It is smooth, real, even, positive, and phihat=Xi. Positivity for t>=0 follows
termwise since 2pi n^2 exp(2t)>3; the other half follows by reflection.
Xi is not zero identically: xi(2)=pi/6. As an exact normalization check, at
z=3i/2 the printed kernel has transform pi/24, whereas Xi(3i/2)=pi/6 by
the functional equation. No division by a central L-value is used.

For j=0,1,2,3 and t sufficiently large, termwise differentiation and the n=1
term imply

    |phi^(j)(t)| <= C_j exp((9/2+2j)t) exp(-pi exp(2t)),
    phi(t) >= c exp(9t/2) exp(-pi exp(2t)).                           (2.3)

For example, differentiation multiplies a polynomial in n^2 exp(2t) of degree
at most j; the n>=2 terms are bounded by a convergent Gaussian series uniformly
for t>=0. Evenness gives the corresponding bounds at negative t.

Let b=pi lambda^2 and
A_j=lambda^(9/2+2j)exp(-pi lambda^2). For lambda sufficiently large, (2.3) gives
for x>=0

    |phi^(j)(T+x)| <= C_j A_j exp(-b x),
    |phi^(j+1)(T+x)| <= C_j A_j b exp(-b x),                          (2.4)

for j=0,1,2. This follows from exp(2x)>=1+2x and absorption of the fixed polynomial
exponent. On 0<=x<=1/b the n=1 term also gives phi(T+x)>=c A_0, uniformly.
The constants in this note are independent of T after a fixed T_0; no explicit
numerical value for T_0 or the constants is claimed.

## 3. The unconditional global radical identity

Use (1.1) on rapidly decaying whole-line functions, now summing over ALL n>=2.
This defines an arithmetic form on the functions used here; it is NOT a claim
of a positive or self-adjoint global operator on unrestricted L^2(R).

The Guinand--Weil explicit formula, with the same pole terms and normalizations,
identifies its polarization on admissible smooth convolution tests with

    Q(f,g)=sum_rho conjugate(fhat(conjugate(z_rho))) ghat(z_rho),
    z_rho=(rho-1/2)/i,                                              (3.1)

with multiplicities. If the explicit formula is initially written with the
opposite Fourier sign, reindex its zeros by rho -> 1-rho to obtain (3.1);
this preserves multiplicities unconditionally. No location of rho on the line
is assumed. The usual unconditional symmetry of nontrivial zeros ensures that conjugate(z_rho) is
also a zero of Xi. Because

    Fourier(phi^(j))(z)=(iz)^j Xi(z),

one obtains

    Q(phi^(j),g)=0                                                  (3.2)

for each derivative used here and each of the whole-line or compactly supported
functions used below. Here are the regularity details of this use of the formula.
Convolution of phi^(j) with a compact piecewise smooth function is smooth and
decays faster than every exponential, as do its derivatives. Convolutions of
two phi-derivatives have the same faster-than-every-exponential property (split
the convolution at |u|=|t|/2). Their transforms decay faster than any power on
bounded horizontal strips. These tests meet the explicit-formula decay and
regularity conditions; the zero sum is absolutely convergent, using the classical
unconditional zero-counting bound O(R log R). Each summand is zero. This also
justifies using a nonsmooth compact second factor: its convolution with the
smooth first factor is the admissible test, not the second factor by itself.
Arithmetic prime sums converge absolutely; the estimates in §4 supply this
explicitly for the tails. Archimedean mixed terms follow from Cauchy--Schwarz
for the nonnegative jump energy. Alternatively smooth approximation gives the
same identity. No RH-dependent positivity is invoked.

Put f_{j,T}=1_{[-T,T]}phi^(j), d_{j,T}=phi^(j)-f_{j,T}. Expansion of (3.2) gives

    Q_T(f_{j,T})=Q(d_{j,T}).                                        (3.3)

The same holds for linear combinations. Identity (3.3) is exact and retains
EVERY prime, pole and boundary term. The right side has infinitely many prime
terms; dropping them is not part of the argument.

## 4. Arithmetic tail bounds, including every prime

Suppose a real tail d has two components supported outside [-T,T], with
|d(t)|<=A exp(-b(|t|-T)), b>=2, and piecewise derivative bounded by
C A b exp(-b(|t|-T)). The constants may absorb fixed C_j in (2.4).
Then ||d||^2<=C A^2/b. For 0<r<=1/b, the two boundary crossings contribute
at most C A^2 r to ||d(.+r)-d||^2; on overlap the fundamental theorem of calculus
and ||d'||^2<=C A^2 b give at most C A^2 b r^2. For larger r use 4||d||^2.
Since kappa(r)<=C/r on (0,1) and is integrable on (1,infinity),

    E(d)<=C A^2(1+log b)/b.                                         (4.1)

The pole moments obey

    |M_+(d)|+|M_-(d)|<=C A exp(T/2)/(b-1/2),
    |2 Re(M_+ conjugate(M_-))|<=C A^2 lambda/(b-1/2)^2.               (4.2)

For the primes, comparison with the positive exponential envelope gives the
EXACT envelope correlation, for r>=0,

    |C_d(r)|<=A^2 [exp(-b r)/b
                  +1_{r>=2T}(r-2T)exp(-b(r-2T))].                  (4.3)

There are two same-tail overlaps and one left-to-right overlap. At r=2T the
cross overlap has length zero. This accounts for the boundary precisely.

Use only 0<=Lambda(n)<=log n. The first term in (4.3), summed with
Lambda(n)/sqrt(n), is at most C A^2/b for b>=2. For the second put Y=lambda^2
and divide n>=Y into the dyadic intervals [2^kY,2^(k+1)Y). Their contributions
are bounded by

    C A^2 lambda 2^(-3k/2)(k+1)(1+log lambda+k).

The dyadic series converges; this is a bound on the actual infinite prime sum,
not a finite compression. Therefore

    |Q(d)|<=C A^2 lambda(1+log lambda)                               (4.4)

for lambda sufficiently large and b=pi lambda^2. The estimate is deliberately
coarse but fully unconditional. It suffices because the exponent, not the
polynomial prefactor, drives the obstruction.

Apply (4.4) to d_{j,T} using A=A_j. Equations (3.3)--(4.4) yield

    |Q_T(f_{j,T})|<=C_j lambda^(10+4j)(1+log lambda)
                             exp(-2pi lambda^2), j=0,1,2.           (4.5)

These are actual Rayleigh estimates; they do not lower-bound any unseen mode.

## 5. Operator domain and explicit competitors

A compact piecewise C^1 function with finitely many jumps is integrable and has
a finite measure as distributional derivative. Its Fourier transform is bounded
near zero and O(1/|xi|) at infinity. Thus the whole-line archimedean multiplier
[Re psi(1/4+i xi/2)-log pi] times its transform belongs to L^2. Restrict its
inverse transform to [-T,T] and add the bounded pole and prime operators.
Pairing with every function in D(Q_T), by the multiplier representation, gives
the defining representation identity for A_T. This proves membership in the
CANONICAL operator domain, not merely in the form domain. In particular every
f_{j,T} used here belongs to Dom(A_T). A jump does not force failure of this
logarithmic-order operator domain.

The norms of f_{0,T} and f_{1,T} tend to the positive norms of phi and phi'.
The latter is nonzero because phi is positive, decays, and is not constant.
Thus (4.5) gives (B) and an odd unit competitor

    w_{-,T}=f_{1,T}/||f_{1,T}|| perpendicular to v_T,
    |Q_T(w_{-,T})|<=C lambda^14(1+log lambda)exp(-2pi lambda^2).        (5.1)

For an even competitor, set

    c_T=<f_{0,T},f_{2,T}>/||f_{0,T}||^2,
    w_{+,T}=(f_{2,T}-c_T f_{0,T})/||f_{2,T}-c_T f_{0,T}||.

The limiting Gram matrix of phi and phi'' is positive definite. Indeed, a
relation phi''=c phi would give (-xi^2-c)phihat(xi)=0 on R; continuity and
nonvanishing of phihat on some interval contradict that polynomial identity.
Hence c_T stays bounded and the denominator stays bounded away from zero.
The tail of this linear combination satisfies (2.4) with A=C A_2, so (4.4) gives

    |Q_T(w_{+,T})|<=C lambda^18(1+log lambda)exp(-2pi lambda^2).        (5.2)

The entire span of f_{0,T},f_{2,T} has the same Rayleigh upper bound: its Gram
matrices are uniformly nonsingular and its normalized coefficients uniformly
bounded, and (4.4) applies to every such combination. Min--max now gives (C).
This includes an even complement competitor, not merely an odd-sector artifact.

## 6. The source-exact boundary residual lower bound

Let d=d_{0,T}>=0 and f=f_{0,T}. From (3.2), the whole-line arithmetic operator
annihilates phi distributionally. For |t|<T, where d(t)=0, the literal restricted
operator therefore satisfies almost everywhere

    A_T f(t) = integral_{|s|>T} kappa(|s-t|)phi(s)ds
      +sum_{n>=2} Lambda(n)/sqrt(n) [d(t+log n)+d(t-log n)]
      -2 integral_{|s|>T} cosh((t-s)/2)phi(s)ds.                     (6.1)

All terms converge at each interior point, locally uniformly away from the
finitely many relevant jump locations for each compact set. The archimedean
term has only logarithmic boundary growth, compatible with L^2. Equation (6.1)
may also be read as an equality of L^2 functions by the domain proof above.
The infinite prime sum is NONNEGATIVE. This favorable sign can be discarded
for a lower bound; no prime cancellation is being guessed.

Evenness of d and (4.2) show that the final pole term has absolute value at most

    C A_0 lambda/b <= C A_0/lambda,    |t|<=T.                       (6.2)

For t=T-delta with 1/(2b)<=delta<=1/b, integrate the first term of (6.1) only
over T<=s<=T+1/b. By (2.4), phi(s)>=c A_0 there. Also kappa(r)>=c/r for small
positive r. Therefore

    integral_T^(T+1/b) kappa(s-t)phi(s)ds
       >=c A_0 log((delta+1/b)/delta)>=c A_0.                        (6.3)

For sufficiently large lambda, (6.2) is smaller than half of (6.3). Hence
A_T f(t)>=c A_0 throughout an interval of length 1/(2b). On that interval
|f(t)|<=C A_0, whereas mu_T tends to zero by (B). Subtracting mu_T f therefore
preserves the lower bound for large lambda. Divide by ||f||, which is bounded
above and away from zero, and integrate the square over this interval:

    R_T>=c A_0/sqrt(b)=c lambda^(7/2)exp(-pi lambda^2).

This proves (D). The residual is that of the full operator, not a matrix.
The first surviving mechanism is the actual boundary interaction of the
archimedean jump kernel. The exact global arithmetic cancellation controls
all remaining terms, and positivity of the discarded prime tail has its
correct source sign. Thus this is not an archimedean-only substitute model.

## 7. Why the residual-to-gap certificate fails for these trials

Any complementary beta must satisfy beta<=Q_T(w_{-,T}) by (5.1).
Together with mu_T>=-C lambda^10(1+log lambda)exp(-2pi lambda^2), this gives

    0<Delta_T=beta-mu_T
       <=C lambda^14(1+log lambda)exp(-2pi lambda^2).

Dividing (D) by this inequality proves (0.1). For the even-only complement use
(5.2) instead, obtaining the power 29/2. Both bounds diverge because an
exponential of pi lambda^2 dominates every fixed power and logarithm.

For K_T=f_T the amplitude a_T=||f_T|| tends to ||phi||>0 and epsilon_T=0.
Thus M_a(T)(epsilon_T+sqrt(2)|a_T|R_T/Delta_T) cannot tend to zero on ANY
cofinal sequence, even at a=0. If no beta exists the package already fails;
if one exists the displayed lower bound applies. No beta is assumed to exist.

This is an obstruction to the SUFFICIENT ESTIMATE, not to convergence of the
actual vector error. A large upper-bound surrogate R/Delta is not a lower
bound on ||v_T-psi_T||. The distinction is essential.

For comparison, direct integration of (2.4) gives

    integral_{|t|>T}phi(t)exp(a|t|)dt
       <=C_a A_0 exp(aT)/(b-a),

for b>a. Since |exp(-izt)|<=exp(a|t|) on |Im z|<=a, this proves (0.2).
The hard-cutoff entire functions thus converge with the correct scalar to Xi
on every compact subset of C, while their all-real-zero property is unproved.
The residual bound is a substantially stronger requirement than this direct
holomorphic convergence.

## 8. Source distinctions and research consequences

The immediate lower-bound target remains to produce, for the actual prolate
construction or another boundary-adapted trial family, a cofinal quantified
lower bound on both competitors, with adequate normalized transform comparison.
The present note supplies no such LOWER bound. It removes the incorrect scalar
identification in the printed limiting kernel, resolves the operator-domain
question for the explicit cutoffs used here, constructs genuine small-energy
competitors, and rules out replacing the prolate proxy by its hard-cutoff
Hermite limit within the stated unweighted residual/gap method.

The source's finite-lambda h_lambda is not assumed Fourier invariant, zero at
zero, or in the same global radical class merely from its vanishing integral.
No assertion that K_lambda equals f_T, is exactly even, or has the residual
bounds above is made. Transporting these results to K_lambda is NOT_DONE.

Fact 6.4 of the attached survey prints Im z<1/2 but restricts its line parameter
to (-1/2,1/2); §6's preceding description specifies a width-one neighborhood.
The attachment supplies no detailed prolate-error proof resolving that mismatch,
its unspecified scalar, or the uniform constants. This note does NOT silently
repair or certify Fact 6.4. The independently proved hard-cutoff estimate (0.2)
has a different family and cannot be substituted for that missing audit.

Connes--van Suijlekom, arXiv:2511.23257v1, equation (6), Remark 4.3 and Theorem
6.1, was read directly. It starts from a distribution on [0,L] and the form on
trigonometric polynomials, and requires essential self-adjointness on that core.
The canonical closed form and the particular domain memberships proved here do
not discharge that core hypothesis. The warning about loss of endpoint
information on even symmetrization remains operative. We have not applied its
all-real-zero conclusion to f_T or to a constrained minimizer.

Suzuki, arXiv:2606.09096v3, Theorem 1.4, proves simple positive even ground states
for sufficiently small windows. Zhu, arXiv:2608.24827v2, Theorem 6.2, reports a
full-window certificate at T=0.8. Its reported computation was NOT_REPLAYED here.
Suzuki's newer arXiv:2610.32704v1 (23 October 2026), Theorems 1.1--1.2, explicitly
ASSUMES RH. Its entire-function limit counts distinct zero ordinates; identification
with normalized Xi additionally requires the relevant simplicity statement.
It also uses xi without our factor 1/2. None of these results supplies an
unconditional cofinal lower bound consumed in this note.

No character-dependent Hermitian operator, root-number return, paired-character
approximation, or primitive/imprimitive analytic bridge is proved here. In
particular this result is not a Dirichlet-GRH extension by analogy. No universal
Weil-positivity certificate or holomorphic residual patch family is constructed.

## 9. Provenance, formal scope, and verification record

Primary inspected sources:
- Alain Connes, arXiv:2602.04022v1, §4.1 and §6, especially printed pp. 27--30,
  equation (13), Facts 6.2--6.4, §6.6; the PDF pages were visually inspected.
- Alain Connes, Caterina Consani, Henri Moscovici, arXiv:2511.22755v1,
  equations (3.5), (3.7)--(3.11), (3.19)--(3.20), Propositions 3.3--3.4,
  Theorem 3.6 and Corollary 3.7; CC BY 4.0. This note derives the specific
  domain and residual claims rather than invoking a finite truncation.
- Alain Connes, Walter D. van Suijlekom, arXiv:2511.23257v1,
  equation (6), Remark 4.3, Theorem 6.1; CC BY 4.0; not an invoked real-zero result.
- Suzuki 2606.09096v3, Zhu 2608.24827v2, Suzuki 2610.32704v1: comparison only,
  no proof dependency. The last is licensed arXiv perpetual non-exclusive.
Only mathematical formulas/statements are used; no upstream code is copied.

Repository baseline was refreshed, not assumed: grwtsk/math/main was
6e2db06a7ba8cc938c7a000c2f8122ca79d67d6c. Read AGENTS.md, the proof-comparison
disposition, the off-diagonal module/note, and open issue #1670. Its historical
NOT_RUN statuses are not overwritten. Lean remains v4.34.1 and Mathlib remains
d13f23b723b8a846827a245b89c10fc7d3f11612. No root import or pin is changed.
The layout file's contents endpoint returned empty content despite a blob id;
the new module stays beside the inspected subject-specific Weil source.

At that Mathlib pin, Mathlib/NumberTheory/LSeries/RiemannZeta.lean defines
RiemannHypothesis using ALL zeros except the negative even integers and s=1,
not just the open critical strip. No new surrogate RH definition is introduced,
and no return theorem is claimed. The required exterior/boundary and function
correspondence returns remain unproved here.

openai/math/main remained 4eaee87548250b2682affda7d05d947c05554bae. Its actual
lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean was read; it imports Foundation
and Detector.FinalAssemblyUnconditional and states right-of-7/8 nonvanishing.
Its transitive proof was NOT_REPLAYED or adopted. TauCetiProject/TauCeti/main
was 85f3eb5579df5ca44ba8cd0921d614b41ab72174; its root source and search were
inspected, but no relevant analytic declaration was resolved or imported.
The exact deepmind/formal-research identifier returned 404; no substitute
repository was treated as equivalent. grwtsk/math code search for DirichletGRH
returned no entries with incomplete_results=true. Its exact declaration and
the rightCore/offCore implementations were NOT_RETRIEVED in this turn and are
not reused. Search failure is not evidence that these declarations are absent.

No verified local canonical skill checkout or Lean/Lake executable was available.
At grwtsk/noeaaeue/main revision 53f1622af5dc87a29e20408c25f76bbb55243eb1,
workflows/research/orchestration/skills/noe-proof-automation/SKILL.md returned
404. Dependent proof automation was not run. No browser messaging, schedules,
CI dispatch, operational runner, or mutable execution artifact is introduced.

Companion module:
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilHardCutoffResidual.lean
Namespace: GRWTSK.NumberTheory.WeilQuadraticForm.HardCutoff.
It proves candidate scalar scripts for (2.1)'s coefficient, the factor four,
the real-coordinate pole identity, complementary-gap arithmetic and the
exponential quotient. It DOES NOT formalize the operator statements in sections 1--7, the global radical,
operator domains, min--max, the prime tail bound, or the analytic obstruction.

Exact symbolic checks of the Mellin coefficient, Gaussian Fourier polynomial,
pole identity and kernel normalization are reproducible algebra checks only.
A source-token scan is not a transitive axiom audit. Lean parsing/elaboration:
NOT_RUN. Fresh kernel checking: NOT_RUN. Transitive axiom audit: NOT_RUN.
No theorem here is described as Lean-checked. Independent analytical review:
NOT_RUN. Worldwide novelty: UNASSESSED. The main analytic argument is complete
at its quantified scope, but remains subject to mathematical review, especially
(3.1)--(3.3)'s test-class passage and (6.1)'s operator identity.

Hostile checks: the full pole sign is retained; the odd competitor is genuinely
orthogonal; an even competitor closes the parity-only loophole; negative ground
eigenvalues are not excluded by upper trial bounds; finite endpoint values do
not invalidate the logarithmic operator domain; infinite prime tails are bounded
rather than silently removed; exponential scales are compared relatively, not
merely as absolute errors; direct transform convergence is explicitly separated
from all-real zeros. The separate change-of-variables normalization check shares
only the printed definitions with the Mellin calculation, not its Gamma algebra.

Smallest next mathematical obligation: obtain a genuinely boundary-adapted
arithmetic comparison, together with a lower bound on the EVEN complement and
on the ODD sector for the SAME cofinal family. A proof that the finite-lambda
prolate error is tiny in an unweighted norm, without those source-exact lower
bounds or an alternative weighted/direct-transform estimate, remains insufficient.
