# Near-zero gamma enclosure with its sign retained

Local attribution: grwtsk contributors. Date: 2026-11-12.
Primary MSC2020: 11M41. Secondary: 26D15, 46E35.
Source: `WeilGammaNearZeroEnclosure.lean`.
Initial native revision: `05c3158365036f6eaa025d78cf2586dbbfb81f20`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment `6831173870`.

This is a written analytical result and three formal-source candidates, NOT
an elaboration or kernel receipt. The Sobolev shift-variance theorem and its
matrix/source-return consequences below are written arguments. The Lean
integral enclosure explicitly retains that shift-defect estimate as a
premise. Novelty is UNASSESSED; no new mathematical originality is asserted.
The concurrent `WeilGammaPhysicalReturn` work owns the full contour/Fubini
assembly (coordination comment `6830786205`); this change does not duplicate it.

## 1. Exact source and the approximation being corrected

Use Lebesgue measure on R, complex-valued sources, and the antilinear-first
inner product. Write T_r f(t)=f(t+r),

    E(f)=||f||_2²,  e_f(r)=||T_r f-f||_2²,
    C_f(r)=integral conjugate(f(t))*f(t+r) dt,
    K_a(r)=exp(-(a+1/2)r)/(1-exp(-2r)), r>0.

These are the native `energy`, `correlation`, and `parityKernel`. The density
is exactly `gammaCorrectionDensity a f r = K_a(r)e_f(r)`. Physical Dirichlet
parity is a=0 or 1, but the kernel estimates hold for every natural a.
No frequency cutoff, new kernel, shifted gamma constant, or ordinate
projection is introduced.

For h>=0 let

    J_2(a,h)=integral_(0,h] K_a(r) r² dr,
    J_4(a,h)=integral_(0,h] K_a(r) r⁴ dr,
    beta(h)=h⁴/96+h⁵/60.

The computational replacement under study is

    integral_(0,h] K_a(r)e_f(r) dr  --->  J_2(a,h)||f'||_2².

The replacement is an UPPER approximation. Treating it as a lower
contribution to a positivity certificate has the wrong sign. The result
below gives the complete one-sided error for whole-line H² sources.

## 2. WGNZ-v1-A: exact shift variance and the sharp 1/12 bound

For every f in H²(R;C) and every real r,

    0 <= r²||f'||_2²-e_f(r) <= r⁴||f''||_2²/12.             (2.1)

Derivatives here are genuine weak L² derivatives. For canonical smooth
compact sources they coincide with the classical derivatives. They are not
totalized derivatives of discontinuous zero extensions.

Proof for r>=0. In the Hilbert space L²(R;C),

    T_r f-f = integral_0^r T_u f' du.

The translation orbit of an H¹ function has this strong fundamental-theorem
identity. For completeness it follows under Plancherel from the multiplier
(e^(i xi r)-1)/(i xi), or by differentiating T_u f strongly; the difference
quotients are dominated by |xi| times the Fourier transform. Thus the weak
L² derivative hypothesis, not pointwise differentiability alone, supplies it.
The paths u -> T_u f' are strongly continuous and bounded on [0,r]. All
Bochner integrals and inner-product interchanges in the finite square below
are therefore absolutely integrable. Expanding the Hilbert-space variance,

    r²||f'||²-||integral_0^r T_u f' du||²
      = (1/2) integral_0^r integral_0^r
          ||T_u f'-T_v f'||² du dv.                       (2.2)

Indeed the two squared norms each integrate to r²||f'||², and the real
cross-pairing integrates to the norm square of the Bochner integral. This
proves the lower bound without estimating a signed cross term.

Apply the same strong fundamental theorem to f':

    ||T_u f'-T_v f'|| <= |u-v| ||f''||.

Consequently the right side of (2.2) is bounded by

    (||f''||²/2) integral_0^r integral_0^r (u-v)² du dv
      = r⁴||f''||²/12.

For r<0 use translation invariance to get e_f(-r)=e_f(r), and apply the
positive-r result. At r=0 both sides vanish. This proves all quantifiers.

A distinct analytical check is the Fourier multiplier identity, with
fhat(xi)=integral f(t)exp(-i xi t)dt and Plancherel factor 1/(2pi):

    r²||f'||²-e_f(r)
      = (1/(2pi)) integral [r²xi²-2(1-cos(r xi))]|fhat(xi)|² dxi.

For x>=0 the bracket x²-2(1-cos x) equals
2 integral_0^x (x-u)(1-cos u)du, which lies between 0 and x⁴/12 because
0<=1-cos u<=u²/2. Evenness covers x<0. This verifies both the sign and
constant independently of the real-space variance manipulation, but is not
an independently reviewed proof.

