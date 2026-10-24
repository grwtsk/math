# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemPartition.Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de82a8a22c6768a1b8931009cdb912e34e74be40",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de82a8a22c6768a1b8931009cdb912e34e74be40`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/mempartition--f319e231c22441db1e444037.md) | 47 | `declaration-track:f319e231c22441db1e444037608d6d92e66a7d319f2dc2acf16d420f64f86b93` |
| 2 | `lemma` | [memPartition_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/mempartition-zero--853c930af36d8a27bffb4e99.md) | 52 | `result-track:853c930af36d8a27bffb4e99737a01c587cfa2fdb9b4654f42d44e0b6cc18dc7` |
| 3 | `lemma` | [memPartition_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/mempartition-succ--cea210a716bbad2e622992b6.md) | 54 | `result-track:cea210a716bbad2e622992b607e83dfcb82ded4381c9da22bf630d59308c2f10` |
| 4 | `lemma` | [disjoint_memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/disjoint-mempartition--b538e418e1c14d3cff70947a.md) | 58 | `result-track:b538e418e1c14d3cff70947abab243c2d13d24fdf26f22cc40b2908807e731bb` |
| 5 | `lemma` | [sUnion_memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/sunion-mempartition--cfdf41852b96e1e29a07b3c4.md) | 82 | `result-track:cfdf41852b96e1e29a07b3c410c7ebd7fe5ead00485b5c0b8893e6599396c0bf` |
| 6 | `lemma` | [finite_memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/finite-mempartition--270d563295caf7b730ea8f25.md) | 96 | `result-track:270d563295caf7b730ea8f25634b9894d7343e63df686254b0a7ce93493e4af8` |
| 7 | `instance` | [instFinite_memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/instfinite-mempartition--5fcb7d38cca988fa0d1cba6e.md) | 108 | `declaration-track:5fcb7d38cca988fa0d1cba6e525a24e6e148aa12cdd7549f1eeecdb3a684e4be` |
| 8 | `instance` | [instFintype_memPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/instfintype-mempartition--9fda19a43c524c33636cc715.md) | 112 | `declaration-track:9fda19a43c524c33636cc715a08d4a68a0929713d7b1a94ed8de5f038eee9cd4` |
| 9 | `def` | [memPartitionSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/mempartitionset--4fde9efcc8d1e819b60ae757.md) | 117 | `declaration-track:4fde9efcc8d1e819b60ae7578fc5d5abaf1d2c4ffe1920ef11d0328667ede060` |
| 10 | `lemma` | [memPartitionSet_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/mempartitionset-zero--7cd85ea24ae60a9a12b01cf4.md) | 122 | `result-track:7cd85ea24ae60a9a12b01cf457d331f3e6b5c68b5887937a5f1cd4fa6c6cbf88` |
| 11 | `lemma` | [memPartitionSet_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/mempartitionset-succ--5b05d05a9089f62714d5d82a.md) | 125 | `result-track:5b05d05a9089f62714d5d82a947d48725ef18a0413920bc198894087c7f518bc` |
| 12 | `lemma` | [memPartitionSet_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/mempartitionset-mem--8c44ea48ccfe0fcb2c63529a.md) | 130 | `result-track:8c44ea48ccfe0fcb2c63529af5a7774b64e9b7504bb43bea47f4d4b01861b34d` |
| 13 | `lemma` | [mem_memPartitionSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/mem-mempartitionset--5895ce89dfffe2c4b50dd00a.md) | 140 | `result-track:5895ce89dfffe2c4b50dd00a7f787eefd2299e823c0850ab9e4bdb7d5ead1bfa` |
| 14 | `lemma` | [memPartitionSet_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/mempartitionset-eq-iff--5727dbc251f3f522a17fabf3.md) | 148 | `result-track:5727dbc251f3f522a17fabf36701c8806688c981d1954f673e72ab1ecbaac2ca` |
| 15 | `lemma` | [memPartitionSet_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/declarations/mempartitionset-of-mem--2302d029c269de6199fce965.md) | 159 | `result-track:2302d029c269de6199fce9650f649638645def126c5a18eef35c679fb84455fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
