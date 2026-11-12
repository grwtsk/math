# Support-relative quadrature and the fixed-window complete Weil form

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
MSC2020: 11M26 (primary), 65D32, 42A38, 46E35.
Coordination: math#1801, scope comment 6817068740.

## Source and evidence boundary

Inspected math/main: `7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
This is a written analytical argument accompanied by an authored Lean
SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent analytical review and numerical functional
certification are NOT_RUN, including the imported local candidate chain.
Originality is UNASSESSED; no novelty is claimed. The local identifiers below
are versioned statement locators, not accepted frontier-registry statuses.

The Lean file supplies support-relative physical moment bounds, the resulting
whole-cell budget, the existing midpoint/sample consumers, and the assertion
for every complex coefficient vector of a finite admissible family. Sections
3--5 contain additional WRITTEN arguments: actual Hermitian matrix assembly,
continuity and density of the complete arithmetic form on a fixed window,
and conditional exhaustion. Those arguments are not Lean declarations here.
No entrywise evaluator, positive matrix certificate, universal certificate
existence, full arithmetic explicit formula or RH/GRH proof is asserted.

The reused files are [WeilFourierMoments.lean](WeilFourierMoments.lean), blob
`aa20033bb58f9f99ed31e71f33e0a1a2af08136f`,
[WeilFourierQuadrature.lean](WeilFourierQuadrature.lean), blob
`be5e3afa9925623c322d60518aab08a99d3e5e14`, and
[ArchimedeanMomentBounds](../../../SpecialFunctions/ArchimedeanMomentBounds.lean),
blob `72d24ec6c700c124fcf09d6632f2f56d1010fb66`.
The last source identifies the multiplier through the actual digamma chain,
not an independently positive model. Its classical series comparator is
NIST DLMF 5.7.6. These estimates are elementary local consequences, not a
claimed direct formalization of a new paper theorem. Individual declaration
records are in `WeilFourierSupportQuadrature.provenance/`.

## 1. The unchanged test and its support-derived moments

Fix A>0 and an arbitrary complex function f with
`WeilNegativeWitness.Admissible f` and f(x)=0 outside [-A,A]. In particular,
its smooth order is infinity, not analytic order top. Set

    F_f(t) = integral_R f(x) exp(i*t*x) dx,
    M0(f) = integral_R |f(x)|^2 dx,
    M1(f) = integral_R |f'(x)|^2 dx,
    L0(f) = integral_R |f(x)| dx,
    Lx(f) = integral_R |x| |f(x)| dx.

All these physical integrals converge. The imported moment theorem proves
integrability and the exact spectral identities for w_f=|F_f|^2/(2*pi).

**WFSQ-v1-1 (supported moments).** For every such f,

    L0(f)^2 <= 2*A*M0(f),       Lx(f) <= A*L0(f).             (1)

Proof. Integrate the nonnegative square (2*A*|f|-L0(f))^2 over [-A,A].
Support localization and the interval length 2*A give exactly

    0 <= 4*A^2*M0 - 4*A*L0^2 + 2*A*L0^2.

Cancel 2*A>0. For the second inequality, |x|*|f(x)|<=A*|f(x)|
everywhere: inside the interval by |x|<=A, outside by f=0. Its integrable
majorant also proves convergence before integral comparison. QED.

Cauchy--Schwarz against the interval indicator is a second mathematical
way to obtain the first inequality; it is not independent formal verification.
No division by M0 is used. The zero function and dependent test families
are covered. A=0 is excluded by the statement; a continuous function supported
only at zero is identically zero, so no nontrivial test is lost.

## 2. Return to the existing whole-cell theorem

For sigma>0, N>=0, T>0 and integer m>=1, reuse

    H_N = sum_(n<N) 1/(sigma+n),
    J_N = sum_(n<N) 1/[2*(sigma+n)^2],
    b(s) = 1/(4*s^3)+1/(8*s^2),
    d = b(sigma+N)+H_N/T^2,
    epsilon = 2*T^2/(pi*m) * (2*A^2*H_N+A*J_N).              (2)

The existing Lipschitz budget is

    Lambda_N(f) = H_N*L0*Lx/pi + J_N*L0^2/(2*pi).

By (1), nonnegativity of H_N,J_N and pi>0,

    Lambda_N(f) <= (2*A^2*H_N+A*J_N)*M0/pi.

Consequently the existing gridBudget=2*Lambda_N*T^2/m is at most
epsilon*M0. This derives its coefficient from the unchanged source test;
it does not replace a missing regularity premise with an assumption.

Let h=2*T/m, t_k=-T+(k+1/2)h, beta=log(q/pi)+Re psi(sigma), and

    S_N(sigma,y)=sum_(n<N) y^2/[(sigma+n)*((sigma+n)^2+y^2)],
    R(f)=beta*M0(f)+h*sum_(k<m) w_f(t_k)*S_N(sigma,t_k/2).

**WFSQ-v1-2 (mass-relative enclosure).** For q>=1 and every test above,

    R(f)-epsilon*M0(f) <= A_q,sigma(f)
      <= R(f)+epsilon*M0(f)+d*M1(f),                        (3)

where A_q,sigma is the original uncentered digamma spectral integral.
Proof. Apply `admissible_archimedean_midpoint_enclosure` and enlarge only
its grid budget using (1)--(2). The infinite remainder remains one-sided;
the entire baseline beta*M0 remains exact and may be negative. QED.

For |beta*M0-B|<=eta and true core sample errors |g_N(t_k)-v_k|<=e_k,
the existing `admissible_archimedean_sample_enclosure` similarly yields

    Rhat-E <= A_q,sigma(f) <= Rhat+E+d*M1(f),
    Rhat=B+h*sum v_k,  E=eta+epsilon*M0(f)+h*sum e_k.         (4)

These are actual baseline/sample obligations, not evaluated data. The bound
holds at sigma=1/4 and 3/4 and q=1. It says nothing about deleting zeta poles.

## 3. Actual complex matrices and singular families

Let phi_1,...,phi_d be admissible complex functions supported in [-A,A].
For every c in C^d, let f_c=sum_j c_j phi_j. Finite sums preserve smoothness
and support; hence the Lean theorem `finite_family_midpoint_enclosure`
applies to every c, not merely to each basis function. Independence is not
assumed. Write F_j=F_(phi_j), with conjugate-linear first inner-product slot.
Define the actual matrices by

    (G0)_ij = integral_R conjugate(phi_i) phi_j,
    (G1)_ij = integral_R conjugate(phi_i') phi_j',
    A_ij = (1/(2*pi)) integral_R conjugate(F_i(t)) F_j(t)
                  * [log(q/pi)+Re psi(sigma+i*t/2)] dt,
    Atilde_ij = beta*(G0)_ij + (h/(2*pi))*sum_(k<m)
                   S_N(sigma,t_k/2)*conjugate(F_i(t_k))*F_j(t_k).

Absolute convergence is required, not inferred from a totalized integral.
The actual centered-digamma estimate at N=0 gives

    |log(q/pi)+Re psi(sigma+i*t/2)| <= |beta|+b(sigma)*t^2.

Use |F_i*F_j|<=(|F_i|^2+|F_j|^2)/2 and the proved zeroth/second
Fourier moments. The physical Gram entries converge by Cauchy--Schwarz.
The real multiplier proves A and Atilde Hermitian; G0,G1 are Hermitian
positive semidefinite. Finite expansion and linearity of the genuine integrals
and derivatives give, with no orthonormality assumption,

    c*G0 c=M0(f_c),  c*G1 c=M1(f_c),
    c*A c=A_q,sigma(f_c),  c*Atilde c=R(f_c).                (5)

**WFSQ-v1-3 (actual matrix order, WRITTEN).** These specific matrices obey

    -epsilon*G0 <= A-Atilde <= epsilon*G0+d*G1               (6)

in Hermitian Loewner order. Proof. Substitute (5) into (3) for arbitrary
complex c. The two differences are Hermitian, and nonnegativity on all
complex vectors is precisely the positive-semidefinite order. QED.

This is not an assertion for an unspecified matrix that is merely assumed
to represent the source. The entries and their absolute convergence were
constructed above. This construction and (6) are written mathematics, not
additional Lean declarations. G0 and G1 are never replaced by identities.

If c*G0 c=0, continuity gives f_c=0 everywhere: a nonzero value would give
a positive norm-square integral on an open interval. Thus f_c'=0 and every
exact source expression in (5), including the complete prime/pole expression,
vanishes on c. Null directions do not require an unstable inverse. Computing
an approximate nullspace does not prove the exact identities. Certified
sample, baseline, prime and pole matrix errors must be added separately;
checking only diagonal entries or finitely many coefficient vectors is invalid.

For example, the Hermitian matrix [[1,i],[-i,1/2]] is positive on both
coordinate vectors but negative on c=(1,i): c*Q c=-1/2. The dependent family
(phi, i*phi) instead has null coefficient c=(1,i). Both boundary checks
must be retained: complex couplings matter and genuine null directions exist.

## 4. Complete fixed-window H1 continuity (WRITTEN)

Fix a primitive character chi of conductor q>=1. Retain a in {0,1},
sigma=1/4+a/2, delta=1 for conductor one and 0 otherwise. This section uses
exactly the displayed (W) convention, not the inverse-labelled physical
prime convention in some existing modules. For u,v supported in [-A,A], put

    C_uv(s)=integral_R conjugate(u(x))*v(x+s) dx,
    M_u(z)=integral_R u(x)*exp((z-1/2)*x) dx,
    I_A={n>=2 : log n<=2*A},
    Pabs=2*sum_(n in I_A) Lambda_vM(n)*|chi(n)|/sqrt(n).

Every active prime power is present. Terms at the threshold have zero overlap
almost everywhere; including them is harmless. Ramified terms have their
actual zero character values, not invented phases. Define

    B_chi(u,v)=(1/(2*pi))*integral conjugate(F_u)*F_v*m_chi
      +delta*[conjugate(M_u(0))*M_v(1)+conjugate(M_u(1))*M_v(0)]
      -sum_(n in I_A) Lambda_vM(n)/sqrt(n)
          *[chi(n)*C_uv(log n)+conjugate(chi(n))*C_uv(-log n)]. (7)

For smooth tests, C_ff=g=f*tilde(f), and (7) on the diagonal is exactly (W).
Both pole orientations are present and their sum is not assumed nonnegative.
Translation invariance gives C_uv(-s)=conjugate(C_vu(s)); the form is
Hermitian with no evenness or reality restriction. A module using
Re(conjugate(chi(n))*g(log n)) must be compared with (7) using the inverse
character, not silently the same label. A full Lean convention/source adapter
and the completed-L-function explicit formula are not proved here.

**WFSQ-v1-4 (complete continuity).** On the usual complex Sobolev space

    X_A={f in H1(R) : f=0 almost everywhere outside [-A,A]},

(7) is a bounded Hermitian form. In detail, set

    C0=|beta|+Pabs+4*delta*sinh(A),  C1=b(sigma),
    K=max(C0,C1),  ||f||_H1=(||f||_2^2+||f'||_2^2)^(1/2).

Then for all u,v in X_A,

    |B_chi(u,v)| <= C0*||u||_2*||v||_2+C1*||u'||_2*||v'||_2
                 <= K*||u||_H1*||v||_H1.                  (8)

Proof. Compact support gives an L1 representative, so its literal F and M
integrals converge. The H1 Fourier-Plancherel identities give the zeroth and
second spectral moments. They also follow by approximating in H1 by smooth
functions, as justified below. The multiplier bound before (5) and weighted
Cauchy--Schwarz give the archimedean part of (8), separately for weight 1
and weight t^2. Translation is an L2 isometry; hence
|C_uv(s)|<=||u||_2*||v||_2, giving Pabs. At z=0,1, Cauchy--Schwarz gives
|M_u(z)|<=sqrt(integral_[-A,A] exp(+/-x) dx)*||u||_2
=sqrt(2*sinh(A))*||u||_2. Each of the TWO pole products therefore costs
2*sinh(A)*||u||_2*||v||_2. The last inequality is the two-dimensional
Cauchy--Schwarz inequality applied to (||u||_2,||u'||_2). All integrals and
finite sums in (7) converge absolutely. QED.

Consequently the actual complete diagonal satisfies

    |Q_chi(f)-Q_chi(h)| <= K*(||f||_H1+||h||_H1)*||f-h||_H1. (9)

Indeed B(f,f)-B(h,h)=B(f-h,f)+B(h,f-h). The constants depend on the
fixed window and character; no bound uniform as A tends to infinity is
asserted. This is continuity, NOT the lower sign inequality Q_chi>=0.

## 5. Fixed-window density, exhaustion, and what remains

The canonical smooth supported tests are dense in X_A. Here is a proof that
keeps the support, rather than silently using a nonsmooth computational test.
For 0<r<1 let D_r f(x)=f(x/r). Its weak derivative is r^(-1)f'(x/r)
and its support lies in [-r*A,r*A]. D_r f tends to f in H1 as r tends to 1.
For completeness, dilations are strongly continuous on L2: this is first
proved by dominated convergence for continuous compactly supported functions,
then for arbitrary L2 functions by their density and ||D_r||=sqrt(r).
Apply it to f and f' and use r^(-1) tending to 1.

Convolve D_r f with a real C_c^infinity mollifier eta_epsilon of integral
one supported in [-epsilon,epsilon], choosing epsilon<(1-r)*A. The result
is complex C_c^infinity supported strictly inside [-A,A]. For fixed r it
tends to D_r f in H1 as epsilon tends to zero: differentiation commutes
with convolution in distributions, and translation continuity on L2 gives
eta_epsilon*g tending to g in L2 for both g=D_r f and g=(D_r f)'.
A diagonal choice proves the density assertion. No periodic extension or
nonzero boundary trace is introduced. The boundedness (8) proves a unique
extension from canonical tests, and the explicit integrals (7) identify it.

Since H1 is separable (its graph in L2 times L2 is a subspace of a separable
metric space), choose a countable dense set in X_A and approximate it to
all positive rational accuracies by these smooth tests. Enumerate the
resulting countable dense smooth family as phi_1,phi_2,... and put
V_d=span_C{phi_1,...,phi_d}. These spaces are nested and their union is dense.
They need not have independent generators; (5)--(6) still apply.

**WFSQ-v1-5 (conditional exhaustion, WRITTEN).** If the complete matrices
(B_chi(phi_i,phi_j))_(i,j<=d) are positive semidefinite for every d, then
Q_chi(f)>=0 for every f in X_A. Proof. Approximate f in H1 by functions
from the nested union, use finite-dimensional positivity, and pass to the
limit by (9). For every compact smooth test, some positive integer A
contains its support. Repeating the hypothesis for EVERY positive integer
A and EVERY primitive chi therefore covers the full arithmetic test domain.

This is not a certificate-existence theorem or an effective basis algorithm.
An accepted certificate's soundness, existence of adequate certificates for
all finite problems, and dense all-window exhaustion remain logically distinct.
Zero margins need not admit a finite strictly positive interval certificate.
No finite list of windows suffices. The result also does not manufacture the
source-exact signed zero-sum identity or an off-line negative-witness supplier.

## 6. Arithmetic obstruction and exact source return

The existing [WeilFlatBaselinePoleScale.md](WeilFlatBaselinePoleScale.md),
blob `107ee7924c8035859b5ae028ea179ff53e9dc3f9`, bounds one PARTICULAR
overlap certificate by L*kappa_b(L)/32 while its fixed-conductor flat
comparator has a lowest value asymptotic to -exp(L/2). This bounds the
reported guaranteed increment, not the true arithmetic phase rise. It does
not refute RH/GRH. Equations (3), (6) and (9) do not remove that obstruction.

The still-unproved substantive assertion is the joint arithmetic inequality
prime_chi(f)<=arch_chi(f)+both_poles_chi(f) for every primitive chi and
every canonical complex test on every window. No unconditional mechanism
forcing that sign is established in this increment. Upper growth and
continuity estimates do not imply a lower sign bound.

The exact canonical downstream consumer remains
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`.
It takes BOTH an actual-source negativity detector and all-test nonnegativity
as hypotheses. `criticalStripStatement` uses the analytically continued
`DirichletCharacter.LFunction` in 0<Re rho<1; its conductor-one return is
`modOne_criticalStripStatement` and uses `LFunction_modOne_eq` to recover
`riemannZeta`. None of those hypotheses is discharged by simply publishing
this candidate. The signed pairing over complex zeros with multiplicities,
its convergence, the full explicit formula and character adapter still need
source-exact verification. Imprimitive characters are not included.

## 7. Declaration map and hostile checks

The namespace is `GRWTSK.NumberTheory.WeilFourierSupportQuadrature`.
`admissible_supported_moment_bounds` supplies (1).
`admissible_supported_coreSlope_le` supplies the derived Lipschitz budget.
`admissible_supported_midpoint_enclosure` supplies (3).
`admissible_supported_sample_enclosure` supplies (4).
`finite_family_midpoint_enclosure` quantifies over every complex c in (5).
WFSQ-v1-3--5 have NO new Lean declaration in this increment.

High modulation preserves M0 but can make M1 arbitrarily large: the d*M1
tail is retained. N=0 makes H_N=J_N=epsilon=0, not the infinite tail zero.
A singular G0 is not inverted. Complex off-diagonal terms and all sample
errors remain. The pole constant in (8) grows with A; it is an absolute
continuity bound, not a pole sign or cancellation claim. The prime cutoff
includes prime powers at the support threshold. None of these hostile
checks is an executed numerical evaluation of the full functional.

Source-integrity and exact scalar-algebra observations, if performed, are
recorded in the coordinating issue with the actual publication revision.
They do not promote the formal or numerical verification statuses above.
