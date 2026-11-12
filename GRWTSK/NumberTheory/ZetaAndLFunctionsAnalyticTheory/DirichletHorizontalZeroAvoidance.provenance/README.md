# Quantitative horizontal boundaries and the limiting Weil identity

Local attribution: grwtsk contributors. Date: 2026-11-11.
Coordination: grwtsk/math#1801, scope comment 6813338963.
Inspection head: `1f388b830a790ee8ebbcdc1459f39abce6237591`.
Complete inspection tree: `cbf789acdcf4db1034280454525a2b2d7cad8a4d`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained implementation: [../DirichletHorizontalZeroAvoidance.lean](../DirichletHorizontalZeroAvoidance.lean).

## Evidence and exact scope

The Lean source implements the finite midpoint-grid proof, its application to
actual Dirichlet zero windows and multiplicities, an explicit inverse-quadratic
separation radius, both signed horizontal lines, actual completed-source
nonvanishing, a finite principal-part norm estimate, and literal completed zeta.
It does NOT implement the local Blaschke/logarithm estimate below, a logarithmic-
derivative magnitude bound, the finite rectangle residue theorem, Fourier
inversion, or the final infinite explicit formula.

Sections 1--8 give a complete WRITTEN analytical argument for the previously
unresolved horizontal supplier, with exponent four, and its limiting
explicit-formula consequence. It uses the already supplied written source-growth
argument and counting estimate; no circle-growth or logarithmic-derivative bound
is inserted as a new hypothesis. Formal encoding and verification remain separate.
Every existing imported candidate retains its prior evidence status and failures.

All new Lean bodies are SOURCE_PROOF_CANDIDATE. Elaboration/build, fresh kernel
replay, transitive axiom auditing, repository-wide verification, and independent
review are NOT_RUN. Novelty UNASSESSED; the method is classical, not a new RH
criterion or a claimed new zero estimate. No frontier claim ID is introduced.
Local Lean/Lake and verified canonical skill checkouts were absent. The required
Noe proof-automation skill returned 404 at Noe main
`2a1deeccf6d141943d91ad402365aba7563beb6f`; dependent execution stopped. No
runner/workflow/scheduler/cross-chat operation was dispatched. Source publication
is not theorem acceptance. The missing formal statements remain obligations,
not axioms, admitted declarations, or fields assumed in a purported proof.

## 1. Exact source, counts, and one common height

Let chi be primitive of positive conductor q, including q=1 (zeta). Keep

    Lambda_chi(s) = GammaR(s+a) L(chi,s),
    GammaR(z) = pi^(-z/2) Gamma(z/2),  a in {0,1},
    D_chi(s) = Lambda_chi'(s)/Lambda_chi(s).

This is the actual pinned completedLFunction, without q^(s/2). Its functional
relation is Lambda_chi(1-s)=q^(s-1/2)*epsilon_chi*Lambda_(chi^-1)(s).
The factor epsilon_chi is nonzero; it is not set equal to one. The prior
versioned inverse-character correction remains in force.

Use the existing CriticalStripZero chi, zeroMultiplicity, heightWindow, and
heightCount, not a supplied set of approximate roots. Put D=sourceCountConstant
chi >= 0. The existing source theorem supplies, for EVERY H>=2,

    N_chi(H) <= D H (log H + 3) <= 2D H^2.                       (1)

The last inequality follows from log H<=H-1 and H>=2. All original analytic
multiplicities enter N_chi. Since every such multiplicity is a positive natural
number, the number of distinct locations in each window is <=N_chi(H).

Here is the substantive finite selection. Given m indexed forbidden real
numbers y_i and any real b, take the m+1 samples

    x_j=b+(j+1/2)/(m+1),  j=0,...,m.

Their spacing is 1/(m+1). A forbidden number cannot be at distance STRICTLY
less than 1/[2(m+1)] from two samples: the triangle inequality would contradict
the spacing. If every sample were blocked, choose one blocker for each; the
blocker map is injective from m+1 indices into m indices, a contradiction.
Thus some sample lies in (b,b+1) and is at distance >=1/[2(m+1)] from every
forbidden number. Repeated y_i, ties at half spacing, and m=0 are included.
No claim of an optimal location or a numerical root enumeration is made.

