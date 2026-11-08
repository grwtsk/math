# Finite true-prime-bank smooth Euler moments from pinned Mathlib

Date: 2026-11-01. Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

Classification: complete ordinary mathematical proof and Lean SOURCE_PROOF_CANDIDATE. Lean parsing/elaboration, expected types, complete import-closure compilation, fresh kernel replay and transitive axiom/private/unsafe audit are NOT_RUN. No external analytic number-theory theorem, research axiom, `sorry`, RH proof or numerical interpolation is used.

## 1. Exact theorem and source preservation

The existing repository definition `NearSquareRootEulerPrefix.FiniteSmoothEulerMoments B` asks, for every positive integer N, the conjunction

  sum_(1<=d<=N, bankSmooth B.primes d) 1/d
      <= bankReciprocalWeight B.primes

and

  sum_(1<=d<=N, bankSmooth B.primes d) 1/sqrt(d)
      <= bankSquareRootWeight B.primes.

The existing bank is `LiouvilleFinitePrimeSieveOperator.PrimeBand`, whose every member is a **genuine natural prime**. The existing `bankSmooth` is `forall q, q.Prime -> q|d -> q in B.primes`. Both Euler products remain the literal source products:

  W_P=product_(p in B.primes) (1 - (p:Real)^(-1))^(-1),
  V_P=product_(p in B.primes) (1 - sqrt(p:Real)^(-1))^(-1).

Both sums include d=1 and all P-smooth repeated prime powers, as well as squareful original integers. Neither sum contains d=0. No filter on Möbius signs is permitted or necessary.

The new source `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFiniteSmoothEulerMoments.lean` supplies a theorem candidate `finiteSmoothEulerMoments (B:PrimeBand): FiniteSmoothEulerMoments B`, with **no arithmetic proof premise**. This is a proof source at the same original predicate type, not a duplicate replacement predicate.

## 2. Exact pinned Mathlib carrier equivalence

The pinned Mathlib revision is `d13f23b723b8a846827a245b89c10fc7d3f11612` (Lean v4.34.1).

`Mathlib/NumberTheory/SmoothNumbers.lean` blob `57503448dd06ca2fc223a8e71a90a8f6015fce3f` proves the exact theorem

  Nat.mem_factoredNumbers':
    d in Nat.factoredNumbers P <-> (forall p, p.Prime -> p|d -> p in P).

The right side is definitionally the source `bankSmooth P d`. This equivalence is also correct for d=0: no finite prime bank contains all primes, so d=0 is excluded by both predicates. The proof does not silently change the original finite arithmetic inventory.

## 3. Completely multiplicative real weights and the pinned Euler theorem

The source defines two genuine `MonoidHom` objects from the natural-number multiplicative monoid to the real multiplicative monoid:

  f_1(n) = ((n:Real))^(-1),
  f_half(n) = (sqrt(n:Real))^(-1).

They send 1 to 1, and for every pair m,n including zero satisfy

  f_1(m*n) = f_1(m)*f_1(n);
  f_half(m*n) = f_half(m)*f_half(n).

The first follows from cast multiplication and inverse multiplication in a commutative field with zero. The second follows from the **pinned** `Real.sqrt_mul (Nat.cast_nonneg m)` and inverse multiplication. The source proves both nonnegative on all natural labels. At a genuine prime p>=2, 1<p and 1<sqrt(p); hence

  norm(f_1(p))<1,
  norm(f_half(p))<1.

No unproved norm, positivity or partial multiplicativity hypothesis is passed to the Euler theorem.

Pinned `Mathlib/NumberTheory/EulerProduct/Basic.lean`, blob `3c85fa476bd30c5abeb14648fd26786a25fc5bb5`, contains

  EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_geometric

with explicit parameters `f : Nat ->* F`, `forall p prime, norm(f p)<1`, and `s : Finset Nat`. It returns summability and the complete `HasSum` identity

  sum_(d in Nat.factoredNumbers s) f(d)
    = product_(p in s, p prime) (1-f(p))^(-1).

The original `PrimeBand.prime_mem` proves that filtering `B.primes` by primality changes nothing. Consequently both right sides are **exactly** the existing source Euler products W_P and V_P, with no fitted factor or auxiliary bank.

## 4. Finite-sum domination is source-exact

For a fixed N and bank B, form the finite set of subtype indices

  S_N = (Finset.Icc 1 N).subtype (fun d => d in Nat.factoredNumbers B.primes).

The source uses the existing `Finset.sum_subtype_eq_sum_filter`, `Finset.sum_filter`, and the preceding original `bankSmooth` iff factored carrier theorem to identify exactly

  sum_(1<=d<=N) (if bankSmooth B.primes d then f(d) else 0)
    = sum_(d in S_N) f(d).

