# Unconditional exterior-modulation positivity of the full endpoint span

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).

## Scope and evidence

This increment supplies a lower bound for the actual mixed endpoint form on an
unbounded modulation region. Unlike WSEP ray positivity, it covers every complex
linear combination of the two endpoints. Unlike WEPD's orbit calculation, its
proof is on the arithmetic side and needs neither zero locations nor a narrower
zero strip. It does NOT establish the bounded-modulation inequality for all
support lengths. In particular the unmodulated all-window problem remains.

WEMC-v1-1--4 below are complete WRITTEN analytical arguments, not accepted
registry claims or compiled Lean theorems. The companion Lean module contains
only `log_pair_bound` and `shifted_log_pair_bound`, with the definition
`logWeight` and a private polynomial helper. The multiplier comparison,
Plancherel step, physical-form return and endpoint theorem remain WRITTEN.
Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, numerical certification and independent analytical review: NOT_RUN.
Originality: UNASSESSED. No RH/GRH hypothesis or new research axiom is introduced.

Inspected main: 68d976d55601e8b827dd9e93bb45678eb074265d.
Lean: leanprover/lean4:v4.34.1; Mathlib:
d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination: math#1801,
scope comment 6830340391. Concurrent prime/gamma assembly is not modified.
The canonical execution skill returned 404 at Noe main
1d5f33f44c6b4e64d420b7279d09324d2b8e7268; no dependent execution was dispatched.
Ordinary source authoring and publication are separate from proof execution.

## 1. Exact source and domain

Fix a primitive character chi of conductor q>=1 and parity alpha in {0,1}.
Conductor one is actual Riemann zeta. Put b=alpha+1/2, delta=1 for q=1 and
zero otherwise. For L>0, zero-extend functions on I=(0,L). Retain exactly

    Q_chi,L(f)=c_q,alpha ||f||_2^2+Gamma_b(f)
                         -<f,P_chi,L f>+delta<f,R_L f>,
    c_q,alpha=log(q/pi)+psi_Gamma(1/4+alpha/2),
    Gamma_b(f)=integral_0^infinity k_b(r)||f(.+r)-f||_2^2 dr,
    k_b(r)=exp(-br)/(1-exp(-2r)),
    P_chi,L=sum_(n>=2,log n<L) Lambda(n)/sqrt(n)
                  [chi(n)T_(log n)+conj(chi(n))T_(log n)^*],
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2).                    (1)

Inner products are conjugate-linear in the first variable. T_r is the
zero-extended shift restricted to I. All prime powers, their phases, the
conductor, gamma parity, original scalar and both applicable pole orientations
are retained. This is [PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md),
section 1, equation (2), blob a7f0ff2b5ea1d331a2a989b01e024d2883d23785.
The physical plus-Fourier convention retains the existing inverse-character
adapter to `primitiveArithmeticValue`; see
[CHARACTER-ORIENTATION-v1.md](../DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md).
No new same-character identification or imprimitive transfer is asserted.

Write V_L,b={g in L2(I):Gamma_b(g)<infinity} and M_eta g(x)=exp(i eta x)g(x).
The domain and smooth form core are those of WGPC-v1-1 in
[WeilGammaPhaseCoercivity.md](WeilGammaPhaseCoercivity.md), blob
1af078628992058c0def133e5ffaa9b8c346a72c. The arguments below use the literal
integral (1), not a shifted positive replacement operator.

## 2. The entire gamma multiplier, with explicit logarithmic bounds

**WEMC-v1-1.** For every b>0 and real t, set

    Psi_b(t)=sum_(j>=0) 2t^2/[(b+2j)((b+2j)^2+t^2)],
    h_b(t)=(1/2)log(1+t^2/b^2).

Then

    h_b(t)<=Psi_b(t)<=h_b(t)+2/b.                         (2)

For the plus transform F_g(xi)=integral g(x)exp(i xi x)dx,

    Gamma_b(g)=(1/(2pi)) integral_R Psi_b(xi)|F_g(xi)|^2 dxi. (3)

Proof. Expand k_b(r)=sum_(j>=0)exp(-(b+2j)r) in
2 integral k_b(r)(1-cos(tr))dr. Tonelli applies to nonnegative terms.
Integration of each exponential gives the displayed series. Plancherel for
translations and Tonelli give (3), including infinite values before imposing
g in V_L,b. This reuses WGPC-v1-1's actual multiplier identity.

