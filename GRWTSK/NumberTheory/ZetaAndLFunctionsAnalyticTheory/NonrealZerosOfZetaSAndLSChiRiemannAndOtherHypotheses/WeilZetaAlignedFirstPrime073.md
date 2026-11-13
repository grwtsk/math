# Aligned first-prime reconstruction: full-test zeta Weil positivity through support 73/100

By grwtsk contributors. Edition 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M26 (primary), 11M41, 42A38, 47A63.

**Evidence:** COMPLETE WRITTEN ANALYTICAL ARGUMENT, with EXECUTED standalone
exact-Fraction Python input certification and an independent-implementation
C++17 exact-integer Cholesky/residual checker. No new Lean declaration,
`sorry`, `admit`, research axiom, change to a conjecture target or declaration
import, or claim of independent mathematical review. Lean elaboration, fresh
kernel replay, complete dependency build, transitive axiom audit, independent
review and separately machine-checked source-to-explicit-formula identity:
**NOT_RUN**. Mathematical originality **UNASSESSED**. Neither RH nor primitive
Dirichlet GRH is proved. The supported interval is bounded and explicit.

## 1. Original arithmetic source and consumer (WZAP073-v1-1)

This note supplies a restricted instance of the original zeta `hpositive`
premise of `WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`.
It is a strict improvement of [WeilZetaActivePrimeSevenTenths.md](WeilZetaActivePrimeSevenTenths.md),
which supplied all-complex-test positivity through `L=7/10`. Rather than
repeatedly refining a uniform mesh that charges the complete prime overlap
to negative diagonal mass, we **return the actual signed prime cross term to
its paired arithmetic source**. In particular the new finite graph is not a
positive auxiliary form asserted without source return.

Let `L>0` and extend a complex `f in L2((0,L))` by zero to the real line.
Its actual logarithmic gamma form domain is

    V_L = { f : Gamma_(1/2)(f)<infinity },
    Gamma_(1/2)(f) = int_0^infinity k(u)||f(.+u)-f||²_(L2(R))du,
    k(u)=exp(-u/2)/(1-exp(-2u)),
    K(t)=int_t^infinity k(u)du,
    r(u)=2cosh(u/2),
    c_zeta=-log(pi)-EulerGamma-pi/2-3log2.

The exact, unchanged **pole-inclusive** arithmetic form is

    Q_zeta,L(f)=c_zeta||f||²+Gamma_(1/2)(f)
                       -<f,P_zeta,L f>+<f,R_L f>,
    P_zeta,L=sum_(n>=2, log n<L) Lambda(n)/sqrt(n)
                                    (T_(log n)+T_(log n)^*),
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2).

Inner products are conjugate linear in their first argument. All genuine
von Mangoldt prime powers remain in the definition. At the *specific* endpoint

    L0=73/100,  s=log2, d=L0-s,

we have `0<d<s` and `L0<log3`; hence **only n=2 is active**, with its
actual coefficient `w2=s/sqrt2>0`. Both orientations of the zeta pole are
retained; `R_L` is not assumed positive. No RH, GRH, 7/8 strip, zero list,
artificial pole-neutral test restriction or totalized Euler series is used.

**Theorem WZAP073-v1-1.** Unconditionally,

    forall real 0<L<=73/100, forall complex f in V_L,
                  Q_zeta,L(f) >= (1/6000)||f||².           (1)

The stated result concerns **every original complex form-domain test**,
including arbitrary within-cell oscillations and real-odd pole-negative
directions. The support `L0` is not replaced by a finite sampled test space.

## 2. Actual signed gamma, pole and n=2 source (WZAP073-v1-2)