For n>=0 put H_n=n+4 and use the exact finite window |Im rho|<H_n, with
forbidden values y_rho=|Im rho| and b=n+2. The selected T_n satisfies

    n+2 < T_n < n+3.

Let m be that window's cardinality. By (1),

    m+1 <= (2D+1)H_n^2.

Zeros not in the window satisfy |Im rho|>=n+4, so their distance in absolute
ordinate from T_n is >1. They are therefore also covered by the radius

    delta_n = 1/[2(2D+1)(n+4)^2] > 0.                           (2)

For every original zero, both signs epsilon in {-1,1}, and EVERY real sigma,

    |T_n-|Im rho|| <= |epsilon T_n-Im rho|
        <= |sigma+i epsilon T_n-rho|.

Consequently the same height gives

    |sigma+i epsilon T_n-rho| >= delta_n.                       (3)

Only absolute ordinates are used in the selection step. The conclusion (3)
retains the full complex rho and the source multiplicity is not replaced by
an ordinate count. Colliding ordinates are allowed.

## 2. Actual completed-source nonvanishing on both entire lines

For Re s>=1 and s!=1, the actual continued L-function is nonzero by the pinned
unconditional boundary theorem; GammaR(s+a) is regular and nonzero. In
0<Re s<1, a zero of L would itself define an element of CriticalStripZero chi,
contradicting the strictly positive distance (3). Thus the completion is
nonzero there as well.

For Re s<=0 and Im s!=0, put w=1-s. Then Re w>=1 and w!=1. Apply the previous
right-boundary result to chi^-1 and the exact functional equation. Its conductor
factor and root number are nonzero. This proves nonvanishing on the left side,
including Re s=0. In particular, for every n, sigma, and both signs,

    Lambda_chi(sigma+i epsilon T_n) != 0.                        (4)

The two possible completed-zeta poles lie on the real axis; T_n>2 excludes
them from these boundaries. Neither pole has been removed from the formula.
The source theorem is stronger than nonvanishing on the required sigma interval
[-1,2], but asserts no critical-line localization. The selected heights form an
increasing sequence and tend to infinity by their displayed interval bounds.

## 3. Local disk lemma: bound the zero-free factor, not only the divisor

We prove the analytic estimate used next. Let F be holomorphic on a neighborhood
of the closed disk |z-z0|<=8, F(z0)!=0, and |F|<=M there, with M>0. Put

    A=log(M/|F(z0)|) >= 0,  ell=log(4/3)>0.

For every z with |z-z0|<=3, suppose its distance from every zero of F in
|w-z0|<6 is at least delta>0. Then

    |F'(z)/F(z)| <= A * [(1/delta+1/2)/ell+3].                 (5)

Proof. Translate z0 to 0. Choose R in (5,6) with no zero on |w|=R. There are
only finitely many zeros in the closed disk of radius 6, because F(0)!=0 and
F is analytic on a larger connected disk. List the zeros inside R with their
actual positive multiplicities; let their total number be nu. Jensen gives

    nu log(8/R) <= A, hence nu <= A/ell.                        (6)

For outer radius 8 with a zero on its circle, apply Jensen at radii less than
8 tending to 8 and avoiding zeros, then take the scalar limit. The uniform
bound M persists. Thus no unproved outer-boundary avoidance is required.

For each listed zero alpha, form

    b_alpha(w)=R(w-alpha)/(R^2-conj(alpha)w),
    B(w)=product_alpha b_alpha(w)^(multiplicity).

No alpha is 0. The denominators are nonzero on the closed radius-R disk;
|b_alpha|=1 on its circle. Exact local factorization removes all numerator
zeros, so G=F/B extends holomorphically and without zeros to this disk and its
boundary. The maximum modulus principle gives |G|<=M, while
|G(0)|=|F(0)|/|B(0)|>=|F(0)|. A holomorphic logarithm

    H(w)=log(G(w)/G(0)), H(0)=0

exists on the disk: equivalently integrate the holomorphic G'/G on this simply
connected domain and normalize at 0. It satisfies Re H<=A.

