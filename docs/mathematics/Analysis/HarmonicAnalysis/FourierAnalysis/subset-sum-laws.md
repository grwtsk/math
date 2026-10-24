# Finite subset sum laws and Fourier inversion

For a finite set `S ⊆ ZMod p`, the uniform fixed-size sample space is `S.powersetCard m`. `subsetSumFiber S m z` contains exactly its subsets with sum `z`. `subsetSumProbability` divides the fiber cardinality by the sample-space cardinality. When `m ≤ S.card`, the denominator is `S.card.choose m` and the probabilities sum to one. Empty sample spaces are assigned zero mass; normalization always has an explicit nonemptiness hypothesis.

The [source module](../../../../../GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean) uses the pinned Mathlib `ZMod.dft`, with its counting-measure normalization. `fourier_inversion` reconstructs every complex function on `ZMod p`. `fourier_nontrivial_mass_bound` separates the zero frequency for a normalized law and bounds each point mass by the sum of the norms of the remaining Fourier coefficients. It holds for any nonzero modulus; primality is not required for this identity.

`completion_fiber_card_le_one` proves that, after exposing a retained subset, at most one remaining label completes a prescribed sum. `completion_probability_bound` gives the corresponding conditional counting bound. The [completion module](../../../../../GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean) closes source Lemma 4.1 for the actual uniform fixed-size law: with `1 ≤ m ≤ |S|`, every point mass is at most `1/(|S|-m+1)`. Its proof counts deletion pairs and proves an injection; it also establishes exact complement symmetry for fibers and probabilities. Uniform finite permutations and nested exposed prefixes are defined explicitly. No independence of nested subsets is assumed.

## Quantitative proof status

[Pham–Sauermann v1](https://arxiv.org/html/2602.15797v1) Theorem 1.3 requires an absolute positive `C`, `|S| ≥ 2`, and `C log |S| ≤ m ≤ 10⁻³ |S| / log |S|`. Its target bound is `1/p + C/(|S| √m)`; Section 3 takes `C = 2²⁴`. The [fixed-size anti-concentration module](subset-sum-anticoncentration.md) now proves this estimate with `C = 2²⁴`, including the conditional exposure, hypergeometric tails, random-partition concentration and expected Fourier layers. Fourier inversion alone remains a separate elementary result.

Corollary 1.4, the nested-chain bound of Corollary 4.2 and the three Section 5 failure probability bounds also remain open. The formal finite union bound and explicit failure events in `PrimeCyclicRearrangement` prove good mass at least `23/25` from three explicit event bounds `1/100`, `3/100` and `1/25`. Its hypotheses must still be discharged for the actual source events. Positive finite mass then supplies a witness and the [deterministic repair theorem](../../../CombinatoricsAndDiscreteMathematics/Sequences/partial-sum-ordering.md) applies.

The [balanced partition sampling law](../../../CombinatoricsAndDiscreteMathematics/Sequences/balanced-partition-sampling.md) and [finite Fourier estimates](partition-character-energy.md) now close the exact fixed-size marginal reconstruction, independent product-selection formulas and exponential character decay. Remaining analytical work includes the larger-slice corollary, conditional chain exposure and admissible-permutation counting. No structure with unproved estimate fields is declared as a supplying theorem.

## Evidence and credit

The selected receipt (artifact:gitblob:e01d1ffafea5bb1637c4c890640e68af219b9603) and elaborated inventory (artifact:gitblob:08c78be73d92de914ca31935d12afd64993d8626) record the checked scope. `PhamSauermannSourceRange` records the exact asymptotic proposition without asserting it. A complete Graham theorem for every prime is not claimed.

Original rearrangement and anti-concentration argument: Huy Tuan Pham and Lisa Sauermann. Human direction: grwtsk contributors. Lean implementation: OpenAI Codex; upstream Mathlib authorship and licenses retained.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Fourier/ZModSubsetSum.lean`](../../../../../GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 22 |
| Theorem/lemma commands | 17 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
