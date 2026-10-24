# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.BoundedWordPartitions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38c1cead3ac1680d2f925bda36bc940d8d0b3648",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38c1cead3ac1680d2f925bda36bc940d8d0b3648`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.TakeDrop` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chunks](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/chunks--574c8c96a3e928e329f4f037.md) | 16 | `declaration-track:574c8c96a3e928e329f4f037c2f6b1f5dee86112303f561810209b7aefd37a6f` |
| 2 | `theorem` | [flatten_chunks](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/flatten-chunks--f35e130b64fc034dd49cbc12.md) | 23 | `result-track:f35e130b64fc034dd49cbc126067020a6fc011f807449f152153a2423f54eed7` |
| 3 | `def` | [shard](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/shard--eae969f2f43d50519fd29c57.md) | 41 | `declaration-track:eae969f2f43d50519fd29c57569c00b0e40fc6f72afb5ee9bf4a56426d3ecf5d` |
| 4 | `theorem` | [flatten_shard](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/flatten-shard--c1e9e34a0077725c68f25526.md) | 43 | `result-track:c1e9e34a0077725c68f255267dfe78682a76561ff84e0f9b414e8388958dc248` |
| 5 | `theorem` | [chunks_length_le](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/chunks-length-le--79b3b697ab64734f7a61b758.md) | 46 | `result-track:79b3b697ab64734f7a61b758fb72ada7bbe7fc1d1a60600486589e6bcd41cb8f` |
| 6 | `theorem` | [shard_count_le](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/shard-count-le--d9ac1ab349e43c37cbe82087.md) | 57 | `result-track:d9ac1ab349e43c37cbe82087ee2ecc4a354f71ce043b833d8b7f7a4034306132` |
| 7 | `theorem` | [member_chunks_length_le](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/member-chunks-length-le--b137ee0ece6ed98fd85f1bf3.md) | 60 | `result-track:b137ee0ece6ed98fd85f1bf35bd6fbed01b8b58c65657314a729317817d38a9e` |
| 8 | `theorem` | [member_shard_length_le](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/member-shard-length-le--79ee702be44d23d1d7310330.md) | 73 | `result-track:79ee702be44d23d1d73103309e9e258651cdf2c8a94919112d9f4c4841f0506e` |
| 9 | `theorem` | [member_chunks_ne_nil](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/member-chunks-ne-nil--0dc791a683dcbaac2331325b.md) | 77 | `result-track:0dc791a683dcbaac2331325ba9fba389e5ace445e89710c13fe51b90002a06d0` |
| 10 | `theorem` | [member_shard_ne_nil](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/member-shard-ne-nil--3753a52de2d3c5a7ed37c35e.md) | 90 | `result-track:3753a52de2d3c5a7ed37c35eb5ef415e297ec44feb927a3a82896692f7e6cbb9` |
| 11 | `theorem` | [count_flatten_shard](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/count-flatten-shard--e0de9354034799ed284526bc.md) | 95 | `result-track:e0de9354034799ed284526bc0e77742103e994ad16d5a0a5d67aa32f02af58df` |
| 12 | `theorem` | [repartition](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/repartition--04d3190b82653de0aa4575c9.md) | 99 | `result-track:04d3190b82653de0aa4575c906807158c59d63e8038869ffa8d1228d4fc0d71e` |
| 13 | `def` | [cost](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/cost--9ae1fce1c8a327fedb105a0a.md) | 104 | `declaration-track:9ae1fce1c8a327fedb105a0ab1d3a05cb0589b82eabe04a2e3cf2fed958e84fc` |
| 14 | `theorem` | [cost_le_length_mul](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/cost-le-length-mul--dc2450f7b3ff6281c6aec2f7.md) | 108 | `result-track:dc2450f7b3ff6281c6aec2f70e91b1d30946d4dab1d13956a75a99f097056638` |
| 15 | `theorem` | [member_shard_cost_le](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/member-shard-cost-le--43507b9f448924e8430625e6.md) | 123 | `result-track:43507b9f448924e8430625e6ceecbd09136f177c0512026c2bfee41b14ee6715` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/example--c0fb4ef2e4c7cc157ff7df1b.md) | 137 | `declaration-track:c0fb4ef2e4c7cc157ff7df1bdccde65a58b6e337dac4e3f0534f94b8079df982` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/example--bc4193fc6516c6bd86a5a697.md) | 138 | `declaration-track:bc4193fc6516c6bd86a5a69722eefb27056a42dfeaf2eb71b4f533abfaaf0fbc` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean/declarations/example--7d01692769f2acc1f5bb79ce.md) | 140 | `declaration-track:7d01692769f2acc1f5bb79cee266579c6961abe5cee832af720a1e637e0f128e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