For completeness the needed coefficient estimate is derived, not assumed.
Write H(w)=sum_(k>=1) a_k w^k. On every circle radius r<R the nonnegative
function A-Re H has mean A by the mean-value property, and its kth Fourier
coefficient has modulus |a_k| r^k/2. Its modulus is at most its mean A.
Let r increase to R to obtain |a_k|<=2A/R^k. Absolute convergence of the
power series and its differentiated series on every smaller disk then gives

    |H'(w)| <= 2A R/(R-|w|)^2 <= (5/2)A <= 3A, |w|<=3.       (7)

The middle inequality uses R>=5; explicitly
5(R-3)^2-4R=(R-5)(5R-9)>=0. This also covers A=0, when all coefficients vanish.
No lower bound for |G| away from its center is silently assumed.

Logarithmic differentiation of the FINITE product yields

    F'/F = H' + sum_alpha m_alpha
        [1/(w-alpha)+conj(alpha)/(R^2-conj(alpha)w)].            (8)

For |w|<=3, the second summand in brackets has modulus at most
1/(R-3)<=1/2. The first has modulus <=1/delta. Combine (6)--(8) to prove (5).
This proof uses neither an infinite canonical product nor a guessed zero-free
normalization. Counts and growth have separate roles: (6) pays for the finite
pole part, while (7) pays for the actual regular part.

## 4. Supply the disk hypotheses for the original arithmetic source

Use the existing ENTIRE repaired pole-cleared function

    F_chi(s)=(s-1)L(chi,s), s!=1,

with its original removable value at 1. For zeta that value is 1; for a
nonprincipal primitive character the factor introduces a real zero at 1.
It is not claimed that F_chi and the completion have globally identical divisors.

Let

    G_chi=centralStripGrowthConstant q+farLeftGrowthConstant chi+8.

The existing written source-growth argument and its candidate declaration
poleClearedLFunction_circle_growth give, for EVERY U>=2,

    max_(|s-2|=2(U+2)) |F_chi(s)|
        <= exp(G_chi U(log U+2)).                              (9)

Its derivation uses the actual continued Hurwitz/Mellin kernels, Gamma bounds,
the dual-character functional equation, and a convergent right-half-plane
series, not RH or zero counts. The maximum modulus principle extends (9) to
the closed disk. This dependence is acyclic: source growth -> Jensen counting
-> height selection, while the SAME source growth also controls the regular
logarithmic factor in (7).

Fix T=T_n and either sign. Center the local radius-8 disk at z0=2+i epsilon T.
Every point of it has |s-2|<=T+8. Take U=(T+4)/2>=3 in (9); its outer radius
is exactly T+8. Since U<=T+1 and log U+2<=U+1<=T+2<=2(T+1), it follows that

    |F_chi| <= M_T := exp(2G_chi(1+T)^2)                        (10)

throughout the local disk, with the SAME constant for both signs.

The independent source estimate |L(chi,2+i t)|>=1/4 for every real t gives

    |F_chi(z0)|=|1+i epsilon T||L(chi,z0)|>=1/4.

In particular the center is not a zero. For

    B_chi=2G_chi+log4,

we have

    0<=A_T=log(M_T/|F_chi(z0)|)<=B_chi(1+T)^2.                 (11)

All nonreal zeros of F_chi lie in the original open strip: multiplication by
s-1 does not alter nonreal zeros, the gamma factors are regular and nonzero at
nonreal arguments, and closed-half-plane nonvanishing plus the functional
equation excludes all other nonreal locations. Their multiplicities in F_chi
are exactly the original analytic orders. Thus (3) supplies delta_n for every
nonreal zero in the local disk. Any remaining zero in that disk is real and
is at distance at least T>2 from sigma+i epsilon T. Since delta_n<=1/2, it
also satisfies the required gap. This explicitly covers real trivial zeros,
possible real strip zeros, and the introduced nonprincipal zero at 1.

For sigma in [-1,2], |sigma+i epsilon T-z0|=|sigma-2|<=3. Apply (5). Since
n+4<T+2<=2(1+T),

    1/delta_n <= 8(2D+1)(1+T)^2.

