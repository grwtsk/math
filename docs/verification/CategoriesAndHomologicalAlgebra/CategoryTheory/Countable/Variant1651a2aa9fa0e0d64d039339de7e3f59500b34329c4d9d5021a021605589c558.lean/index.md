# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Countable.Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3208a69b31545c5a832708fcf62b384bdf3b74ab",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3208a69b31545c5a832708fcf62b384bdf3b74ab`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean.json)

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
| 1 | `instance` | [discreteCountable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/discretecountable--e9e422825c27a885dd6c714c.md) | 27 | `declaration-track:e9e422825c27a885dd6c714ca014d77f4d0651ed63deaa4469a96e29825e29cd` |
| 2 | `class` | [CountableCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/countablecategory--db91f104974653a4e189d160.md) | 31 | `declaration-track:db91f104974653a4e189d160de7c1274cbe25a838940901fafaf8977fa8e2888` |
| 3 | `instance` | [countableCategoryDiscreteOfCountable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/countablecategorydiscreteofcountable--7f4bb90a814c464b3211b124.md) | 37 | `declaration-track:7f4bb90a814c464b3211b1244c1f2157ed377a47a85b50c43583df4395a53108` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--5755c04008b1cf34354626c3.md) | 40 | `declaration-track:5755c04008b1cf34354626c3afc88a65145ea9b2a726c4e456949c52f9b16b80` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--7ad41744ed884a968d8555f8.md) | 43 | `declaration-track:7ad41744ed884a968d8555f84cdcefbd1597318ffb78ad2d0a4de0af9bfd63cf` |
| 6 | `abbrev` | [ObjAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/objastype--5fefe3807396c143a1946eb8.md) | 50 | `declaration-track:5fefe3807396c143a1946eb875548c1b09197e952270101446fac630cc6d685c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--5399092cfb7274965578948d.md) | 53 | `declaration-track:5399092cfb7274965578948d24fdad5cab70f2f80e19c1eb38f4f79b9cf64b1f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--ca83adf9849bbf324f2e66d7.md) | 55 | `declaration-track:ca83adf9849bbf324f2e66d7422e729676013f3deba0a425d7f3239b85c13aaf` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--416475e12131f07a8dfee9bf.md) | 58 | `declaration-track:416475e12131f07a8dfee9bff3848da7d695b6e79638fe5bd59eacdcdc46066f` |
| 10 | `def` | [objAsTypeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/objastypeequiv--1dab7c3b1bc368fc3630df54.md) | 61 | `declaration-track:1dab7c3b1bc368fc3630df5464a37cda2c8b1d29eef446e0479da4650f301aa2` |
| 11 | `def` | [HomAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/homastype--4f7b96dd79170090bb4b41b6.md) | 65 | `declaration-track:4f7b96dd79170090bb4b41b6109e3ebcb5ad8f1eaf376972351de9c30d86f18b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--8631386410a3d6f58e3100fc.md) | 67 | `declaration-track:8631386410a3d6f58e3100fc2a1234dd0f9a2bd4e5ce60d06958c37eb0bbe834` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--c62b671d6875b3e08d197a67.md) | 70 | `declaration-track:c62b671d6875b3e08d197a67fc21c4a9fdbf639fe9a6567c63a9b6b4e46cbc03` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--ba8e32ec5b66d64df7c28830.md) | 72 | `declaration-track:ba8e32ec5b66d64df7c28830ef6abdf02d88c2ae5a9eb6343bd7680787887435` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--bb62eb5b2e4bedb5c184193f.md) | 74 | `declaration-track:bb62eb5b2e4bedb5c184193fb5d21706dbafb3fd8e65c9f0cf2c284aa41a119d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--bec40ce552995336a529b047.md) | 79 | `declaration-track:bec40ce552995336a529b047995fe3bb62e3cb4de634cb172235a9c4947e42c8` |
| 17 | `def` | [homAsTypeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/homastypeequiv--a4cc21cc2d0e7cf31208d3a3.md) | 82 | `declaration-track:a4cc21cc2d0e7cf31208d3a34dde47053e0a9af839991167c43ea0529326c457` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/instance--a095ebc67ed0f3751f96ab63.md) | 87 | `declaration-track:a095ebc67ed0f3751f96ab638f4d0e829d68514fd739a77c3b581fbc83f639df` |
| 19 | `instance` | [countableCategoryOpposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/countablecategoryopposite--579256d07b6273c16d12a291.md) | 92 | `declaration-track:579256d07b6273c16d12a2917053ff6efa4fed978709dc967296cd9110e90d3b` |
| 20 | `instance` | [countableCategoryUlift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/declarations/countablecategoryulift--68ad5e1595c00469192ca388.md) | 99 | `declaration-track:68ad5e1595c00469192ca3882e7e70765c1c66ed47ea277b38a2ede41b1b3307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