The zero-extension gamma splitting and exact polarization of the *original*
two-orientation pole kernel, already established in WZCG060/WZED23, give
on `V_L0` the finite signed identity

    Q_zeta,L0(f) = int_0^L0 V(x)|f(x)|² dx
         + int_(0<x<y<L0) w(y-x)|f(x)-f(y)|² dxdy
         -2 w2 Re int_0^d conj(f(x)) f(x+s)dx,             (2)

    V(x)=c_zeta+K(x)+K(L0-x)
              +4[sinh(x/2)+sinh((L0-x)/2)],
    w(u)=k(u)-r(u),  w2=log2/sqrt2.                          (3)

This is the *same* arithmetic Weil form, not a spectral comparator. The
complete infinite gamma tail is in `K`, and the original pole kernel is
**indefinite**. Moreover `w` changes sign, so its long-range negative
values must remain in the bound. Tonelli justifies the positive gamma
splitting; the pole kernel and sole prime shift are bounded operators;
thus (2) is an identity of finite real quantities on the original form
domain without any artificial H1 boundary condition.

The function `w` is strictly decreasing on `(0,infinity)` (`k'<0` and
`r'>0`). The potential `V` is convex and reflection-symmetric about
`L0/2`: `K''=-k'>0`, and each `sinh` summand is convex. Therefore its
minimum over any one cell is at the end nearest to `L0/2` (or at the
midpoint if the cell contains the midpoint).

## 3. Nonuniform partition aligned to the *actual* prime shift (WZAP073-v1-3)

Fix exactly

    N=4096,  NE=207,  NM=3682,  N=2*NE+NM,
    h0=L0/N,
    he=(L0-s)/NE=d/NE,
    hm=(2*s-L0)/NM=(s-d)/NM.

Partition `(0,L0)` into three consecutive regions:

- `(0,d)`: `NE` equal left-edge cells `A_i` of width `he`;
- `(d,s)`: `NM` equal middle cells of width `hm`;
- `(s,L0)`: `NE` equal right-edge cells `B_i` of width `he`.

These regions are disjoint up to their endpoints and cover the FULL support.
They are reflection-symmetric. Crucially, in the literal original physical
coordinates,

    A_i+s=B_i,   0<=i<NE,                               (4)

**exactly**. Thus the n=2 prime overlap is not approximated by a phase-free
diagonal penalty.

Index all `N` cells as `I_i`, put `h_i=length(I_i)`, and for arbitrary
complex `f in V_L0` define

    mu_i=(1/h_i)int_(I_i)f(x)dx,
    sigma_i=int_(I_i)|f(x)-mu_i|²dx,
    z_i=sqrt(h0)*mu_i.

The exact L2 orthogonal decomposition is

    ||f||²=sum_i (h_i/h0)|z_i|² + sum_i sigma_i.           (5)

For any two distinct cells, Fubini and complex polarization give

    int_(I_i x I_j)|f(x)-f(y)|²dxdy
       = h_i*h_j*|mu_i-mu_j|²+h_j*sigma_i+h_i*sigma_j.

Within a cell,

    int_(x<y in I_i)|f(x)-f(y)|²dxdy = h_i*sigma_i.        (6)

Choose a rational **upper** bound `hmax>=max(he,hm)` and rational dyadic
**lower** coefficients

    m_j <= w((j+1)*hmax),  0<=j<N.                      (7)

For `i<j`, the largest possible separation between any points of `I_i,I_j`
is at most `(j-i+1)*hmax`. Strict decrease of the ACTUAL signed `w`
gives `w(y-x)>=m_(j-i)` across those cells, *including* when the retained
lower coefficient `m_(j-i)` is negative. Within a cell, `w(|x-y|)>=m_0`.
No off-line zero ordinates or absolute square surrogates enter this step.

Choose certified rational lower values `v_i<=V(x)` on each complete `I_i`.
They are computed by evaluating the exact convex symmetric `V` at the
nearest-center cell endpoint and enclosing the logarithms, exponentials,
arctangents, pi and EulerGamma with explicit signed rational remainders.
The actual `K` tail is evaluated via

    K(t)=.5*log[(E+1)/(E-1)] + pi/4 - atan[(E-1)/(E+1)],
    E=exp(t/2).                                             (8)

