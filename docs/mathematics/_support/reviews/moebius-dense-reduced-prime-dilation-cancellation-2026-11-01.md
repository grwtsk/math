# Prime-dilation cancellation inside the literal reduced-ratio Möbius dense core

Local attribution: grwtsk contributors. Date: 2026-11-01. Mathematical scope: unconditional complete finite signed argument, with a source-faithful Lean proof candidate. The canonical Riemann Hypothesis and the complete dense-core all-rate estimate remain OPEN. No native Lean compilation, exact types, fresh kernel replay, transitive axiom audit or remote executor has run.

## 1. Original mathematical source, dependency pins and target

Source surveyed at grwtsk/math/main `b9fd57b02a5a7325e06a87ded12bdab587d0113f`. The complete unchanged RH endpoint is the original `GRWTSK.RiemannHypothesis.CCC.pickupCross(T)`: the full ordered off-diagonal integer source `Σ_{m≠n≤floor(exp T)} μ(m) μ(n) K_T(m,n)`, with the genuine Mathlib/GRWTSK Möbius arithmetic signs and causal `K_T(m,n)=∫_0^T pickupResponse(m,u) pickupResponse(n,u)du`. For T≥0 and m,n>0, the original kernel is NONNEGATIVE. Its original positive diagonal and signed off-diagonal remain distinct; no independent random-sign, spectral, elliptic-curve or physical bit substitute is introduced.

The current source already proves as SOURCE PROOF CANDIDATES the following three absolute all-positive-rate sparse-sector estimates:
- `MoebiusEndpointPutnamSparseGapAllRate.lean` blob `2ccedc75331c8ec88956923f896083727d49ec4f`: actual small ADDITIVE distances;
- `MoebiusEndpointPutnamSmallRatioAllRate.lean` blob `4d2a3cdef5cae3643637cac342eeb48d586d9204`: actual small INTEGER quotients;
- `MoebiusEndpointPutnamSmallRationalSlopeAllRate.lean` blob `e9d09a9e1eb69dd2c176f3e64b28228df0126f42`: actual small reduced rational slopes.

The last file defines `denseReducedRatioCoreEdge A Q m n` as the ACTUAL conjunction (i) m≠n; (ii) natural additive distance not in A; (iii) no integer multiplier in A describes either ordered direction; (iv) no a,b∈Q satisfy a*m=b*n or a*n=b*m. Its `endpointDenseReducedRatioCoreCross A Q T` uses the original source coefficient and kernel, and its exact four-sector partition `pickupCross_eq_gap_ratio_slope_reduced` keeps both ordered orientations. On one FIXED scale set G, the last file proves a criterion equivalence between the source-core all-positive-rate upper estimate and the original pickupCross all-positive-rate estimate with explicit loss 96/ε². This is a criterion, not a proved bound on the dense core.

Already known negative source subsets:
- `MoebiusOddPrimeDoublingNegativePacket.lean` blob `91d0214086391a936bb7a508fe0f7a730ffd3198` proves negative source on (p,2p) for odd prime p, and the actual source multiplication identity `moebiusReal_prime_mul_of_not_dvd`;
- `MoebiusDensePrimeStarCancellation.lean` blob `54629ac2b520545be119fb3d7b5e40235931513a` proves the negative source on (1,p) and (p,1) for genuine primes p, with complete original additive-gap residual. Its companion note proves, by ordinary unconditional PNT and the original kernel lower bound, the q=1 packet has magnitude at least c exp(T/2)/T at sufficiently large T for 0<ε<2, but this magnitude is a PAPER result not a new Lean proof or RH conclusion.

The new module imports these sources and restricts a much larger true sign-controlled prime-dilation family to the *already-sharpened final core*, instead of claiming that a negative packet in an older less-sharpened complement automatically survives later rational-slope removal.

