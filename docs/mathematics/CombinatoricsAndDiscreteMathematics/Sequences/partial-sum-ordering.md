# Partial sum ordering and bounded interval repair

For a list `xs` in an additive commutative group, `prefixSum xs k` is the sum of its first `k` entries. `ValidPartialSumOrder xs` says the nonempty post-step sums have no duplicates. `RootedValidPartialSumOrder xs` additionally includes the initial zero. These differ: `[1,4]` modulo 5 has post-step sums `[1,0]` and is valid, but is not rooted valid.

The exact interval characterization checks inclusive, one-based bounds. Ordinary validity excludes zero-sum intervals whose left endpoint is at least 2; rooted validity excludes all zero-sum intervals. Singleton intervals are included for arbitrary labels. With nonzero labels the equivalent interval condition only needs lengths at least two. Translation by an initial phase preserves uniqueness. Packet permutations preserve the complete sum, while intermediate sums may change.

## Deterministic repair

The [repair module](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean) uses zero-based `Fin n` positions. Thus the paper's `2 ≤ a < b ≤ n` becomes `1 ≤ a.val ∧ a < b`. `BadRightEndpoints` records precisely these interval defects. `Blocked` uses the two endpoint alternatives after the proposed swap, rather than a collision heuristic.

`goodRepairGeometry_valid_permutation σ D hn hg` is kernel checked for every additive commutative group. Its hypotheses are nonzero labels `hn` and `GoodRepairGeometry σ D`: positive `D`, original bad endpoints before the reserved tail, radius `10D` local density at most `D`, and fewer than `2D` blocked candidates for every admissible partial permutation fixing earlier positions. Its conclusion supplies an actual disjoint swap trace, displacement at most `5D`, preservation of the entire multiset, and ordinary partial-sum validity.

The proof processes original bad endpoints in descending order. It maintains `BadRightEndpoints current ⊆ RemainingOriginalBadEndpoints`. Window availability is proved from finite sets and union-cardinality bounds. Previously used partners are charged injectively to original bad endpoints in the `10D` neighborhood. No conclusion of successful repair is assumed in the geometry definition.

## Checked certificates and finite search

The [certificate checker](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumCertificate.lean) checks primality, replay, the complete multiset, ordered bounded swaps, disjoint supports, distinct nonzero original labels, and final post-step sums. `Fin` positions enforce packet bounds. `checkCertificate_sound` proves validity, permutation, replay and displacement. `diagnoseCertificate_none_iff` connects the precise rejection result to acceptance. Source revision and epoch are metadata until separately checked at the adapter boundary.

`geometry_produces_accepted_certificate` composes deterministic repair with independent checking. The [finite search](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/PrimeCyclicRearrangement.lean) enumerates permutations and has soundness and completeness proofs. Its candidate list has length `n!`; it supplies no asymptotic existence theorem.

## Counterexamples and scope

Kernel proofs reject a zero label, duplicate labels even when their sums are distinct, an excessive swap and overlapping supports. A bounded local swap can introduce a new collision: `[1,2,6]` modulo 7 is valid, while `[2,1,6]` is invalid. The `D=0` window has no repair partner. Neither ordinary validity nor a total sound search implies the stronger rooted or unconditional existence statements.

The deterministic construction follows Section 5 of Huy Tuan Pham and Lisa Sauermann, [On Graham's rearrangement conjecture, arXiv:2602.15797v1](https://arxiv.org/html/2602.15797v1), February 17, 2026. The paper's source-range theorem remains open in this library; the [Fourier guide](../../Analysis/HarmonicAnalysis/FourierAnalysis/subset-sum-laws.md) identifies the missing estimates. The Quanta [exposition](https://www.quantamagazine.org/mathematicians-harness-randomness-to-crack-a-55-year-old-conjecture-20260928/) is secondary.

## Evidence and credit

The selected replay receipt (artifact:gitblob:e01d1ffafea5bb1637c4c890640e68af219b9603) binds exact source bytes, toolchain, Mathlib revision, trust-zero compilation and the owned-declaration audit. The declaration inventory (artifact:gitblob:08c78be73d92de914ca31935d12afd64993d8626) contains elaborated hypotheses and axiom dependencies. Repository-wide structural failures recorded during that run remain in the layout observations (artifact:gitblob:6f9f50dbe9467ff1baeffe847fa44df14b6ad4e8) and documentation replay log (artifact:gitblob:5df6ec3bbb26ebdb5222df5d1172f846d87df41b).

Mathematical source: Pham and Sauermann. Human direction: grwtsk contributors. Lean implementation: OpenAI Codex. Local MIT and upstream Mathlib licensing and authorship are retained.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 27 |
| Theorem/lemma commands | 18 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
