# A finite Fourier-sample lower bound for the complete Weil form

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
MSC2020: 11M26 (primary), 42A38, 33B15, 65D32.
Coordination: math#1801, scope comment 6817699521.

## Evidence and source boundaries

Inspected main: `1135f59fbcee3bb4ac4d1c0a8b276cb0b739b572`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The two adjacent Lean files are SOURCE_PROOF_CANDIDATE material.
Elaboration, full dependency build, fresh kernel replay, transitive axiom
audit, independent analytical review, and numerical functional certification
are NOT_RUN, including the imported local chain. This note contains a
complete WRITTEN argument for the stated estimates, not kernel evidence.
Originality is UNASSESSED. No mathematical novelty is asserted.

The source-local result is a LOWER estimate with a finite-rank correction,
not another two-sided approximation wrapper. It supplies positivity on an
explicit finite-codimensional sector of the actual complete form. It does
NOT prove positivity on all tests, a completed explicit formula, RH/GRH,
or universal existence of full positivity certificates. The finite sample
map detects every negative direction in the sense of inequality (8) below;
it does not determine the sign from sample values alone.

The Lean files prove the rational multiplier floor, integrated archimedean
lower bound, low-mass sampling inequality, and sample-null archimedean
coercivity. The complete prime/pole assembly, parameter existence,
finite-codimension argument and explicit differential test family in
sections 4--6 are WRITTEN results, not additional Lean declarations.

## 1. Unchanged actual sources and prior-art comparison

Use `WeilNegativeWitness.Admissible f`: `ContDiff ℝ ∞ f` and compact
support, not analytic order top. Tests are complex and need not be even.
Assume A>0 and f=0 outside [-A,A]. Reuse the exact plus transform and moments

    F_f(t)=integral f(x)*exp(i*t*x) dx,
    w_f(t)=|F_f(t)|^2/(2*pi), M0(f)=integral |f|^2,
    L0(f)=integral |f|, Lx(f)=integral |x|*|f(x)|.

The imported chain proves real integrability and integral w_f=M0(f).
Its physical support bounds are L0^2<=2*A*M0 and Lx<=A*L0.
The actual centered digamma C and finite rational sum S_N obey

    C(sigma,y)=Re psi(sigma+i*y)-Re psi(sigma),
    S_N(sigma,y)=sum_(n<N) y^2/[(sigma+n)*((sigma+n)^2+y^2)],
    0<=S_N<=C, H_N(sigma)=sum_(n<N)1/(sigma+n).

The source is the genuine digamma function; NIST DLMF 5.7.6 is the
classical comparator, not a new positivity model:
https://dlmf.nist.gov/5.7.E6 .
`ArchimedeanMomentBounds.spectral_eq_baseline_add_centered` yields

    arch(f)=beta*M0(f)+integral w_f(t)*C(sigma,t/2) dt,
    beta=log(q/pi)+Re psi(sigma).                            (1)

The baseline is not assumed positive. For primitive characters use
sigma=1/4+a/2, a in {0,1}, with conductor q>=1.

Finite-codimensional positivity is not new. The supplied Masatoshi Suzuki,
*Weil's quadratic form via the screw function*, arXiv:2606.09096v3,
version September 24, 2026, p.2, section 1.1, explicitly discusses Yoshida's
Lemma 3 on positive subspaces of finite codimension. Its bibliography [17]
is Hiroyuki Yoshida, *On Hermitian forms attached to zeta functions*,
Advanced Studies in Pure Mathematics 21 (1992), pp.281--325. Yoshida's
original Lemma 3 was not directly retrieved in this increment: no claim of
a direct paper-to-Lean formalization of that lemma is made. Suzuki's actual
page was inspected, including its rendered formula and scope.

Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of
prime numbers, I*, Rend. Lincei Mat. Appl. 11 (2000), pp.183--233, abstract
and introduction pp.183--185, is also prior work on the variational and
finite-truncation problem. The current result gives explicit midpoint
sample penalties on the canonical smooth complex test domain and an
actual-source primitive-character/pole budget. It is not a claim that the
classical finite-codimension phenomenon or its underlying proof method is
original. Comparison is limited to these sources and the inspected local
chain; an exhaustive duplicate or novelty audit has not been performed.

