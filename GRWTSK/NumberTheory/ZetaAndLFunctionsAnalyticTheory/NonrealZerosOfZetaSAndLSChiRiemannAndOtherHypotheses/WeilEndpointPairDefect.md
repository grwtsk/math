# The mixed endpoint defect: exact reflected-pair sign and a negative-tail budget

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).

## Scope and evidence

This note continues [WeilStripEndpointPositivity.md](WeilStripEndpointPositivity.md)
(WSEP-v1) at the FIRST missing mixed inequality. It does not repeat the
endpoint-to-RH Laplace-pole reduction already in
[WeilEndpointGammaRelative.md](WeilEndpointGammaRelative.md) (WEGR-v1).
The result is an exact calculation for the actual polarized endpoint transforms:
every off-line reflection pair gives a strictly indefinite two-by-two matrix,
for every positive support length and every real modulation. Thus even the
seven-eighths strip does not extend the preceding positive diagonal estimate
term by term to the endpoint span. A quantitative one-sided infinite-tail bound
then controls precisely the possible negative contribution.

The determinant, its strict sign, the full-source cancellation identity and
negative-tail bounds below are WRITTEN analytical arguments. The companion
[WeilEndpointPairDefect.lean](WeilEndpointPairDefect.lean) contains only three
real-coordinate algebra SOURCE_PROOF_CANDIDATE declarations. Each has an
individual record in `WeilEndpointPairDefect.provenance/`. Elaboration, complete
dependency build, fresh kernel replay, transitive axiom audit, certified
computation and independent analytical review are NOT_RUN. Originality is
UNASSESSED. A published source is not an accepted formal proof.

Initial inspected math/main: 26e55b7937c2e4d6e92533903e263440b35990e0.
Lean: leanprover/lean4:v4.34.1. Mathlib:
d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination: math#1801,
scope comment 6829734479. The required execution skill returned 404 at
noeaaeue/main 3a22e1022074ecc99d5cdeaabeb5dc919711a55b; no dependent proof
execution was dispatched. Ordinary source authoring and publication are distinct.
No root import, dependency pin, workflow, old statement ID or evidence status
is changed. The source-identity correction in section 7 is explicit, not a
retroactive verification claim.

## 1. The original arithmetic source and its endpoint span

Fix a primitive Dirichlet character chi of conductor q>=1, with parity
alpha in {0,1}. Conductor one is actual Riemann zeta. Put b=alpha+1/2 and
let delta_chi=1 for q=1 and zero otherwise. On (0,L), L>0, zero-extend tests.
Inner products are conjugate-linear in their first variable. Retain exactly

    Q_chi,L(f)=c_q,alpha ||f||_2^2 + Gamma_b(f)
                    - <f,P_chi,L f> + delta_chi <f,R_L f>,
    c_q,alpha=log(q/pi)+psi_Gamma(1/4+alpha/2),
    k_b(r)=exp(-b*r)/(1-exp(-2r)),
    Gamma_b(f)=integral_0^infinity k_b(r)||f(.+r)-f||_2^2 dr,
    P_chi,L=sum_(n>=2,log n<L) Lambda(n)/sqrt(n)
                      [chi(n)T_(log n)+conj(chi(n))T_(log n)^*],
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2).                     (1)

These are the physical conventions of
[PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md), with the
plus-Fourier/character orientation retained from WSEP and the existing
[inverse-character orientation record](../DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md).
No scalar shift, pole-neutral restriction, ordinate projection, changed source
or additional positive model is introduced. Every prime power and character
phase, the conductor, parity and both applicable pole orientations remain.

Let eta be real and set

    u(x)=exp(-x/2)*exp(i*eta*x),
    v(x)=exp(-(L-x)/2)*exp(i*eta*x),              0<x<L.

Their common squared norm is 1-exp(-L), and <u,v>=L*exp(-L/2).
Their diagonal correlations coincide, so Q(u)=Q(v)=D. Write B=Q(u,v) for
the polarized form. Then, for all complex coefficients c1,c2,

    Q(c1*u+c2*v)=D*(|c1|^2+|c2|^2)+2Re(conj(c1)*c2*B),
    H=[[D,B],[conj(B),D]],      lambda_min(H)=D-|B|.         (2)

