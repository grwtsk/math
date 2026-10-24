# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9641bad89c07e9e880c95597ef34b069cedd8c6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9641bad89c07e9e880c95597ef34b069cedd8c6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Arrow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EpiMono` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/retract--a22e065bbb0947d5fb8f311b.md) | 32 | `declaration-track:a22e065bbb0947d5fb8f311b674e48daae40084bb312be8778f649b1c3704f75` |
| 2 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/map--72ceee026e77ba26c951fec8.md) | 47 | `declaration-track:72ceee026e77ba26c951fec856f1ff171933b0387480baee2c9d89597964b39a` |
| 3 | `def` | [splitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/splitepi--4a8f601884c5ab1ba0a33a33.md) | 53 | `declaration-track:4a8f601884c5ab1ba0a33a338c6a41f0e5a85bd89ee140349c1f4d220daf608e` |
| 4 | `def` | [splitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/splitmono--814168cbf3cb3d627ab1f7de.md) | 57 | `declaration-track:814168cbf3cb3d627ab1f7decbf0f7a11f7232d075c1499b1f46a8f103c3dfc4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/instance--1e54af847ca3052082403e0b.md) | 60 | `declaration-track:1e54af847ca3052082403e0b0b901fd893b264782e0778cc447cc3d7688ccf8c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/instance--ad8e2a6a21ab7e75fb5f10ba.md) | 62 | `declaration-track:ad8e2a6a21ab7e75fb5f10ba5bd5e54a245986791a344e27a33baea2591da45c` |
| 7 | `def` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/refl--3ef0b23f8eaac1e2a00aad0d.md) | 67 | `declaration-track:3ef0b23f8eaac1e2a00aad0ddf94e36faf8c4dde48c6ada50d476774863cdbd9` |
| 8 | `def` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/trans--6513def279f38237e838ebbe.md) | 73 | `declaration-track:6513def279f38237e838ebbe74e7e6282b1dfa9538247705f28452774c070217` |
| 9 | `def` | [ofIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/ofiso--22542dcec2da99474dbd0b5f.md) | 78 | `declaration-track:22542dcec2da99474dbd0b5f8c6fcd53eb66a0ffa492a4a386bfe82973ac1ef8` |
| 10 | `abbrev` | [RetractArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/retractarrow--dc5ea16d42c56776250ed6a8.md) | 96 | `declaration-track:dc5ea16d42c56776250ed6a89a745a6efbb602fe08a816ce042ef110a0c4d1d4` |
| 11 | `lemma` | [i_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/i-w--fb1168c5714e7935784ed91c.md) | 103 | `result-track:fb1168c5714e7935784ed91ccb4f66bcefd3353e08b3cfac0a524bdb148a4ec6` |
| 12 | `lemma` | [r_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/r-w--9c713695143345999f98b5ad.md) | 106 | `result-track:9c713695143345999f98b5ad050a6a84748dda58f0f191cb525a213285ec1da3` |
| 13 | `def` | [left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/left--7f616d27b4c22c86cd0a6c91.md) | 110 | `declaration-track:7f616d27b4c22c86cd0a6c915e2d948a8d59a4ae7932c1f692d1219f8b4c1bab` |
| 14 | `def` | [right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/right--eb79afa5927d5f633b9fd72b.md) | 114 | `declaration-track:eb79afa5927d5f633b9fd72b65a56a1fcf80fb554df3f08a5d625d2f5ab3cbe1` |
| 15 | `lemma` | [retract_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/retract-left--72b1dc4f508e3233c1289c00.md) | 117 | `result-track:72b1dc4f508e3233c1289c00fb92f1d3a615edf936fb1d5dba1806714ca3a360` |
| 16 | `lemma` | [retract_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/retract-right--d04169bb8f80bf56feb61d9f.md) | 120 | `result-track:d04169bb8f80bf56feb61d9fa957cc45c4f1f7b22c8647f545d2996f19b56582` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/instance--70877b2a786de64be664f453.md) | 122 | `declaration-track:70877b2a786de64be664f453bf5ea97c51776c1350c828c233a429c1fb3461ae` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/instance--7859ecd7074bb63eaf6327b9.md) | 124 | `declaration-track:7859ecd7074bb63eaf6327b95c1aa083b68ff4d9b040b27287f6242626971689` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/instance--0658de9c0e167168deb4125f.md) | 126 | `declaration-track:0658de9c0e167168deb4125f1eab91eee3619602440035ad0cdc45f6ba8a3af1` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/instance--856b57f08672125c9d681c31.md) | 128 | `declaration-track:856b57f08672125c9d681c31bc05205b8c8ab401e7adcc49c48895c2b8667854` |
| 21 | `def` | [retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751.lean/declarations/retract--e144710eea2a0e89e0b70de0.md) | 136 | `declaration-track:e144710eea2a0e89e0b70de070cb6506edc6fffc071714d11e8adc5d70c7f24c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