Define the finite positive expression

    C_F = B_chi * [(8(2D+1)+1/2)/log(4/3)+3].

Equations (5) and (11) imply the all-window estimate

    |F_chi'/F_chi(sigma+i epsilon T_n)|
        <= C_F (1+T_n)^4.                                    (12)

There is no omitted low-height range and no unevaluated sequence of compact
maxima. Constants depend on the original source through its proved growth and
counting constants. No effective numerical evaluation or conductor-uniform
estimate is asserted.

## 5. Return to the actual completed logarithmic derivative

At the nonreal points under consideration the exact source factorization gives

    D_chi(s)=F_chi'(s)/F_chi(s)-1/(s-1)
                    -log(pi)/2+psi((s+a)/2)/2.                 (13)

This is an equality of regular meromorphic germs, not an equality justified by
totalized division at an exceptional point. All denominators are nonzero here.
The conductor factor has not been inserted into the source completion.

The gamma part has a uniform elementary estimate on this strip. Put z=(s+a)/2;
then -1/2<=Re z<=3/2 and |Im z|=T/2>=1. Twice using the digamma recurrence,

    psi(z)=psi(z+2)-1/z-1/(z+1).

Both reciprocal terms have modulus <=1. For x in [3/2,7/2] and real y, use

    psi(x+i y)+gamma_E
      =integral_0^infinity [e^(-u)-e^(-(x+i y)u)]/(1-e^(-u)) du.

For 0<u<=1, the numerator has modulus at most (5/2+|y|)u, while
1-e^(-u)>=u/(1+u)>=u/2. For u>=1, its modulus is at most 2e^(-u), and
1-e^(-u)>=1-e^(-1). Consequently

    |psi(x+i y)| <= |gamma_E|+5+2|y|+2/(e-1)
                  <= |gamma_E|+7+2|y|.

The final inequality uses e>2. Hence, for BOTH a=0 and a=1,

    |GammaR'(s+a)/GammaR(s+a)| <= C_gamma(1+T),
    C_gamma=(|log pi|+|gamma_E|+10)/2.

Also |1/(s-1)|<=1/T<=1/2. Set

    C_chi=C_F+C_gamma+1 > 0.

Combining with (12) proves the missing supplier with the EXPLICIT exponent 4:

    for every n, sigma in [-1,2], epsilon in {-1,1},
    Lambda_chi(sigma+i epsilon T_n)!=0 and
    |D_chi(sigma+i epsilon T_n)|<=C_chi(1+T_n)^4.               (14)

The exact same T_n works for both signs and all sigma. The selected T_n does
not depend on the test function. Conductor-one zeta is included throughout;
its real poles have not been added to the zero count or erased from (13).
This completes the WRITTEN boundary estimate, not its Lean implementation.

## 6. Both horizontal integrals vanish, with an explicit fixed-test bound

Let f be a canonical admissible complex compact-smooth test, supported in
[-A,A], A>=0. Keep the literal correlation C_f and its actual entire weight

    W_f(s)=integral_R C_f(r) exp((s-1/2)r) dr,
    C_f(r)=integral_R conj(f(t))f(t+r)dt.

The source strip-decay theorem gives, for every natural k and sigma in [-1,2],

    |W_f(sigma+i t)|<=p_k(f)^2 exp(3A)/(1+|t|)^(2k),
    p_k(f)=2^k (||f||_1+||f^(k)||_1).

Take k=3. Both horizontal edges have length 3, and the modulus of the contour
normalization 1/(2pi i) is 1/(2pi). Their integrands are continuous by (4).
Thus the SIGNED sum H of the two oriented horizontal integrals from the exact
finite identity obeys

    |H_chi,2,T_n(C_f)|
      <= (3 C_chi/pi) p_3(f)^2 exp(3A)/(1+T_n)^2 -> 0.         (15)

This pays for the whole two-edge contribution, not a sampled set of points.
Any fixed k>2 works. Increasing k is permitted on the ACTUAL C-infinity domain;
no analyticity requirement or pole-neutral restriction has been substituted.
For general h in C_c-infinity, repeated integration by parts gives arbitrarily
high polynomial decay of W_h and the identical limiting argument applies.