In particular the exact arithmetic mixed entry is

    B=c_q,alpha*L*exp(-L/2)
       +integral_0^infinity k_b(r)<u(.+r)-u,v(.+r)-v> dr
       -<u,P_chi,L v>+delta_chi<u,R_L v>.                  (3)

The Cauchy--Schwarz inequality in the positive gamma energy justifies the
mixed gamma integral. It does NOT prove Cauchy--Schwarz for Q itself.

The endpoints have boundary jumps: they are bounded-variation functions in
the logarithmic gamma form domain, not generally H1 zero extensions. For
fixed L,eta the full Weil identity extends from compact smooth tests to this
span as in WSEP-v1-2. For completeness, contract the two profiles inward about
L/2 and mollify inside the resulting boundary gap. They converge in the
logarithmic form norm and retain uniformly bounded L1 norms and total
variations. Multiplication by exp((beta-1/2)x), 0<=beta<=1, preserves those
bounds on the common compact support. Bounded-variation integration by parts
therefore gives a uniform O_(L,eta)((1+|gamma|)^(-1)) bound for each transform.
The multiplicity count in section 5 makes products summable. Dominated
convergence passes all polarized products over the ENTIRE zero divisor;
the bounded fixed-window prime and pole operators and form-norm convergence
pass the arithmetic side. This also follows by polarizing the same extension
for u+v,u-v,u+i*v,u-i*v. Nothing uses L2 evaluation continuity alone.

Thus (2)-(3) are the original arithmetic form on these tests. Their full
formal source adapter and extension are still not claimed as elaborated
Lean declarations in this increment.

## 2. A single same-character reflection orbit

Let rho=beta+i*gamma be a nontrivial zero of the continued source, with
analytic multiplicity m. The primitive functional equation to the dual
character followed by conjugation gives the SAME-character zero
rho*=1-conj(rho), with the same m and the same gamma. Gamma/conductor factors
are regular and nonzero in the open strip. At q=1 use the zeta functional
equation. This is not the unsupported symmetry rho -> conj(rho) for a
complex character.

Put

    s=rho+i*eta=beta+i*tau,    tau=gamma+eta,    d=beta-1/2,
    p=(1-exp(-s*L))/s,
    r=(1-exp(-(1-s)*L))/(1-s),
    a=exp(d*L/2)*p,           b0=exp(-d*L/2)*r.             (4)

The symbols b (gamma parity parameter) and b0 (endpoint transform) are distinct.
The denominators in (4) are nonzero since 0<beta<1. For the plus Fourier
transform F_f(z)=integral f(x)exp(i*z*x)dx and z_rho=-i(rho-1/2),

    F_u(z_rho)=r,           conj(F_u(conj(z_rho)))=p,
    F_v(z_rho)=exp(d*L+i*tau*L)*p,
    conj(F_v(conj(z_rho)))=exp(-d*L-i*tau*L)*r.             (5)

These are direct integrations of the literal endpoint functions. The
single-zero diagonal is p*r=W_L(s), with the signed conjugation-swap
pairing, not an absolute square. Under rho -> rho*, s -> 1-conj(s), so
p -> conj(r), r -> conj(p), d -> -d and tau is unchanged.

For beta!=1/2 the two DISTINCT locations together give the Hermitian matrix

    H_j=[[D_j,B_j],[conj(B_j),D_j]],
    D_j=2m Re(p*r)=2m Re(a*b0),
    B_j=m exp(i*tau*L)*(a^2+conj(b0)^2).                   (6)

**WEPD-v1-1 (exact defect and strict sign).** For every L>0, every real tau,
every 0<beta<1 with beta!=1/2, and every m>0,

    |B_j|^2-D_j^2=m^2*(|a|^2-|b0|^2)^2>0,
    det(H_j)=-m^2*(|a|^2-|b0|^2)^2<0.                    (7)

Proof of the identity. For arbitrary complex a,b0,

    |a^2+conj(b0)^2|^2-(2Re(a*b0))^2
                      =(|a|^2-|b0|^2)^2.               (8)

Expand both sides: the left first term is
|a|^4+|b0|^4+2Re((a*b0)^2), and
(2Re(a*b0))^2=2|a*b0|^2+2Re((a*b0)^2).
Their difference is the right side. The phase in (6) has modulus one.
The real-coordinate version of (8) is `pair_gap_identity`; multiplying by
m^2 gives (7). This norm algebra computes a determinant of the actual signed
pairing; it does not replace that pairing by a positive construction.

