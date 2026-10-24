# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Zero.Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f271b3c08d92108a2542f948003c9de3641457e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f271b3c08d92108a2542f948003c9de3641457e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/preserveszeromorphisms--97ac810c3794f613a8287307.md) | 53 | `declaration-track:97ac810c3794f613a8287307d7ac58b78f8a166716cdd04c86e3201b40a007ad` |
| 2 | `theorem` | [map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/map-zero--c2c4351ac9be301cfb2067e5.md) | 59 | `result-track:c2c4351ac9be301cfb2067e53262324a005bcd87a72e5b31d8b56db4c3a511a6` |
| 3 | `theorem` | [zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/zero-of-map-zero--24c048dd6202040158b4645a.md) | 64 | `result-track:24c048dd6202040158b4645a95fc1291a4d8837bc12a65b9ae17b0479c165159` |
| 4 | `theorem` | [map_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/map-eq-zero-iff--91ce8517b3dca84a1e622d74.md) | 69 | `result-track:91ce8517b3dca84a1e622d74bb9e0bd8719c021f74d6c9dcedebd6b528f84eeb` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/instance--7d922ef62604776a6466b09b.md) | 76 | `declaration-track:7d922ef62604776a6466b09ba33300236f49928773289018aced5fe3035662e7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/instance--ec4d2aaaf75beba6db430ffc.md) | 90 | `declaration-track:ec4d2aaaf75beba6db430ffce22d71927f9f773a4f566fdb56ac0390b3fc05a5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/instance--a0f6240fe54a67fb5cd90567.md) | 103 | `declaration-track:a0f6240fe54a67fb5cd905679a2847963585d79f6d4104bd1c1829c2e4faca17` |
| 8 | `instance` | [preservesZeroMorphisms_evaluation_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/preserveszeromorphisms-evaluation-obj--6d134f2c368a2f1c50124595.md) | 111 | `declaration-track:6d134f2c368a2f1c50124595455b273980f22b29189a5ffec19fdaece5f17e6f` |
| 9 | `def` | [mapZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/mapzeroobject--1c9e25fc8f8229cd5918d5f6.md) | 126 | `declaration-track:1c9e25fc8f8229cd5918d5f689fc892483c8e58522617059fb95dde17d181065` |
| 10 | `theorem` | [preservesZeroMorphisms_of_map_zero_object](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/preserveszeromorphisms-of-map-zero-object--3b26dc99c34295641493cf3a.md) | 135 | `result-track:3b26dc99c34295641493cf3a23358f394e455bc80a1b411edabe48dd77cb4451` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/instance--37cc1046eaa00536d1de9890.md) | 143 | `declaration-track:37cc1046eaa00536d1de989040111f4f9645c2a1aac7f15da1bd8fe141f0429d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/instance--3ec41ca0816ff2e459351609.md) | 150 | `declaration-track:3ec41ca0816ff2e45935160953ed3d93b98cb1a095b5d752e8bd703fa418e00d` |
| 13 | `def` | [preservesTerminalObjectOfPreservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/preservesterminalobjectofpreserveszeromorphisms--c84b5f8e39574d837044c6f3.md) | 160 | `declaration-track:c84b5f8e39574d837044c6f3c6987f6cc0fae4179852a48e104e0236de1a40e4` |
| 14 | `def` | [preservesInitialObjectOfPreservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4698091ecf70a4a74249be32fcb24534c52caeebb5e7389eef4776917da53d4e.lean/declarations/preservesinitialobjectofpreserveszeromorphisms--b6c35af79ea96f0937e31e55.md) | 167 | `declaration-track:b6c35af79ea96f0937e31e556c4bddbf582b8204111f9ba291289f1b0a9faee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
