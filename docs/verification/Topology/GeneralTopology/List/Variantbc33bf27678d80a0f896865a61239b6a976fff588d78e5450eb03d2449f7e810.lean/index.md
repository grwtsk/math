# Verification target: GRWTSK.Topology.GeneralTopology.List.Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4756927fbe31f6827c2f1fb214c7a90e107a74db",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4756927fbe31f6827c2f1fb214c7a90e107a74db`.

Source path: `GRWTSK/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/mem-tolist--0aaf848d7216c7ce2f9b4cbc.md) | 28 | `result-track:0aaf848d7216c7ce2f9b4cbcc3d965ad489f233d7a69d15961781f714553413f` |
| 2 | `theorem` | [forIn'_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/forin-tolist--4266e2a9f6fcb4a2b5ca258f.md) | 31 | `result-track:4266e2a9f6fcb4a2b5ca258f6a74064515248b9b3d395522a69cae0018b649c0` |
| 3 | `theorem` | [forIn_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/forin-tolist--ae868dfcabeae3b5215a219b.md) | 35 | `result-track:ae868dfcabeae3b5215a219b844b7fba7a34ee84bd09898ad5ab7b331b4f4a28` |
| 4 | `theorem` | [foldlM_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/foldlm-tolist--3f83968b5b6389823d85cb2b.md) | 39 | `result-track:3f83968b5b6389823d85cb2b5ed6aa78569282b58ccb727e1f3a079dfc6de058` |
| 5 | `theorem` | [foldrM_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/foldrm-tolist--0ec0aa4a0ee2a3f989c30196.md) | 43 | `result-track:0ec0aa4a0ee2a3f989c301966abb442003a973098d7ace277352f48f543e7452` |
| 6 | `theorem` | [foldl_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/foldl-tolist--b3b1bd8bc2b23bd7aee95527.md) | 47 | `result-track:b3b1bd8bc2b23bd7aee955276b01b104c6d3e6dd2aa573adfabafc3cbe45efae` |
| 7 | `theorem` | [foldr_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/foldr-tolist--2c84fdc5d925404e18a907ad.md) | 51 | `result-track:2c84fdc5d925404e18a907ad68e933614c3fbc6cf871c0cd4aac8b91a6aa3f28` |
| 8 | `theorem` | [pairwise_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/pairwise-tolist--8098dd54edd394abc76080d3.md) | 56 | `result-track:8098dd54edd394abc76080d32d85bf302d2f2b77a086d2ba99813322526399ba` |
| 9 | `theorem` | [head?_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/head-tolist--ef7ebefaa18203fe48775860.md) | 60 | `result-track:ef7ebefaa18203fe48775860b095fae3d92f242e4b2537c0ba643d5dc6087b01` |
| 10 | `theorem` | [toList_filter](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/tolist-filter--f79028130f180d8e6d7b98e0.md) | 63 | `result-track:f79028130f180d8e6d7b98e030413d760d3c89c58ffb247476b899750a670cbc` |
| 11 | `theorem` | [toList_bind](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/tolist-bind--79c9cf1904b5285709f4c1a5.md) | 71 | `result-track:79c9cf1904b5285709f4c1a5f3219764604c987c9cd0823c7f6972b18de76df1` |
| 12 | `theorem` | [toList_join](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/tolist-join--6ac40b5d12d5b2a04fe6c04e.md) | 75 | `result-track:6ac40b5d12d5b2a04fe6c04eb93349b7487eaca4809c5a02b96111c0dfe325b8` |
| 13 | `theorem` | [toList_map](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/tolist-map--2a7907aeaceed9aa9cfa8788.md) | 78 | `result-track:2a7907aeaceed9aa9cfa8788ed53af26a74882b6bacf87871723087c64f641ac` |
| 14 | `theorem` | [toList_min](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/tolist-min--f79b9e1ca6e35c0b5bdc9940.md) | 81 | `result-track:f79b9e1ca6e35c0b5bdc99409fac94efd4fd0963b3d3bf8b22d341dffb50c422` |
| 15 | `theorem` | [length_toList_le](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/length-tolist-le--1dc8624b1ef482d78141fe3f.md) | 86 | `result-track:1dc8624b1ef482d78141fe3faa646e6865deba521516dc8d896fd511925b45a7` |
| 16 | `theorem` | [length_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/length-tolist--2c44f9656ce2471f0acd1763.md) | 90 | `result-track:2c44f9656ce2471f0acd1763b8ca9222d74467aed059bdd47661927670394c48` |
| 17 | `theorem` | [toList_eq_nil_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/tolist-eq-nil-iff--fefd506e4afb0dcd5c8958a2.md) | 95 | `result-track:fefd506e4afb0dcd5c8958a2359363b88c1f6dff04d3c5c589745138b9c06fd6` |
| 18 | `theorem` | [toList_eq_singleton_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/tolist-eq-singleton-iff--fc78e29ca2f434557af4d05c.md) | 99 | `result-track:fc78e29ca2f434557af4d05cb835c6b1a7baed7221c58b4bacf6c95ce15163ef` |
| 19 | `theorem` | [length_toList_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/length-tolist-eq-zero-iff--6841eaf0fc8786b9b836e637.md) | 102 | `result-track:6841eaf0fc8786b9b836e6377fe83afbf23678fbb7c0cc14904082513642c264` |
| 20 | `theorem` | [length_toList_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/length-tolist-eq-one-iff--d2bc84057ee49b44d234af69.md) | 107 | `result-track:d2bc84057ee49b44d234af693fc0739249e0339e42ab0f884fd4e6d53c2c70cd` |
| 21 | `theorem` | [length_toList_choice_eq_one](../../../../../mathematics/Topology/GeneralTopology/List/Variantbc33bf27678d80a0f896865a61239b6a976fff588d78e5450eb03d2449f7e810.lean/declarations/length-tolist-choice-eq-one--3e744d47a375dd72329d69d9.md) | 111 | `result-track:3e744d47a375dd72329d69d9de4f7a3d3283e89eb988a646c9da61d6af83c68c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