Proof of strictness. Directly from (4),

    |a|^2=2exp(-L/2)*(cosh(beta*L)-cos(tau*L))/(beta^2+tau^2),
    |b0|^2=2exp(-L/2)*(cosh((1-beta)*L)-cos(tau*L))
                                           /((1-beta)^2+tau^2). (9)

For fixed L>0,tau, the function

    F(x)=(cosh(x*L)-cos(tau*L))/(x^2+tau^2),   x>0,

is STRICTLY increasing. Its derivative has positive denominator and numerator

    N=x*[x*L*sinh(x*L)-2(cosh(x*L)-1)]
                        +tau^2*L*sinh(x*L)-2x*(1-cos(tau*L)). (10)

For y>0 let h(y)=y*sinh(y)-2(cosh(y)-1). Then h(0)=h'(0)=0 and
h''(y)=y*sinh(y)>0, so h(y)>0. The first term in (10) is strictly
positive. The last two terms together are nonnegative because
sinh(xL)>=xL and 2(1-cos(tau L))<=tau^2*L^2. The latter follows from
1-cos z=2sin^2(z/2) and |sin w|<=|w|. Hence N>0. Equation (9) implies
that |a|^2-|b0|^2 has the sign of 2beta-1, proving strictness. QED.

The eigenvalues D_j+|B_j| and D_j-|B_j| therefore have opposite signs.
This holds even without any narrower strip assumption. Under the WSEP strip
1/8<=beta<=7/8 the diagonal D_j is positive, but the matrix is STILL
indefinite: its offdiagonal magnitude strictly exceeds that positive diagonal.

The exact deficit is

    e_j=|B_j|-D_j
       =m^2*(|a|^2-|b0|^2)^2/(|B_j|+D_j)>0.               (11)

The denominator is positive since |B_j|>|D_j|. Choosing
(c1,c2)=(1,-conj(B_j)/|B_j|) gives the pair value -2e_j. The negative
direction can depend on the orbit; this is precisely why a negative summand
alone proves nothing about the sign of their sum.

For beta=1/2 there is only ONE distinct reflection-fixed location. Count it
once with its actual multiplicity, not twice. Now r=conj(p), and its matrix has

    D_j=m|p|^2,       B_j=m exp(i*tau*L)p^2,
    |B_j|=D_j,       e_j=0.                               (12)

It is positive semidefinite of rank one. Formula (12) includes a central zero
and a modulation that moves its shifted height to zero. Multiplicity is a
weight, not the number of artificial independent interpolation nodes.

## 3. An exact narrow-strip hostile check

**WEPD-v1-2.** Take the SYNTHETIC pair rho=1/4 and rho*=3/4, each with
m=1, eta=0 and L=4log2. These are not claimed to be zeros of any L-function.
At the first point the two transform values (F_u,F_v) are (7/6,1); at the
second they are (2,7/3). Thus

    D_j=14/3=84/18,       B_j=85/18,
    H_j=(1/18)*[[84,85],[85,84]],
    eigenvalues=169/18,-1/18,
    det(H_j)=-169/324,
    Q_j(u-v)=-1/9.                                       (13)

All equalities follow from exp(-L/4)=1/2 and rational arithmetic. This is an
exact written calculation, not a floating-point or interval certificate.
Both diagonal values are positive and both locations lie in the WSEP strip.
Therefore narrow-strip containment and ray positivity CANNOT supply a
nonnegative matrix separately for each reflected pair.

A second check is analytic and does not use these numbers. At tau=0 the
quantities a,b0 in (4) are positive real and unequal by (9)-(10). Therefore

    Q_j(u-v)=2m*(2a*b0-a^2-b0^2)=-2m*(a-b0)^2<0.           (14)

`real_resonance_negative_direction` is the real algebra behind (14).
A hypothetical off-line zero at arbitrary ordinate is brought to this case
by eta=-gamma; that changes the TEST, not the character or source. The
contributions of all other zeros remain and cannot be dropped.

## 4. The full arithmetic mixed inequality requires inter-orbit cancellation