Source-local inputs at the inspected revision:
- `WeilFourierMoments.lean`, blob aa20033bb58f9f99ed31e71f33e0a1a2af08136f;
- `WeilFourierQuadrature.lean`, blob be5e3afa9925623c322d60518aab08a99d3e5e14;
- `WeilFourierSupportQuadrature.lean`, blob 2e44c18f3c63640e8db83d8355a3ce6400c16c95;
- `GRWTSK/SpecialFunctions/ArchimedeanMomentBounds.lean`, blob
  72d24ec6c700c124fcf09d6632f2f56d1010fb66.
All are candidates at their recorded evidence status. No import or pin changes.

## 2. A genuine lower floor outside the frequency window

Fix U>0 and N>=0, and set S=S_N(sigma,U/2). For s>0 the exact identity

    d_s(z)-d_s(y)=s*(z^2-y^2)/[(s^2+z^2)*(s^2+y^2)],
    d_s(y)=y^2/[s*(s^2+y^2)]

proves monotonicity in y^2. Therefore C(sigma,t/2)>=S for |t|>=U.
On |t|<=U the source C is nonnegative. Multiply by the true nonnegative
weight and integrate. Every integrability premise is supplied from the
admissible test before subtraction or splitting. This gives

    arch(f) >= (beta+S)*M0(f)-S*integral_[-U,U] w_f.         (2)

This is WSFC-v1-1. It is an actual LOWER sign-relevant estimate, unlike
an upper bound on the size of a truncated source. It does not assume a
bound on M1(f), and does not bound the unbounded multiplier from above by S.

There is an elementary finite lower bound for S. If U>=2*(sigma+N),
then U/2>=sigma+n for every n<N, and hence

    d_(sigma+n)(U/2)>=1/[2*(sigma+n)],  S>=H_N(sigma)/2.    (3)

For N=0 both sides of (3) are zero. Neither (2) nor (3) removes the
baseline or asserts it has a favorable sign.

## 3. Bound the whole low-frequency mass by finitely many samples

Take integer m>=1, h=2*U/m, and t_j=-U+(j+1/2)*h, j=0,...,m-1.
Define the exact finite quantity

    D(f)=h*sum_(j<m) w_f(t_j), alpha=4*A^2*U^2/(pi*m).

The established Fourier estimate and the support moments give, for every s,t,

    |w_f(s)-w_f(t)|<=L0*Lx*|s-t|/pi
                   <=(2*A^2*M0/pi)*|s-t|.

For a cell of length h, every point is within h/2 of its midpoint.
Integrate this bound and sum the m adjacent cells. The entire grid charge
is m*(2*A^2*M0/pi)*h^2/2=alpha*M0. Thus

    integral_[-U,U] w_f <= D(f)+alpha*M0(f).                (4)

This is WSFC-v1-2. The constant is conservative; no sharper midpoint
constant is claimed. A sample is not an enclosure of its cell without
this modulus. Combining (2) and (4) proves WSFC-v1-3:

    arch(f) >= [beta+S*(1-alpha)]*M0(f)-S*D(f).             (5)

All terms in D are actual source Fourier samples, not rounded values.
There is no effective evaluation oracle for arbitrary smooth functions.
If |F(t_j)-z_j|<=e_j with e_j>=0, then D<=h/(2*pi)*sum(|z_j|+e_j)^2,
which can be substituted into the NEGATIVE sample term in (5). That simple
rounding consequence is written, not an executed or formalized certificate.

## 4. Complete arithmetic return, with the exact negative pole budget

Use precisely the (W) convention of the continuation and the preceding
complete-form companion. Let g=f*tilde(f), with tilde(f)(x)=conjugate(f(-x)),
and centered Mellin M_f(s)=integral f(x)*exp((s-1/2)*x) dx. Set

    I_A={n>=2 : log n<=2*A},
    Pabs=2*sum_(n in I_A) Lambda_vM(n)*|chi(n)|/sqrt(n),
    V=Pabs+2*delta*(sinh(A)-A),
    delta=1 for conductor one, and 0 otherwise.

