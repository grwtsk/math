# Actual first prime power: a full-domain zeta Weil certificate beyond log 2

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M26 (primary), 11M41, 42A38, 47A63.

## Scope and exact original arithmetic target

**WZAP070-v1-1–5**: a WRITTEN mathematical proof accompanied by an EXECUTED
finite exact-rational/integer source certificate. Lean elaboration, full dependency
build, fresh kernel replay, transitive axiom audit, independently certified
source-to-explicit-formula identification, independent analytical review and
repository-wide validation are **NOT_RUN**. Originality is **UNASSESSED**.
No new Lean declaration, research axiom, `sorry`, or `admit` is asserted.
This is not RH, primitive Dirichlet GRH, or the all-window Weil criterion.

The consumer is the **original zeta** instance of the nonnegativity premise in
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`,
restricted to arbitrary complex tests supported in windows of length at most
`7/10`. Unlike the earlier bounded two-dimensional endpoint calculations,
this is a source-exact result on **the complete native logarithmic form domain**.

For `L>0` and complex `f` supported in `(0,L)`, let `f` be zero-extended to the
whole real line. Set

    k(s)=exp(-s/2)/(1-exp(-2s))=exp(s/2)/(2*sinh s),
    K(t)=integral_t^infinity k(s) ds,
    r(s)=exp(s/2)+exp(-s/2)=2cosh(s/2),
    Gamma(f)=integral_0^infinity k(s)||f(.+s)-f||²_(L²(R)) ds,
    V_L={f in L²((0,L);C) : Gamma(f)<infinity},
    c_zeta=-log(pi)-EulerGamma-pi/2-3log 2.

The **unchanged** genuine conductor-one source is

    Q_zeta,L(f)=c_zeta||f||²+Gamma(f)
               -<f,P_(zeta,L) f>+<f,R_L f>,
    P_(zeta,L)=sum_(n>=2, log n<L) Lambda(n)/sqrt(n)
                   [T_(log n)+T_(log n)^*],
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2).

The sum retains **every von Mangoldt prime power** with its exact strict
cutoff, and the pole kernel retains **both genuine signed orientations**.
Inner products are conjugate-linear in the first argument. No RH/GRH hypothesis,
zero list, 7/8 strip, imprimitive transfer or false all-positive pole model
is used.

**WZAP070-v1-1 — all-complex-test arithmetic theorem.** Unconditionally,
for EVERY real `0<L<=7/10` and EVERY `f in V_L`, one has

    Q_zeta,L(f) >= (1/6000)*||f||².                           (1)

This is in the physical L² norm. Every support length in the interval is
quantified, including both `L=log 2` and the genuinely activated `n=2` range
`log 2<L<=7/10`.

## WZAP070-v1-2 — literal signed gamma/pole source return

For any `L<log 3`, the exact source equation of
[WeilZetaExactDiagonalTwoThirds.md](WeilZetaExactDiagonalTwoThirds.md), itself
consuming [WeilZetaSignedCellGraph060.md](WeilZetaSignedCellGraph060.md),
is the following identity **before** paying the prime:

    c_zeta||f||²+Gamma(f)+<f,R_L f>
      =integral_0^L V_(L)(x)|f(x)|² dx
        +integral_(0<x<y<L) w(y-x)|f(x)-f(y)|² dxdy,       (2)
    w(s)=k(s)-r(s),
    V_(L)(x)=c_zeta+K(x)+K(L-x)
          +4[sinh(x/2)+sinh((L-x)/2)].                      (3)

The proof is Tonelli applied to the positive whole-line gamma integrand,
followed by the exact complex two-orientation pole polarization. The pole
operator itself is **indefinite**; `w(s)` becomes **negative** at larger
separations. Both negative contributions are retained in (2), not dropped.
All terms are finite on `V_L`: gamma by the domain, the pole by the bounded
compact-square kernel, and the boundary terms by the original gamma split.

The function `w` is strictly decreasing on positive separations, since
`(log k)'=1/2-coth(s)<0` and `r'(s)=sinh(s/2)>0`.
The exact diagonal `V_(L)` is convex and symmetric around `L/2` because
`K''=-k'>0` and each sinh term is convex. Each cell's **lowest diagonal
value** is therefore at its endpoint closest to the midpoint, not a
numerically sampled function minimum.

