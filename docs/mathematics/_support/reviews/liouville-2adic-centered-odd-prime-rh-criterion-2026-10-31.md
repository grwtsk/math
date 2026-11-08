# Centered two-adic obstruction: bounded-energy odd-prime discrepancy and its exact RH criterion

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Analytical disposition:** The new results below are unconditional elementary arithmetic and finite weighted Hilbert-space inequalities, with a *conditional* interpretation through the classical Riemann-hypothesis/Liouville summatory-function equivalence. The full original `WeightedPrefixSquareAllRate` is **NOT PROVED**. This is a source comparison and completed mathematical derivation, not a Lean elaboration, compilation, fresh kernel replay, or certificate of RH. No background runner is dispatched.

## 1. Reused, source-exact definitions and provenance

Original repository base inspected before this note: `grwtsk/math/main@2bd9e82a4baa1987af9a579ef2b3fdcb47a12f63`, Lean toolchain `leanprover/lean4:v4.34.1`, Mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612`.

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleCausalEnergyTarget.lean`, blob `a00aaa07c067b4c88203372870b5d5d151de0de4`: exact `coefficient n = (ArithmeticFunction.liouville n : ℤ)` cast to real.
- `.../LiouvilleWeightedPrefixSquareCriterion.lean`, blob `d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`: unchanged `liouvillePrefixNat`, `discreteWeightedPrefixSquare`, `weightedPrefixSquareMoment` and `WeightedPrefixSquareAllRate`.
- `.../LiouvilleOddPrimeWeightedPrefixAbscissa.lean`, blob `6cd289c5fce4754eab5f310d3d72b36bef30f00e`: original odd-prefix identity `O(N)=L(N)+L(floor(N/2))`; its continuous weighted-L2 comparison is still a named Lean *research predicate*, not a compiled theorem.
- `.../LiouvilleWeightedPrefixDoubling.lean`, blob `d3e65086541a95b27edf6faad3d47a956dce92c7`: exact sign reversal and negative doubled Gram packet; the non-doubling remainder and older named `WeightedPrefixSquareShiftIdentity` retain their open source status.
- Prior review `documentation/mathematics/_support/reviews/weighted-prefix-2adic-doubling-obstruction-2026-10-31.md`, Git blob `7298ccaff9f41be886d655c503b7effbecb4eaa7`: one-prime adversarial model and linear-energy *lower* bound `J_{4^k}[a_2]≥4^k/432`. The present document sharpens that model, subtracts its exact drift and returns to actual Liouville source signs.

The classical analytic bridge is the Liouville Dirichlet series `ζ(2s)/ζ(s)` and the established RH equivalence `L(N)=O_ε(N^{1/2+ε})` for every positive ε. See DLMF §27.4.7, https://dlmf.nist.gov/27.4, and Peter Humphries, *The Distribution of Weighted Sums of the Liouville Function and Pólya's Conjecture*, source at https://discovery.ucl.ac.uk/1569441/1/Humphries_the_distribution_of_weighted_sums_of_the_liouville.pdf. The equivalence is an external classical theorem; no local Lean import or new proof of it is asserted.

## 2. Sharp centering of the adversarial two-adic model

For n≥1 put `a₂(n)=(-1)^{v₂(n)}`; set `A₂(0)=0`, `A₂(N)=sum_(1≤n≤N) a₂(n)` and `e₂(N)=A₂(N)-N/3`. Since odd n contribute +1 and `a₂(2m)=-a₂(m)`, direct partition gives

    A₂(2m)   = m - A₂(m),
    A₂(2m+1) = m+1 - A₂(m),
    e₂(2m)   = -e₂(m),
    e₂(2m+1) = 2/3 - e₂(m).

The last two equations hold at m=0 as well, with e₂(0)=0. Strong induction on dyadic depth therefore proves, for every r≥0 and `2^r≤N<2^(r+1)`,

    |e₂(N)| ≤ (2/3)(r+1).

(The r=0 case is N=1, e₂(1)=2/3. Each halving reduces the dyadic depth by exactly one.)

The exact telescope `1/[k(k+1)]=1/k-1/(k+1)` gives

    sum_(2^r≤k<2^(r+1)) 1/[k(k+1)] = 2^(-r-1).

Thus the **entire**, not merely sampled, centered weighted-square energy is bounded by

    K₂ := sum_(k≥1) e₂(k)^2/[k(k+1)]
       ≤ (4/9) sum_(r≥0) (r+1)^2 / 2^(r+1)
       = (4/9) * 6 = 8/3.

This supplies an unconditional all-horizon theorem:

    0≤sum_(k=1..N) e₂(k)^2/[k(k+1)] ≤ 8/3.         (A)

The upper bound is not optimized; it is completely explicit and has **no N, logarithmic or power loss**. It is stronger than the previous `J_N[a₂]≥N/432` lower bound and, together with `A₂(N)=N/3+e₂(N)`, yields `J_N[a₂]/N→1/9` (for example by weighted Cauchy–Schwarz, since the centered norm is bounded and the deterministic N/3 norm grows like sqrt(N)/3).

