# Finite Abel–Chebyshev proof for the genuine moving-bank inverse-square-root Euler cost

Research date: 2026-11-01 (America/Los_Angeles). Local mathematical authorship: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

Trust boundary: the mathematical argument below is independently inspectable. Its associated Lean is **SOURCE_PROOF_CANDIDATE**, not a compiler-checked or kernel-accepted proof; parsing, expected types, compilation, fresh kernel replay and transitive axioms remain NOT_RUN. No new research axiom, sorry, replacement Möbius coefficient, assumed RH-scale cancellation or silent signed residual is introduced.

## 1. Exact project goal and source

The maintained `grwtsk/math` source `MoebiusGrowingPrimeBankEulerCost.lean`, blob `73e4f1ed05e57ecd3d6c8e5ec9e20649e201d7b1`, defines

  ChebyshevPrimeSqrtMassFormalizationTarget :=
    forall Y:Nat, 256<=Y ->
      sum_(p in Nat.primesLE Y) 1/sqrt(p:Real)
        <= 19*sqrt(Y:Real)/log(Y:Real).

It previously presented that weighted-prime estimate only as a proposition (not a theorem), and `bankSquareRootWeight_le_chebyshev_cut` took an explicit premise of that type. The bank's actual full Euler factor is

  V_B := product_(p in B.primes) (1 - 1/sqrt(p))^(-1),

where B is the original `PrimeBand` and every selected label is an actual natural prime. Unlike an arbitrary fixed constant, V_B may change with physical observation scale T and is paid explicitly.

The new source module `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusChebyshevWeightedPrimeAbel.lean` supplies a **stronger mathematical inequality with coefficient 16**, then an unconditional source candidate inhabitant of the EXACT old coefficient-19 Prop, plus the sharper full bank weight coefficient 64 rather than the old conditional 76. It imports the original growing-bank and dyadic signed-source files without changing their definitions, toolchain, root imports, masks, original time integrals or coefficients.

## 2. Pinned finite Abel inequality replaces the harder integral port