## 7. Infinite explicit formula and the unchanged dual-character consumer

The earlier finite proof gives, for every admissible boundary height,

    S_chi,T(h)=Q_chi^+(h)+H_chi,2,T(h)-V_chi,2,T(h).             (16)

Here S is the finite actual zero sum, V is the omitted |t|>T part of the
absolutely integrable right-line integrand, and Q_chi^+ is the fully evaluated
arithmetic expression. Do not replace finite-height inversion by h: its
sinc-smoothed test is generally not compactly supported. Equation (16) is the
version with the exact vertical tail that already evaluated the FULL line.

V tends to zero by absolute integrability. The original zero sum is absolutely
convergent: rapid transform decay on 0<=Re s<=1 and (1) give, on dyadic shells,
a summable bound C(j+1)2^(-j) already at quadratic decay. Thus T_n->infinity
makes S_chi,T_n converge to the actual full sum, with all multiplicities and both
height signs. Equation (15) and uniqueness of the complex limit now prove

    sum_rho m_chi(rho) W_h(rho) = Q_chi^+(h),                   (17)

for EVERY primitive chi (including conductor one) and EVERY h in complex
C_c-infinity(R). This is unconditional in RH/GRH. More explicitly, with a the
genuine character parity and delta_chi=1 only for conductor-one zeta,

    sum_rho m_chi(rho) W_h(rho)
      = delta_chi[W_h(0)+W_h(1)]
        +[log(q/pi)+psi(1/4+a/2)]h(0)
        +integral_0^infinity e^(-(a+1/2)r)/(1-e^(-2r))
                                  *[2h(0)-h(r)-h(-r)]dr
        -sum_p sum_(m>=1) log(p)/p^(m/2)
                   *[chi(p)^m h(m log p)+conj(chi(p))^m h(-m log p)]. (18)

The compensated gamma integral has O(r^2) cancellation in its bracket at zero
and an exponentially decaying tail. All prime powers and character phases
occur; compact support makes the final arithmetic sum finite only AFTER
full-line inversion. Both conductor and parity constants retain their exact
normalizations. The root number cancels by logarithmic differentiation after
nonvanishing, not by assuming self-duality.

For h=C_f, keep the FULL complex spectral coordinate and reflected product:

    W_f(rho)=F_f(z_rho)conj(F_f(conj(z_rho))),
    z_rho=-i(rho-1/2), F_f(z)=integral f(t)exp(i z t)dt.

The unchanged canonical twistedPrime uses conj(chi(n))*C_f(log n), whereas
(18) uses chi(n)*C_f(log n). Therefore for a nonprincipal primitive chi and
support f subset [-A,A], the correct source-return equality is

    sum_rho m_chi(rho) W_f(rho)
      = primitiveArithmeticValue(chi^-1,A,f).                  (19)

Primitivity, conductor, and parity are preserved by inversion. Alternatively
use the same character with reflected h, or the multiplicity-preserving
bijection rho -> 1-rho between the original and dual zeros. The versioned
CHARACTER-ORIENTATION-v1 correction is retained; no same-character/same-test
identity is reintroduced. The support endpoint is harmless: C_f vanishes at
|r|=2A, so the original strict finite prime inventory is exact.

For zeta, BOTH poles in (18) survive. With M_+/-=integral f(t)exp(+/-t/2)dt,

    W_f(0)=M_- conj(M_+),  W_f(1)=M_+ conj(M_-).                (20)

These are cross products, not positive squares. Convergence and the exact
source equality prove neither positivity nor critical-line localization.

## 8. Falsification, scope, and remaining formal obligations

Removing only a finite zero polynomial is unsafe unless its zero-free remainder
is controlled; the Blaschke boundary normalization is essential for the bound
on G. Likewise counts or zero separation alone cannot bound F'/F: the functions
exp(b(s-z0)) have no zeros but logarithmic derivative b, with arbitrary b. Our
bound uses BOTH actual disk growth and actual nonzero center amplitude, so this
obstruction is explicitly excluded rather than hidden in a normalization choice.

