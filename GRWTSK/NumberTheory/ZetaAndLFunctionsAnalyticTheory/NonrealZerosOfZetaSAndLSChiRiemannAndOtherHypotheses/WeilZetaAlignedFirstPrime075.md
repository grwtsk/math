# Actual first-prime zeta Weil positivity through length 3/4: compact signed-coefficient certificate

By grwtsk contributors. Edition 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M26 (primary), 11M41, 42A38, 47A63.

## Mathematical status, consumer and precise claim

**WZAP075-v1-1--5.** A full original-source **WRITTEN mathematical argument** and a **locally executed exact-rational/integer certificate**. Lean elaboration, full dependency build, fresh kernel replay, transitive axiom audit, independently certified explicit-formula source identity, and independent analytical review are **NOT_RUN**. Mathematical originality is **UNASSESSED**. No RH, primitive Dirichlet GRH, universal Weil positivity, or kernel-replayed Lean proof is claimed.

The consumer is the *actual zeta* part of the unconditional nonnegativity premise used by `WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`, restricted to tests of the explicitly stated support length. The preceding source `WeilZetaAlignedFirstPrime073.md` proves the analogous inequality through support `73/100` with a dense 4096-cell signed matrix. This note supplies **a larger support, length 3/4**, with an exact compact signed-coefficient transport and an independent integer matrix reconstruction/check; it is not a second proof of the all-window premise.

Fix any real `L>0` and any complex function `f in V_L` where

    V_L = {f in L²((0,L); C) : Gamma(f)<infinity},
    Gamma(f) = integral_0^infinity k(s) ||f(.+s)-f||²_(L²(R)) ds,
    k(s) = exp(-s/2)/(1-exp(-2s)),
    K(t) = integral_t^infinity k(s) ds,
    r(s) = exp(s/2)+exp(-s/2)=2cosh(s/2),
    c_zeta = -log pi - EulerGamma - pi/2 - 3log 2.

As always, extend `f` by zero to the entire real line, and use inner products conjugate-linear in the first variable. The ORIGINAL full conductor-one source is

    Q_zeta,L(f) = c_zeta ||f||²+Gamma(f)
                  - <f,P_L f>+<f,R_L f>,
    P_L = sum_(n>=2, log n<L) Lambda(n)/sqrt(n)
              (T_(log n)+T_(log n)^*),
    R_L(x,y) = exp((x-y)/2)+exp(-(x-y)/2).

Both pole orientations and **all prime powers with their actual von Mangoldt coefficients** are retained. For support L0=3/4 the strict original inventory contains *only* n=2, since `log2<3/4<log3`; the adjacent exact rational generator verifies these inequalities. This source never substitutes a pole-neutral form or an ordinate-only zero projection.

**WZAP075-v1-1 (unconditional theorem, complete native complex domain).**

    For EVERY 0<L<=3/4 and EVERY f in V_L:
       Q_zeta,L(f) >= (1/6000)*||f||².

In particular, there is a genuinely nonzero n=2 arithmetic interaction for tests reaching beyond log2. No off-line zero exclusion, numerical zero list, RH, GRH or external seven-eighths zero-strip hypothesis enters.

## WZAP075-v1-2: exact signed arithmetic return

Let `L0=3/4`, `s=log 2`, `d=L0-s` and `w2=log2/sqrt2`. The exact signed gamma--pole identity, proved by Tonelli for the gamma interior/boundary split and by complex polarization for both genuine zeta poles, is

    Q_zeta,L0(f) = int_0^L0 V(x)|f(x)|² dx
             + int_(0<x<y<L0) w(y-x)|f(x)-f(y)|² dxdy
             - 2*w2*Re int_0^d conj(f(x))*f(x+s) dx,     (1)

    w(t)=k(t)-r(t),
    V(x)=c_zeta+K(x)+K(L0-x)
                +4[sinh(x/2)+sinh((L0-x)/2)].            (2)

This identity uses the *whole* infinite gamma integral, unchanged scalar, actual first prime shift, and BOTH signed pole orientations. The function `w` is strictly decreasing on positive t and becomes **negative** at large separations; the certificate checks the negative far-lag coefficient. Thus none of the pair terms in (1) can be silently replaced with positive absolute squares. The gamma form domain guarantees the singular near-diagonal integral is finite; the pole term is bounded on the compact support.

The function `V` is convex and symmetric about `L0/2`: `K''=-k'>0`, and both true sinh row terms are convex. Thus its infimum on any cell left of `L0/2` is attained at that cell's center-facing endpoint, *not* at an unverified midpoint. The exact elementary formula

    K(t) = (1/2)log[(exp(t/2)+1)/(exp(t/2)-1)]
                  +pi/4-atan[(exp(t/2)-1)/(exp(t/2)+1)]   (3)

is used with rational interval enclosures and exact cancellation of the two `pi/4` terms against the source's `-pi/2`. The singularity at t=0 is never evaluated as a finite value: all chosen endpoint arguments satisfy `t>0`.

## WZAP075-v1-3: literal translation-aligned complex mean/variance disintegration

