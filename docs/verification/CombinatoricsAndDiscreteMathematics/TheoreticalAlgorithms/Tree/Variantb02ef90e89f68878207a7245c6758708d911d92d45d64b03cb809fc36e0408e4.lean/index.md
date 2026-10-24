# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12cc9412acce393cb4581750b63f8c567e6e81a7",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12cc9412acce393cb4581750b63f8c567e6e81a7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteLattice.SetLike` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/tree--d39222ba5657e319edfcf96b.md) | 25 | `declaration-track:d39222ba5657e319edfcf96b7ceb925a4ec6a73acfe848b1d276dd326253ed8f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/instance--6864d65ee3b498897bbe53c8.md) | 30 | `declaration-track:6864d65ee3b498897bbe53c8d5ffd9833c4170a8f944a30005458aa33af40d7a` |
| 3 | `lemma` | [mem_of_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/mem-of-append--33e4b04c7ea937fdab3274bc.md) | 35 | `result-track:33e4b04c7ea937fdab3274bc25de4b90ca40ba226d32b37ff9b975845c73ba23` |
| 4 | `lemma` | [mem_of_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/mem-of-prefix--0688666bdc66a246f0ae0dfb.md) | 40 | `result-track:0688666bdc66a246f0ae0dfb9c38c0c29de9c29b2c21dd3c197658ca33ae082d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/instance--f941373c1165c03930e32883.md) | 43 | `declaration-track:f941373c1165c03930e328830473597b6d070ccd9343fab1b75c1780fd30c7c1` |
| 6 | `lemma` | [singleton_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/singleton-mem--52c91af7dcce9e6731feb6d1.md) | 46 | `result-track:52c91af7dcce9e6731feb6d1e596df4b772adc9040c09f12e5c5f500b39ad62f` |
| 7 | `lemma` | [tree_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/tree-eq-bot--6cd18a09dc1613b4a5a233ab.md) | 49 | `result-track:6cd18a09dc1613b4a5a233ab9025b71278694fb751f1b748207c8d40c6cc8b1e` |
| 8 | `lemma` | [take_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/take-mem--c34cd8c9437271e79c730b1d.md) | 53 | `result-track:c34cd8c9437271e79c730b1de03a3d77f6ccff02f21c8f456f7714433e093c16` |
| 9 | `def` | [take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/take--9ea0f30739c0e84fc4062661.md) | 57 | `declaration-track:9ea0f30739c0e84fc4062661e99b538ae6b31714081e1a90dfcf4b8fde4e3c6d` |
| 10 | `lemma` | [take_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/take-take--5e02842058042b3978836268.md) | 59 | `result-track:5e02842058042b397883626886ce1bbd96fa3f2723a1e3b7284d37c9595d48a0` |
| 11 | `lemma` | [take_eq_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/take-eq-take--71961861df51c7edf2f1d414.md) | 62 | `result-track:71961861df51c7edf2f1d41443cdf1f2e3bd69090a2309e988fe887724bcebbf` |
| 12 | `def` | [subAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/subat--864c091250a271dd8edc903b.md) | 69 | `declaration-track:864c091250a271dd8edc903b859e217f3de00a75d52d4041b74d40a7183d6d1d` |
| 13 | `lemma` | [mem_subAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/mem-subat--7158b6c8ca57f1d36f8c8b0a.md) | 71 | `result-track:7158b6c8ca57f1d36f8c8b0a93685e72e716f630808194b148bea60918cd749f` |
| 14 | `lemma` | [subAt_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/subat-nil--a8c4d1277e77db12ee29970e.md) | 73 | `result-track:a8c4d1277e77db12ee29970eac7058aed570b7c9fe2b8e955fb233251d359201` |
| 15 | `lemma` | [subAt_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/subat-append--98cd46bd2fdc23a34538250e.md) | 75 | `result-track:98cd46bd2fdc23a34538250ecf8e94880cbd0fa2c94bdb7cf144d7975771dc8b` |
| 16 | `lemma` | [subAt_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/subat-mono--04fdcbb4b7f89439f80fd651.md) | 77 | `result-track:04fdcbb4b7f89439f80fd65199d5cf3d4e25404b994739d7f41f7e9365b44ec8` |
| 17 | `def` | [drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/drop--7dfab57f480cddd94a6b2d4c.md) | 81 | `declaration-track:7dfab57f480cddd94a6b2d4cee62fffd552229d6107f88f88c7596ebcf4aa36e` |
| 18 | `def` | [pullSub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/pullsub--3b990084c820beef9993e944.md) | 88 | `declaration-track:3b990084c820beef9993e9443e1e9898ba45627ebed917fe950bfb074bb90f75` |
| 19 | `lemma` | [mem_pullSub_short](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/mem-pullsub-short--8adff68b3495e4e64a98ab7d.md) | 96 | `result-track:8adff68b3495e4e64a98ab7d36b0a1a0b864bdd3f20d6a2e22da6adffc9634df` |
| 20 | `lemma` | [mem_pullSub_long](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/mem-pullsub-long--27e4f985374880457eaaabc5.md) | 100 | `result-track:27e4f985374880457eaaabc5682ac13acfb82fa9155d99f6dec407e4e39e469e` |
| 21 | `lemma` | [mem_pullSub_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/mem-pullsub-append--fe2e00b16fb5eab8883ec612.md) | 108 | `result-track:fe2e00b16fb5eab8883ec61225a59141163b6e7a53f3602b19a2fcd8e041e188` |
| 22 | `lemma` | [mem_pullSub_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/mem-pullsub-self--79d8ee5f4513631f497f40b5.md) | 110 | `result-track:79d8ee5f4513631f497f40b59edc39fe45bd9c343f5239d3ef9148cec9d0d0ea` |
| 23 | `lemma` | [pullSub_subAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/pullsub-subat--bbfa3eff83d1962202bfdc5c.md) | 116 | `result-track:bbfa3eff83d1962202bfdc5cf1022df399e42c08c3b24566675deac5433840fe` |
| 24 | `lemma` | [subAt_pullSub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/subat-pullsub--f6255313f9ec4720237f22e8.md) | 121 | `result-track:f6255313f9ec4720237f22e8aa25d340091220f1cc283b2450e8ed142798813c` |
| 25 | `lemma` | [pullSub_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/pullsub-mono--06ef66e7400732e981c8f1d2.md) | 124 | `result-track:06ef66e7400732e981c8f1d2d59feaed603fa03e5205534fb3110b6466ba44ff` |
| 26 | `lemma` | [pullSub_adjunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/pullsub-adjunction--b8a89f9e0bdf99b090f5cf95.md) | 127 | `result-track:b8a89f9e0bdf99b090f5cf9517a5213f585f9cd9dbef7bb56d48bfd3c7bb5edd` |
| 27 | `lemma` | [pullSub_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/pullsub-nil--180a7ad9c2f87b0ce98427bb.md) | 131 | `result-track:180a7ad9c2f87b0ce98427bbe248226bb911207aacb19c6463b6beda8cdde910` |
| 28 | `lemma` | [pullSub_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantb02ef90e89f68878207a7245c6758708d911d92d45d64b03cb809fc36e0408e4.lean/declarations/pullsub-append--4192f7b1c2f1929068e2f893.md) | 133 | `result-track:4192f7b1c2f1929068e2f89388e4509707af29bb1789fdcc116b35c3092bb491` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
