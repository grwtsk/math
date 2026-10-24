# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcategory.Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afd44e24ee1b601f1793a512c43ed45f65ff642f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afd44e24ee1b601f1793a512c43ed45f65ff642f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalPredicate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/monoidalpredicate--706ba5756271a4244129e6f7.md) | 41 | `declaration-track:706ba5756271a4244129e6f7fcd7546e6b4755c55c8af39634d068b585a03a62` |
| 2 | `instance` | [fullMonoidalSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalsubcategory--961ac1d2e26ef40b706ec5e0.md) | 54 | `declaration-track:961ac1d2e26ef40b706ec5e0335ab23fe96d0d76d1455ef90f5942fba79f37b1` |
| 3 | `def` | [fullMonoidalSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalsubcategoryinclusion--731e9537cc16b86593a5e98b.md) | 81 | `declaration-track:731e9537cc16b86593a5e98bab0269b67a8873440173bb616dde9ed92904718c` |
| 4 | `instance` | [fullMonoidalSubcategory.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalsubcategory-full--ef2604cedb7ca86462f36b79.md) | 87 | `declaration-track:ef2604cedb7ca86462f36b79ef448841ed54818fb9b5d25a3a6b3a31170786cb` |
| 5 | `instance` | [fullMonoidalSubcategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalsubcategory-faithful--73aad2d1f9329cf6f309118b.md) | 91 | `declaration-track:73aad2d1f9329cf6f309118b783f97a502a23111bc6c93f16e8685a7a2535847` |
| 6 | `instance` | [fullMonoidalSubcategoryInclusion_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalsubcategoryinclusion-additive--95c124a2a855e16c12c7ea3c.md) | 100 | `declaration-track:95c124a2a855e16c12c7ea3c7a0296ff6c605d2ccc9b65b9b067eedbe77f0765` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/instance--550100045debf3204208d7e0.md) | 105 | `declaration-track:550100045debf3204208d7e03a15599597d579c8a0cf5269f93a647770bd4a86` |
| 8 | `instance` | [fullMonoidalSubcategoryInclusion_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalsubcategoryinclusion-linear--23b48fd2965b7acacd0b3670.md) | 110 | `declaration-track:23b48fd2965b7acacd0b3670b8458a9913c2e9a5935aa9b252654f9a2fa37c2c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/instance--25c10899841484bd6d487232.md) | 115 | `declaration-track:25c10899841484bd6d487232aa68f6567951b92f949ef0bcdb2039b222cdb614` |
| 10 | `def` | [fullMonoidalSubcategory.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalsubcategory-map--5537bd1edb83a28dab5c3221.md) | 125 | `declaration-track:5537bd1edb83a28dab5c32213473a8b93697c4ba15b17a979c16ffe10c3b0a99` |
| 11 | `instance` | [fullMonoidalSubcategory.mapFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalsubcategory-mapfull--5ce8839c6b799d38dbfe6bd2.md) | 132 | `declaration-track:5ce8839c6b799d38dbfe6bd2cd0479f30b63f85f07b8fc157dcf1c9014205fc3` |
| 12 | `instance` | [fullMonoidalSubcategory.map_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalsubcategory-map-faithful--ed3abca36cff4cebeb4b623f.md) | 137 | `declaration-track:ed3abca36cff4cebeb4b623fba5e02e715ff5f93e0da32332ed5cac44fae5660` |
| 13 | `instance` | [fullBraidedSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullbraidedsubcategory--7fc4a1cd561d60e39475adf3.md) | 147 | `declaration-track:7fc4a1cd561d60e39475adf316652c46787088bf703d256e01749cb8d59261e3` |
| 14 | `def` | [fullBraidedSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullbraidedsubcategoryinclusion--cb0839e776faca1ffe8e0d81.md) | 158 | `declaration-track:cb0839e776faca1ffe8e0d815b31a59341c2c154f8b51ccda6baec8afa6492d5` |
| 15 | `instance` | [fullBraidedSubcategory.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullbraidedsubcategory-full--9e673f6a39bb57b525e79495.md) | 163 | `declaration-track:9e673f6a39bb57b525e7949552750c86abb07fc5e43786e7c18c7185596ac41f` |
| 16 | `instance` | [fullBraidedSubcategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullbraidedsubcategory-faithful--5b2cd7ed063fb25348bbaf2b.md) | 167 | `declaration-track:5b2cd7ed063fb25348bbaf2b09a18bfe3b74ccad0d11cffe35b106d04e34d018` |
| 17 | `def` | [fullBraidedSubcategory.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullbraidedsubcategory-map--8eabf422ad43a1631cd0a85b.md) | 176 | `declaration-track:8eabf422ad43a1631cd0a85bbb55d73fbd29d588096774afe20111324d99be21` |
| 18 | `instance` | [fullBraidedSubcategory.mapFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullbraidedsubcategory-mapfull--c66f27320ed74a5afd336a75.md) | 182 | `declaration-track:c66f27320ed74a5afd336a75dc0c0f595a9bc3337417e0bcdd2840a79949c590` |
| 19 | `instance` | [fullBraidedSubcategory.map_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullbraidedsubcategory-map-faithful--58515f1597678fc7b3c3b833.md) | 187 | `declaration-track:58515f1597678fc7b3c3b8337593a856edc443ba674562b7eaa5d2cd1f85a709` |
| 20 | `instance` | [fullSymmetricSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullsymmetricsubcategory--c6814ba0828f108958000e14.md) | 198 | `declaration-track:c6814ba0828f108958000e14751481a1cc5f10f325beed24cae81a8f5b3b8adb` |
| 21 | `class` | [ClosedPredicate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/closedpredicate--c9d62a20b000567eaa7993d2.md) | 210 | `declaration-track:c9d62a20b000567eaa7993d23539fced7d91efc8e4b7b89dcab5bad595182dba` |
| 22 | `instance` | [fullMonoidalClosedSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalclosedsubcategory--39d9a0bfb58e1b251382f46f.md) | 218 | `declaration-track:39d9a0bfb58e1b251382f46f07007b0f02e52a3fd1db904c435de4fdb0d1c3e3` |
| 23 | `theorem` | [fullMonoidalClosedSubcategory_ihom_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalclosedsubcategory-ihom-obj--e6055c9fd6da33847a9c7db9.md) | 236 | `result-track:e6055c9fd6da33847a9c7db90933a0983554acb169c2208e449ecdce295280cc` |
| 24 | `theorem` | [fullMonoidalClosedSubcategory_ihom_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/declarations/fullmonoidalclosedsubcategory-ihom-map--562501033ea0a5ad3f6de89b.md) | 242 | `result-track:562501033ea0a5ad3f6de89bfb60c553d7d1f3e75ec2c1176e290865b3665799` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