## 3. The **actual** signed odd-prime parity statistic

For n≥1 write n=2^j m with m odd, and let `Ω(m)` count prime factors of m **with multiplicity**. Define

    R₂(N) = sum_(1≤n≤N, Ω(oddpart(n)) odd) (-1)^(v₂(n)).

This is signed even after restricting to odd-prime parity. Its signs are not random choices or seven decorative visualizer channels. The actual Liouville function satisfies the exact pointwise identity

    λ(n) = (-1)^(v₂(n)) * (-1)^(Ω(oddpart(n)))
         = a₂(n) - 2*a₂(n)*1[Ω(oddpart(n)) odd].

Summing at the complete integer cutoff proves, without an arithmetic estimate,

    L(N) = A₂(N) - 2 R₂(N)
         = Q₂(N) + e₂(N),
    Q₂(N) := N/3 - 2 R₂(N).                          (B)

Equivalently, let `B(y)=#{m≤y : m odd, Ω(m) odd}`. Since every positive n has a unique representation 2^j m with odd m,

    R₂(N) = sum_(j≥0, 2^j≤N) (-1)^j B(floor(N/2^j)).

This is a **finite signed dyadic lifting of the actual odd-prime parity count**, retaining the complete cutoff and every scale. The alternating signs must not be replaced by absolute values.

## 4. Uniform weighted norm return: no quantitative loss in the all-rate exponent

Set `w_k=1/[k(k+1)]`, and define

    Jλ(N) = sum_(k=1..N) w_k L(k)^2,
    JQ(N) = sum_(k=1..N) w_k Q₂(k)^2.

By (B), finite-dimensional Minkowski in the positive weighted Euclidean norm, followed by (A), gives **for every N≥1**:

    |sqrt(Jλ(N)) - sqrt(JQ(N))|
       ≤ sqrt(sum_(k≤N) w_k e₂(k)^2)
       ≤ sqrt(8/3).                                  (C)

In particular, squaring the elementary inequality `(x+y)^2≤2x^2+2y^2` gives the fully explicit two-sided inequalities

    Jλ(N) ≤ 2 JQ(N) + 16/3,
    JQ(N) ≤ 2 Jλ(N) + 16/3.                         (D)

Hence `∀η>0 ∃Cη ∀N: Jλ(N)≤Cη(N+1)^η` if and only if the **same** all-positive-rate assertion holds with JQ in place of Jλ. The finite constants merely change to `2Cη+16/3`, because `(N+1)^η≥1`.

On real intervals, the original Liouville prefix is constant on each `[k,k+1)` and

    J(log(N+1)) = Jλ(N)

for all integers N≥1. Conversely the monotonicity of the nonnegative moment J(T), and bounding e^T by its adjacent integers, transfer every-positive-rate discrete bounds to all real T≥0, with the elementary constant factor ≤2^η. Thus the **unchanged** existing `WeightedPrefixSquareAllRate` has a quantitatively equivalent signed odd-prime formulation:

    ∀η>0 ∃Cη≥0 ∀N≥1,
      sum_(k=1..N) [k/3 - 2 R₂(k)]²/[k(k+1)] ≤ Cη (N+1)^η.  (E)

This is an exact arithmetic reduction. The right side of (E) is **not proved**; (A) and (D) do not by themselves imply it. The continuous/discrete identity is established analytically here, but remains a named unelaborated proposition in the existing Lean source; do not claim that this note supplies its kernel acceptance.

Using the classical RH/Liouville summatory equivalence and `e₂(N)=O(log(N+1))`, one also obtains the pointwise criterion

    RH ⇔ ∀ε>0, R₂(N) = N/6 + Oε(N^(1/2+ε)).      (F)

This is NOT an unconditional proof of the estimate in (F). It pinpoints the true odd-prime sign cancellation needed: the signed count must track its deterministic N/6 main term down to the square-root scale at every cutoff, not merely have the PNT-level asymptotic `N/6+o(N)`.

## 5. No fixed finite set of negative odd primes can furnish the all-rate supplier

The two-adic model is the first case of a more general *finite-prime sign truncation*. Let P be any fixed finite set of primes (possibly empty), and define

    a_P(n)=(-1)^(sum_(p∈P) v_p(n)),       n≥1.

All unmarked primes have coefficient +1. This should **not** be confused with the earlier `P`-free Liouville filter of the *actual source*: here `a_P` is a different multiplicative sequence. For P containing 2 it obeys `a_P(2n)=-a_P(n)` and is completely multiplicative with ±1 values.

Define the multiplicative convolution coefficient `b_P`: `b_P(1)=1`, `b_P(p^j)=2(-1)^j` for p∈P and j≥1, and `b_P(q^j)=0` for unmarked primes. The identity

    1 + sum_(j=1..v) 2(-1)^j = (-1)^v