Define

    N=8192, NE=621, NM=6950, h0=L0/N,
    h_edge=d/NE, h_mid=(2s-L0)/NM.

Partition `(0,L0)` successively into **NE** equal left-edge cells on `(0,d)`, **NM** equal middle cells on `(d,s)`, and **NE** equal right-edge cells on `(s,L0)`. The shift by the ACTUAL `s=log2` maps left edge cell `A_i` *exactly* onto right edge cell `B_i`; no rational replacement of log2 is made in the mathematics. All cell widths are positive and the exact rational generator proves

    max(h_edge,h_mid)/h0 < 1001/1000,              (4)

and certifies the strict n=2 cutoff and `|w2|<1/2` from rational brackets for `log2` and `1/sqrt2`.

For every arbitrary complex `f in V_L0`, let `mu_i` be its average on cell I_i, let `sigma_i=int_(I_i)|f-mu_i|²`, and set `z_i=sqrt(h0)*mu_i`. The **exact** physical norm is

    ||f||² = sum_i (h_i/h0)|z_i|²+sum_i sigma_i.   (5)

For distinct cells,

    int_(I_i x I_j)|f(x)-f(y)|² dxdy
      = h_i*h_j*|mu_i-mu_j|²+h_j*sigma_i+h_i*sigma_j,

and within one cell `int_(x<y in I_i)|f(x)-f(y)|² dxdy=h_i*sigma_i`. Both formulas hold over complex Hilbert spaces and are consequences of Fubini and the orthogonality of the zero-mean fluctuations.

Choose `hmax>=max_i h_i`, with the exact rational interval value `hmax=max(he.hi,hm.hi)` in the generator, and choose certified dyadic signed coefficients

    m_j <= w((j+1)*hmax),  j=0,...,N-1.           (6)

Every pair of points in distinct cells I_i and I_j with i<j has separation at most `(j-i+1)*hmax`; since `w` is strictly decreasing, its true signed coefficient is >= `m_(j-i)`. This remains valid when `m_j<0`. Within one cell the coefficient is >= `m_0`.

For each cell I_i choose a verified dyadic lower bound `v_i<=V(x)` **for every x in I_i**, via (3), convexity and outward rational intervals. The signed source matrix for the means is the REAL symmetric matrix `H` with

    H_ii = (h_i/h0)*(v_i+sum_(j!=i) h_j*m_|i-j|),
    H_ij = -(h_i*h_j/h0)*m_|i-j|         (i!=j),

except for each matched prime pair `A_i,B_i`, where the true original mean prime term contributes the additional symmetric off-diagonal

    H_(A_i,B_i) = -(h_edge²/h0)*m_(NE+NM)
                       -(h_edge/h0)*w2.             (7)

This is the actual signed `-2w2*h_edge Re(conj(mu_A)*mu_B)` in (1), **not** a diagonal edge penalty. The TRUE prime shift also pairs the zero-mean fluctuations:

    -2w2 Re int_(A_i) conj(eps_A_i(x))*eps_B_i(x+s)dx
         >= -w2*(sigma_A_i+sigma_B_i).

Consequently, define the true variance budgets

    nu_i = v_i+h_i*m_0+sum_(j!=i)h_j*m_|i-j|
                           -w2*1_(i is edge cell).    (8)

The **source-derived, all-complex-test lower theorem** is

    Q_zeta,L0(f) >= z*H z+sum_i nu_i*sigma_i.      (9)

No finite-dimensional test restriction has been inserted: `z` records the means of *arbitrary* f and the 8192 separate sigma_i pay all its oscillatory components, including discontinuous/boundary-jumping functions in the original gamma domain.

## WZAP075-v1-4: compact exact source ledger, full matrix reconstruction and proof