For every fixed f in H²,

    lim_(r->0) [r²||f'||²-e_f(r)]/r⁴ = ||f''||²/12.       (2.3)

The Fourier bracket divided by r⁴ converges to xi⁴/12 and is dominated by
xi⁴/12; Plancherel and dominated convergence prove (2.3). For any nonzero
compact smooth f, ||f''||>0, so the universal coefficient 1/12 cannot be
reduced. This is a sharp local constant, not an RH assertion.

## 3. WGNZ-v1-B: original kernel moments and integrated defect

For 0<r<=h and natural a, put alpha=a+1/2. Elementary exponent inequalities give

    exp(-alpha h)/2 <= r K_a(r) <= r+1/2.                 (3.1)

For the lower bound, 1-exp(-2r)<=2r and exp(-alpha r)>=exp(-alpha h).
For the upper bound, exp(-alpha r)<=1 and
(1+2r)exp(-2r)<=1 imply r/(1-exp(-2r))<=r+1/2.
Every division uses r>0 and 1-exp(-2r)>0.
Multiplying (3.1) by r or r³ and integrating proves genuine integrability and

    exp(-alpha h)h²/4 <= J_2(a,h) <= h²/4+h³/3,
    0 <= J_4(a,h) <= h⁴/8+h⁵/5.                         (3.2)

Both bounds also hold at h=0, where the interval is empty. No quadrature,
digamma evaluation, or unbudgeted infinite tail is used in (3.2).

Define the actual tangent defect

    R_a,h(f) = J_2(a,h)||f'||² - integral_(0,h] K_a(r)e_f(r)dr.

Multiplying (2.1) by the positive original kernel and integrating gives

    0 <= R_a,h(f) <= [J_4(a,h)/12]||f''||²
                    <= beta(h)||f''||².                 (3.3)

Near-zero integrability is supplied, not assumed: e_f(r)<=r²||f'||² and
(3.2) dominate the physical density. For large r, e_f(r)<=4||f||² and K_a
has an integrable exponential tail. Thus the full gamma correction is finite
for H² (in fact H¹) sources.

An entirely elementary lower enclosure, without evaluating J_2, follows:

    exp(-alpha h)h²||f'||²/4-beta(h)||f''||²
      <= integral_(0,h] K_a(r)e_f(r)dr
      <= (h²/4+h³/3)||f'||².                             (3.4)

For each FIXED a and f in H², (2.3) and r K_a(r)->1/2 imply

    lim_(h->0+) R_a,h(f)/h⁴ = ||f''||²/96.               (3.5)

To justify the limit, substitute r=hu. The normalized integrand is
u³ [hu K_a(hu)] [((hu)²||f'||²-e_f(hu))/(hu)⁴]. For 0<h<=1 it is dominated
by (3/2)u³||f''||²/12. Its limit integrates to ||f''||²/96.
The leading 1/96 coefficient is therefore sharp. The upper budget is uniform
in a; this fixed-a limit is not asserted uniformly for unbounded a.

## 4. WGNZ-v1-C: full complex matrix enclosure

For f,g in H² define the sesquilinear remainder

    R_a,h(f,g)=J_2(a,h)<f',g'>
      - integral_(0,h] K_a(r)<T_r f-f,T_r g-g>dr.

Polarizing (2.2) gives the exact positive expression

    R_a,h(f,g)=(1/2) integral_(0,h] K_a(r)
      integral_0^r integral_0^r
        <T_u f'-T_v f',T_u g'-T_v g'> du dv dr.          (4.1)

Absolute integrability follows from |u-v|²||f''||||g''|| and (3.2).
Hence

    |R_a,h(f,g)| <= beta(h)||f''||||g''||.

For any finite family v_1,...,v_m of H² sources, form the ACTUAL Gram matrices

    D_ij=<v_i',v_j'>, B_ij=<v_i'',v_j''>,
    Gnear_ij=integral_(0,h] K_a(r)<T_r v_i-v_i,T_r v_j-v_j>dr.

Then, in Hermitian Loewner order,

    0 <= J_2(a,h)D-Gnear <= beta(h) B.                   (4.2)

Proof: apply (3.3) to f=sum_j c_j v_j for EVERY c in C^m. This retains all
complex couplings. Neither orthonormality nor invertibility of a Gram matrix
is assumed. Replacing B by the identity without a proved coefficient-to-source
norm comparison is not valid.

## 5. WGNZ-v1-D: exact return to the arithmetic source

Let chi be primitive of conductor q>=1, with original parity a. Fix A>0 and
f in H² supported in [-A,A]; canonical C_c^infinity sources are included.
Retain the signed finite prime term

    S_chi,A(f)=2 sum_(2<=n<exp(2A)) Lambda(n)/sqrt(n)
                        Re(conjugate(chi(n))*C_f(log n)).

This is the unchanged `twistedPrime`. Lambda retains every prime power;
ramified character values remain zero. The strict endpoint has zero
correlation, as in the native support theorem. No modulus is inflated.
Let c=gammaConstant q a. For a nonprincipal primitive chi, the native value is

    Q_chi,A(f)=c E(f)+integral_0^infinity K_a(r)e_f(r)dr-S_chi,A(f).

For conductor-one zeta use c=gammaConstant 1 0 and ADD BOTH pole orientations

    P_zeta(f)=M_+(f)conjugate(M_-(f))+M_-(f)conjugate(M_+(f)),
    M_+(f)=integral exp(t/2)f(t)dt,
    M_-(f)=integral exp(-t/2)f(t)dt.

Write P_chi=0 in the nonprincipal case and P_zeta in the zeta case.
These moments exist by compact support and L². P_zeta is signed, not a pair
of positive squares. In particular it can be negative for real odd sources.

Choose PHYSICAL SHIFT cutoffs 0<h<=R with R>=2A. The support theorem gives
e_f(r)=2E(f) for r>=2A. Retain the exact tail scalar

    tau_a(R)=2 integral_R^infinity K_a(r)dr

from native `ExactGammaTail.tailMass`; do not replace it by a truncated
frequency integral. Define

    Qtilde_chi,A,h,R(f)=P_chi(f)+c E(f)-S_chi,A(f)
      + integral_h^R K_a(r)e_f(r)dr + tau_a(R)E(f)
      + J_2(a,h)||f'||².

Splitting genuinely integrable disjoint intervals and using the exact support
tail gives the IDENTITY and complete near-zero enclosure

    Q_chi,A(f)=Qtilde_chi,A,h,R(f)-R_a,h(f),
    Qtilde_chi,A,h,R(f)-beta(h)||f''||²
      <= Q_chi,A(f) <= Qtilde_chi,A,h,R(f).               (5.1)

The prime cutoff remains 2A; neither h nor R changes the arithmetic inventory.
This is a return to the original arithmetic expression, not an assumption of
its equality to a completed-L-function zero sum. That separate identity and
its formal evidence retain their native status.

On any finite smooth complex span, (5.1) gives

    Qtilde-beta(h)B <= Q <= Qtilde.                      (5.2)

If a certified Hermitian approximation A_num obeys
-epsilon M <= Qtilde-A_num <= epsilon M, where M is the actual L² mass matrix,
then a sufficient finite-span positivity test is

    A_num-epsilon M-beta(h)B >= 0.                       (5.3)

A certified vector c with c*(A_num+epsilon M)c<0 instead proves negativity
of Q on that span. These are conditional certification rules: all quadrature,
prime/log/character, pole, tail and matrix-entry errors must already be
included in the asserted epsilon M enclosure. No numerical certificate or
universal certificate existence is supplied here.

## 6. Falsification and an exact source fixture

For f=1_[0,1], e_f(r)=2r for 0<=r<=1. Its zero extension is not H¹ and
integral_0^h K_a(r)e_f(r)dr is asymptotic to h, not to a derivative-energy
term of order h². Applying (2.1) with its a.e. classical derivative zero
would be false. In particular this H² budget does NOT apply to the jumping
zero-extended exponential Galerkin basis in Connes--Consani--Moscovici.
Such a basis needs a jump-aware treatment or a separately justified smooth
replacement. A function being smooth inside the support interval is insufficient.

The error is not uniformly small over all smooth test functions at one fixed
h>0. For a fixed nonzero smooth compact g and f_lambda(t)=exp(i lambda t)g(t),
||f_lambda'||² grows as lambda²||g||²+O(|lambda|+1). On the other hand,
e_f(r)<=min(r²||f'||²,4||f||²), together with (3.1) and splitting at
r=1/|lambda|, bounds its near-zero gamma energy by O_g,h(log(2+|lambda|)).
Thus the tangent overestimate can grow quadratically. The derivative-dependent
budget cannot be dropped in an all-test argument or replaced by a fixed tolerance.

An exact H² fixture is f(t)=(1-t²)^3 for |t|<=1 and zero elsewhere.
It is C² but not C_c^infinity; it is used only for the H² estimate, not as an
unproved canonical test-class transfer. Direct polynomial integration gives

    E(f)=2048/3003, ||f'||²=1024/385, ||f''||²=1024/35.

For 0<=r<=2, integration of f(t)f(t+r) over [-1,1-r] gives

    e_f(r)=r²(5r^11-156r^9+2288r^7-27456r^5
                  +54912r^4-73216r²+79872)/30030.

At r=1/2,

    r²||f'||²-e_f(r)=32179051/246005760,
    r⁴||f''||²/12=16/105.

These are exact rational identities, not interval numerics. Their leading
quartic defect is (256/105)r⁴=(||f''||²/12)r⁴, checking the sharp constant.
The fixture does not establish a universal estimate; the proof is in Section 2.

## 7. Provenance, declaration map, and unresolved work

Primary comparison, accessed 2026-11-12:

- Connes, Consani, Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
  27 Nov 2025, p.8, equations (3.19)--(3.20) and Proposition 3.4. These locate
  the original signed prime and pole contributions and the zero-extended basis;
  the current near-zero Sobolev enclosure is not attributed as their theorem.
  Source: https://arxiv.org/abs/2511.22755v1 . Supplied PDF page 8 was inspected.
- NIST DLMF 5.9.16, https://dlmf.nist.gov/5.9.E16 : comparison for the classical
  digamma kernel, not a source of a new arithmetic positivity assertion.
- Native `WeilGammaData`, `WeilSourcePrimeCorrelation`, `WeilConductorFrontier`,
  `WeilGammaHeadIntegrability`, and `WeilExactGammaTail`, at the initial
  source revision above. The existing head module supplies
  `shift_mul_parityKernel_le` and `gammaCorrectionDensity_measurable`;
  both are REUSED, not duplicated. The tail module supplies the already
  maintained exact physical tail used in (5.1).
- Mathlib `Analysis/SpecialFunctions/Integrals/Basic.lean`, `integral_pow` and
  `integral_id`, and `MeasureTheory/Integral/Prod.lean`,
  `StronglyMeasurable.integral_prod_right'`, at the pin above.

Concurrent-source comparison: `WeilGammaEndpointQuadrature` and its
provenance README were inspected at refreshed main
`f9bb5011be2405cca9f2010caf369b6436c268cb` (README blob
`bbd6e0b1487f4bb8fe67c1ee536f21e1e73d3b3b`). That result controls left-cell
sampling away from zero and retains the omitted head with an O(h²) bound.
Here the actual second-moment derivative term replaces that omission and
leaves the one-sided O(h⁴) defect. The existing positive-cell quadrature,
inner-sampling and far-tail budgets remain necessary; this source does not
claim to reprove or remove them. The refreshed comparison showed no changes
to imported sources or pins.

The arguments are elementary Hilbert-space variance, translation calculus,
positive kernel comparison, and polarization. A limited canonical code search
returned no results; it establishes no absence and is not a corpus-wide
novelty audit. No novelty is claimed.

Formal-source candidates, all under
`GRWTSK.NumberTheory.WeilQuadraticForm.GammaNearZero`:

- WGNZ-v1-01: `parityKernel_mul_shift_bounds`, supplying (3.1).
- WGNZ-v1-02: `kernel_moment_bounds`, supplying integrability and (3.2).
- WGNZ-v1-03: `gamma_near_zero_enclosure_of_shift_defect`, supplying the native
  integral comparison (3.3) from its EXPLICIT pointwise shift-defect premise.

The H² supplier (2.1), sharpness limits, polarized matrix order, full arithmetic
split (5.1), and certified-entry consumer (5.3) are WRITTEN, not new Lean
declarations. The formal hshift premise is not silently removed by this note.
Each public candidate has its own adjacent statement/provenance record.

LEAN_ELABORATION / COMPLETE_DEPENDENCY_BUILD / FRESH_KERNEL_REPLAY /
TRANSITIVE_AXIOM_AUDIT / CERTIFIED_NUMERICAL_EVALUATION /
INDEPENDENT_ANALYTICAL_REVIEW: NOT_RUN. No historical failure is promoted.
The required proof-execution skill was inaccessible at Noe main
`1d5f33f44c6b4e64d420b7279d09324d2b8e7268`; no dependent runtime was dispatched.

First remaining formal obligation: exact-pin build of the complete imports,
then formalize the H² shift-variance supplier and consume it in the existing
actual test domain. First remaining arithmetic obligation: prove the full
signed prime/gamma/pole inequality on all required windows and all canonical
complex tests. A finite-span enclosure, even with a sharp remainder, does not
supply that universal inequality, off-line-zero finiteness, RH, or primitive
Dirichlet GRH.
