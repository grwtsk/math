# Fixed-size subset sum anti-concentration

For every prime `p`, every finite set `S ⊆ ZMod p` with `n = |S| ≥ 2`, and every natural `m` satisfying

`2²⁴ log n ≤ m ≤ 10⁻³ n / log n`,

each point mass of the uniform `m`-element subset-sum law satisfies

`Pr[Σ(R) = z] ≤ 1/p + 2²⁴/(n √m)`.

This is Theorem 1.3 of Pham and Sauermann, [arXiv:2602.15797v1](https://arxiv.org/html/2602.15797v1), February 17, 2026. The [Lean source](../../../../GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean) proves `prime_subsetSumProbability_le_source_constant` and the uniform absolute-constant formulation `exists_anticoncentration_constant`. Primality supplies the nonzero-modulus instance. The result permits zero in `S`; the sample is a finite set, with no duplicate labels. All point masses share the bound, equivalently bounding their maximum.

## Conditional exposure and lower tails

The [conditional exposure law](../../Combinatorics/Sequences/conditional-partition-exposure.md) counts actual partitions with prescribed part sizes. Conditional on a retained element belonging to part `i`, deleting that element leaves the uniform subset of the other `n−1` elements of size `sizes i−1`. Equal-fiber relabeling proves this law. The conditional strata are then averaged; no independence between parts or between nested subsets is assumed.

`HypergeometricLowerTail.two_pow_intersection_expect_le` proves the exponential-moment comparison by exact factorial moments. For a success set of density at least one quarter, the probability of fewer than `k/8` successes is at most `exp(−k/32)`. For density at least three quarters, fewer than `k/2` successes has probability at most `exp(−k/24)`. These are the actual fixed-size sampling laws. Finite exponential Markov and proved logarithm inequalities supply the constants.

`ZModPartitionConcentration.nonconcentrated_probability_le` proves source Lemma 3.1. Every label has at least `n/4` far labels when the nonzero frequency is outside `D_t`. Balanced part sizes leave at least `n/(2m)` other elements. Except with probability `n exp(−n/(64m)) ≤ n⁻⁹`, every row contributes enough pair energy to force `ψ ≥ 2t`.

`concentrated_probability_le` proves source Lemma 3.3. A retained center witnesses three-quarter concentration; each far label sees enough near labels except with probability `exp(−n/(48m))`. The checked separation factor `1/4`, deterministic tail-energy bound and finite union bound again give `Pr[ψ < 2t] ≤ n⁻⁹`. `outside_smallEnergy_probability_le` combines the cases for every nonzero frequency outside `B_(2000t)`. These concentration results require a nonzero modulus, not primality.

## Expected Fourier layers

Finite Fubini converts the proved pointwise probabilities into the expected number of nonzero frequencies with `ψ < 2t`. Splitting off `B_(2000t)` and applying the [deterministic spectrum bound](partition-character-energy.md) gives the source constant `10000` for the small expected layers. The trivial frequency contributes the separate `1` in `expectedLowCard_le`; it is never included in a nonzero-frequency failure event.

`expectedLayerCard_le_small` gives the small dyadic-layer bounds on the actual balanced-partition space. The weighted sum `Σ √(2^k) exp(−2^k)` is at most `2`. The remaining high layers have at most 22 indices and satisfy `exp(−2^k) ≤ exp(−m/2²²) ≤ n⁻⁴` under the original lower restriction on `m`.

`subsetSumProbability_le_30022` combines the exact [balanced sampling law](../../Combinatorics/Sequences/balanced-partition-sampling.md), the Fourier decomposition, expected small layers and high-layer tail. It proves the stronger numerical constant `30022`; weakening to `2²⁴` gives the stated source theorem. The same constant occurs in the sample-size restriction and conclusion. Generic conditional expectation lemmas remain reusable, but the final theorem supplies all their probability inputs through proved concentration theorems.

## Controls and remaining results

[Finite controls](../../../../GRWTSK/Combinatorics/Sequences/PartitionExposureChecks.lean) prove the conditional partner law `1/3`, exact small hypergeometric probabilities, failure of independent membership indicators, strictness of the binomial moment comparison, and failure when the required density hypothesis is omitted. Intended type-rejection controls check that the final theorem cannot be invoked without its range or prime hypotheses.

[Corollary 1.4](larger-slice-anticoncentration.md) is now derived from Theorem 1.3, the completion bound and exact finite two-stage exposure, with no new analytical premise. Conditional nested-chain anti-concentration, the three Section 5 failure-event estimates, and the asymptotic source-range rearrangement theorem remain open. These results do not establish the full Graham conjecture. Existing deterministic repair, clock, certificate and controller results retain their original hypotheses.

## Evidence and credit

The fresh selected receipt (artifact:gitblob:09e0a22fec32830ed6c045b7e23a8183f6cb0f0a) binds the exact source bytes, pinned Lean and Mathlib identities, fresh local dependency closure, positive and intended negative controls, and every owned declaration's axiom audit. The verification manifest (artifact:gitblob:3839947150c45a8e49eb76cc145e39eaf2b68714) retains the selected batch's verification state at that stage. The publication readback (artifact:gitblob:b8bb75e2ef49d089fe456ff65f9fae9b50c6dabf) verifies its 21 committed source bindings. Subsequent whole-library integration audits are recorded separately in the native receipt index (artifact:gitblob:0057503ff9ab51f004fc9328bd027089b548f277). Historical receipts and frozen bindings retain their original identities.

Original mathematical argument: Huy Tuan Pham and Lisa Sauermann. Human mathematical direction: grwtsk contributors. Lean implementation: OpenAI Codex. Mathlib authorship and licensing retained; no originality claim.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean`](../../../../GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 17 |
| Theorem/lemma commands | 14 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
