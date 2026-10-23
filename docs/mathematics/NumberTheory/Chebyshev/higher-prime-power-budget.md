# Complete higher-prime-power correction for square intervals

Owner: #189. Finite error-budget consumer: #209. Implementation: draft #256.

This additive v0.2 source increment starts at commit
`6d3c759b44c3d358635030fd4ab7441f0cdd8410`, whose mathematical base is
`99f310907528f620d85095b675ec1b6f9d7a7046`. Mathlib remains pinned to
`db584cd6d46c92f209a44c0f1c829460d327499d`.

Status: **SOURCE DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**. The Lean files contain
proof candidates, not an elaboration or trust receipt. No novelty claim is made.
The v0.1 source, root, manifest and written proof note remain unchanged. The
present note updates only the formalization boundary described in that note.

## 1. Replace fractional roots by an integer separation argument

For every natural number p and j,

    p^(j+2) + 2 p^(j+1) + 1 <= (p+1)^(j+2).

For j=0 this is equality. Multiplying the j-th lower bound by p+1 gives the
next lower bound plus the nonnegative remainder

    p^(j+2) + 2 p^(j+1) + p.

Now let k=j+2, p>=1 and n^2<p^k. Since p<=p^(j+1),

    p^k <= (p^(j+1))^2,

so n<p^(j+1). The separation estimate consequently gives

    (n+1)^2 < (p+1)^k.

If another integer q>p had q^k<=(n+1)^2, then q>=p+1 and monotonicity of
natural powers would contradict the last strict inequality. Reversing p and q
handles the other ordering. Thus there is at most one positive integer base
at each exponent k>=2 in (n^2,(n+1)^2]. This is not a prime-existence theorem.

The exact theorem owner is `PowerOccupancy.lean`. No real-power derivative,
rounding model or analytic mean-value theorem is needed for this proof.

## 2. A complete finite inventory, not a sampled prefix

At exponent k, the finite inventory is

    primePowerBases(n,k)
      = {p in [2,(n+1)^2] : p is prime and n^2 < p^k <= (n+1)^2}.

For k>0 its displayed base bound is redundant: p<=p^k. The proof-carrying
membership equivalence therefore describes all eligible prime bases, not just
an arbitrary finite search domain. At k>=2 its cardinality is at most one.

Define

    K_n = floor(2 log(n+1)/log 2),
    P_n = sum_(k=2)^K_n sum_(p in primePowerBases(n,k)) log p.

If p>=2 and p^k<=(n+1)^2, monotonicity and the power law for the real logarithm give

    k log 2 <= k log p <= 2 log(n+1),

hence k<=K_n. This proves completeness of the exponent cutoff. Every fiber
above K_n is empty, and summing to any K>=K_n yields exactly the same P_n.
An arbitrary K<K_n is still only a prefix.

For n>=1, K_n>=2. Each occupied fiber has weight at most

    log p <= 2 log(n+1)/k.

Empty fibers have zero weight, and the bound is nonnegative. Consequently

    0 <= P_n <= 2 log(n+1) sum_(k=2)^K_n 1/k
              <= 2 log(n+1) log K_n.

The last step removes the first harmonic summand before applying pinned
Mathlib's `harmonic_le_one_add_log`. These are explicit finite inequalities.
The asymptotic deduction in the v0.1 written note remains distinct from the
finite Lean source and is not used to manufacture a cancellation estimate.

## 3. Bind the correction to the actual arithmetic source

The existing source is

    GRWTSK.RiemannHypothesis.SourcePairing.chebyshevPrimePower,

in `GRWTSK/NumberTheory/Chebyshev/CorrelationPairing.lean`, blob
`85923009b211961763765b523234e9746555ca7f`. It sums the pinned von Mangoldt
function over the closed-right inventory `Icc 2 (floor x)`.

`source_eq_mathlib_psi` identifies this count with Mathlib `Chebyshev.psi`:
the only additional index in Mathlib's `Ioc 0 (floor x)` is one, whose von
Mangoldt weight is zero. The source is not replaced by a second definition.