Partition the actual divisor into disjoint reflection orbits j. Use (6) for
two-point orbits and (12) for fixed points. For each fixed chi,L,eta all
entries are absolutely summable. Indeed the numerators in (4)-(5) are bounded
in beta in [0,1] for fixed L; away from bounded shifted height they are
O_L(1/tau^2), and bounded height contains finitely many zeros. Section 5
supplies the entire large-height summation, without assuming RH.

Consequently D=sum_j D_j and B=sum_j B_j are exactly (2)-(3), with all
multiplicities. Define

    E=sum_j (|B_j|-D_j),
    C=sum_j |B_j|-|sum_j B_j|.                             (15)

Both are finite and nonnegative. The first is the sum of strictly positive
off-line orbit deficits and zero fixed-point deficits; the second is the
triangle-inequality loss between the actual complex orbit entries.

**WEPD-v1-3.** The exact smallest coefficient-matrix eigenvalue is

    D-|B|=C-E.                                           (16)

This follows by subtracting the two absolutely convergent expressions in
(15). Thus the needed endpoint inequality is exactly C>=E, for the ORIGINAL
arithmetic source, not for an independently chosen positive matrix.
Equation (3) is its source return: the mixed scalar and gamma, all prime
powers with phases, and both applicable poles are unchanged.

Equation (16) is a diagnostic identity, not a proof of C>=E and not a new
claim that another criterion solves RH. WEGR already supplies the separate
endpoint detection argument. Taking absolute values of each orbit before
summing erases C, precisely the quantity needed to pay E. Narrowing the strip
makes the ray diagonals positive but does not remove E unless every orbit
is reflection-fixed. Conversely, indefinite orbit matrices need not have an
indefinite sum: [[1,2],[2,1]] and [[1,-2],[-2,1]] sum to 2I. This elementary
check is not asserted to be an arithmetic divisor.

## 5. Explicit shifted-height count and negative-tail estimate

We reuse the complete WRITTEN, pole-aware Jensen proof WMED-v1-5 in
[WeilMellinEnergyDecay.md](WeilMellinEnergyDecay.md), sections 3.1-3.3.
Its current blob is 12bda1d7ceddfc0b07cfea623518524aca1f6908 at the inspected
main. For every primitive conductor q>=1, every real t, and either half-open
unit interval at t, it proves

    number of source zeros, WITH multiplicity,
       in t<Im(rho)<=t+1 <=108log(q*(|t|+3)).               (17)

The same bound holds for [t,t+1). Its conductor-one argument uses the
removable analytic continuation of (s-1)zeta(s) for the Jensen count only;
(1) still retains both poles. Its same-character reflection and the q>1
Abel-summation bound do not use the seven-eighths theorem. That count remains
written, not a newly verified Lean declaration or imported opaque constant.

**WEPD-v1-4 (shifted inverse-square budget).** For all real eta and T>=1,

    S_chi(eta,T)=sum_(|Im(rho)+eta|>=T) m_rho/(Im(rho)+eta)^2
       <=216*(2log(q*(5+|eta|)*T)+1)/T.                   (18)

Proof. For u=T+n, n>=0, partition positive shifted heights into [u,u+1)
and negative shifted heights into (-u-1,-u]. The corresponding actual
height origins are u-eta and -u-1-eta. In both cases |t|+3<=u+|eta|+4.
Use (17) separately on the two actual signed windows; no conjugation symmetry
of a complex chi is assumed. Endpoint conventions include |tau|=T exactly.
For u>=1,

    u+|eta|+4 <= (5+|eta|)*u.

Put A=q*(5+|eta|)>=5. The function g(u)=log(Au)/u^2 is decreasing on
u>=1, since g'(u)=(1-2log(Au))/u^3<0. Hence

    sum_(n>=0)g(T+n)
      <=g(T)+integral_T^infinity g(u)du
      =log(AT)/T^2+(log(AT)+1)/T
      <=(2log(AT)+1)/T.

Multiplication by 2*108 proves (18). This covers real zeros in a shifted
window, both original height signs, all conductors and all multiplicities.

**WEPD-v1-5 (ordinary-strip negative tail).** Retain all whole orbits with
|gamma+eta|<T, T>=1. The omitted orbits satisfy

    E_tail=sum_(j omitted)e_j
       <=epsilon_0(q,L,eta,T),
    epsilon_0=864*(cosh(L/2)+1)
                      *(2log(q*(5+|eta|)*T)+1)/T.          (19)