The pinned `sum_le_hasSum` theorem in `Mathlib/Topology/Algebra/InfiniteSum/Order.lean` (blob `33c7a42409953218c559973feeefd441eca9f5d5`) bounds every finite sum of nonnegative values by the limit of the full `HasSum`. Thus for each of the two weights

  sum_(d in S_N) f(d) <= product_(p in B.primes) (1-f(p))^(-1).

This is the required theorem without **any** Mertens, PNT or RH premise. Overlapping prime-factor multiplicities are included in the infinite factored-number sum exactly once per natural d; the product accounts for all exponents through independent geometric series.

For the empty bank, Nat.factoredNumbers empty is precisely {1}; both bounds become 1<=1 for N>=1. Neither the zero case nor repeated powers creates an exceptional denominator.

## 5. Original downstream consumers

The new source provides these public candidate declarations:

- `bankSmooth_iff_mem_factoredNumbers`, the literal original carrier identification.
- `finite_bankSmooth_reciprocal_le` and `finite_bankSmooth_invSqrt_le`, each for every natural N (stronger than N>=1).
- `finiteSmoothEulerMoments`, exact original proposition with no hypotheses.
- `highSmoothCountFormalizationTarget`, exact previously open target, by applying the published conditional `HighSmoothDivisorCount.highSmoothCountTarget_of_finiteMoments` to the new theorem.
- `highSmooth_card_unconditional`, source-exact bound for all finite B, X>=1 and any real T:
    #highSmoothBlock B X T <= sqrt(2X)*exp(sqrt(log(2X)))*V_P.
- `nearSquareRoot_from_classical_without_Euler_premise`, which removes ONLY the finite Euler moment argument from the previously published conditional real-quotient near-square-root consumer. Its independent `ClassicalMertensLogPowerInput` and `NearSquareRootEulerFormalizationTarget` are **still explicit** and NOT claimed proved.

The original physical Möbius waveform, signed two-coordinate Gram, complete high/low partition, original cutoff Q, prime labels, every pair orientation and diagonal exclusion are unchanged. No root import or toolchain pin has been edited.

## 6. Finite diagnostic and hostile checks

A new Python reference `/mnt/data/moebius_finite_smooth_euler_preflight.py` was run with 85 decimal-digit mpmath and exact Python `Fraction` reciprocal arithmetic, for seven genuine finite banks including empty, N=0..400, and multiplicativity checks m,n=0..74.

19,913 checks passed: 2,807 exact carrier equivalences, 2,807 exact-rational reciprocal comparisons, 2,807 high-precision half-moment comparisons, 5,625 exact multiplicativity checks, 5,625 sqrt multiplicativity comparisons, 30 genuine prime geometric checks, and 212 repeated-prime-power inclusion cases.

Script SHA256 `b27fcf608cf8f27393c0f2d2866db8a8f8d0613cc5ed8035599c6eb08f872516`; output JSON SHA256 `a4d9d1e34d71ee39fc9719e1466bcb62c413cd14b7a5dd2211da1670606d2b85`. Finite floating computations are not certified intervals or all-N mathematical proofs; Lean's kernel has not been invoked. Source comments or the absence of `sorry` are not acceptance evidence.

## 7. Verification and remaining mathematics

Required exact-source checks:

1. Run pinned Lean v4.34.1 / Mathlib d13f23b... full importing-module compilation, including the existing high-smooth count source and quotient bridge. Check the exact types of all the public source declarations, especially the unconditional inhabitant of `FiniteSmoothEulerMoments B` and the original `HighSmoothCountFormalizationTarget`.
2. Fresh independent kernel replay, transitive axiom/private/opaque/unsafe audit, dependency and toolchain hash binding. Reject `sorryAx`, any unapproved research axiom, omitted modules or weakened proof-premise signatures.
3. If compilation reveals mismatched pinned API or coercion rewrites, correct only the proof script and rerun exact revised-source verification; do not reinterpret the underlying arithmetic theorem.
4. The next mathematical target is `HighSmoothDenseFormalizationTarget`: derive the actual original signed high/high masked Gram bound from the now source-scripted count and the source `taggedMoebius_abs_le_one` plus a physically correct causal Gram upper. This remains open in Lean.
5. The all-positive-rate signed low/low and surviving high/low matched long-gap arithmetic estimate, growing-bank V_P control and canonical RH remain open; the Euler positivity here cannot manufacture them.

**Status:** ORDINARY MATHEMATICS PROVED; SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; ALL_POSITIVE_RATE_SIGNED_ESTIMATE_OPEN; RH_OPEN.