## WZAP070-v1-3 — pay the ACTUAL active n=2 prime only at the edges

Fix `L0=7/10`, `s=log 2`, `d=L0-s`, `D=1/100`.
The executable rational source certificate proves

    69/100 < log 2 < 7/10 < log 3,
    2*(log 2)^2 < 1,
    0 < d < D.                                              (4)

Consequently, at `L=L0`, the native source has **exactly one active prime
power**, `n=2`, of true weight `a_2=log 2/sqrt 2<1/2`:

    <f,P_(zeta,L0)f>
       =2a_2 Re integral_0^d conj(f(x))*f(x+s)dx
       <=a_2*[integral_0^d |f(x)|²dx
               +integral_(L0-d)^L0 |f(x)|²dx]
       <=(1/2)*integral_(E_D)|f(x)|²dx,                      (5)
    E_D=(0,D) union (L0-D,L0).

Both endpoint sets are disjoint. This is the **actual signed prime-phase
source**, bounded only AFTER the exact overlap identity by complex
Cauchy--Schwarz. An unrestricted shift-operator norm would NOT shrink as
`d->0`; (5) instead shows only the edge mass can be charged.

Take `N=2048` cells of common width `h=L0/N=7/20480`. The first and last
`J=30` **whole cells** cover `E_D`, because

    (J-1)*h < D <= J*h,

and the source script asserts both exact rational comparisons. Let `e_i=1/2`
for the first and last 30 cells and `e_i=0` for all other cells. Then (2)
and (5), **without replacing the original arithmetic form**, imply

    Q_zeta,L0(f) >= integral_0^L0 [V_(L0)(x)-e_cell(x)]|f(x)|²dx
              +integral_(0<x<y<L0)w(y-x)|f(x)-f(y)|²dxdy. (6)

The negative zeta pole and negative large-separation `w` are still present.
The positive charge `1/2` is conservative, and exactly zero in interior cells.

## WZAP070-v1-4 — finite-cell return for ALL original complex tests

Index cells `I_i=(i*h,(i+1)*h)` for `i=0,...,N-1`. Choose real certified
lower bounds `v_i<=V_(L0)(x)-e_i` for **every** `x in I_i`. Compute them
by the literal exact `K(t)` expression

    K(t)=1/2 log[(exp(t/2)+1)/(exp(t/2)-1)]
           +pi/4-atan[(exp(t/2)-1)/(exp(t/2)+1)],            (7)

using interval arithmetic, with the correct `pi/2` cancellation against
`c_zeta`. The `v_i` are rounded **down** to dyadic denominator `S=2^30`.
The 60 edge cells already include the charge `-1/2`. All values are
finite because the enclosing cell endpoints closest to the midpoint are
strictly inside the interval.

For each `j=0,...,N-1` choose a **signed** lower coefficient

    m_j<=w((j+1)*h),                                       (8)

again from explicit rational exp enclosures, rounded down to denominator
`S`. The actual `w(s)` is decreasing, so (8) bounds the kernel below
pointwise on every pair of cells of lag `j`, including `j=0` within one
cell. The certificate asserts `m_0>0` and `m_(N-1)<0`.

For any complex `f in V_L0`, let

    mu_i=(1/h)*integral_(I_i) f,
    sigma_i=integral_(I_i)|f-mu_i|²,
    z_i=sqrt(h)*mu_i.

Exact complex polarization and orthogonality give

    ||f||²=sum_i(|z_i|²+sigma_i),
    integral_(I_i x I_j)|f(x)-f(y)|²dxdy
        =h²|mu_i-mu_j|²+h*(sigma_i+sigma_j)       (i != j),
    integral_(x<y in I_i)|f(x)-f(y)|²dxdy=h*sigma_i.