Proof. For an off-line orbit put x=|a|^2,y=|b0|^2. Equation (6) gives
|B_j|<=m(x+y) and |D_j|<=2m sqrt(xy), so

    e_j<=m(x+y+2sqrt(xy)).

Since beta and 1-beta are positive,
|1-exp(-sL)|<=2 and |1-exp(-(1-s)L)|<=2. At |tau|>=T>=1,

    x<=4exp(dL)/tau^2,       y<=4exp(-dL)/tau^2,
    e_j<=8m*(cosh(dL)+1)/tau^2
        <=8m*(cosh(L/2)+1)/tau^2.                         (20)

Each off-line orbit contains TWO zeros of weight m at the same tau. Thus
summing (20) costs 4(cosh(L/2)+1) times the sum over ALL omitted zeros in
(18). Fixed-point contributions to E_tail are zero, so including their
positive terms in (18) is safe. This proves (19). No narrower zero strip or
positive diagonal hypothesis is used in this baseline estimate. QED.

**WEPD-v1-6 (separate narrow-strip improvement).** Suppose ADDITIONALLY every
nontrivial zero of the selected source lies in 1/8<=Re(rho)<=7/8. Then

    E_tail<=epsilon_7,
    epsilon_7=432exp(3L/8)
                      *(2log(q*(5+|eta|)*T)+1)/T.          (21)

Proof. The elementary WSEP-v1-1 estimate now gives D_j>=0. From (7),

    e_j=sqrt(D_j^2+m^2*(x-y)^2)-D_j
          <=m|x-y|<=m max(x,y)<=4m exp(3L/8)/tau^2.

Here sqrt(D^2+c^2)<=D+|c| for D>=0 follows by squaring nonnegative
quantities. Again divide the per-orbit coefficient by two when passing to
the full source sum (18). This gives (21). The additional strip assumption
is NOT silently added to (19). Its external supplier has the evidence
boundary and corrected names recorded in section 7.

For either applicable epsilon, the entire signed endpoint tail obeys, for
ALL complex c1,c2,

    Q_chi,L(c1*u+c2*v)
       >=(conj(c1),conj(c2))*H_<T*(c1,c2)^T
                           -epsilon*(|c1|^2+|c2|^2).      (22)

Indeed H_j>=-e_j I for each orbit, and fixed-point tail matrices are
positive semidefinite. Absolute convergence permits summing this inequality.
Here H_<T is the finite matrix of the retained ACTUAL complex zero orbits.
Thus lambda_min(H_<T)>=epsilon is sufficient for endpoint positivity at
that fixed chi,L,eta. No such actual-source numerical certificate is supplied
here, and no universal existence assertion follows from this sufficient rule.

The norm in (22) is the coefficient norm, NOT the physical L2 norm. The
endpoint L2 Gram matrix has diagonal 1-exp(-L) and offdiagonal Lexp(-L/2),
so its smallest eigenvalue is

    g_L=1-exp(-L)-Lexp(-L/2)>0.

Positivity follows from 2sinh(L/2)>L. A conversion to an L2 error therefore
costs 1/g_L; it must not be omitted. Both (19) and (21) tend to zero for
fixed q,L,eta as T tends to infinity, but their constants grow with L and
retain q and eta. They are not fixed-cutoff all-window certificates.
The endpoint jumps have not been assigned a fictitious finite H1 energy.

## 6. Exact mathematical boundary and comparison

The unchanged target is the canonical
`GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement chi`, with
`modOne_criticalStripStatement` returning conductor one to actual
`riemannZeta`. `criticalStripStatement_of_detection_and_nonnegativity`
still separates detection from nonnegativity. No inhabitant of its universal
`hpositive` premise has been supplied.

The decisive unresolved requirement is an ARITHMETIC proof of the actual
mixed bound (3), equivalently C>=E in (16), for every fixed character and all
windows/modulations. Complementary lower-sign and endpoint-complement
coupling obligations from
[WeilEndpointResidualCoupling.md](WeilEndpointResidualCoupling.md) also remain.
This increment rules out paying that mixed bound by a positive estimate on
each reflected pair and supplies a correct full-tail budget; it does not
claim to have established the required inter-orbit cancellation.

Statement comparison, dated 2026-11-12:

