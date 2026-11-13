# A signed cell-graph certificate for the full local zeta Weil form through length 3/5

By grwtsk contributors. Edition 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M26 (primary); 11M41, 42A38, 47A63.

## Evidence, prior work, and exact arithmetic consumer

This file gives a **written analytic proof**, with an executed **integer/rational
certificate** verifying its finite inequalities. It is NOT a Lean-elaborated,
kernel-replayed or independently reviewed theorem. Originality is UNASSESSED:
unconditional local Weil positivity on intervals at least this short is
classical (Yoshida 1992, as discussed by Bombieri 2000). We claim a more useful
**source-normalized constructive certificate inside this repository**, not
priority over that literature or a proof of RH/primitive Dirichlet GRH.

The consumer is the original zeta `hpositive` side of
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`,
**restricted** to supports of length at most 3/5. This extends the maintained
`WeilZetaGroundState040.md` bound (length at most 2/5) by a different proof:
cellwise signed interaction bounds and an exact positive-definite matrix
certificate, rather than a single positive comparison profile.

On `I_L=(0,L)` extend `f : I_L -> C` by zero to `R`. Let

    k(s)=exp(-s/2)/(1-exp(-2s))=exp(s/2)/(2*sinh(s)),
    K(t)=integral_t^infinity k(s) ds,
    r(s)=2*cosh(s/2),
    c_zeta=-log(pi)-EulerGamma-pi/2-3*log(2),
    Gamma(f)=integral_0^infinity k(s)||f(.+s)-f||^2_(L2(R)) ds,
    V_L={f in L2(I_L;C) : Gamma(f)<infinity}.

The **unchanged** native arithmetic Weil form is

    Q_zeta,L(f) = c_zeta||f||^2+Gamma(f)
                      -<f,P_(zeta,L) f>+<f,R_L f>,
    P_(zeta,L) = sum_(n>=2,log(n)<L) Lambda(n)/sqrt(n)
                        [T_(log n)+T_(log n)^*],
    R_L(x,y) = exp((x-y)/2)+exp(-(x-y)/2).

Inner products are conjugate-linear in the first argument. This source retains
**every** prime power and **both** genuine zeta pole orientations. At our
specified endpoint `L0=3/5<log(2)`, and only for this restriction and shorter
supports, `P_(zeta,L)=0` **exactly**. The proof does not assume RH, enumerate
zeros, replace the poles by a positive operator, use a narrower zero strip, or
silently totalize an analytically continued Dirichlet series.

**WZCG060-v1-1 (original full-test theorem).** For every `0<L<=3/5` and
every complex `f in V_L`, without any zero-location hypothesis,

    Q_zeta,L(f) >= (1/1000)*||f||^2_(L2(I_L)).               (1)

This controls **all** native complex tests, not only exponential endpoints,
real-even tests, or a finite-dimensional subspace.

## WZCG060-v1-2: the literal signed gamma/pole decomposition

Tonelli applied to the nonnegative whole-line gamma differences, followed
by exact complex polarization of the bounded two-pole operator, gives the
following identity on the complete original form domain, for `L<log 2`:

    Q_zeta,L(f) = integral_0^L V_L(x)|f(x)|^2 dx
             +integral_(0<x<y<L) w(y-x)|f(y)-f(x)|^2 dxdy, (2)

    w(s)=k(s)-r(s),
    V_L(x)=c_zeta+K(x)+K(L-x)
                      +4[sinh(x/2)+sinh((L-x)/2)].           (3)

Indeed, `Gamma` splits into the positive interior difference integral
with coefficient `k(y-x)` and the two boundary tails `K(x)+K(L-x)`.
The **actual pole** integral is

    <f,R_L f> = integral_0^L [integral_0^L r(|x-y|)dy]|f(x)|^2 dx
                    -integral_(x<y) r(y-x)|f(y)-f(x)|^2 dxdy,

whose row integral is exactly `4(sinh(x/2)+sinh((L-x)/2))`.
The two terms of this identity can be individually signed; no pole
positivity is presumed. The first gamma interior difference is finite for
`f in V_L`, the pole kernel is bounded on `I_L^2`, and the boundary tails
are finite by the original gamma-domain assumption. Thus (2) is a valid
identity of finite real quantities, not an unsupported formal subtraction.

The function `w` is **strictly decreasing** on `(0,infinity)`: `k' < 0` from
`k(s)=exp(s/2)/(2sinh(s))` and `coth(s)>1`, while `r'(s)>0`.
It is NOT nonnegative everywhere. The certificate below explicitly checks
`w(L0)<0` (through its rational lower bound), and retains its negative
long-range interactions.

### A literal pointwise lower bound for the diagonal potential

For every `t>0` the exact gamma tail

    K(t) = atanh(exp(-t/2))+atan(exp(-t/2))

obeys

    atanh(exp(-t/2)) = (1/2)log(coth(t/4)) >= (1/2)log(4/t),
    atan(exp(-t/2)) >= pi/4-t/4.