Combining these exact identities with (6)-(8) yields the rigorous
**infinite-dimensional source-return**

    Q_zeta,L0(f)>=z* M z+sum_i nu_i*sigma_i,                 (9)
    M_ii=v_i+h*sum_(j!=i)m_|i-j|,
    M_ij=-h*m_|i-j|,              i != j,
    nu_i=v_i+h*(m_0+sum_(j!=i)m_|i-j|).

No finite basis restriction on `f` enters this implication. It includes
all possible within-cell oscillations and complex phases. If the finite
matrix `M` has smallest eigenvalue at least `delta` and every `nu_i>=delta`,
then (9) proves `Q_zeta,L0(f)>=delta||f||²` on the ENTIRE ORIGINAL domain.

The Python source
[WeilZetaActivePrimeSevenTenthsInputs.py](WeilZetaActivePrimeSevenTenthsInputs.py)
uses only `fractions.Fraction`, rational series and integer floor operations
to generate a **deterministic** integer matrix `Dmat` with

    S=2^30,  N=2048,  Bscale=2^30,  OFFSET=205000.

Every constructed `v_i` and `m_j` is a signed source lower bound. The
script asserts **all 2048** `nu_i>4`, the exact strict prime inventory,
its edge charge, and the negative far-separation kernel sign.
Each entry of `Dmat/S` is the **floor** of the corresponding real entry
of `M-OFFSET/S*I` to the dyadic scale. Hence the matrix rounding error has
operator norm **less than** `N/S<1/500000`. Entrywise floor is NOT
mistaken for positive-semidefinite matrix order: the spectral row error
is paid separately.

The standalone verifier
[WeilZetaActivePrimeSevenTenthsIntegerVerify.cpp](WeilZetaActivePrimeSevenTenthsIntegerVerify.cpp)
constructs a lower integer Cholesky approximation `B` and checks every
pivot and **every** symmetric residual entry in 128-bit integers:

    E=Dmat/S-(B/Bscale)*(B/Bscale)^T,
    max_i sum_j |E_ij| < 1/100000.                           (10)

This exact *row* inequality proves `E>=-1/100000*I` for every complex
coefficient vector. Since `BB*` is nonnegative, (10) and the verified
rounding budget give

    M >= (205000/2^30-1/100000-1/500000)*I
      > (1/6000)*I.                                       (11)

The last strict inequality is exact rational arithmetic. Along with
`nu_i>4`, (9) proves theorem (1) at the fixed `L0=7/10`.

For every smaller `0<L<=L0`, zero-extend `f` from `(0,L)` into
`(0,L0)`. Its **whole-line** gamma energy, two-pole correlation,
scalar and L² norm are identical. The only possible active prime in the
larger window is still `n=2`: if `log2>=L` its correlation is zero by
support separation, otherwise the same actual correlation is present in
both forms. Therefore

    Q_zeta,L(f)=Q_zeta,L0(f_extended),

which proves (1) for **every** support length up to `7/10` without a
monotonicity claim on fixed-window matrices.

## WZAP070-v1-5 — reproducibility, hostile checks, and evidence boundary

The three maintained files consist of this mathematical source and the
Python/C++ independent-implementation *finite check pair*. The two
programs are **not independent mathematical proofs** because they share
the explicit derivation (9) and the same matrix format.

Reproduce with standard Python 3 and a C++17 compiler:

```sh
python3 -m py_compile WeilZetaActivePrimeSevenTenthsInputs.py
g++ -std=c++17 -O3 -Wall -Wextra -Werror \
  WeilZetaActivePrimeSevenTenthsIntegerVerify.cpp -o verify_seven_tenths
python3 WeilZetaActivePrimeSevenTenthsInputs.py seven_tenths.matrix
./verify_seven_tenths seven_tenths.matrix
sha256sum seven_tenths.matrix
```

