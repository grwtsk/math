# Character energy of balanced random partitions

The fixed-size subset-sum law is the exact mixture of independent selections from a uniform balanced partition. The [integration module](../../../../GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean) proves this identity against the existing `subsetSumProbability`, using the [generic counting law](../../Combinatorics/Sequences/balanced-partition-sampling.md).

For `S ⊆ ZMod p` and `0 < m ≤ |S|`, `subsetSumProbability_eq_balanced_average` identifies every point mass with the uniform partition average of the corresponding finite product-selection point mass. The partitions, product choices and denominators are retained explicitly. Their laws are proved by counting, not supplied as assumptions.

## Fourier representation and character decay

`ZModIndependentSelection.independent_fourier_formula` proves the exact positive-character formula with normalization `1/p`. Finite product summation proves the character means factor; `independent_cylinder_probability` also proves event independence directly. Taking norms gives the paper's inequality (3.1).

`ZModCharacterEnergy.modularDistance` is the distance of the normalized residue to its nearest integer. The module proves its nonnegativity, bound by `1/2`, an attaining integer, and comparison with every integer. The source constants in the trigonometric bounds are retained: `1 - 20 d² ≤ Re χ ≤ 1 - 2 d²`.

For each nonempty part, the exact norm-square identity sums character differences over ordered pairs. `characterAverage_norm_le_exp_neg_pairEnergy` then proves exponential decay with `pairEnergy = card(part)⁻² ∑ x,y d(χ(x-y))²`. Multiplying these proved inequalities gives source (3.2). Finite-sum distance and energy inequalities prove the source's quadratic growth bound for sums of frequencies.

`ZModPartitionEnergy.partitionEnergy_lower_bound` proves source (3.3). Nonempty balanced parts have size at most `|S|/m + 1`; under `4m ≤ |S|` their squared sizes yield the exact normalization factor `m²/(2|S|²)`. The original logarithmic upper restriction on `m` already implies this numerical condition, so it is not an additional analytical premise.

## Deterministic spectral counting

`ZModSmallEnergySets` defines the global low-energy frequencies `B_t` and their small-energy point sets `Q`. It proves the paper's Lemma 3.5 by finite pair counting and Markov's inequality, Lemma 3.6 by character Parseval and the lower cosine bound, and Lemma 3.7 by the proved squared distance inequality. `CyclicSumsetGrowth` derives the needed iterated sumset bound from Mathlib's Cauchy–Davenport theorem.

`ZModSmallEnergySpectrum.smallEnergyFrequencies_card_le` closes source Lemma 3.4: for prime `p`, `|S| ≥ 10`, real `m,t > 0` and `t ≤ m/2000`, the actual low-energy frequency set has size at most `1 + 200p√t/(|S|√m)`. The floor parameter is constructed and its bounds are proved. The source's larger population restriction implies the stated `|S| ≥ 10`; the original slice range also proves `m ≥ 2²⁴` and `|S| ≥ 2²⁶`.

`ZModConcentratedFrequencies` closes source Lemma 3.2. For positive `m,t` and nonempty `S`, a global energy of at least `2000t` forces a tail outside the radius `16√(t/m)` interval at every center. Its stronger constant `244` implies the source's constant `200`. The actual concentrated-frequency event retains the source's center witness. No random lower-tail estimate follows just from this deterministic result.

## Dyadic decomposition and concentration

`FiniteExponentialLayers.sum_exp_neg_le_layers` bounds a finite exponential sum by its low-energy layer and dyadic layer cardinalities. `part_mass_le_log_layers` derives the exact cutoff `Nat.log 2 m`. `sum_exp_dyadic_le_two` supplies the universal finite exponential-series bound `2`.

The [fixed-size anti-concentration theorem](subset-sum-anticoncentration.md) now completes the conditional exposure law, finite hypergeometric tails, source Lemmas 3.1 and 3.3, actual expected layer bounds, and parameter-dependent summation. Its final bound is `1/p + 2²⁴/(|S|√m)` under the original Theorem 1.3 hypotheses. All analytical inputs are proved. Corollary 1.4, nested-chain estimates and the Section 5 event bounds remain open; the [finite subset law guide](subset-sum-laws.md) records these boundaries.

## Evidence and credit

Source: Pham and Sauermann, [On Graham's rearrangement conjecture, arXiv:2602.15797v1](https://arxiv.org/html/2602.15797v1), Section 3. The selected receipt (artifact:gitblob:38df3f8e75765ea8127b6251f9212a34061d97b7) and elaborated inventory (artifact:gitblob:d34132fa5a881c1da75d8ae3efd0094af83d773a) bind every checked theorem and its actual hypotheses. The verification manifest (artifact:gitblob:1d55a3fd3fe8a99104e48124b66e9a64d302b6ef) separates selected kernel checks from repository-wide failures.

Human mathematical direction: grwtsk contributors. Lean implementation: OpenAI Codex. Original paper and upstream Mathlib attribution and licensing retained.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean`](../../../../GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 17 |
| Theorem/lemma commands | 13 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
