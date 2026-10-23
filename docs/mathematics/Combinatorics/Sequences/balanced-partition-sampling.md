# Balanced partitions and uniform subset sampling

For a finite type `A` and `0 < m ≤ |A|`, choose uniformly among all ordered partitions with part sizes `q+1` for the first `r` parts and `q` for the others, where `q = |A| / m` and `r = |A| % m`. Independently choose one uniform element from each part. The resulting unordered set is exactly uniform among the `m`-element subsets of `A`.

The [Lean module](../../../../GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean) proves this law for every event on the output set. `output_event_probability` is more general: it allows any positive prescribed part sizes summing to `|A|`. The balanced case discharges positivity and existence from the numerical range. `balancedSizes_sum` proves the quotient/remainder identity for the actual list of part sizes.

## Counting proof

`Partition sizes` includes every function from `A` to the `m` part indices with the prescribed fiber cardinalities. `Selection P` is the full Cartesian product of those fibers. `Sample sizes` retains both the complete partition and the selected elements. An explicit equivalence with the dependent sum of selection spaces proves its cardinality.

Every partition has exactly `∏ i, sizes i` selections. `partition_probability` therefore proves that its retained partition marginal is uniform. `selection_rectangle_probability` proves independence of the coordinates by counting rectangular events in the Cartesian product. `jointProbability_eq_partition_average` is the exact two-stage mixture identity; it does not assume a probability law as a structure field.

Selected elements from different fibers are distinct, so the output has cardinality `m`. Relabeling `A` by a permutation induces an explicit bijection of sample spaces. Every two `m`-element output sets have equally large fibers. Counting the fibers then proves `output_probability` for individual subsets and `output_event_probability` for arbitrary events. Feasible partitions and samples are constructed rather than assumed.

The [conditional part-exposure law](conditional-partition-exposure.md) separately proves that, after fixing a retained element’s part index, its other part members form a uniform fixed-size subset of the other population elements. This is the sampling law used for partition concentration.

## Scope and evidence

This closes the uniform-sampling assertion at the start of Section 3 of Pham and Sauermann, [arXiv:2602.15797v1](https://arxiv.org/html/2602.15797v1), February 17, 2026. The balanced sizes are specified by the proved quotient/remainder formula, with the larger parts first. No primality, group operation, Fourier estimate or random-search termination premise is needed.

The [Fourier integration](../../Analysis/Fourier/partition-character-energy.md) transports this law to the existing fixed-size `ZMod` subset-sum distribution. The selected receipt (artifact:gitblob:38df3f8e75765ea8127b6251f9212a34061d97b7) binds the source, pinned toolchain and exact owned-declaration audit. The progress report (artifact:gitblob:1d55a3fd3fe8a99104e48124b66e9a64d302b6ef) records the remaining analytical obligations and repository-wide check results.

Original sampling argument: Huy Tuan Pham and Lisa Sauermann. Human mathematical direction: grwtsk contributors. Lean implementation: OpenAI Codex. Mathlib authorship and licenses retained; no originality claim.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean`](../../../../GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 42 |
| Theorem/lemma commands | 23 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