The final source bytes were executed locally with Python **3.13.5** and
GNU g++ **14.2.0** (C++17); all production commands returned exit 0.
The generated raw matrix is deliberately NOT duplicated into this mathematics
repository: it is deterministically reproducible and is an execution byproduct.
On the recorded run the matrix contained **32,825,720 bytes** and had
SHA-256 digest

    58a852e273a9c64f9e38a12215eb0a6d245aef1ae26f20636e02aa3be88f7b88.

Executed diagnostics (only AFTER exact sign decisions):

    all 2048 variance coefficients >4; measured minimum ~5.151995;
    max residual row ~0.00000223107 < 1/100000;
    certified mean margin ~0.000186783 > 1/6000;
    2048 integer Cholesky pivots and ALL residual rows checked.

**Hostile checks (all executed):**

* `python3 -O ...Inputs.py` is refused (exit 1) so assertions cannot be
  silently disabled.
* The C++ verifier fails to compile under `-DNDEBUG` because it requires
  assertion-enabled builds.
* Modifying the first matrix diagonal by `-10^10` makes the C++ checker
  reject the input at Cholesky pivot 0 (exit 8).
* The signed large-distance source has `m_(N-1)<0`; no fake positive
  kernel or prime-free form is substituted.
* At `L=log2` the source strict cutoff excludes `n=2`, but its same
  correlation in the fixed `7/10` form vanishes on the zero-extended test.

**Previously rejected attempt:** a 1024-cell conservative edge-charge
comparison had a negative numerical eigenvalue near `L=7/10`; this does
NOT establish a negative original Weil direction. The present 2048-cell
finite certificate is exact. The failed lower comparison is not promoted.

**Prior art, ownership, and novelty:** this is a source-normalized explicit
certificate of a restricted Weil arithmetic inequality. The localized
Weil-positivity literature (Yoshida, as discussed by Bombieri, *Remarks
on Weil's quadratic functional in the theory of prime numbers, I*, Rend.
Lincei 11 (2000), §§1–3, 12) is earlier; mathematical originality is
**UNASSESSED**, and no novelty or independent referee assessment is claimed.
The immediate source returns are [WeilZetaSignedCellGraph060.md]
(WeilZetaSignedCellGraph060.md),
[WeilZetaExactDiagonalTwoThirds.md](WeilZetaExactDiagonalTwoThirds.md),
and the original signed pole relation in
[../WeilZetaPoleRankOneReturn.md](../WeilZetaPoleRankOneReturn.md).
The consumer is the actual zeta nonnegative supplier in
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`
**only for these bounded supports**, not its universal premise.

No global bound on every primitive character, every support, every prime
power, every approximation accuracy, or the full all-test Weil criterion is
proved. **RH and primitive Dirichlet GRH remain unproved.** The next
arithmetic gaps include activating `n=3`, longer-support prime/gamma
cancellation, all-window complement control and certified infinite tails.

**Source pins and coordination.** Initial inspected `grwtsk/math/main` was
`52fbea2005046447a2a164a3becd6a75ae22df41` with root tree
`e5799b3aba75563213652a111204cdeee333967f`.
Root `AGENTS.md`, `CONTRIBUTING.md`, original signed Weil sources, strict
scoped `AGENTS.md` searches, current Lean pin
`leanprover/lean4:v4.34.1`, Mathlib commit
`d13f23b723b8a846827a245b89c10fc7d3f11612`, and publication
policy were inspected. Coordination issue: `grwtsk/math#1801`.
Canonical `noe-proof-automation` and `noe-math-chat-bridge` skill paths at
`grwtsk/noeaaeue/main` revision
`b5087d9b542eb00635b4227dbd4b9d763f44b81f` returned 404;
no dependent proof automation or scheduler was dispatched.

**Evidence**: original-source analytic argument **WRITTEN**, finite
rational/integer checker **RUN**, Lean elaboration, full dependency build,
fresh kernel replay, transitive axiom audit, independent analytical review,
source equivalence certificate and repository-wide validation **NOT_RUN**.
No new Lean declarations, imports, axioms, root target modifications,
mathlib pin changes or workflow changes. Attribution: grwtsk contributors.