For t!=0 the positive function f_t(c)=2t^2/[c(c^2+t^2)] decreases for c>0;
for t=0 it is zero. Comparing rectangles of width 2 with its improper integral
on [b,infinity) gives

    (1/2) integral_b^infinity f_t(c)dc
       <=sum_(j>=0)f_t(b+2j)
       <=f_t(b)+(1/2) integral_b^infinity f_t(c)dc.

An antiderivative is log(c^2/(c^2+t^2)); hence the half integral is h_b(t).
Also f_t(b)<=2/b. This proves (2), with the ENTIRE series, not a finite
archimedean cutoff. It supplies both convergence and an explicit comparison.
The proof of (2) does not require an unformalized digamma integral theorem.
For comparison only, DLMF 5.9.16 gives
Psi_b(t)=Re psi_Gamma((b+i*t)/2)-psi_Gamma(b/2).

## 3. Modulation coercivity on the original form domain

**WEMC-v1-2.** For every L>0,b>0, g in V_L,b and real eta!=0,
M_eta g belongs to V_L,b and

    Gamma_b(M_eta g)+Gamma_b(g)
                    >=log(|eta|/b)||g||_2^2.             (4)

Proof. For real x,y the exact identity

    (1+x^2)(1+y^2)-(x+y)^2=(xy-1)^2>=0

implies, when x+y!=0,

    log|x+y|<=(1/2)log(1+x^2)+(1/2)log(1+y^2).

All logarithm arguments used for monotonicity are positive. Put
x=xi/b and y=(eta-xi)/b. By (2) and evenness,

    Psi_b(xi)+Psi_b(xi-eta)>=log(|eta|/b).                 (5)

Domain preservation must be checked before subtracting finite energies.
The elementary inequality 1+(x+y)^2<=2(1+x^2)(1+y^2) gives

    Psi_b(xi-eta)<=Psi_b(xi)+h_b(eta)+(log 2)/2+2/b.

Thus the shifted multiplier is integrable against |F_g|^2. Support is
unchanged by M_eta. Since F_(M_eta g)(xi)=F_g(xi+eta), change variables in
(3), multiply (5) by |F_g(xi)|^2/(2pi), and integrate. Plancherel identifies
the right side with log(|eta|/b)||g||^2 and proves (4).

The subtraction of Gamma_b(g) in the corresponding lower bound is essential.
There is no assertion of uniform coercivity over every arbitrarily chosen
envelope: taking g=M_(-eta)h with fixed h would invalidate such an assertion.
The hypothesis eta!=0 is explicit; totalized log(0) plays no role.

## 4. Return to the full arithmetic form, including the indefinite poles

Define the finite, nonnegative quantity

    p_chi,L=2 sum_(n>=2,log n<L) Lambda(n)|chi(n)|/sqrt(n),
    r_L=2sinh(L/2)-L>0.                                  (6)

One has ||P_chi,L||<=p_chi,L because each T_r has norm at most one. This is
only a bound on the original operator; no phase is changed in (1).
The exact lower spectral bound for R_L is -r_L. Indeed put
A(x)=exp((x-L/2)/2), B(x)=exp(-(x-L/2)/2). Their common squared norm is
s_L=2sinh(L/2), their inner product is L, and R_L=A tensor B+B tensor A.
Its eigenvectors A+B and A-B have eigenvalues L+s_L and L-s_L; the operator
vanishes on their orthogonal complement. Both poles are indispensable to
this computation. In particular R_L is NOT nonnegative.

**WEMC-v1-3.** Suppose K>=0 and g in V_L,b satisfies
Gamma_b(g)<=K||g||^2. For every eta!=0,

    Q_chi,L(M_eta g)>=
       [log(|eta|/b)+c_q,alpha-K-p_chi,L-delta*r_L]||g||^2. (7)

This follows by combining (4), the complete prime norm bound, and the exact
negative pole bound. For every prescribed margin epsilon>=0, put

    A=K+p_chi,L+delta*r_L-c_q,alpha,
    H_chi,L,K(epsilon)=b*exp(max(0,A)+epsilon)>0.           (8)

Then for EVERY real eta with |eta|>=H_chi,L,K(epsilon),

    Q_chi,L(M_eta g)>=epsilon||M_eta g||^2.                (9)

Indeed log(|eta|/b)>=max(0,A)+epsilon, and max(0,A)>=A.
This controls both signs of eta, not only a sequence of sample modulations.
For epsilon>0 it is strictly positive for nonzero g. No zero count, zero sum,
RH/GRH hypothesis, finite numerical sign, or imported seven-eighths result
enters the proof.