The new prime-only increment is independently defined by Mathlib theta:

    Delta_n theta = theta((n+1)^2) - theta(n^2).

The existing `QuadraticIntervals.squareIncrement` is Delta_n psi. Finite
interval subtraction identifies both differences with their exact inventories.

For all positive exponents, construct the finite pair inventory (k,p) with
p prime and n^2<p^k<=(n+1)^2. The map (k,p)->p^k is a bijection onto the
prime-power integers in that interval. Surjectivity uses the definition of a
prime power and the proved cutoff. Injectivity uses prime-factor uniqueness:
taking the least prime factor identifies p, and injectivity of powers for
p>=2 identifies k. It does not follow from the fixed-exponent occupancy lemma.
The map preserves the von Mangoldt weight log p.

Splitting off exponent one now derives, rather than assumes,

    Delta_n psi = Delta_n theta + P_n.

This equality and the bound on P_n inhabit the same exact arithmetic source.
No explicit formula, zeta zeros, source-realization record, or RH premise is used.

## 4. Concrete finite consumers

Let h_n=2n+1, e_psi(n)=Delta_n psi-h_n and
 e_theta(n)=Delta_n theta-h_n. The derived identity is

    e_theta(n) = e_psi(n) - P_n.

For every finite set S of positive square stages, the existing finite-square
budget theorems now specialize to the actual source:

    sum_S e_theta^2 <= 2 sum_S e_psi^2 + 2 sum_S P_n^2,
    sum_S e_psi^2   <= 2 sum_S e_theta^2 + 2 sum_S P_n^2,
    sum_S P_n^2 <= sum_S (2 log(n+1) log K_n)^2.

These are finite identities and inequalities. They do not provide either
mean-square cancellation target. In particular, a small exceptional-set bound
would not establish that every square interval contains a prime.

## 5. Required hostile controls

The source includes explicit controls for the closed-left endpoint, exponent
one, simultaneous contributions at distinct exponents, the included right-hand
prime square, an empty fiber, and composite-base duplication (4^3=8^2).

At n=2, both 2^3=8 and 3^2=9 contribute. Removing exponent three or dropping the
right-hand square loses a term. The prime filter is required for pair-to-value
injectivity. At-most-one occupancy does not say every exponent is occupied.
The v0.1 shift-one, correction-omission and zero-margin controls remain intact.

## 6. Replay and remaining boundary

The separate root is `GRWTSK.Interfaces.QuadraticIntervalPrimePowerCore` and the
static target is `docs/verification/Interfaces/QuadraticIntervalPrimePowerCore/quadratic-interval-core-v0.2.toml`. Neither root
is added to `GRWTSK.lean`. The target enumerates the unchanged source, both v0.1
owners and root, all three v0.2 owners and the new root. Acceptance requires
every exact elaborated public type and the full transitive axiom/import audit;
a source declaration inventory is not an accepted signature report.

Remaining mathematical work includes formal asymptotic transfer, the coupled
entire interval kernel and its sensitivity estimate, any selected explicit
formula and complete zero-divisor/tail supplier, and a substantive cancellation
estimate. The fractional-Mellin integral tail is not a divisor tail. No finite
higher-power bound settles those separate obligations.

Pinned upstream sources used as imports and statement references:

- `Mathlib/NumberTheory/Harmonic/Bounds.lean`: harmonic identities and logarithmic bound.
- `Mathlib/NumberTheory/Chebyshev.lean`: canonical psi and theta definitions.
- `Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean`: support and prime-power weights.
- `Mathlib/Algebra/IsPrimePow.lean`: natural prime-power representation.
- `Mathlib/Data/Nat/Prime/Pow.lean`: least-prime-factor identity for prime powers.

All of these paths refer to the Mathlib revision pinned above. Their existing
copyright and Apache-2.0 attribution remain upstream; the imports do not assert
that this extension has been elaborated or that its transitive trust is accepted.