A concurrent main advance (through commit `23537190f2d821ce3e8630aa8859982145d6fcdf`) also added `MoebiusPrimeStarDenseArithmetic.lean`, blob `1beea55d946e85f20bdb51df9349e8f69f242666`, and `MoebiusDensePrimeStarForcedCompensation.lean`, blob `9ef8997328238a25ea9818e35074a716415c6604`. The former proves the genuine q=1 two-orientation finite prime-row identity and records a *paper-only* unconditional Chebyshev theta lower bound, bypassing PNT. The latter exhibits the exact complete q=1 composite and short-gap rows and derives a conditional signed composite compensation using classical zero-free-region Mertens bounds. These new modules are distinct from the q>1 prime-dilation family and are not silently imported or treated as a bound on the final dense reduced-ratio complement. In particular, a negative q=1 source cannot be used to set the composite countersector to zero.

## 2. The genuinely new complete signed packet

For every prime p, positive integer q with p not dividing q, Mathlib's unchanged Möbius function satisfies

    μ(pq) = -μ(q),
    μ(q) μ(pq) = -μ(q)^2 <= 0.

This is true even when q is squareful: then both coefficients are ZERO rather than an illicit ±1 approximation. The two ORIGINAL ordered source edges (q,pq) and (pq,q) consequently contribute

    - μ(q)^2 K_T(q,pq) and - μ(q)^2 K_T(pq,q),

which are EACH nonpositive for T≥0 since the genuine causal-response Gram is nonnegative. No cancellation across different primes, no unproved PNT hypothesis and no unknown covariance enter this finite sign argument.

Define `IsPrimeDilation m n` by the existence of exactly such a pair (p,q) with either original ordered orientation. Define the retained edge predicate

    primeDilationCoreEdge(A,Q,m,n)
      := denseReducedRatioCoreEdge(A,Q,m,n) AND IsPrimeDilation(m,n).

The complete selected signed source packet is

    P_{A,Q}(T) = endpointRelationCross (primeDilationCoreEdge A Q) T,

with the SAME original finite `endpointIndex T`, unmodified integer coefficients, real causal kernel and both ordered orientations. Its complete exact nonpositive bound is

    P_{A,Q}(T) <= 0                         (T >= 0).

This is an unconditionally bounded all-positive-rate component with the explicit ZERO upper allowance; the original source does not claim it is small in absolute value.

The rest is not a free unknown field but the LITERAL original source on `denseReducedRatioCoreEdge A Q m n ∧ ¬IsPrimeDilation m n`:

    R_{A,Q}(T)=endpointRelationCross (outsidePrimeDilationCoreEdge A Q) T.

A pair-by-pair exhaustive two-case finite identity gives

    endpointDenseReducedRatioCoreCross(A,Q,T) = P_{A,Q}(T)+R_{A,Q}(T).

Every original ordered dense-core pair belongs to EXACTLY ONE sector. Therefore for T≥0

    endpointDenseReducedRatioCoreCross(A,Q,T) <= R_{A,Q}(T).

The one-way implication is genuinely important: a uniform all-positive-rate upper bound for R over the same fixed G supplies the previously required bound for the final reduced-ratio core and hence the old conditional RH consumer; the converse is NOT asserted. Since P can have exponentially large NEGATIVE magnitude (the source q=1 PNT argument), the remainder R can be large and positive while the full core remains smaller. Replacing this one-way implication with a logical equivalence would silently lose a major signed term.

## 3. Actual arithmetic survival after all three Putnam filters

An arbitrary prime dilation is NOT automatically an edge of the remaining dense core: if p is already a small exact quotient, or if its additive gap is small, an earlier sector has paid it. That exclusion is preserved by constructing the packet as a SUBSET of the true core.

There is also an independent source-correct sufficient criterion to see that the packet contains growing genuinely new edges. Fix positive q and any finite selected A,Q. Suppose every a∈A satisfies a≤H; every b∈Q satisfies 1≤b≤H; and p is a genuine prime with p>H+1 and p∤q.

* The natural distance is `dist(q,pq)=(p-1)q≥p-1>H`, so no selected additive gap contains it.
* If `pq=a q` for any a∈A, cancellation by the ORIGINAL positive q gives p=a, contradicting p>H. If `q=a(pq)`, cancellation gives 1=ap, impossible for prime p≥2.
* If `b q=c(pq)` with b,c∈Q positive, cancel positive q to get b=cp≥p>H, contradicting b≤H. The opposite rational-slope orientation similarly forces c=bp≥p>H.

