# Pinned prime-smooth Euler moments, cofactor count, time-local Gram and high-incident all-rate

Local attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Date: 2026-11-01. Source-only Lean proof candidates; parser, compilation, kernel replay and transitive axiom audit NOT_RUN.

## Source and exact mathematical claim

The original source `MoebiusHighSmoothIncidentDyadic.lean` has immutable Git blob `8380317cf1a5259c46e1548940cf324accbacbde`, and the original `MoebiusHighSmoothDensePairs.lean` source blob is `cef7c06a794cec1cef423c2ebfa3b6d0221087ad`. Four new modules preserve `balancedBlock X T`, the original signed `taggedMoebius` coefficients, physical-time `pickupResponseGram`, literal `m ≠ n`, both orientations and arbitrary additive-gap mask. No other source is redefined.

For a finite genuine-prime bank `P` of cardinal `r`, `X≥1`, `T=log(2X)`, and high indices with a positive `P`-smooth divisor `d>Q=2X exp(-2 sqrt T)`, the mathematical proof gives

```
card H ≤ exp(2 sqrt T) * (1+T/log 2)^r
|pickupResponseGram(T,m,n)| ≤ 4 log 2 / X, m,n∈balancedBlock X T
|D_HH,ab + D_HL,ab + D_LH,ab| ≤ 8 log 2 * exp(2 sqrt T) * (1+T/log 2)^r
```

Therefore the SAME-SHELL high-incident subpacket is `O_{P,epsilon}(exp(epsilon T))` for every `epsilon>0` and fixed `P`, independent of original Boolean source tags `a,b` and finite mask `A`. The complete low/low rectangle and all cross-shell packets remain outside this bound. It does not prove the complete RH-strength endpoint inequality or the Riemann Hypothesis.

## Four source proof candidates and intended old target types

1. `MoebiusFiniteSmoothEulerMomentsProof.lean`: proves an attempted bridge `bankSmooth P d ↔ d∈Nat.factoredNumbers P` and finite nonnegative subgroup comparison to `EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_geometric`; uses positive completely multiplicative reciprocal and reciprocal-square-root weights. Intended old proposition: `FiniteSmoothEulerMoments B`, both `W_P` and `V_P` and all prime powers included, no Mertens premise.
2. `MoebiusHighSmoothCofactorCountProof.lean`: uses `Nat.equivProdNatFactoredNumbers` to induct over genuine selected primes and `Nat.log 2 N` for their exponent budget. An original high index is represented by a positive smooth divisor `d` and natural cofactor `n/d`. Intended old numerical target: `HighSmoothCofactorCountTarget`.
3. `MoebiusHighSmoothTimeLocalGramProof.lean`: preserves the exact closed-birth response formula, shows original shell responses vanish before `log X` and have amplitude at most `2/sqrt X`; integrates the product on a log-2 time window. Intended target: `DyadicTimeLocalGramTarget`.
4. `MoebiusHighSmoothAllRateProof.lean`: preserves exact `HH+HL+LH`, proving attempted cardinal algebra and scalar inequalities using `highIncident_abs_le_of_support_count`. Intended old target: `HighIncidentSameShellAllRateTarget`.

The source-level proof attempts are fully written `theorem` bodies, not merely `Prop` declarations. They have not yet elaborated in pinned Lean, so no target should be marked `PROVED` or `ACCEPTED` on this evidence.

## Verification and next acceptance gate

Pinned environment: Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Local finite diagnostics rerun: 70 original carrier/cofactor cases, 5,520 original physical-time Gram fixtures, 45 paired Euler moments and 720 signed masked fixtures PASS; these are noncertifying finite tests.

Authored proof sources were scanned for `sorry`, `admit`, `axiom`, `unsafe` and `native_decide` proof steps; none were authored. This is not a transitive trust audit. Native Lean, Lake and Elan executables are unavailable in the current runtime and network installation failed. Source proof candidacy cannot substitute for pinned module elaboration, expected declaration-type checks, fresh independent kernel replay and transitive axiom/opaque/native/unsafe inspection.

Verification work: compile the four modules and their *complete import closure* in dependency order; repair any mismatched pinned Mathlib APIs, without introducing research assumptions; check old proposition conclusion types, then perform fresh kernel and transitive trust replay. Other recent `main` commits cannot silently supply acceptance for these changed bytes. Preserve all `NOT_RUN` facets until evidence exists.