The grid proof does not assume distinct ordinates, nor unit analytic
multiplicity. Its stronger all-zero conclusion includes zeros outside the
selection window via their gap >1. It handles ties, empty windows, T near either
endpoint, both signs, and every real coordinate. The positive radius may shrink
with n; no false uniform separation from the divisor or from the critical line
is asserted. Its use of noncomputable exact source windows is not a certified
numerical zero-search algorithm or a finite experiment proving infinite coverage.

There is no independent analytic review in this increment. The checks of signs,
normalizations, and examples by the same author/tool are hostile self-checks,
not a second proof or independent review. The comparison with e^(b s) is a
written obstruction, not a newly encoded Lean counterexample.

At the WRITTEN analytical level, (14) discharges the horizontal premise of the
previous finite argument and yields (18). At the FORMAL-SOURCE level the first
new missing component is the exact local disk lemma (5), including finite
factorization, the normalized analytic logarithm, and the derived coefficient
estimate (7). The circle-to-disk growth application and gamma recurrence bound
must then be encoded and connected to the actual source. The prior finite
contour/excision, Fourier inversion, Fubini/gamma evaluations, and their limit
composition also remain unimplemented as full Lean theorems. All existing
candidate dependencies still require exact-pin elaboration and transitive axiom
checking. No analytic result is being relabeled as kernel verification.

After the written source identification, the arithmetic positivity problem
and simultaneous varying-test interpolation-cost/zero-tail margin remain open
here. A fixed-test bound such as (15) does not bound p_3(f_n) uniformly for a
sequence of interpolating tests. No RH/GRH conclusion and no program completion.

Program scope: RP-OC-01/B receive source-count-dependent, two-sided quantitative
height avoidance. RP-OC-02 receives written horizontal removal and limiting
source identification, plus proper Lean nonvanishing/separation components.
A receives individual provenance, not checked admission. RP-OC-03,04,05,06,07,
08,09,10 and C,D,E,F are not advanced formally in this increment. The four
extensions (From marked links to actual arithmetic sources; Finite-field control
models; Higher geometry as a source of comparison maps; Prime-distribution
consumers) are untouched. Existing results and failures are not revalidated.

## 9. Primary provenance and declaration-level correspondence

Mathlib source links below are pinned at the inspected revision; they are
Apache-2.0. New work is a local elementary consequence with its own argument,
not a claim of novel analysis or direct formalization of an external paper.
Existing GRWTSK sources are MIT and retain their candidate evidence status.

