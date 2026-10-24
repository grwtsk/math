# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullbacks.Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7387adfdded01aadbfc1803fb7ac918b7478b9ef",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7387adfdded01aadbfc1803fb7ac918b7478b9ef`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PullbackCone.combine](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/pullbackcone-combine--6d3465100e5b5915e8d9fcfb.md) | 33 | `declaration-track:6d3465100e5b5915e8d9fcfb9ccb18e979811881be51877246fde66fc5da053c` |
| 2 | `def` | [PullbackCone.combineIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/pullbackcone-combineislimit--1512428f6e47f8c03d64239c.md) | 49 | `declaration-track:1512428f6e47f8c03d64239c085517975a3ae24f640caa48e4083461f6462b34` |
| 3 | `def` | [pullbackObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/pullbackobjiso--497f4df534436207694dbb53.md) | 62 | `declaration-track:497f4df534436207694dbb5362f6140bcd3fa5c2665ae373b51bcb31fb1b3cf3` |
| 4 | `theorem` | [pullbackObjIso_hom_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/pullbackobjiso-hom-comp-fst--c5f74af7d19d5022ae88c994.md) | 67 | `result-track:c5f74af7d19d5022ae88c994d28abf2e5200993d4e1211b18584f139bfa41d85` |
| 5 | `theorem` | [pullbackObjIso_hom_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/pullbackobjiso-hom-comp-snd--7d94ca388f011f1ca9bdd11b.md) | 72 | `result-track:7d94ca388f011f1ca9bdd11b738354065271c3d122d7e33a2caa2cd6662102d0` |
| 6 | `theorem` | [pullbackObjIso_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/pullbackobjiso-inv-comp-fst--6707bd5d5a3024f6348a9b3e.md) | 78 | `result-track:6707bd5d5a3024f6348a9b3ef6f75cd182e1ae92d74b3713a2d094fce638ba3b` |
| 7 | `theorem` | [pullbackObjIso_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/pullbackobjiso-inv-comp-snd--b63a448fadbcd9a32c032804.md) | 84 | `result-track:b63a448fadbcd9a32c032804e076da8538dc02c756feeaf1a1137d14a3c9b4b6` |
| 8 | `def` | [pushoutObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/pushoutobjiso--a07d88839c33d45dedb2171b.md) | 95 | `declaration-track:a07d88839c33d45dedb2171b8318ccb985f1caeca43c7a2a878a89a5f8dc48e8` |
| 9 | `theorem` | [inl_comp_pushoutObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/inl-comp-pushoutobjiso-hom--0db82f2814879ace0d2daca9.md) | 100 | `result-track:0db82f2814879ace0d2daca99e8ae538b9052acc61a55594dcb877686c3237dd` |
| 10 | `theorem` | [inr_comp_pushoutObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/inr-comp-pushoutobjiso-hom--34fc1d2919b3cbb384f96a80.md) | 105 | `result-track:34fc1d2919b3cbb384f96a80c5fae9fb41deff54c3cd983c7d08effb595b4d11` |
| 11 | `theorem` | [inl_comp_pushoutObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/inl-comp-pushoutobjiso-inv--00d0728aad5b8d6ce919659e.md) | 111 | `result-track:00d0728aad5b8d6ce919659ee8683973cc17f601e28360910f5fe4684816b4a7` |
| 12 | `theorem` | [inr_comp_pushoutObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant83218b7d6b45940885a2316c587291ba32a193b09555aabdd808f37d9f16f3d9.lean/declarations/inr-comp-pushoutobjiso-inv--a11b399b620a2f75ab895014.md) | 117 | `result-track:a11b399b620a2f75ab89501469e2656d870c47d9a36b5acf0f577809ae9f529b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