The two `pi/4` terms cancel the original `-pi/2` in `c_zeta`
**exactly**. No sampled midpoint is substituted for a cell minimum.
The published generator first takes source-safe dyadic floors of each
`v_i` and `m_j`; call those lower rationals again `v_i,m_j`.

### Prime means and prime fluctuations: retain the arithmetic phase

Since (4) holds exactly, let
`u_i(x)=f(x)-mu_(A_i)` on `A_i` and
`v_i'(x)=f(x)-mu_(B_i)` on `B_i`. Each has integral zero on its
respective cell. The true original n=2 pairing splits into

    int_(A_i) conj(f(x))*f(x+s)dx
     = he*conj(mu_(A_i))*mu_(B_i)
       +int_(A_i)conj(u_i(x))*v_i'(x+s)dx.                  (9)

By Cauchy--Schwarz, the real second term has magnitude at most
`(sigma_(A_i)+sigma_(B_i))/2`. Therefore its **negative** source
contribution costs only `w2*(sigma_(A_i)+sigma_(B_i))`, while the
**signed mean coupling stays exactly off-diagonal**:

    -2*w2*he*Re(conj(mu_(A_i))*mu_(B_i)).                (10)

The earlier WZAP070 certificate instead paid all prime mean mass
on whole boundary strips. This difference is the new arithmetic supplier.
It is valid for zeta's actual `chi(2)=1`; extension to a complex primitive
character would retain its `chi(2)` phase in (10), not assume it is one.

### Full-test signed graph return

Put `T_i=sum_(j!=i) h_j*m_|i-j|`. Equations (2)--(10) yield the
**unconditional source-dependent** bound

    Q_zeta,L0(f) >= z^*H z + sum_i nu_i*sigma_i,            (11)

    H_ii=(h_i/h0)*(v_i+T_i),
    H_ij=-(h_i*h_j/h0)*m_|i-j|  (i!=j),
    H_(A_i,B_i) also contains -(he/h0)*w2,
    nu_i=v_i+h_i*m_0+T_i-w2*1_(i is an edge cell).
                                                               (12)

Here `H` is real symmetric, but its entries are SIGNED; the source's
negative pole and prime directions are not discarded. The finite graph
is only a sufficient **lower bound derived from the literal source**.
It is not an alternative positive form substituted for Weil positivity.

Thus two finite facts suffice to prove (1):

    nu_i>=1/6000 for every i,
    H>=(1/6000)*diag(h_i/h0) as Hermitian forms.          (13)

This implication holds for every complex function in the ORIGINAL
infinite-dimensional form domain by the exact mean/variance identities.
It does not need an unproved endpoint/complement orthogonality theorem.

## 4. Two-stage exact rational/integer certificate (WZAP073-v1-4)

The executable maintained sources are

    WeilZetaAlignedFirstPrime073Inputs.py
    WeilZetaAlignedFirstPrime073IntegerVerify.cpp

Run without disabling assertions:

    python3 -m py_compile WeilZetaAlignedFirstPrime073Inputs.py
    python3 WeilZetaAlignedFirstPrime073Inputs.py aligned_073_matrix.txt
    g++ -std=c++17 -O3 -Wall -Wextra -Werror \
        WeilZetaAlignedFirstPrime073IntegerVerify.cpp -o verify_aligned_073
    ./verify_aligned_073 aligned_073_matrix.txt
    sha256sum aligned_073_matrix.txt

The deterministic matrix file is a DERIVED intermediate witness, not a
maintained mathematical theorem or a second copy of the canonical source.

### Exact input enclosure; no floating-point sign decisions

