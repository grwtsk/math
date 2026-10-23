# Conditional part exposure and finite sampling tails

Let `A` be a finite type and `sizes : Fin m → ℕ` have total size `|A|`. Choose uniformly among all ordered partitions with these exact part sizes. For `a : A`, condition on `a` belonging to part `i`, whose size is positive. Removing `a` leaves the uniform `(sizes i−1)`-element subset of `A \ {a}`.

The [source module](../../../../GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean) proves `conditional_event_probability` for every event on the remainder and `conditional_event_probability_real` in the normalization used for analytic estimates. Only the selected part needs positive size for this identity. Feasibility is constructed from the total-size identity; it is not a field declaring the desired probability law.

## Equal finite fibers

Ambient permutations relabel whole partitions. Every two prescribed whole parts of the same cardinality have equally many partition fibers. Re-inserting `a` identifies each conditional remainder fiber with the whole-part fiber at `insert a R`. These equivalences prove exact event cardinalities and conditional denominators before dividing.

`eventExposureEquiv` partitions every full-partition event by the index of the part containing `a`. `partition_event_le_of_conditional` proves that a common upper bound on every conditional event probability is also an unconditional upper bound. This averaging step assumes all part sizes positive to establish every stratum's positive denominator; it asserts no independence between strata.

## Hypergeometric lower tails

The [finite tail module](../../../../GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean) works with the actual sample space `S.powersetCard k`. For nonempty `S`, `G ⊆ S` and `k ≤ |S|`, it proves

- If `|G| ≥ |S|/4`, then `Pr[|R ∩ G| < k/8] ≤ exp(−k/32)`.
- If `|G| ≥ 3|S|/4`, then `Pr[|R ∩ G| < k/2] ≤ exp(−k/24)`.

The proof double-counts all factorial moments, bounds falling-factorial ratios by powers, and obtains `E[2^|R∩B|] ≤ (1+|B|/|S|)^k`. Finite exponential Markov then supplies both lower tails. The variables are sampled without replacement throughout.

[BalancedPartitionTails](../../../../GRWTSK/Combinatorics/Sequences/BalancedPartitionTails.lean) combines these estimates with the conditional exposure law. If every part has at least `K` other members, its quarter-density and three-quarter-density deficit probabilities are at most `exp(−K/32)` and `exp(−K/24)`. The selected element must be outside the counted success set. Empty remaining populations are treated explicitly, without adding a nonemptiness hypothesis to these partition theorems.

## Controls and application

[PartitionExposureChecks](../../../../GRWTSK/Combinatorics/Sequences/PartitionExposureChecks.lean) uses four actual elements. Two-element subsets have individual membership probability `1/2` and joint membership probability `1/6`, disproving independence. The exact exponential moment is `13/6`, strictly below the binomial comparison `9/4`. Other controls prove the conditional partner probability `1/3` and refute deleting the retained element from an unconditioned fixed part as a universal size law. Omitting the required success density makes the lower-tail bound false.

These generic counting results do not depend on a group, prime modulus or Fourier transform. They supply the exposure and tail inputs in [fixed-size modular anti-concentration](../../Analysis/Fourier/subset-sum-anticoncentration.md), where the geometric hypotheses are proved for the actual far or near success sets.

## Evidence and credit

The selected receipt (artifact:gitblob:09e0a22fec32830ed6c045b7e23a8183f6cb0f0a) records the fresh project closure replay, fatal warnings, exact owned-declaration audit, finite controls and source identities. Its scope is selected; global historical validation is not refreshed.

Source application: Pham and Sauermann, [arXiv:2602.15797v1](https://arxiv.org/html/2602.15797v1), Section 3, Lemmas 3.1 and 3.3. Human direction: grwtsk contributors. Lean implementation: OpenAI Codex. Mathlib authorship and licensing retained.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean`](../../../../GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 27 |
| Theorem/lemma commands | 13 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