- WEPD-v1-1: literal polarization of the WSEP endpoint transforms, the standard
  two-point signed swap pairing, plus the explicit strict monotonicity proof
  (9)-(10). Formal algebra declarations: `pair_gap_identity` and
  `pair_determinant_neg_of_unequal_norms` in
  `GRWTSK.NumberTheory.WeilEndpointPairDefect`. No external strip theorem is
  imported into them. The full complex identification and monotonicity remain
  written. This is not a claim that indefinite conjugate pairings are new.
- WEPD-v1-2: the exact narrow-strip synthetic fixture (13) and the independent
  resonant negative-square check (14). The latter's real algebra is
  `real_resonance_negative_direction`. No arithmetic zero is asserted.
- WEPD-v1-3: an absolutely convergent source decomposition of the existing
  mixed inequality, not a replacement for WEGR's existing detection theorem.
- WEPD-v1-4--6: elementary shifted-window summation of the already written
  WMED-v1-5 Jensen count, followed by endpoint-specific negative-part bounds.
  These do not duplicate the smooth derivative-energy tail by pretending
  the discontinuous endpoints belong to its H1 domain.

Bounded comparison included the canonical WEGR, WSEP, residual-coupling and
Mellin-energy notes, the existing signed-witness consumer, exact local external
re-export surfaces, and searches for endpoint mixed/determinant variants.
An empty code-search result or an incomplete literature search proves no
absence. No corpus-wide duplicate/novelty audit, independent review or frontier
acceptance is claimed. These versioned labels are local written statement IDs,
not promoted registry claims or alterations of previous IDs.

Primary source background remains Weil's full criterion; see Suzuki,
*Weil's quadratic form via the screw function*, supplied arXiv:2606.09096v3,
24 September 2026, section 1.1 for the full zeta functional and compact smooth
criterion. Its separate RH-assuming spectral-convergence paper is not an
unconditional input. The count's primary comparison is Alpoge--Furman,
*More than two thirds of the zeta zeros are simple and on the critical line*,
arXiv:2608.13637v2, companion
`anthropics/formal-math@16a5ce41304fcdaea4e0be7c132e1c361dc26da5`,
`zeta23/Zeta23/ThmE/LocalCountChi.lean`, declaration
`localCountChi_uniform_proof`; WMED section 2 records the exact distinction
between its existential count and the separately written constant 108.
No paper theorem or upstream Lean body is copied into this algebra module.

## 7. Explicit source-identity correction to WSEP section 4

WSEP section 4 and its earlier conversational report used shortened local
names that do NOT match the inspected re-export namespaces. At math/main
26e55b7937c2e4d6e92533903e263440b35990e0 the lexical names are

    GRWTSK.NumberTheory.OpenAIMath.DirichletSevenEighths.OAI.DirichletCharacter.LFunction_ne_zero_of_seven_eighths_lt_re
    GRWTSK.NumberTheory.OpenAIMath.QuasiRiemannHypothesis.OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re

These spellings are source observations, not elaboration evidence. The files
are [DirichletSevenEighths.lean](../../DirichletSevenEighths.lean), blob
6837c7e2da574dae2b6f95d117edace531bb9362, and
[QuasiRiemannHypothesis.lean](../../QuasiRiemannHypothesis.lean), blob
f7ffbbb3237ee1f6e1ff575eed81bc9410833927. The current individual Dirichlet
[provenance record](../../DirichletSevenEighths.provenance/LFunction_ne_zero_of_seven_eighths_lt_re.md)
has blob 70d63a3b630475ea10e14b9905182caf3bbd8caf; WSEP's displayed old
provenance blob must not be used as the identity of that current record.

Both wrappers explicitly pin `openai/math` revision
7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a. The separate later revision
4eaee87548250b2682affda7d05d947c05554bae inspected in WSEP is NOT the wrapper
pin. The common top-module blob alone does not establish equality of the
complete transitive dependency closures of those two revisions.

The primary paper identified by that existing adaptation is OpenAI,
*The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8*,
30 September 2026, Theorem 1.1. This increment has not replayed that theorem
or its closure. Its adaptation remains SOURCE_IMPORTED_UNBUILT. Only the
OPTIONAL arithmetic use of (21), and the preceding WSEP arithmetic ray
result, would use that supplier; (7), (13), (18), (19) and the algebra module
do not. This correction changes no historical publication receipt, does not
rewrite earlier evidence, and does not promote external acceptance.