Pinned Lean: `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Exact independent Mathlib sources:

- `Mathlib/Algebra/Order/Chebyshev.lean`, Git blob `1cb4cfa28e40dda627ca610aee01bb36945c7b1d`: `Finset.sum_mul_le_sum_mul_of_sum_range_le`, an Abel **finite partial-sum comparison** requiring `∀k≤N, Σ_{i<k} f(i) ≤ Σ_{i<k} c(i)`, nonnegative g, and g antitone on `Set.Iio N`. It concludes `Σ_{i<N} f(i)g(i) ≤ Σ_{i<N} c(i)g(i)`, with no real derivative or improper integral.
- `Mathlib/NumberTheory/Chebyshev.lean`, blob `0c70e9d4de7e8d454df1a5840334ef3e0dcbf777`: `Chebyshev.theta_eq_sum_primesLE_log` and `Chebyshev.theta_le_log4_mul_x`.
- `Mathlib/NumberTheory/PrimeCounting.lean`, blob `a9d6b59349f06c735cd99e7c5693f017c72282d1`: `Nat.primesLE_eq_filter_Icc_one` and exact true-prime membership.
- The original project source `MoebiusQuantitativeMertensAbsoluteAbel.lean`, blob `b2fe063451f58ff9b892aa164d780bd20279192e`, already supplies `invsqrt_range_sum_le_two_sqrt N`, a finite elementary telescope with no Mertens assumption.
- Pinned `Mathlib/Analysis/SpecialFunctions/Pow/Real.lean`, blob `6e3f62550a758e94a1d513133cd744406b319e41`, supplies `Real.log_le_rpow_div`; pinned `Mathlib/Analysis/SpecialFunctions/Log/Basic.lean` supplies `Real.log_sqrt`.

This removes the need to formalize an interval-integral partial summation for the target and directly uses an already available Mathlib comparison theorem.

## 3. Exact weighted logarithmic prime bound

For every integer N≥0 let

  f(i) = log(i+1) if i+1 is prime, else 0,
  c(i) = log 4,
  g(i) = 1/sqrt(i+1).

Reindexing the true positive integers 1..k via i+1, the source exact `Nat.primesLE` carrier gives

  Σ_{i=0}^{k-1} f(i)
    = Σ_{p≤k, p prime} log p
    = θ(k) ≤ k log 4 = Σ_{i=0}^{k-1} c(i).

Every g(i) is nonnegative and antitone in i. Pinned `Finset.sum_mul_le_sum_mul_of_sum_range_le` therefore implies

  Σ_{p≤N} log(p)/sqrt(p)
    ≤ log 4 * Σ_{n=1}^{N} 1/sqrt n
    ≤ 2 log 4 * sqrt N.                                    (1)

This is unconditional elementary mathematics and preserves every true prime (including p=2). No hypothesized bound on the primes, PNT, Mertens estimate, RH, Dirichlet characters or signed kernel appears.

The new source theorem candidate `prime_log_over_sqrt_le_two_logFour_sqrt N` implements (1) with the pinned Abel API and original shifted finite range. No third-party prime-counting theorem is needed beyond the existing exact θ inequality.

## 4. Split at the genuine real sqrt(Y), no integer cut error

Let Y≥256, y=Y as positive real, K=floor(sqrt y). Split **the exact same** `Nat.primesLE Y` into

  P_lo = {p prime<=Y : p<=sqrt y}, 
  P_hi = {p prime<=Y : p>sqrt y}.

For the lower subset, `p≤sqrt y` implies p≤K, so the original positive integer telescope gives

  S_lo := Σ_{p∈P_lo} 1/sqrt p
       ≤ Σ_{n=1}^{K} 1/sqrt n
       ≤ 2 sqrt K ≤ 2 sqrt(sqrt y).                          (2)

For the upper subset, p>sqrt y implies log p > (log y)/2, hence

  1/sqrt p ≤ (2/log y) * log(p)/sqrt p.

All terms are nonnegative, so (1) bounds the FULL upper subset by

  S_hi := Σ_{p∈P_hi} 1/sqrt p
      ≤ (2/log y) Σ_{p≤Y} log p/sqrt p
      ≤ 4 log4 sqrt y / log y.                              (3)

The lower subset is paid without delicate explicit logarithmic asymptotics by pinned `Real.log_le_rpow_div` at exponent 1/4:

  log y ≤ y^(1/4)/(1/4) = 4 sqrt(sqrt y).

Multiplying by the positive real 2 sqrt(sqrt y)/log y gives

  2 sqrt(sqrt y) ≤ 8 sqrt y/log y.                         (4)

Finally `log 4=2log 2≤2`, by the elementary `Real.log_le_sub_one_of_pos (2)`, so (3) ≤8 sqrt y/log y. Combine the disjoint finite split (2)–(4):

  Σ_{p≤Y} 1/sqrt p = S_lo+S_hi
      ≤16 sqrt y/log y, all Y≥256.                         (5)

This is stronger than the earlier target coefficient 19. The new source theorem `prime_sqrt_mass_le_sixteen` scripts (5); `chebyshevPrimeSqrtMassFormalizationTarget` produces the EXACT old `ChebyshevPrimeSqrtMassFormalizationTarget : Prop` without an external argument. This is **not** an axiom and no sorry is used.

## 5. The improved original Euler-bank penalty

The earlier project's `bankSquareRootWeight_le_exp_primeMass B` (source proof candidate) gives for every real genuine-prime bank B:

  V_B ≤ exp(4 Σ_{p∈B.primes} 1/sqrt p).

If all p∈B.primes obey p≤Y, then B.primes is literally a subset of Nat.primesLE Y. Since every term is nonnegative, (5) gives

  Σ_{p∈B.primes} 1/sqrt p ≤16 sqrt y/log y,

and therefore

  V_B ≤ exp(64 sqrt y/log y).                            (6)

This is a coefficient improvement from conditional 76 to unconditional **mathematical coefficient 64**, at all integer Y≥256. The new Lean source candidates `bankSquareRootWeight_le_exp_sixtyfour` and `bankSquareRootWeight_le_exp_of_nearcritical_budget` respectively establish (6) and, under the exact explicit scaling premise

  64 sqrt(Y)/log Y ≤ ε T,

supply V_B≤exp(εT). No scale-dependent cost is hidden in a constant.

The signed original high/low consumer `original_masked_high_low_nearcritical_budget` retains BOTH signed tag coefficients and exactly the original source rectangle, and gives for T=log(2X)

  |HL| ≤4log2 *sqrt(2X)*exp(sqrt(T)+εT).                (7)

The new `original_masked_low_high_nearcritical_budget` independently applies exactly the same visible bank budget to the **other original ordered LH orientation**, with no symmetry assumption about the source tags. Both distinct ordered signed mixed faces are thus explicitly represented in the new Lean source. Neither this positive Euler bound nor the bank budget proves signed low/low cancellation.

For Y(T) of order T²(log T)^α, α<2, the exponent cost in (6) divided by T behaves like O((log T)^(α/2-1)) and tends to zero. This establishes the **ordinary mathematical** o(T) growth at the previously proposed near-critical bank. The fully quantified asymptotic statement is not yet a kernel-checked Lean theorem.

## 6. Finite independent diagnostics, not theorem acceptance

A new local reference script at `/mnt/data/moebius_chebyshev_prime_mass_abel_preflight.py` ran 90-digit `mpmath` arithmetic and an exact Python integer prime sieve for labels to 25,000. It checked:

- 2,009 actual θ partial-sum bounds from the TRUE prime logarithm coefficient.
- 2,009 finite Abel-weight comparisons, using the full positive-integer reciprocal-sqrt series.
- 2,009 lower real sqrt-cutoff sums.
- 2,009 upper cutoff sums against `(2/log Y)*weighted log prime sum`.
- 2,009 16-coefficient prime mass bounds (Y≥2).
- 1,755 old 19-coefficient targets at Y≥256.
- 49 moving-bank Euler product costs for seven banks, including empty.
- Five standalone empty-bank boundary checks.

Total **11,854 finite comparisons, PASS**, with maximum observed original mass /16-target ratio approximately 0.1739443067 (at Y=661). These are sampled finite float tests, not certified interval enclosures, universal statements, Lean compilation or kernel replay.

Script SHA256 `5223032f7eb045bec4f0317e998e323ff1262574e71b41a032f8068827861c46`. Output `/mnt/data/moebius_chebyshev_prime_mass_abel_preflight_result.json`, SHA256 `b8c296e0fe10f242e88f541f07fd4798c366143215c9e3578b664fa8c4b55650`.

## 7. Remaining verification and arithmetic frontier

The new code is additive and imports the previously published `MoebiusDyadicBirthHighLowLongGap` and `MoebiusGrowingPrimeBankEulerCost`; their existing source declarations were not rewritten or promoted to root imports. The prior core source is STILL pending pinned compilation and kernel replay.

Required exact-source verification:

1. Lean v4.34.1 and Mathlib d13f23... compile the new module together with its complete transitive import closure.
2. Check the full expected theorem types, particularly `prime_log_over_sqrt_le_two_logFour_sqrt`, `prime_sqrt_mass_le_sixteen`, unconditional `chebyshevPrimeSqrtMassFormalizationTarget`, and unconditional `bankSquareRootWeight_le_exp_sixtyfour`.
3. Check the pinned Abel comparison, θ reindexing, `Nat.le_floor`, `Real.log_sqrt`, `Real.log_le_rpow_div`, `Real.rpow_mul`, `Finset.sum_filter_add_sum_filter_not`, source finite reciprocal telescope and all coercion/algebraic steps. If the source fails elaboration, repair it without admitting the desired bound as a premise.
4. Fresh independent kernel replay, complete transitive research axiom/`sorryAx`/private/opaque/unsafe dependency audit and exact source SHA binding. Source no-sorry scan or 11,854 diagnostics do not count as successful kernel verification.

**The RH-strength signed arithmetic remains OPEN:** the original low/low and both ordered matched high/low long-gap sectors, cross-shell reconstruction, and a fixed scale-covering full source all-positive-rate estimate. The improved V_B cost only controls the bank-dependent *positive* majorant; the absolute mixed rate is still 1/2+o(1). No proof of RH follows.

Classification: ORDINARY_FINITE_ABEL_CHEBYSHEV_PROOF_COMPLETE / SOURCE_PROOF_CANDIDATE / MATHEMATICAL_EULER_64_BOUND / LEAN_COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / LOW_LOW_AND_MATCHED_LONG_GAP_ALL_RATE_OPEN / RH_OPEN.
