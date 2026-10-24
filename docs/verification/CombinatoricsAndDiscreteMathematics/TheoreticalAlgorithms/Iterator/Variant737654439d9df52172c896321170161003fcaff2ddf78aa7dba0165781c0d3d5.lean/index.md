# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterator.Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28ed192aabe644414c5688f4875c10c248021208",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28ed192aabe644414c5688f4875c10c248021208`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SubarrayIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/subarrayiterator--05fe485502245d32e8dddbe5.md) | 26 | `declaration-track:05fe485502245d32e8dddbe5ced8ad2016fed476c06a304db6fc8227d33d9a14` |
| 2 | `def` | [SubarrayIterator.step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/subarrayiterator-step--1e30318117a99d52fa6ba957.md) | 30 | `declaration-track:1e30318117a99d52fa6ba9572b92854fee4da9621ac974cbe082078c6fe5b898` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/instance--352509bbd83750ee38181e09.md) | 39 | `declaration-track:352509bbd83750ee38181e09340d73042860ce1c18556c3bbad08eb3183701ba` |
| 4 | `def` | [SubarrayIterator.instFinitelessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/subarrayiterator-instfinitelessrelation--12c0419f819f70c2fe6301f0.md) | 43 | `declaration-track:12c0419f819f70c2fe6301f0987c0abbfd3190d862c101481de767800b767d91` |
| 5 | `instance` | [SubarrayIterator.instFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/subarrayiterator-instfinite--14c55bbee7d5b90bbaa09467.md) | 54 | `declaration-track:14c55bbee7d5b90bbaa094671de81bfe63439d5e0b1789f27d71902ac0d8837d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/instance--e1bd22d82f4e40e9324626a0.md) | 57 | `declaration-track:e1bd22d82f4e40e9324626a064efd033c4863dfad8dce6de973a7636b523e351` |
| 7 | `def` | [Subarray.instToIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/subarray-insttoiterator--0174617eaf028dc102252d7a.md) | 60 | `declaration-track:0174617eaf028dc102252d7a04b1d1b5748c2fddd93bfbe1f87c49b0099c04b7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/instance--84fc1ec05b491fc7deb77846.md) | 66 | `declaration-track:84fc1ec05b491fc7deb7784670466936fa6f1a1407b84e0f8eb38dcae8cc3ee1` |
| 9 | `def` | [Subarray.forIn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/subarray-forin--bd8d825a0fb30b514adf2fa7.md) | 82 | `declaration-track:bd8d825a0fb30b514adf2fa753c9cf780bafd2a5144d7d82bbcfb969d5201ff0` |
| 10 | `def` | [Subarray.copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/subarray-copy--9f0fb2d5b6f8ccc0140b85fe.md) | 89 | `declaration-track:9f0fb2d5b6f8ccc0140b85fe8bf5b8dc179fe7a960743e71f30d59b0245a7a4f` |
| 11 | `instance` | [instCoeSubarrayArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/instcoesubarrayarray--e99f3f0f9785fff7a03cb8e5.md) | 92 | `declaration-track:e99f3f0f9785fff7a03cb8e5d8100db2ccae7f0a25980b14a462972af2aa8a5b` |
| 12 | `theorem` | [Subarray.copy_eq_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/subarray-copy-eq-toarray--95f7b6e08daad474c6ca64fc.md) | 96 | `result-track:95f7b6e08daad474c6ca64fcde4a6ea89539d6398e3dc318dfd4989b5b655bc8` |
| 13 | `theorem` | [Subarray.sliceToArray_eq_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/subarray-slicetoarray-eq-toarray--72166414403bd625cd73cc39.md) | 101 | `result-track:72166414403bd625cd73cc39bdac9414aed45a7bdaff875f961257cb810f976d` |
| 14 | `def` | [ofSubarray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/ofsubarray--730d7ad7c306198c6c3f8801.md) | 108 | `declaration-track:730d7ad7c306198c6c3f8801df321d9f8d5ee66904a0656a7beecb546e5b4f22` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/instance--a9ee3ea5147922c103a850fd.md) | 111 | `declaration-track:a9ee3ea5147922c103a850fd917863dc2f3e75276dbbee95c75badbc1fa5efee` |
| 16 | `def` | [Subarray.repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/subarray-repr--d06e306b5c4a468b3150481c.md) | 117 | `declaration-track:d06e306b5c4a468b3150481c7beb6566cb9d46564bc26f24038233fb2f944dee` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/instance--0e34b6312728d6507d846913.md) | 120 | `declaration-track:0e34b6312728d6507d8469130ef9f3cc2c96d280878f96b2ccbc55460b154300` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant737654439d9df52172c896321170161003fcaff2ddf78aa7dba0165781c0d3d5.lean/declarations/instance--390ea7ea5e6e56e7d704faf4.md) | 123 | `declaration-track:390ea7ea5e6e56e7d704faf48f760cbabad7ef507dabcc6b96ee42cc0114eeb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