The first follows from `tanh(t/4)<=t/4`; the second follows by integrating
its derivative `-1/(4cosh(t/2)) >= -1/4` from the origin. The genuine pole
row sum obeys `4sinh(t/2)>=2t+t^3/12`. At the fixed rational `L0=3/5`, put
`y=2x/L0-1`. Combining these estimates with the exact original scalar
produces, for every `0<x<L0`,

    V_L0(x) >= -log(pi*L0)-EulerGamma+7*L0/4
                        -(1/2)log(1-y^2)
                        +L0^3*(1+3y^2)/48.                 (4)

All cancellations of `pi/2` and `3log2` in (4) are exact; (4) is still a
lower bound for the original kernel, not a new definition of it. The last
two terms increase strictly with `|y|`, which permits cellwise lower
bounds by evaluating them at the point in each cell closest to the
midpoint `L0/2`. The logarithmic divergence at the actual endpoints is
kept, not replaced by an artificial constant.

## WZCG060-v1-3: an all-complex-test cell-graph reduction

Fix `N=512` equal cells `I_i=(i*h,(i+1)*h)` with `h=L0/N=3/2560`.
For an arbitrary complex `f in V_L0` define

    mu_i = (1/h)*integral_(I_i) f(x) dx,
    sigma_i = integral_(I_i)|f(x)-mu_i|^2 dx,
    z_i = sqrt(h)*mu_i.

The exact orthogonal splitting is

    ||f||^2 = sum_i (|z_i|^2+sigma_i).                       (5)

Let `v_i` be any **certified** lower bound for `V_L0(x)` on the entire
cell `I_i`; we choose one by (4) using outward rational logarithm
bounds. For every `d=0,...,N-1`, choose a **certified** lower bound

    m_d <= w((d+1)*h).                                      (6)

Since `w` decreases, for distinct `i,j` and every point of the cells,
`w(|x-y|)>=m_|i-j|`; for points within one cell, `w(|x-y|)>=m_0`.
The `m_d` are SIGNED: `m_(N-1)<0` is verified. No absolute square of a
zero-pair coefficient has replaced the original signed coupling.

The exact pairwise integrations, valid also for complex functions, are

    integral_(I_i x I_j)|f(x)-f(y)|^2 dxdy
      = h^2*|mu_i-mu_j|^2+h*(sigma_i+sigma_j)   (i != j),

    integral_(x<y in I_i)|f(x)-f(y)|^2 dxdy = h*sigma_i.

Insert these equalities and (5)--(6) into the **literal original form (2)**.
The result is the unconditional all-vector lower bound

    Q_zeta,L0(f) >= z^* M z + sum_i nu_i*sigma_i,             (7)

where the **explicit real symmetric matrix** is

    M_ii = v_i+h*sum_(j!=i)m_|i-j|,
    M_ij = -h*m_|i-j|     (i!=j),
    nu_i = v_i+h*(m_0+sum_(j!=i)m_|i-j|).                    (8)

Equation (7) is a proved source-return theorem for a **sufficient** finite
certificate. In particular, if `M >= delta*I_N` and `nu_i>=delta` for all
`i`, then the original INFINITE-DIMENSIONAL complex form satisfies
`Q_zeta,L0(f)>=delta*||f||^2` for every native admissible `f`. The
implication is mathematically valid even if several `m_d` are negative.
It does **not** assert universal certificate existence for arbitrary
support lengths or characters.

## WZCG060-v1-4: exact rational/integer matrix verification

The maintained companion `WeilZetaSignedCellGraph060Certificate.py` is a
standalone Python 3 standard-library checker. It does not invoke floating-point
arithmetic in **any assertion, construction of a witness, or sign decision**.
The numerical floating-point displays are strictly post-verification diagnostics.

All real input enclosures in the checker are explicit rational intervals:

- `pi` from the Machin arctangent identity with a complete alternating remainder;
- Euler's constant from `H_100-log(100)-1/200` and the strict positive upper
  allowance `1/(8*100^2)`;
- positive logarithms from an `atanh` series with its complete geometric tail,
  after dividing rational arguments by exact powers of two;
- `exp(s)` and `exp(s/2)` from positive Taylor partial sums with a complete
  positive geometric remainder bound at `0<=s<=3/5`;
- all cell potentials from (4), all signed kernel coefficients from (6),
  with each scalar rounded *down* to a dyadic fraction of denominator `2^30`.

Here is the exact finite spectral certification, not an appeal to a library
eigensolver. Set `S=2^30`, `Bscale=2^25`, `alpha=3/2048`. Build the rational
matrix `M` from (8), then build an integer matrix `A` by rounding **every**
entry of `S*M` down. Let `D=A-S*alpha*I`, an integer symmetric matrix.
Every entry rounding error is smaller than `1/S`, so the real operator norm
of `M-A/S` is bounded by the rational row budget `N/S`.

The checker constructs an integer lower-triangular matrix `B` with integer
square-root and integer-division recurrences. It then verifies **independently**
by exact integer multiplication the FULL matrix residual

    E = D/S - (B/Bscale)*(B/Bscale)^T.