- Mario Carneiro, [Mathlib/Data/Fintype/Card.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Data/Fintype/Card.lean), `Fintype.card_le_of_injective`; blob `f59efd09968716b3727825b05027f6fdee9e5dc8`. This is the exact cardinality obstruction in the new midpoint-grid proof, not an assumption that the desired height exists.
- Michael Stoll and David Loeffler, [Mathlib/NumberTheory/LSeries/Nonvanishing.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Nonvanishing.lean), `LFunction_ne_zero_of_one_le_re`; blob `789e0aae6e9378c8f5c8a7a07a905830e20b5433`. The disjunction excluding the principal pole is supplied by s!=1; it is not omitted at Re s=1.
- David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `IsPrimitive.completedLFunction_one_sub`, `completedLFunction_modOne_eq`; blob `89c72580697983d86706cff17ccbea2cee6475a3`. Exact dual source, completion, and conductor-one specialization.
- Stefan Kebekus, [Mathlib/Analysis/Complex/JensenFormula.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/JensenFormula.lean), `MeromorphicOn.circleAverage_log_norm`; blob `3dd78e234df51703431c913f5bc6081233542e97`. Source comparison for the WRITTEN disk estimate (6), not a newly executed Lean invocation in this module.
- Yury Kudryashov, [Mathlib/Analysis/Complex/CauchyIntegral.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/CauchyIntegral.lean), Cauchy integral and power-series coefficient results; blob `aac86aa902e778812ce356a977d682cff3105b0f`. The written power-series/Fourier derivation in Section 3 is not asserted as an imported ready-made logarithmic-derivative estimate.
- NIST DLMF [5.9.16](https://dlmf.nist.gov/5.9.E16), Re z>0, and [5.5.2](https://dlmf.nist.gov/5.5.E2), digamma recurrence. Accessed 2026-11-11. Section 5 derives its uniform bound, with both recurrence denominators separated from zero. No numerical special-function evaluation is used.
- grwtsk contributors, `DirichletZeroMultiplicity.lean`, actual source-zero subtype, positive finite analytic orders, finite windows, cardinality/count comparison; `DirichletZeroCounting.lean`, `sourceCountConstant_nonneg`, `heightCount_le_source_bound`, `poleClearedLFunction_circle_growth`, blob `9a9fc7bcf6f16b8953ce4d69cf86cbe1b161614a`; all at inspection head above.
- grwtsk contributors, `DirichletLFunctionRightBounds.lean`, actual right-half-plane lower bound; `DirichletZeroJensen.lean`, entire repaired pole clearing, blob `50308f5753a55ee6f7229eeb1d1d0674902b6ffb`; `DirichletLogarithmicResidues.lean` and `DirichletWeilIntegrand.lean`, completion/gamma and root-number return; `WeilContourWeight.lean`, actual weight/strip decay. These are shared source dependencies, not independent proofs.
- grwtsk contributors, [DirichletWeilIntegrand.provenance/README.md](../DirichletWeilIntegrand.provenance/README.md), finite identity (22), full integral evaluation, and exact remainders; [CHARACTER-ORIENTATION-v1.md](../DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md), immutable correction. This increment proves the formerly missing horizontal supplier in written analysis without changing those records or asserting they were already formally complete.

Individual records in this directory give each verbatim Lean statement, its
source/consumer, retained hypotheses, limitations, and unexecuted axiom query.
Publication commit, readback observations, and executed source-integrity checks
are recorded separately in math#1801. A clean-checkout proposed command,
NOT EXECUTED:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletHorizontalZeroAvoidance

Fresh kernel replay and transitive axiom queries must follow successful
elaboration. No root import, dependency pin, workflow, or policy is changed.

## 10. Declaration map and source identity

Lean source: 314 lines, 15435 UTF-8 bytes, ten public theorem bodies and one definition.
Git blob `d1cd00bd07da710458c06753a07c442e1fcd40a1`; SHA-256 `d539db918107aaaad2d08a50bae2de1e63fea80102a869e0d9c022bacad3a9b1`.

- `GRWTSK.NumberTheory.WeilNegativeWitness.exists_gap_in_unit_interval`: [exists_gap_in_unit_interval.md](exists_gap_in_unit_interval.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_quadratic_source_bound`: [heightCount_le_quadratic_source_bound.md](heightCount_le_quadratic_source_bound.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.horizontalSeparationRadius`: [horizontalSeparationRadius.md](horizontalSeparationRadius.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.horizontalSeparationRadius_pos`: [horizontalSeparationRadius_pos.md](horizontalSeparationRadius_pos.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.exists_height_separated_from_absolute_ordinates`: [exists_height_separated_from_absolute_ordinates.md](exists_height_separated_from_absolute_ordinates.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.absolute_ordinate_gap_le_horizontal_distance`: [absolute_ordinate_gap_le_horizontal_distance.md](absolute_ordinate_gap_le_horizontal_distance.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedLFunction_ne_zero_closed_right_away_one`: [completedLFunction_ne_zero_closed_right_away_one.md](completedLFunction_ne_zero_closed_right_away_one.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedLFunction_ne_zero_of_nonreal_avoiding_strip_zeros`: [completedLFunction_ne_zero_of_nonreal_avoiding_strip_zeros.md](completedLFunction_ne_zero_of_nonreal_avoiding_strip_zeros.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.exists_zero_avoiding_horizontal_heights`: [exists_zero_avoiding_horizontal_heights.md](exists_zero_avoiding_horizontal_heights.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.norm_finite_zero_principal_parts_le`: [norm_finite_zero_principal_parts_le.md](norm_finite_zero_principal_parts_le.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.exists_zeta_zero_avoiding_horizontal_heights`: [exists_zeta_zero_avoiding_horizontal_heights.md](exists_zeta_zero_avoiding_horizontal_heights.md).