at every marked prime yields the complete divisor identity

    a_P(n)=sum_(d|n) b_P(d).

Its absolutely convergent finite-Euler-product constants are

    δ_P = sum_(d≥1) b_P(d)/d
        = product_(p∈P) (p-1)/(p+1) > 0,
    C_P = sum_(d≥1) |b_P(d)|/sqrt(d)
        = product_(p∈P) (1 + 2/(sqrt(p)-1)) < ∞.

Write `A_P(N)=sum_(n≤N)a_P(n)`. Finite Fubini and the floor inequality give

    A_P(N) = sum_(d≤N)b_P(d) floor(N/d),
    |A_P(N)-δ_P*N|
      ≤ sum_(d≤N)|b_P(d)| + N sum_(d>N)|b_P(d)|/d
      ≤ 2 C_P sqrt(N).                             (G)

No prime number theorem or asymptotic mean-value theorem is used. Because `|A_P(k)|≤k` and `0<δ_P≤1`, square differences give

    |A_P(k)^2 - δ_P² k²| ≤ 4 C_P k^(3/2).

Summing with the original weights, and using `sum_(k≤N)k^(-1/2)≤2sqrt(N)`, proves the explicit asymptotic

    |sum_(k=1..N) A_P(k)^2/[k(k+1)] - δ_P² N|
       ≤ (8 C_P + 2) sqrt(N),

    lim_(N→∞) J_N[a_P]/N = δ_P² > 0.               (H)

Therefore *every fixed finite prime-sign truncation* fails the all-positive-rate weighted-prefix criterion at all exponents 0<η<1, despite satisfying complete multiplicativity, and despite agreeing with λ(n) at all n whose prime factors lie in P. If P includes every prime at most some fixed cutoff X, then a_P(n)=λ(n) for each n≤X, but the large-N behavior for that fixed P still has a positive linear slope. The dependence of δ_P,C_P on P is essential; pointwise finite agreement is not an all-horizon certificate.

For examples, with P={2}, `{2,3}`, `{2,3,5}`, respectively, δ_P=1/3, 1/6, 1/9 and the limiting energy slopes are `1/9`, `1/36`, `1/81`. Every finite set retains a positive slope. Only genuinely growing, source-complete odd-prime information can overcome this obstruction.

More generally, define `E_P(N)=L(N)-A_P(N)+δ_P*N`. By (G), the **entire** weighted norm of `L-E_P=A_P-δ_P*N` is at most `2C_P sqrt(sum_(k≤N)1/(k+1))`. It follows that the all-positive-rate weighted square bound for E_P is equivalent to the original target, with at most a logarithmic additive energy cost. The P={2} case (A)--(D) sharpens this logarithmic bound to a **universal constant**.

## 6. Cross-checks, novelty boundary, and exact next proof obligation

Independent exact-integer/rational fixtures were run over n≤2048 and finite prime sets {2}, {2,3}, {2,3,5}, {3,5}. The checker validates the 2-adic recurrence, dyadic shell bound, the exact λ-to-odd-parity correction, the finite squared-energy comparisons, the divisor convolution, and its finite Fubini identity; output is archived in the conversation as `finite_prime_sign_rh_reference.py`. These finite tests do not substitute for the complete analytical proof in sections 2--5 and are NOT Lean compilation or kernel acceptance.

The finite Euler-product calculations are elementary instances of classical multiplicative mean-value techniques; no priority or novelty claim over those methods is made. The original `WeightedPrefixSquareAllRate` retains the RH-equivalent difficulty of the true Liouville signs. The new contribution is the explicit **constant-loss centered two-adic discrepancy return** and the exact demonstration that **every fixed finite odd-prime sign correction still carries a positive linear energy slope**.

The noncircular arithmetic frontier is exactly (E), equivalently (F). Any numerical or formal proposal must handle all odd-prime parities and all cutoffs, preserve the signed alternating dyadic lifts, and prove a genuinely source-specific square-root-scale cancellation or all-positive-rate weighted-energy bound. Neither the Anthropic positive zero-proportion theorem nor a fixed quasi-RH exponent nor random independent channel phases proves (E). Do not create `hQ` by assuming `WeightedPrefixSquareAllRate`, RH, or the conclusion of an equivalent model. No root imports, toolchain pins, existing theorem types, historical receipts, Noe scheduler/controller or execution authority are changed.

**Status:** Analytical identities and inequalities (A)--(H): mathematically proved; finite fixture checks passed at their specified scope; `WeightedPrefixSquareAllRate`: OPEN; RH: OPEN. No new Lean declaration in this increment. Existing `COMPILATION_NOT_RUN`, `EXPECTED_TYPES_NOT_RUN`, `FRESH_KERNEL_NOT_RUN`, `TRANSITIVE_AXIOM_AUDIT_NOT_RUN` statuses remain applicable, unchanged.
