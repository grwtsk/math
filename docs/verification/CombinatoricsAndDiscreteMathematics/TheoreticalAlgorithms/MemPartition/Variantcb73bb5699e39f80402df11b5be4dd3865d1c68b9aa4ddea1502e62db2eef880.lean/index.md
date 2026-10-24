# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemPartition.Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94c1f4dca2984279e633f1fad821856c3a7e0cc4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94c1f4dca2984279e633f1fad821856c3a7e0cc4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/mempartition--6810fcc94fecc8bb15c78420.md) | 39 | `declaration-track:6810fcc94fecc8bb15c7842071ce6f314445db79a13c5b48a077d3e7868885b1` |
| 2 | `lemma` | [memPartition_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/mempartition-zero--fc7c772fe23773f393224e8e.md) | 44 | `result-track:fc7c772fe23773f393224e8e8f9a8348f3fdb8780059f601da7d5235a5ed85b4` |
| 3 | `lemma` | [memPartition_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/mempartition-succ--55a979e54ade9334f57774c3.md) | 46 | `result-track:55a979e54ade9334f57774c3b2fd620b8dda03ab6db4e3c764598b71301c8c28` |
| 4 | `lemma` | [disjoint_memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/disjoint-mempartition--cf68504ee6368d982118918c.md) | 50 | `result-track:cf68504ee6368d982118918c8cd27a9d361fdc06b290d103412ef6d7b1a46059` |
| 5 | `lemma` | [sUnion_memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/sunion-mempartition--011c942a853a1842c24c9909.md) | 74 | `result-track:011c942a853a1842c24c99093be22fe0f1005b37f59a666462665b31109c88ae` |
| 6 | `lemma` | [finite_memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/finite-mempartition--9016829b69184572f18395b9.md) | 88 | `result-track:9016829b69184572f18395b9d8a430b7836560c65ad204e9f7591f67d94e5b41` |
| 7 | `instance` | [instFinite_memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/instfinite-mempartition--00605b3623326173fecb25b4.md) | 100 | `declaration-track:00605b3623326173fecb25b44b1f761498d589abf1340c90673b2cbda1f80bbb` |
| 8 | `instance` | [instFintype_memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/instfintype-mempartition--07632fd21fa83bb836b63b54.md) | 104 | `declaration-track:07632fd21fa83bb836b63b54bdea448ea7daa935475e5657956827db153e74da` |
| 9 | `def` | [memPartitionSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/mempartitionset--72fc816cf41c5f94c4a297f8.md) | 109 | `declaration-track:72fc816cf41c5f94c4a297f836fb215963b53199067f6043ef394cde1f923ec8` |
| 10 | `lemma` | [memPartitionSet_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/mempartitionset-zero--3c31fe765c74d1882dd76208.md) | 114 | `result-track:3c31fe765c74d1882dd76208f78d36f1e79fdf8daba77d8bc70c0a1053b7a0bd` |
| 11 | `lemma` | [memPartitionSet_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/mempartitionset-succ--af2d61f6dcaa9170ebc297d7.md) | 117 | `result-track:af2d61f6dcaa9170ebc297d702b3d229bcd625b8ac09c896036b5e5938672801` |
| 12 | `lemma` | [memPartitionSet_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/mempartitionset-mem--2a02aa30df745d386daa697f.md) | 122 | `result-track:2a02aa30df745d386daa697fb471c3e64e0b37f45feee747f117eedda14b89ee` |
| 13 | `lemma` | [mem_memPartitionSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/mem-mempartitionset--5d5d5041554b1ec4ad51ee4f.md) | 132 | `result-track:5d5d5041554b1ec4ad51ee4fd8fdfeedfcb73fcf5296174d10878a62c8ed93f0` |
| 14 | `lemma` | [memPartitionSet_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/mempartitionset-eq-iff--abaa64b9387fb9d0479187c5.md) | 140 | `result-track:abaa64b9387fb9d0479187c5c7f2e8d60b94cc2b4edb2432922dda5e0eae8e1c` |
| 15 | `lemma` | [memPartitionSet_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/declarations/mempartitionset-of-mem--19a49c2f25e8c3f1040b178a.md) | 151 | `result-track:19a49c2f25e8c3f1040b178a97f88b60e368fc3e1c6d12e1e84c82ffee3ae301` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
