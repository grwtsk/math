# Exact H1 translation defect and full physical Weil-form continuity

Author: grwtsk contributors. Date: 2026-11-12. Edition 1.
MSC2020: 11M26 (primary), 46E35, 42A38, 11M41.
Evidence: WRITTEN_ANALYTICAL_ARGUMENT. The sharp trigonometric scalar supplier
is a separate Lean SOURCE_PROOF_CANDIDATE in WeilShiftDefectScalar.lean.
The H1 Sobolev integration, density and source-return arguments in this note
are not Lean declarations. Lean elaboration, full dependency build, fresh
kernel replay, axiom audit, independent review and whole-form numerical
certification NOT_RUN; novelty UNASSESSED.

## I. The source, not a substitute

Fix A>0. Let H_A be the complex Sobolev space H1_0((-A,A)), embedded
by zero extension in H1(R;C). For f,g in H_A define mixed correlation,
energy and shift energy, with the antilinear-first convention:

 C_(f,g)(r)=int_R conjugate(f(t))*g(t+r)dt,
 E(f)=||f||_2^2,  e_f(r)=||f(.+r)-f||_2^2.

Let chi be primitive of conductor q>=1, with parity a=gammaParity chi.
For q>1 it is nonprincipal. The conductor-one case is zeta with a=0.
K_a(r)=exp(-(a+1/2)*r)/(1-exp(-2*r)), r>0, is the existing parityKernel.
Keep the literal activePrimePowers(A) and primeWeight w_n, and define
the mixed signed prime response as

 S_chi,A(f,g) = sum_(n active) w_n *
   (conjugate(chi(n))*C_(f,g)(log n)
     +chi(n)*C_(f,g)(-log n)).

The diagonal is precisely the native twistedPrime since
C_f(-r)=conjugate(C_f(r)). Every prime power, phase and nonunit zero
survives. For conductor-one zeta the signed pole form is

 P_zeta(f,g)=conjugate(M_+(f))*M_-(g)
             +conjugate(M_-(f))*M_+(g),
 M_+(f)=int_R exp(t/2)*f(t)dt,
 M_-(f)=int_R exp(-t/2)*f(t)dt.

For primitive q>1 set P_chi=0. The form is exactly

 B_chi,A(f,g)=P_chi(f,g)+gammaConstant(q,a)*<f,g>_2
  +int_0^infinity K_a(r)*<T_r f-f,T_r g-g>_2 dr
  -S_chi,A(f,g),               Q_chi,A(f)=B_chi,A(f,f).        (1)

On smooth supported sources this is the same physical expression
as primitiveArithmeticValue and the two-pole zeta return in
WeilGammaPhysicalReturn. Formal elaboration of the latter imported
source remains unverified; this note does not assume a new
completed-L-function identity for arbitrary H1 sources.

## II. Exact H1 shift variance (WHS-v1-A)