The adjacent standard-library Python program `WeilZetaAlignedFirstPrime075Inputs.py` performs all scalar and transcendental **outward rational interval** enclosures (pi through Machin arctangents, Euler's constant through a harmonic enclosure, log and atan with signed rational remainders, exp with positive Taylor/geometric tails, and exact 1/sqrt2 brackets). Rational denominator growth is controlled only by *outward* dyadic `2^-48` rounding, preserving all analytic inclusions. The old 4096-cell file `WeilZetaAlignedFirstPrime073Inputs.py` is used for comparison but neither imported nor modified.

The program proves exactly:

    * 0<d, 3/4<log3 and w2<1/2 with original prime cutoff;
    * all cell widths positive and max(h_i/h0)<1001/1000;
    * all 8192 variance coefficients nu_i>4;
    * m_0>0 and m_(N-1)<0 (genuine signed tail);
    * each actual real source coefficient interval for H_ij has width <1/S,
      where S=2^30;
    * OFFSET/S - 1/50000 - 2N/S > (1001/1000)/6000
      with OFFSET=225000.

**Important rounding audit:** This last interval-width check includes uncertainty in the *transcendental* log2-dependent widths `h_edge,h_mid` and the actual prime coefficient, not only final integer quantization. If an exact real entry H_ij lies in `[ell,u]` with `u-ell<1/S`, and D_ij is the floor of S*ell after subtracting OFFSET on diagonal, then

    |H_ij - (D_ij+OFFSET*delta_ij)/S| < 2/S.

Thus the full real symmetric entry-error matrix has operator norm at most `2N/S` by the **absolute row-sum** estimate; an invalid entrywise matrix order is not assumed. This is the same source soundness repair as WZAP073, now at the higher cell count.

To avoid 8192x8192 text-matrix materialization, the Python program emits an **O(N) exact signed-coefficient ledger**: its header `(N,S,SB,OFFSET,NE,NM)`, all diagonal integers, three complete off-diagonal lag tables for edge--edge/edge--middle/middle--middle cells, and the single actual aligned-prime off-diagonal integer. The compact ledger defines *exactly the same real symmetric integer matrix D* as a text matrix would. The independent C++17 program `WeilZetaAlignedFirstPrime075IntegerVerify.cpp` reconstructs EACH D_ij on demand, including its prime matching override; no opaque matrix is trusted and no arithmetic term is dropped. With SB=2^30 it constructs a full lower integer Cholesky factor B, verifies each strictly positive pivot, and computes the entire signed symmetric residual

    E = D/S - (B/SB)*(B/SB)^T.

The integer verifier checks every entry in (10) and the exact row bounds:

    max_i sum_j |E_ij| < 1/50000,
    2N/S < 1/50000,
    OFFSET/S - 1/50000 - 2N/S > (1001/1000)/6000. (10)

Because `B*B^T` is nonnegative for EVERY complex vector and every symmetric residual is bounded below by minus its maximum absolute row sum, the TRUE original source mean matrix obeys

    H >= [OFFSET/S-1/50000-2N/S] I
      > (1001/1000)/6000 I.                        (11)

Combining this with (4),(5),(8),(9) yields the full original complex form-domain bound at **L0=3/4**. For every `0<L<=L0`, extend f by zero to `(0,L0)`: its complete whole-line gamma energy, both actual pole moment pairings, scalar, norm and original n=2 translation are unchanged; all higher prime powers remain inactive because `L0<log3`. Hence the same inequality holds for all shorter supports, completing WZAP075-v1-1. No universal positivity or infinite prime-tail theorem follows from the finite certificate.

### Reproducibility and hostile checks

Run from this directory using Python 3.13+, a C++17 compiler and no additional packages:

```
python3 -m py_compile WeilZetaAlignedFirstPrime075Inputs.py
python3 WeilZetaAlignedFirstPrime075Inputs.py signed_075_ledger.txt
g++ -std=c++17 -O3 -Wall -Wextra -Werror WeilZetaAlignedFirstPrime075IntegerVerify.cpp -o verify_signed_075
./verify_signed_075 signed_075_ledger.txt
```

`python3 -O WeilZetaAlignedFirstPrime075Inputs.py ...` MUST fail because optimized mode disables mandatory assertions; likewise compiling the verifier with `-DNDEBUG` MUST fail. Deliberately corrupting a diagonal coefficient in the compact ledger must fail at an integer pivot. The exact final byte SHA256 digests and executed outputs are recorded in the coordinating GitHub issue #1801. The compact ledger is a deterministic **derived artifact**, not a new mathematical source, and is not redundantly committed to `grwtsk/math`.

### Comparison, falsification, and open obligations

The preceding WZAP073 proof at L<=73/100 used N=4096 and a complete 126MB text matrix. The present extension uses the same **original arithmetic source** and signed prime pairing, a finer 8192-cell partition, and a compact O(N) ledger with independent exact full-matrix reconstruction. Numerical exploration of the coarse 4096-cell matrix becomes negative near L=3/4, while the finer 8192-cell exact matrix remains positive. This is a **failure of the coarse comparator**, not a negative actual Weil direction or a counterexample to RH. The only mathematical scope increase claimed is finite support L<=3/4, with the explicit lower sign and full complex domain; no source-independent novelty is claimed.

Classical localized Weil positivity by Yoshida (as reported by Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rend. Lincei 11 (2000), §§1--3,12) already concerns short supported tests; the exact original Yoshida edition was not independently audited in this work. Mathematical novelty and independent review are **UNASSESSED**. A successful finite certificate at this support does **not** assert certificate existence at arbitrary larger support, let alone universal all-test, all-character Weil positivity. The next arithmetic obstacles are activation of n=3 at log3, growth of all prime powers, fixed-character all-window cancellation, and the full arithmetic return to RH/primitive Dirichlet GRH.

No new Lean source, theorem wrapper, axiom, import, dependency pin, build target, workflow, branch protection or history modification is needed. The canonical Noe proof-automation and bridge skills must be read before covered proof automation; inaccessible skills stop that dependent execution. Ordinary standalone exact scalar/integer arithmetic and source-only Git publication are outside that covered execution scope. Actual evidence is WRITTEN analysis plus the executed integer and rational check, while Lean elaboration, fresh kernel replay, transitive axiom audit, independent mathematical review and repository-wide validation remain **NOT_RUN**.
