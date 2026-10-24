# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Order.Embeddings.PrefixObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b3ea7d1c58089b5456924efa8758fbc8dcef81e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Embeddings/PrefixObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b3ea7d1c58089b5456924efa8758fbc8dcef81e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Order/Embeddings/PrefixObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Order/Embeddings/PrefixObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreservesPrefix](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/preservesprefix--428f30bfd93333375115fc4d.md) | 31 | `declaration-track:428f30bfd93333375115fc4d4f371352ab0fe9ede03ceffb84d554c23c549c74` |
| 2 | `def` | [ReflectsPrefix](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/reflectsprefix--3a30ce290ae6f0d4979bc124.md) | 35 | `declaration-track:3a30ce290ae6f0d4979bc12420502b89acb4ff0aa75866ca4cd2c9e73ef05488` |
| 3 | `theorem` | [comparable_of_common_upper](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/comparable-of-common-upper--287561ed18b8c86788a71c38.md) | 39 | `result-track:287561ed18b8c86788a71c38a94544697fa4032abf3d908788521fd9cbb209c4` |
| 4 | `theorem` | [no_prefix_representation_of_incomparable_upper](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/no-prefix-representation-of-incomparable-upper--055a80d1708e7b2a8066fae6.md) | 48 | `result-track:055a80d1708e7b2a8066fae68d3ea9392100357060f47dd7efa76167cdf8b96f` |
| 5 | `def` | [chainAddress](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/chainaddress--0b29716f796b3517c413fef4.md) | 57 | `declaration-track:0b29716f796b3517c413fef42e00d27d61c21c1c35977c13f806f86f9ac11cdd` |
| 6 | `theorem` | [chainAddress_prefix_iff](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/chainaddress-prefix-iff--b497f5fec9e4afaf29650ce3.md) | 59 | `result-track:b497f5fec9e4afaf29650ce3ea4f4227605a53b58852a7fb46b806fd5fdd5122` |
| 7 | `theorem` | [chainAddress_representation](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/chainaddress-representation--2ce25bafbf85a9e13f86c4bd.md) | 62 | `result-track:2ce25bafbf85a9e13f86c4bd357565b3355ce33b3f7c2615a387f06ceb483136` |
| 8 | `theorem` | [chainAddress_injective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/chainaddress-injective--02607c37a5a90eb5bd65d9fa.md) | 68 | `result-track:02607c37a5a90eb5bd65d9fa09b7302daad5f88d1ed9ff1e6b7b635394a902dd` |
| 9 | `inductive` | [Diamond](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamond--8aea31c7c720950acd7ee935.md) | 74 | `declaration-track:8aea31c7c720950acd7ee9357130cd502e4f707f29dc316981a413441ddd6dfd` |
| 10 | `def` | [DiamondLe](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamondle--e3b99154e0ab391c756d0892.md) | 79 | `declaration-track:e3b99154e0ab391c756d0892fa47cd2f61d93ccb8ef95364e667de51fc86f1b1` |
| 11 | `theorem` | [diamondLe_refl](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamondle-refl--51dce001537e98f02f8c6611.md) | 81 | `result-track:51dce001537e98f02f8c6611d56a7f8feb31224be5f2498e0298aa496f36e086` |
| 12 | `theorem` | [diamondLe_trans](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamondle-trans--4c368e057152c9f0bfc9acd1.md) | 83 | `result-track:4c368e057152c9f0bfc9acd177a6fef71c727142658bdea2aab9acde8906e19a` |
| 13 | `theorem` | [diamondLe_antisymm](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamondle-antisymm--4114ceddf9fa654ecc1fcd57.md) | 87 | `result-track:4114ceddf9fa654ecc1fcd57052ed373685ab44613d03e7b2dc3cef2e5cef905` |
| 14 | `theorem` | [diamond_has_no_prefix_representation](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamond-has-no-prefix-representation--59090e998b8c2ecdfa2b45e2.md) | 92 | `result-track:59090e998b8c2ecdfa2b45e2f679bc6034612afa3967bf91336d8f21208c9b0b` |
| 15 | `def` | [diamondRank](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamondrank--27a0417ff072f82a191049cb.md) | 99 | `declaration-track:27a0417ff072f82a191049cbea6dff2bcdfe82744361cbb60e39de1eef12ba58` |
| 16 | `def` | [diamondAddress](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamondaddress--77e308929e43a69b470ad416.md) | 105 | `declaration-track:77e308929e43a69b470ad4166adafe3354de7b4da811b8c83f2fadf7719455c4` |
| 17 | `theorem` | [diamondAddress_injective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamondaddress-injective--2f172df04ea5ac080801f681.md) | 107 | `result-track:2f172df04ea5ac080801f681f01bf52cf57c97aff09af7ed5da021c626343494` |
| 18 | `theorem` | [diamondAddress_preserves](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamondaddress-preserves--5ef80b718bf8df64d1727f90.md) | 115 | `result-track:5ef80b718bf8df64d1727f905188dedbb4fc2d2dc68984c29cb5257a035deb44` |
| 19 | `theorem` | [diamondAddress_not_reflects](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/diamondaddress-not-reflects--b48c9a3f20d70c768f394362.md) | 121 | `result-track:b48c9a3f20d70c768f394362694772d0dbd226dacd3d8f24e2ff8f7c1a916c06` |
| 20 | `theorem` | [injective_preservation_without_reflection](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/declarations/injective-preservation-without-reflection--da5e7c9cdd286faa8d69f54e.md) | 128 | `result-track:da5e7c9cdd286faa8d69f54eefa52a801630d10ec1eacc71c1d278d350cd8695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