The finite exact result is

    max_i sum_j |E_ij| < 1/50000,
    N/S < 1/2000000,       min_i nu_i > 4.                  (9)

A real symmetric residual satisfies `E >= -max_row_abs_sum(E)*I`, by the
spectral row-sum/Gershgorin inequality. Since `(B/Bscale)*(B/Bscale)^T`
is nonnegative for **every complex vector**, (9) implies

    M >= [3/2048 - 1/50000 - 1/2000000]*I
      > (1/1000)*I.                                     (10)

All inequalities in (9)--(10) are directly asserted on rational/integer
quantities in the script; the finite positive-definiteness is not inferred
from decimals. Combining (7), (9), (10) proves WZCG060-v1-1 for **every
complex f** supported on the fixed `I_L0`.

The full certificate output recorded in the local execution is:

```
PASS: exact cell-graph certificate; original full zeta form Q>=||f||²/1000 for 0<L<=3/5
cells: 512 signed-lag bounds: 512 variance_min: 4.411670442554896
certified mean margin 0.001448199680572415 residual row error 1.616723226938177e-05 entry rounding error 4.76837158203125e-07
PASS: nontrivial signed far-lag (m_last < 0) and 512 within-cell variance bounds > 4
PASS: finite mean-matrix residual row < 1/50000; entry rounding row < 1/2000000
No floating point used in any assertion; displayed floats are diagnostics only
Source identity analytical WRITTEN; kernel replay and independent review NOT_RUN
```

For `0<L<=L0`, extend the given `f` by zero from `(0,L)` into `(0,L0)`.
Its **whole-line** gamma energy, signed zeta two-pole integral, `L2` norm,
and scalar are unchanged, while the original prime operator vanishes on
both intervals because `L0=3/5<log2`. Thus its actual `Q_zeta,L` is
**identical** to `Q_zeta,L0` on the extended test. This proves the entire
strict support quantifier in WZCG060-v1-1. No monotonicity assumption on
the finite matrix as the support varies is needed.

## WZCG060-v1-5: hostile checks, prior art, and unresolved premises

1. **Negative kernel:** `w(L0)<0` and `m_(N-1)<0`, confirmed in the
   certificate. Treating the combined gamma/pole kernel as positive
   everywhere would be false. The proof instead retains signed long-range
   edges in the finite matrix.
2. **Cell variance:** simply checking the 512-dimensional mean matrix is NOT
   enough. Equation (7) carries 512 separate variance coefficients, all
   certified `>4`, thereby controlling arbitrary sub-cell oscillations and
   genuinely arbitrary complex tests. The proof does not assume a smooth or
   finite-dimensional test space.
3. **Operator error:** entrywise rounded-down matrices need not be ordered in
   the positive-semidefinite sense. The proof pays the entire spectral row
   error `N/S`, not an invalid entrywise-to-PSD inference.
4. **Zero-extension domain:** each admitted test has finite native gamma
   energy; no H1 or endpoint continuity is smuggled in. Complete pole and
   gamma integrals remain finite under zero extension.
5. **Support:** this result is for `L<=3/5` only. The n=2 prime activates
   beyond `log2`, and the proof provides no head-tail or all-character
   all-window cancellation. The 512-cell certificate is an existence
   witness for exactly this fixed support, NOT universal certificate existence.
6. **Originality:** Bombieri, *Remarks on Weil's quadratic functional in
   the theory of prime numbers, I*, Rend. Lincei 11 (2000), intro/§12,
   records Yoshida's unconditional localized positivity, including a
   wider supported window in his own normalization. This source-local
   certificate is not claimed to improve that established literature.
   Contemporary novelty and independent analytical review remain UNASSESSED.

No RH or primitive Dirichlet GRH claim, new axiom, `sorry`, `admit`,
root import, dependency pin, Lean target, publication workflow, or
historic verification status is changed. This mathematics does not assert
that the source's full zero sum is positive for every `L` and every test.
The first unsupplied premise remains unconditional all-window, all-test
arithmetic positivity for zeta and every primitive Dirichlet character,
with exact signed primes, gamma/parity, conductor, both poles, and
infinite-tail/source return.

Repository comparison and configuration: inspected `grwtsk/math/main` at
`378dc2a6df3ebd08e80e5a5f69816d17ad81ce5f`, complete root tree
`6df763cd3f24f9e1343943e3eae821423bff83f5`; root and scoped
`AGENTS.md`, `CONTRIBUTING.md`; Lean toolchain `leanprover/lean4:v4.34.1`,
mathlib commit `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination issue: `grwtsk/math#1801`. Noe proof automation, if attempted,
requires its applicable canonical source; at Noe `main` revision
`9816cedb75a1344523fa232d0087d75a16c7db5d`, both queried skill files
returned 404. No Noe-dependent execution was dispatched; this ordinary
standalone integer check is not claimed to be Lean kernel replay.
Formal elaboration, full dependency builds, fresh kernel replay, transitive
axiom audit, independent audit of the exact source identity, and independent
mathematical review: **NOT_RUN**. Novelty: **UNASSESSED**.