The full prime expression retains both phases and every prime power.
Cauchy--Schwarz and translation invariance give |g(s)|<=M0; therefore its
real value is bounded ABOVE by Pabs*M0. The phases are not changed in the
form itself; Pabs is only a valid one-sided majorant. Ramified primes retain
chi(n)=0. A threshold log n=2*A has zero overlap almost everywhere, so
including it is harmless and avoids dropping any active prime power.

For the zeta poles put a_f=integral f(x)*cosh(x/2) dx and
b_f=integral f(x)*sinh(x/2) dx. Both original orientations give exactly

    M_g(0)+M_g(1)=2*Re(M_f(0)*conjugate(M_f(1)))
                 =2*|a_f|^2-2*|b_f|^2.

Since integral_[-A,A] sinh(x/2)^2 dx=sinh(A)-A, Cauchy--Schwarz proves

    M_g(0)+M_g(1)>=-2*(sinh(A)-A)*M0.                       (6)

This is sharper than the absolute continuity budget 4*sinh(A) in the
preceding increment. It uses the interaction of BOTH signed orientations,
not a declaration that the pole term is positive or a pole-neutral
restriction. It agrees with the existing exact pole eigenvalues in
`WeilFlatBaselinePoleScale.md`, section 1: with L=2*A the negative eigenvalue
is 2*A-2*sinh(A). On all supported L2 functions the bound is sharp, attained
by sinh(x/2) times the interval indicator; that discontinuous function is
NOT asserted to be canonical admissible. Smooth interior cutoffs approach
it in L2 for the purpose of pole-bound sharpness only.

Substitute the proved prime and pole lower estimates into the ORIGINAL
complete source Q=arch+both_poles-primes. Together with (5) this proves
WSFC-v1-4 (WRITTEN complete-source bound):

    Q_chi(f) >= [beta+S*(1-alpha)-V]*M0(f)-S*D(f).           (7)

There is no new Lean Weil-form definition in this increment. The exact
inverse-character convention adapter is already present in
`DirichletWeilIntegrand.orientedPrime_eq_twistedPrime_inv` and
`orientedArithmeticValue_eq_native_inv`. Native conjugate-character
arithmetic cannot be silently assigned the same label as (W). The full
Fourier/physical gamma and completed-explicit-formula assembly still need
source-exact formal verification. Equation (7) is proved here for the
explicit (W) source, not for a shifted substitute or an ordinate-only model.

## 5. A concrete positive finite-codimensional sector for every fixed window

Let mu>0 be any requested lower margin. Choose N,U,m so that

    U>=2*(sigma+N), alpha<=1/2, beta+H_N(sigma)/4-V>=mu.

Equations (3) and (7) imply WSFC-v1-5:

    Q_chi(f) >= mu*M0(f)-S*D(f).                            (8)

Such finite choices EXIST unconditionally for every fixed A and primitive
chi. There is no universal positivity-certificate hypothesis hidden here.
For the actual parity parameters 0<sigma<=1, H_N>=sum_(j=1)^N 1/j.
At N=2^k, grouping the harmonic terms into dyadic blocks gives
H_N>=1+k/2: each of the k blocks after the first term contributes at least
1/2. Put R=max(0,V-beta)+mu, choose a positive integer k>=8*R, let N=2^k,
U=2*(sigma+N), and choose a positive integer m>=8*A^2*U^2/pi. These choices
satisfy all displayed conditions. They may be extremely large; no efficiency,
uniformity in A or chi, evaluated ceiling, or practical certificate is claimed.
Parameter existence is a written theorem, not a new Lean declaration.

Define the finite linear map E(f)=(F_f(t_0),...,F_f(t_(m-1))). Its kernel
within the complex smooth supported test space has codimension at most m.
For EVERY f in this kernel, (8) gives Q_chi(f)>=mu*||f||_2^2.
This is nontrivial positive arithmetic information on an infinite-dimensional
space, but NOT positivity of the whole Weil form.