The Python generator uses `fractions.Fraction` throughout every inequality
and matrix construction. It derives `log2` from an atanh series with its
strict positive geometric tail; pi from the alternating Machin identity;
EulerGamma from the harmonic `H_100-log(100)-1/200` interval with a
`1/(80000)` upper allowance; positive exponentials from Taylor series
with rigorously bounded remainders; and arctangents and logarithms from
monotone or alternating rational series. Square root `1/sqrt2` is bracketed
by the exact integer square root of `2*(2^60)^2`.

Intermediate transcendental intervals are rounded **outward** to a
`2^-48` grid, avoiding rational denominator explosion without changing
inequality directions. The certified intervals for the *exact*
`log2`-dependent widths satisfy

    max(he,hm)/h0 < 1001/1000,  N*hmax <4/5.              (14)

The signed kernel coefficients are evaluated at the **upper** separations
in (7) using exact interval arithmetic. The generator asserts the
far-lag coefficient is actually negative (`m_(N-1)<0`), every fluctuation
coefficient satisfies `nu_i>4`, and every matrix-entry enclosing interval
has WIDTH strictly smaller than `1/S`, where `S=2^30`.

This width test is a crucial hostile audit. If a selected real `H_ij`
lies inside `[a,b]` and the generator writes `floor(S*a)` as its integer
representative (before the fixed diagonal offset), then

    |H_ij - floor(S*a)/S| < 1/S+(b-a) < 2/S.          (15)

It is INVALID to charge only `1/S` for entries whose widths depend on
uncontrolled approximations of `log2`. The final source checks `b-a<1/S`
**for every distinct entry type and every diagonal**. This is why the
finite spectral rounding budget is `2*N/S`, not merely `N/S`.

### Exact spectral certificate, including source normalization

The generator writes the symmetric integer matrix `D` obtained from the
certified normalized `H` with *every entry* rounded downward to scale
`S=2^30`, and with integer diagonal offset `OFFSET=200000` removed:

    |H - (D/S+OFFSET/S*I)|_(entrywise) < 2/S.            (16)

The independent C++17 verifier reconstructs a lower-triangular integer
Cholesky witness `B` at scale `SB=2^30`, using integer square root and
signed floor division. It checks every input coefficient is small enough
to rule out signed `__int128` overflow, every pivot, each computed witness
coefficient and **every residual entry**, not merely a final approximate
eigenvalue. It establishes

    E=D/S - (B/SB)*(B/SB)^T,
    max_i sum_j |E_ij| <1/100000,
    2*N/S < 1/125000.                                     (17)

Since `(B/SB)*(B/SB)^T` is nonnegative on ALL complex vectors and the
symmetric residual is bounded in operator norm by its maximum absolute
row sum, (16)--(17) imply the actual selected source-bound mean matrix

    H >= [200000/2^30 - 1/100000 - 2*4096/2^30]*I.

The right-hand scalar is **strictly larger** than
`(1001/1000)*(1/6000)`, by an asserted exact Fraction/integer comparison.
Combining (14) gives

    H >= (1/6000)*diag(h_i/h0).                            (18)

Together with all `nu_i>4`, (11)--(13) prove the original analytic
inequality (1) for the FULL complex domain. The generated integer matrix
contains 4,096 by 4,096 signed entries and is never called a proof of the
functional-analytic source identity on its own.

### Executed checks on final source bytes

Environment: Debian GNU/Linux, Python 3.13.5, g++ 14.2.0, C++17.

- `python3 -m py_compile WeilZetaAlignedFirstPrime073Inputs.py`: exit **0**.
- Unoptimized Python input generator: exit **0**, all `nu_i>4`,
  width assertions, source-ratio and spectral-budget assertions PASS.
- C++17 compilation with `-O3 -Wall -Wextra -Werror`: exit **0**.
- Integer verifier: exit **0**, all 4096 Cholesky pivots and complete
  symmetric residual rows pass; elapsed **26.61 s**, peak RSS **263936 KB**.