For every f in H1(R;C) and r>=0,

 r^2*||f'||_2^2-e_f(r)
       =int_0^r (r-u)*e_(f')(u)du >=0.                      (2)

The derivative is weak in L2; there is NO H2 premise.

Proof: u->T_u f' is strongly continuous in the Hilbert space L2,
with ||T_u f'||_2=||f'||_2. The Sobolev fundamental theorem gives,
as a strong Bochner integral,
 T_r f-f=int_0^r T_u f' du.
Expand its squared norm; all vector functions are bounded on
the finite square [0,r]^2, so Hilbert-space Fubini applies:

 r^2||f'||_2^2-e_f(r)
   = (1/2)int_0^r int_0^r
             ||T_u f'-T_v f'||_2^2 du dv.

Translation invariance makes the integrand e_(f')(|u-v|).
Split the square into two triangles and integrate their common
displacement to obtain (2). This proves the sign before any
Fourier transform or truncation. Negative r follows from
e_f(-r)=e_f(r), and r=0 gives zero.

If f also lies in H2, the translation bound
e_(f')(u)<=u^2||f''||_2^2 yields the PREVIOUS sharp estimate
0<=r^2||f'||_2^2-e_f(r)<=r^4||f''||_2^2/12.
The new statement is the H1 identity, not a new claim of the H2
quartic estimate.

Independent scalar method check: for a real frequency x,
 d(x)=x^2-2(1-cos x)=4*(x/2-sin(x/2))*(x/2+sin(x/2)).
The two global sine inequalities |y-sin y|<=|y|^3/6 and
|sin y|<=|y| give 0<=d(x)<=x^4/12. The nonnegative part follows
from 1-x^2/2<=cos x. The named Mathlib suppliers are consumed
by WSD-v1-01 cosine_defect_bounds in WeilShiftDefectScalar.lean;
WSD-v1-02 preserves arbitrary complex Fourier coefficients.
To obtain (2) formally by this route still requires the exact
Fourier normalization, translation multiplier and Plancherel
on the original source. Neither that integration nor (2) is
a proved Lean declaration in this change.

## III. One-sided H1 near-zero gamma control (WHS-v1-B)

For h>0 define the actual kernel second moment and the finite
derivative shift modulus
 J2(a,h)=int_0^h K_a(r)r^2dr,
 omega_(f')(h)^2=sup_(0<=u<=h)e_(f')(u).

The modulus is finite since e_(f')(u)<=4||f'||_2^2 and tends to
zero as h->0 for every FIXED f in H1 by strong L2 translation
continuity. Multiply (2) by K_a(r)>=0 and integrate; Tonelli
is justified for the nonnegative remainder, dominated by
2||f'||_2^2*K_a(r)*r^2. Existing kernel_moment_bounds show that
this majorant is integrable at zero. Thus the identity

 R_(a,h)(f)
 :=J2(a,h)||f'||_2^2-int_0^h K_a(r)e_f(r)dr
  =int_0^h K_a(r)int_0^r(r-u)e_(f')(u)du dr
  =int_0^h e_(f')(u)*[int_u^h(r-u)K_a(r)dr]du              (3)

holds between genuine finite integrals. In particular,

 0<=R_(a,h)(f)<=omega_(f')(h)^2*J2(a,h)/2
                <=omega_(f')(h)^2*(h^2/8+h^3/6).        (4)

For each fixed f, R_(a,h)(f)=o_f(h^2). The constant and rate
are NOT uniform over H1 unit vectors or over varying windows.
This is not effective evaluation of an arbitrary abstract f.
For an explicitly represented source, a separately certified
derivative translation modulus can be used; for H2 the existing
beta(h)||f''||^2 error may be more economical.

For f in H_A, choose 0<h<=R with R>=2A. Because the zero extension
has genuine zero traces, e_f(r)=2E(f) for r>=R. Let tau_a(R) be the
native ExactGammaTail.tailMass, exactly 2*int_R^infinity K_a.
Define

 Qtangent(f)=P_chi(f,f)+gammaConstant(q,a)*E(f)-S_chi,A(f,f)
   +int_h^R K_a(r)e_f(r)dr+tau_a(R)*E(f)
   +J2(a,h)||f'||_2^2.

Splitting the full absolutely integrable gamma term gives the SAME
original arithmetic value Q_chi,A(f)=Qtangent(f)-R_(a,h)(f), hence

 Qtangent(f)-omega_(f')(h)^2*J2(a,h)/2
    <= Q_chi,A(f) <= Qtangent(f).                         (5)

All prime powers/phases, conductor/parity constants and both zeta
pole orientations stay untouched. The approximation is an UPPER
approximation; the remainder must be charged on the lower side.

## IV. Fixed-window H1 continuity with explicit coefficient (WHS-v1-C)

Every f in H1(R) satisfies ||T_r f-f||_2<=r||f'||_2 for r>=0,
and ||T_r f-f||_2<=2||f||_2. For natural a, on (0,1],
 r^2*K_a(r) <= r^2+r/2,
and on [1,infinity),
 K_a(r)<=exp(-r/2)/(1-exp(-2)).
Both are source-independent bounds on the ORIGINAL kernel.
For f,g in H_A, Cauchy-Schwarz of mixed shift energies gives

 |Gamma_a(f,g)|
 <=(7/12)||f'||_2||g'||_2+Kinf||f||_2||g||_2,            (6)
 Kinf=8*exp(-1/2)/(1-exp(-2)).

Indeed int_0^1(r^2+r/2)dr=1/3+1/4=7/12, and
4*int_1^infinity exp(-r/2)/(1-exp(-2))dr=Kinf.
Thus the actual gamma correction is a genuine continuous
Hermitian sesquilinear form on H1, not a totalized divergent value.

Cauchy-Schwarz for shifted mixed correlation and |chi(n)|<=1
give, with the native primeMass(A)=2*sum_active w_n,

 |S_chi,A(f,g)|<=primeMass(A)||f||_2||g||_2.              (7)

For zeta, ||exp(±t/2)||^2_L2[-A,A]=2*sinh A, so each moment
has norm at most sqrt(2*sinh A)||f||_2. Both signed pole
orientations together give

 |P_zeta(f,g)|<=4*sinh(A)||f||_2||g||_2.                  (8)

This is an ABSOLUTE continuity budget, not a positivity
assertion or a replacement of the signed zeta pole products.
Set delta=1 for zeta and 0 for primitive nonprincipal chi, and
 M_chi,A=|gammaConstant(q,a)|+primeMass(A)+Kinf
                     +delta*4*sinh(A),
 C_chi,A=M_chi,A+7/12.
From (6)--(8), with N(f)=||f||_H1,

 |B_chi,A(f,g)|<=M_chi,A||f||_2||g||_2
                     +(7/12)||f'||_2||g'||_2
                <=C_chi,A N(f)N(g).                    (9)

Hermitian polarization gives the quantitative difference bound

 |Q_chi,A(f)-Q_chi,A(g)|
   <=C_chi,A*(N(f)+N(g))*N(f-g).                         (10)

The constants depend explicitly on the character and support
radius, and no uniformity over A or q is inferred. The physical
form extends uniquely by continuity to H_A.

## V. Countable smooth source class and correct sign quantifiers

For each A>0 let S_A be the countable collection of compact
piecewise-linear splines with rational internal knots in (-A,A)
and rational complex nodal values. Fix a normalized compactly
supported smooth mollifier eta on [-1,1], for example
c*exp(-1/(1-t^2)) for |t|<1 and zero elsewhere. Let T_A be
all eta_delta*s with s in S_A and rational delta>0 small enough
that their support remains strictly inside (-A,A).

Every member of T_A is a genuine smooth compact complex test.
T_A is countable and H1-dense in H_A. For compact smooth f,
rational piecewise-linear interpolation converges in H1:
choose mesh going to zero, approximate nodal values by rationals
with errors o(mesh), and use uniform continuity of f'. Compact
splines are H1-approximated by their mollifications as delta->0
because translations are strongly continuous in L2 for the
function and weak derivative. C_c^infinity(-A,A) is dense in
H1_0(-A,A) by its defining closure. Functions whose smooth
support reaches ±A are included by the zero trace/density
argument, not by a discontinuous hard extension.

Using (10), at each fixed primitive source/window the conditions

 (i) Q_chi,A(f)>=0 for all supported C_c^infinity tests f;
 (ii) Q_chi,A(g)>=0 for all g in T_A;
 (iii) for all g in T_A and all rational eps>0,
       Q_chi,A(g)>=-eps

are equivalent. In (iii)=>(ii), send eps to zero, including
null directions; in (ii)=>(i) use H1 density and continuity.
None of these statements proves (iii). A sound rational interval
checker, finite samples or arbitrary-accuracy enclosure existence
alone cannot establish universal lower-sign certificate existence.
The normalizing mollifier, rational splines, transcendental
evaluations, character values, exact cutoff comparisons and
all rounding errors require separate sound certified evaluators.

## VI. Falsification and provenance

A jump extension f=1_[0,1] is not H1; e_f(r)=2r for small r,
so none of the derivative estimates can be applied to it.
High modulation exp(iNt)*phi(t) defeats any fixed tolerance
uniform over all source functions; H1 translation continuity
is per source and not uniform over the H1 unit sphere.
A real odd source can make the zeta pole term negative.
At log n=2A the native correlation vanishes by the support
overlap theorem. No positive comparator, pole-neutral
restriction, off-line ordinate projection or simplicity
assumption has been introduced.

Primary comparisons: E. Bombieri, Remarks on Weil's quadratic
functional in the theory of prime numbers, I, Rend. Lincei
11 (2000), §§2--3 and variational analysis; M. Suzuki,
Weil's quadratic form via the screw function,
arXiv:2606.09096v3 (2026), §§1--2; Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1, (3.19)--(3.20).
The Sobolev translation, Hilbert variance, mollifier density
and sine factorization are classical. The present constants
are source-local consequences, not claimed mathematical novelty.

Native declaration consumers: SourcePrimeCorrelation.correlation,
energy, norm_correlation_le_energy, correlation_eq_zero_of_cutoff;
CharacterWindow.twistedPrime and LowSchur.primeMass;
GammaHeadIntegrability.shift_mul_parityKernel_le;
ExactGammaTail.tailMass; GammaNearZero.kernel_moment_bounds,
gamma_near_zero_enclosure_of_shift_defect; GammaPhysicalReturn.
New source-local WSD-v1-01/02 are scalar candidate declarations.
WHS-v1-A/B/C are WRITTEN statement IDs, not promoted registry
claims and not Lean declarations.

First formal obligation: exact-pin complete import build, then
formalize H1 identity (2) and its genuine original-form consumer.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
First unresolved arithmetic premise: prove nonnegativity of
P_chi(f)+gammaConstant(q,a)E(f)+int K_a e_f-S_chi,A(f)
for every primitive source, every support window and every
complex smooth test, with zeta explicitly included. This
work is a continuity and enclosure theorem, not RH or GRH.
