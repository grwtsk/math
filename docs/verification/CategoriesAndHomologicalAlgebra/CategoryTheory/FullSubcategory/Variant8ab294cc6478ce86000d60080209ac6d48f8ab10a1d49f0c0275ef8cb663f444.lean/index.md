# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullSubcategory.Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "305ffd844e0f49a2f479fdfe6727964a01be9998",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `305ffd844e0f49a2f479fdfe6727964a01be9998`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ClosedUnderLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/closedunderlimitsofshape--a0fda6fb6d22e7f7900f848d.md) | 37 | `declaration-track:a0fda6fb6d22e7f7900f848d98f46e6ca0fe1b08c0e046006f1660e2faeb92dd` |
| 2 | `def` | [ClosedUnderColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/closedundercolimitsofshape--66f543d2c91207ed2176cb74.md) | 43 | `declaration-track:66f543d2c91207ed2176cb744984a4c9a450965426ebe4a6e12f240a8dd9b189` |
| 3 | `theorem` | [closedUnderLimitsOfShape_of_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/closedunderlimitsofshape-of-limit--fc1f942a34a7a6391409cb4c.md) | 51 | `result-track:fc1f942a34a7a6391409cb4cf5e60dc1e10dc545e58fce487dd5a1c344097499` |
| 4 | `theorem` | [closedUnderColimitsOfShape_of_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/closedundercolimitsofshape-of-colimit--8d23781e3881a43a1e20bd25.md) | 58 | `result-track:8d23781e3881a43a1e20bd25f43cce763302c99941e9e631bb66713d6f7c4d6b` |
| 5 | `lemma` | [ClosedUnderLimitsOfShape.limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/closedunderlimitsofshape-limit--b19f1beb4892f096db0ef0fc.md) | 65 | `result-track:b19f1beb4892f096db0ef0fc9fe528703b0b8c1822de26d8ff6a607cccefd5e9` |
| 6 | `lemma` | [ClosedUnderColimitsOfShape.colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/closedundercolimitsofshape-colimit--b014765c2bf5942f0b46530f.md) | 69 | `result-track:b014765c2bf5942f0b46530ff3e4857b6926497592db1fff8375906794202397` |
| 7 | `def` | [createsLimitFullSubcategoryInclusion'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/createslimitfullsubcategoryinclusion--35450935f45dbdde70c634c8.md) | 81 | `declaration-track:35450935f45dbdde70c634c833aec4f8e52cb603c2701939865e6576163c5a36` |
| 8 | `def` | [createsLimitFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/createslimitfullsubcategoryinclusion--9d6faabdc3d6513bc8cf0d81.md) | 88 | `declaration-track:9d6faabdc3d6513bc8cf0d817e4d93129ae0be861db52cc573508b3eed5c229d` |
| 9 | `def` | [createsColimitFullSubcategoryInclusion'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/createscolimitfullsubcategoryinclusion--c113a68babd207399076116d.md) | 95 | `declaration-track:c113a68babd207399076116d6e05917dbef51c9f53ae5dc0fa2a71d503a4de04` |
| 10 | `def` | [createsColimitFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/createscolimitfullsubcategoryinclusion--1725e5739f77c4958b9a5253.md) | 102 | `declaration-track:1725e5739f77c4958b9a5253e3573f11ac6baba4ba7061d762e5b714164dfb2f` |
| 11 | `def` | [createsLimitFullSubcategoryInclusionOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/createslimitfullsubcategoryinclusionofclosed--42c8f1986750132a1c4c4020.md) | 109 | `declaration-track:42c8f1986750132a1c4c4020cb0d2233382cf00acb4ec5c27a6ff35aef291455` |
| 12 | `def` | [createsLimitsOfShapeFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/createslimitsofshapefullsubcategoryinclusion--45435b9f28ac3bf006b900c1.md) | 115 | `declaration-track:45435b9f28ac3bf006b900c1a169f0e5323f6cd32da030ea1584adb84715a035` |
| 13 | `theorem` | [hasLimit_of_closedUnderLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/haslimit-of-closedunderlimits--e902867ac14ed9feb8484779.md) | 119 | `result-track:e902867ac14ed9feb84847796bc3cd2a1fbe728af294173fadef44056fd42edb` |
| 14 | `theorem` | [hasLimitsOfShape_of_closedUnderLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/haslimitsofshape-of-closedunderlimits--f9400068551943acd5c9ddcb.md) | 125 | `result-track:f9400068551943acd5c9ddcb56edfd1dcfba6d384fe9b867c025ab03039a8de4` |
| 15 | `def` | [createsColimitFullSubcategoryInclusionOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/createscolimitfullsubcategoryinclusionofclosed--3d3bd342577c3d114e8fb8ae.md) | 130 | `declaration-track:3d3bd342577c3d114e8fb8ae91b8b1843099095bc11e6f4c14dc7ef1f6925040` |
| 16 | `def` | [createsColimitsOfShapeFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/createscolimitsofshapefullsubcategoryinclusion--2f6979a9739f296f7d1be797.md) | 136 | `declaration-track:2f6979a9739f296f7d1be797eeaf85883164f2733ea0a4aea4cfc2a97e7e38a6` |
| 17 | `theorem` | [hasColimit_of_closedUnderColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/hascolimit-of-closedundercolimits--1fe3c283bac5de8061f03538.md) | 140 | `result-track:1fe3c283bac5de8061f03538288049f3c17ea6b4fa70a29dc93f62278f8ce0ac` |
| 18 | `theorem` | [hasColimitsOfShape_of_closedUnderColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/hascolimitsofshape-of-closedundercolimits--6a5b66e9e3c03ba09d672fbd.md) | 146 | `result-track:6a5b66e9e3c03ba09d672fbde33981af88275ab4ed2424b06a1c0e72aa57108c` |
| 19 | `lemma` | [ClosedUnderLimitsOfShape.essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/closedunderlimitsofshape-essimage--6177445c71ec0835d52e1b0b.md) | 158 | `result-track:6177445c71ec0835d52e1b0b4879a18615615fd4b622f11f76a2185969b50e92` |
| 20 | `lemma` | [ClosedUnderColimitsOfShape.essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8ab294cc6478ce86000d60080209ac6d48f8ab10a1d49f0c0275ef8cb663f444.lean/declarations/closedundercolimitsofshape-essimage--780ff5753c936e723b16676d.md) | 166 | `result-track:780ff5753c936e723b16676d1ea7df4b32e411790239ca4a11cac4f2c6f0ab1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