Hence both (q,pq) and (pq,q) survive all three filters whenever they fit the original source endpoint inventory. The Lean candidate `largePrimeDilation_survives_bounded_filters` records the forward ordered direction; the reverse follows by the symmetric original source predicates and the same arithmetic. This is not just q=1: any q≥1 with p∤q enters, and its true Möbius-square coefficient automatically distinguishes squarefree and squareful q.

For the published time-dependent Putnam schedules, A has parameters through floor(exp(εT/2)) and Q through floor(exp(εT/4)), with the exact inherited positive integer conventions. Choose any H bounding BOTH concrete parameter sets. For sufficiently large eligible p>H+1, the preceding finite theorem applies. The PNT terminal q=1 band of the earlier review is therefore eventually retained in the final core for fixed 0<ε<2, but this last quantitative PNT-to-Lean instantiation has not been formalized or kernel checked here.

## 4. Exact hostile computation on the original occurrence inventory

The independent reference file `/mnt/data/prime_dilation_exact_diagnostic.py` (SHA256 `5d9d4be27186c629eef80e18283eb87c2501f7a2e4333df744c353adf7cc4a73`) checks 1,575,656 exact INTEGER assertions. It compares the literal three-filter source predicate against an independently computed gcd/reduced-ratio characterization, checks every tested original ordered pair belongs to exactly one of the prime-dilation and outside sectors, and verifies each prime dilation has coefficient product `-μ(q)^2`. This is exact FINITE ARITHMETIC evidence, not the infinite analytic estimate or Lean acceptance.

Sample ranges use A={1,...,H}, Q={1,...,H}, positive endpoint inventory {1,...,N}. Both ordered orientations are counted:

| N | H | retained ordered prime-dilation edges | strictly negative coefficient | squareful zero coefficient | already-known q=1 prime-star | additional q>1 edges |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 80 | 3 | 126 | 102 | 24 | 40 | 86 |
| 300 | 4 | 610 | 456 | 154 | 118 | 492 |
| 600 | 6 | 1168 | 860 | 308 | 210 | 958 |
| 1024 | 8 | 1912 | 1398 | 514 | 336 | 1576 |

Thus the extension beyond q=1 is numerically material even after the full additive, integer-ratio and rational-slope filters; squareful q contribute exactly zero, not falsely negative ±1. This finite count table is not a kernel/energy value, since its rows record coefficient products and edge membership rather than evaluating each real-time integral K_T.

## 5. Verification, prior-art and obstruction disposition

The elementary Möbius multiplicativity and the prime-factor sign reversal are standard mathematics, not claimed as new prior art. The distinct source-specific contribution is inserting that unbounded family into the fully FILTERED original signed endpoint Gram and proving the exact complete ordered residual accounting and correct one-way RH supplier orientation. It is a larger negative certificate than the earlier q=1 prime-star subset, without asserting a new upper bound on the untouched complement.

The new Lean source file `MoebiusDenseReducedPrimeDilationCancellation.lean` contains the original prime-dilation predicate, sign identity, nonpositive original causal source theorem, exact finite partition, negative sector upper bound, inclusion of surviving previous prime stars, exact bounded-parameter large-prime survival, zero-cost all-rate observation and a SAME-fixed-G sufficient conditional RH return. The mathematical argument is complete on paper; Lean elaboration and kernel checking are still NOT_RUN.

The major missing arithmetic term is **R_{A,Q}(T)**: all additively far, reduced-ratio-large original Möbius pairs that are not prime dilations. It still contains interactions of either sign and admits no independently proved all-positive-rate upper bound. The previous three sparse sectors remain paid with their original signed constants. No logical equivalence between the stronger remainder criterion and the old dense-core criterion has been proved or claimed. Any RH use must supply R on a genuine controlled-cover G without assuming the desired original RH endpoint estimate.

Status: MATHEMATICAL_FINITE_ARGUMENT_WRITTEN; FINITE_EXACT_DIAGNOSTIC_PASS; LEAN_SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; NEW_RH_ALL_RATE_SUPPLIER_UNPROVED; COFINAL_ZERO_COUNT_UNPROVED; CANONICAL_RH_OPEN. No native runner, remote CI, scheduler or independent proof replay dispatched. Public root and pinned toolchain are unchanged.