If Q_chi(f)<0, then S*D(f)>mu*M0(f). Thus a negative witness cannot be
invisible to all these samples. More generally, on any complex linear
subspace where Q is negative definite, E is injective: a nonzero vector in
its kernel would contradict the positive margin. Consequently the dimension
of every negative-definite subspace is at most m. This assertion retains
complex off-diagonal couplings; it is not a test of coordinate vectors.

## 6. Explicit nonzero canonical tests in the positive sector

Choose any nonzero smooth bump phi supported strictly inside [-A,A]. For
example use exp(-1/(1-(2*x/A)^2)) on |x|<A/2 and zero elsewhere. Define

    f=product_(j<m) (d/dx+i*t_j) phi.

Constant-coefficient differentiation and multiplication preserve smoothness
and support. With the actual plus-sign transform, integration by parts gives
F_(phi')=-i*t*F_phi. Hence

    F_f(t)=product_(j<m) [i*(t_j-t)] * F_phi(t).

All required samples vanish EXACTLY. Moreover f is not zero. Otherwise
its Fourier transform would vanish everywhere; since the polynomial factor
has only finitely many zeros, continuity would force F_phi=0 everywhere,
and Plancherel would force the nonzero continuous bump phi to be zero.
Thus (8) proves Q_chi(f)>=mu*||f||_2^2>0 for this explicit admissible test.
The same operation on arbitrary supported bumps gives an infinite-dimensional
complex sample-null family. These are written analytical constructions;
no new Lean admissibility declaration or numerical evaluation is claimed.

## 7. Remaining sign problem and hostile checks

The complete all-test inequality (P) is STILL unresolved. Positivity on the
sample kernel does not prove positivity on a complementary subspace or on
its couplings to the kernel. Even two positive diagonal blocks do not
suffice: Hermitian [[1,2*i],[-2*i,1]] has value -2 on (1,i), although both
coordinate blocks have value 1. This is a synthetic obstruction, not an
arithmetic Weil counterexample. An actual finite-to-infinite certificate
must still control the off-diagonal residual against the positive kernel
margin, not merely verify a finite matrix in an arbitrary span.

The current `WeilEndpointGammaRelative.md` and
`WeilFlatBaselinePoleScale.md` are preserved. For a fixed window the present
V is finite, but its growth is not assumed small as A increases. Phase
alignment by high modulation also moves the Fourier mass outwards; (2)
keeps the growing gamma cost. No contradiction with the documented
unbounded prime-operator norm or failed overlap certificate is claimed.

A noncompact Gaussian is never substituted for the canonical test. High
modulation and arbitrarily large derivative energy are allowed. N=0 gives
no growing floor. Coarse m can make alpha>=1, in which case no coercivity
claim follows. Exact sample zeros are not rounded zeros. Empty or dependent
coefficient families and zero source functions cause no Gram inverse.
Both pole orientations are retained; their negative part is explicitly paid.

The downstream canonical consumers remain
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`
and `modOne_criticalStripStatement`. The first still needs actual-source
detection AND all-test nonnegativity. The second returns the conductor-one
continued L-function to riemannZeta. Neither premise is supplied on the
whole test domain here. The zero-side signed pairing, multiplicities,
convergence and full source-return verification are unchanged obligations.
Imprimitive characters and broader L-function families are not included.

## Declaration correspondence

`GRWTSK.NumberTheory.WeilArchimedeanFloor`:
- partialSum_le_centered_of_sq_le: the pointwise supplier of WSFC-v1-1;
- half_reciprocalCap_le_partialSum: (3);
- admissible_archimedean_lower_of_lowMass: (2).

`GRWTSK.NumberTheory.WeilFourierSampleCoercivity`:
- admissible_lowMass_le_samples: WSFC-v1-2 / (4);
- admissible_archimedean_sample_lower: WSFC-v1-3 / (5);
- admissible_archimedean_sample_null_lower: exact sample-null specialization;
- admissible_archimedean_sample_null_cap_lower: beta+H_N/4 lower floor.

WSFC-v1-4--5, the sharp pole estimate, negative-index result and differential
test construction are WRITTEN only. These versioned source-local locators
are not accepted frontier-registry statuses. Individual records preserve
literal Lean statements and the checked/unrun boundary. Publication and
lexical or scalar-algebra checks do not promote formal acceptance.