The prime inventory in (6) can be evaluated exactly before bounding. A coarser
fully elementary option, requiring no prime data, is

    p_chi,L<=4L(exp(L/2)-1).                              (10)

Use |chi(n)|<=1, Lambda(n)<=log n<L, and
sum_(2<=n<=X)n^(-1/2)<=integral_1^X x^(-1/2)dx, X=exp L.
The actual strict cutoff and its possible endpoint prime power cause no loss.
The bound (10), substituted in (8), is sufficient but need not be practical.

## 5. The full complex endpoint span: an elementary explicit K

Set u(x)=exp(-x/2), v(x)=exp(-(L-x)/2) on I, zero-extended, and

    d_L=1-exp(-L), z_L=L*exp(-L/2), g_L=d_L-z_L>0.

Their L2 Gram matrix is G_L=[[d_L,z_L],[z_L,d_L]]. Positivity of g_L follows
from 2sinh(L/2)>L. These endpoints have jumps; no H1 energy is assigned.

**WEMC-v1-4.** For every L>0, either gamma parity and every c1,c2 in C,

    Gamma_b(c1*u+c2*v)<=K_L||c1*u+c2*v||^2,
    K_L=2pi/g_L.                                        (11)

Consequently (8)--(9), with this explicit K_L, establish positivity on the
ENTIRE span of u_L,eta and v_L,eta beyond the stated modulation cutoff.

Proof. For 0<r<L the real autocorrelation of u is
A_L(r)=exp(-r/2)-exp(-L)exp(r/2), and it vanishes for r>=L.
For r<L,

    d_L-A_L(r)=(1-exp(-r/2))[1+exp(-L+r/2)]
                    <=(1-exp(-r/2))(1+exp(-r/2))=1-exp(-r).

For r>=L, d_L<=1-exp(-r) as well. Since k_b<=k_(1/2),

    Gamma_b(u)=2 integral_0^infinity k_b(r)[d_L-A_L(r)]dr
       <=2 integral_0^infinity exp(-r/2)/(1+exp(-r))dr=pi.

The last equality uses t=exp(-r/2) and 4 integral_0^1 dt/(1+t^2)=pi.
Reflection gives Gamma_b(v)=Gamma_b(u). Pointwise squared-norm convexity of
the two translation increments gives Gamma_b(c1*u+c2*v)<=
2pi(|c1|^2+|c2|^2). The exact Gram bound gives
||c1*u+c2*v||^2>=g_L(|c1|^2+|c2|^2), proving (11).
The same estimate also proves their form-domain membership.

A less conservative option is the exact generalized gamma eigenvalue

    K_exact=max((G_b+J_b)/(d_L+z_L),(G_b-J_b)/(d_L-z_L)),   (12)
    G_b=Gamma_b(u), J_b=Gamma_b(u,v) in R.

The unmodulated gamma matrix and G_L are simultaneously diagonalized by
(1,1),(1,-1). Thus (12) is exactly the largest gamma Rayleigh quotient on
this span and is at most K_L. WEGR-v1-1 already gives closed expressions
for G_b,J_b; no new quadrature or certified numerical evaluation is asserted.

For the original endpoint matrix H=[[D,B],[conj(B),D]], (9) states
H>=epsilon*G_L as quadratic forms. Therefore

    D_chi,L(eta)-|B_chi,L(eta)|>=epsilon*g_L.              (13)

In particular WEPD-v1-3's actual full-source cancellation C-E=D-|B| obeys
C>=E throughout this exterior region. This is a supplied restricted sign
bound, not merely another equivalent criterion or a positive auxiliary matrix.
The physical L2 norm has not been confused with the coefficient norm.

## 6. Retaining phases before the exterior-region estimate

A sharper explicit lower matrix, valid for every eta!=0, follows from (4):

    H_chi,L(eta)>=
      [c_q,alpha+log(|eta|/b)]G_L-Gamma_L-P_chi,L(eta)
                                              +delta*R_L(eta). (14)

Here Gamma_L=[[G_b,J_b],[J_b,G_b]] is the actual unmodulated gamma matrix.
For t=exp(-L) and omega_n=chi(n)exp(i eta log n), the finite prime matrix has

    D_P=2 Re sum_(n>=2,log n<L) Lambda(n)omega_n(1/n-t),
    B_P=sqrt(t) sum_(n>=2,log n<L)
                     Lambda(n)(L-log n)(omega_n+conj(omega_n)/n).