- `python3 -O`: deliberately exits **1** (disabled assertions rejected).
- `g++ -DNDEBUG`: deliberately refuses compilation with `#error`.
- Deliberately corrupting the first matrix diagonal by `-10^10` is
  detected at Cholesky pivot 0, exit **8**.

The verified matrix is **126,313,276 bytes**, SHA-256

    ac0300e7c6b5f46e029087e952bb13191b64351efcf1a5214823ccbcf685bd37

The separate executable-source SHA-256 hashes and Git blobs are recorded in
math#1801's publication receipt. Displayed decimal outputs are DIAGNOSTIC ONLY:
minimum `nu_i` approximately 5.80126, maximum entry-interval width
approximately `9.608e-13`, C++ integer residual row approximately
`4.723e-6`, and actual certified residual-inclusive mean margin approximately
`0.000173912`. None of these decimals is a mathematical premise.

## 5. Falsification, source comparison, and nonclaims (WZAP073-v1-5)

**False shortcut rejected.** When the original `n=2` prime term is bounded
by entire edge `L2` mass, a uniform-grid graph can become indefinite
around support `L=0.73`. The aligned graph retains the signed cross-cell
mean pairing exactly; a negative eigenvalue of the *coarse lower graph*
would not refute the original Weil positivity. Exploratory floating-point
spectra are recorded only as diagnostics, not promoted to certificates.

**Signed couplings retained.** The true zeta pole remains indefinite; the
far-lag `m_(N-1)` is checked negative. The original `n=2` coefficient is
`log2/sqrt2`, and its mean term remains a negative off-diagonal, not a
positive mass surrogate. Arbitrary within-cell complex fluctuations have
their own certified lower coefficients, not an implicit finite-dimensional
restriction. All four endpoint and source orientations are unchanged.

**Boundary and quantifiers.** The proof is established first for the fixed
`L0=73/100`. Given ANY smaller `0<L<=L0` and ANY native complex test,
zero-extend it from `(0,L)` to `(0,L0)`. Its original whole-line gamma,
both-pole correlation, scalar and `L2` norm are IDENTICAL. At `L0<log3`
the only additional potentially active prime is `n=2`; if `L<=log2`,
its original physical autocorrelation is identically zero by disjoint
support. If `L>log2`, both windows contain that same literal source term.
Thus the source value is preserved exactly. No claimed monotonicity of a
finite matrix as L varies is needed.

**Prior art and ownership.** Localized Weil positivity predates this
construction; Yoshida's work is discussed in Enrico Bombieri,
*Remarks on Weil's quadratic functional in the theory of prime numbers, I*,
Rendiconti Lincei 11 (2000), §§1--3 and §12. The current result is a
source-normalized arithmetic sign certificate in the canonical math
repository, not a claim of mathematical novelty or independent review.
The earlier source-local WZCG060, WZED23, and WZAP070 signed forms and
WZPR original two-pole decomposition are reused, not silently revised.

**Exact consumer and limitations.** This supplies zeta full-complex-test
positivity on the specified finite range only; the universal condition
required by the original RH/GRH detection implication needs ALL support
windows, all primitive characters (including the conductor-one source),
and all tests. At `L>=log3` another prime power activates and the present
single-shift pairing no longer supplies its source by itself. For any
larger L, all additional phases, all prime powers and the infinite signed
source must be controlled with new uniform arithmetic arguments. No
unrestricted source growth bound, infinite-tail control, `hpositive`
universality, RH or primitive Dirichlet GRH proof follows.

Source pin before publication: `grwtsk/math/main`
`52fbea2005046447a2a164a3becd6a75ae22df41`, complete root tree
`e5799b3aba75563213652a111204cdeee333967f`;
Lean `leanprover/lean4:v4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Canonical grwtsk/noeaaeue skill at `main` revision
`b5087d9b542eb00635b4227dbd4b9d763f44b81f` returned 404;
no dependent proof automation was run. Coordination: grwtsk/math#1801.