Both diagonals are D_P. The tapers vanish at newly active prime powers.
For the poles define J_sigma(eta)=integral_0^L exp((sigma+i eta)x)dx;
this entire integral definition includes all removable cases. Then

    D_R=2 Re(conj(J_0)*J_(-1)),
    B_R=sqrt(t)(|J_0|^2+conj(J_(-1))*J_1).

The two diagonals are equal by reflection, or by direct integration.
These formulas keep all complex phases and BOTH pole products. They follow
by integrating the literal endpoints, as in WEGR-v1-1, with modulation
multiplying a positive shift by exp(i eta log n) and its adjoint by the
conjugate phase. Equation (14) is an optional stronger sufficient lower
bound. Only the proof of the guaranteed exterior region replaces these
retained entries by (6); it does not change the arithmetic source.

## 7. Checks, comparison and the remaining arithmetic problem

An independent weaker check uses only translations: the triangle inequality
applied to (exp(i eta r)-1)g yields

    |exp(i eta r)-1|^2||g||^2
       <=2||exp(i eta r)g(.+r)-g||^2+2||g(.+r)-g||^2.

Integration gives Gamma_b(M_eta g)+Gamma_b(g)>=Psi_b(eta)||g||^2/2.
It independently confirms high-modulation growth on energy-bounded envelopes,
but does not prove the sharper constant in (4). This is a distinct written
check, not independent review or a second kernel-verified proof.

The polynomial gap in section 3 vanishes when xy=1; omitting its square or
reversing the logarithmic inequality fails this check. A general envelope
M_(-eta)h shows why Gamma_b(g) cannot be suppressed. The pole eigenvector
A-B checks the negative pole sign. At L<log 2 the exact prime inventory is
empty. At eta=0 the lower bound (4) is not asserted. As L decreases to zero,
g_L tends to zero; (11) deliberately retains this conditioning cost. No
uniform positive coefficient gap down to L=0 is claimed.

All integrals and the entire gamma series are controlled analytically; there
is no unbudgeted zero or archimedean tail in (7). No floating-point experiment,
actual-source interval certificate or parameter mesh was executed.

The decisive remaining requirement is the mixed bound on |eta| below (8)
for arbitrarily large L, including eta=0. K_L, p_chi,L and r_L depend on L;
there is no uniform cutoff in L. WEGR-v1-5 already detects any off-line zero
through arbitrarily large unmodulated windows. Thus this result does not
remove that detector's hard case, furnish canonical universal hpositive,
settle endpoint/complement coupling, or prove RH/primitive Dirichlet GRH.

Dated comparison (2026-11-12): WGPC-v1-1 supplies the exact gamma multiplier
and logarithmic domain, but not (4) or this endpoint cutoff. WEGR-v1-1 and
v1-4 supply exact unmodulated gamma/Gram data and a bounded-energy endpoint
family. WSEP and WEPD retain their original conditional-ray and pair-defect
scopes. The present proof is elementary logarithmic Fourier-weight analysis,
not a new general spectral framework. DLMF 5.9.16 is a primary comparison for
the digamma identity, not an imported proof of this arithmetic sign theorem.
A search also located Chen--Hauer--Weth, arXiv:2312.15689, whose abstract
concerns a different logarithmic-Laplacian extension problem; no theorem from
it is used or claimed equivalent. This bounded comparison is not a novelty
or corpus-wide absence audit.

Formal declaration correspondence: `log_pair_bound` and
`shifted_log_pair_bound` in namespace
`GRWTSK.NumberTheory.WeilEndpointModulationCoercivity` formalize only the
pointwise logarithmic step of WEMC-v1-2. Their complete individual records are
in the adjacent provenance folder. Mathlib Log/Basic.lean at the stated pin,
blob 0ed3c957d0d1f37094a8da10e42e6d2c2807e7be, supplies the inspected types of
log_le_log, log_mul, log_pow and log_abs. Reading them is not elaboration.
No source-local or historical evidence status is promoted by this publication.

References: [DLMF 5.9](https://dlmf.nist.gov/5.9#E16);
[Chen--Hauer--Weth abstract](https://arxiv.org/abs/2312.15689);
[WEGR](WeilEndpointGammaRelative.md);
[WEPD](WeilEndpointPairDefect.md).
