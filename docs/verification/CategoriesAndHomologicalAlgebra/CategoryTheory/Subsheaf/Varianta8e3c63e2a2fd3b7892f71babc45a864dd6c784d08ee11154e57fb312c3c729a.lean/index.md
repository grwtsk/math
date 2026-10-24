# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subsheaf.Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "596f21a9fe278d23fbcc014c49069f49bf932da7",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `596f21a9fe278d23fbcc014c49069f49bf932da7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elementwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Evaluation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subpresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf--0ba41c0023006b15fec94eb1.md) | 55 | `declaration-track:0ba41c0023006b15fec94eb14759dcedd3f2b3da2324ba7bbcb724bf5090a8c4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/instance--54462108aa72120ba4e53f12.md) | 66 | `declaration-track:54462108aa72120ba4e53f124cd446ff9a5d49cc53bb1ffa5783d2e5c09d6cb5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/instance--e9b13000ee62fe89cbf42582.md) | 69 | `declaration-track:e9b13000ee62fe89cbf42582620ac34cc1efb824521eeb6c87d07da208abe560` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/instance--2e5d69a6d10ae58c0e1cb94c.md) | 72 | `declaration-track:2e5d69a6d10ae58c0e1cb94c173585e842521871e27f3a6ee12b34335cce5b3a` |
| 5 | `def` | [Subpresheaf.toPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-topresheaf--f25305a410808ddc0bb37c3d.md) | 77 | `declaration-track:f25305a410808ddc0bb37c3dc8c3fb1c0e47ccd3a2913586964e31582630cb0c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/instance--8112feb40dbb9c8085ff1461.md) | 90 | `declaration-track:8112feb40dbb9c8085ff14616b76bca75253c5614abca5fec85e1690df279f1b` |
| 7 | `def` | [Subpresheaf.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf--06b21d6a82a5a4bc6b50e656.md) | 95 | `declaration-track:06b21d6a82a5a4bc6b50e6567abbd94be7e30411cc2006349bd1947e12811be4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/instance--045df52e88bcc04c6c049adf.md) | 98 | `declaration-track:045df52e88bcc04c6c049adf70a59c8dd3d3055c6579568640c46dcab1a4b473` |
| 9 | `def` | [Subpresheaf.homOfLe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-homofle--4e07570b152f0dd3669d7076.md) | 105 | `declaration-track:4e07570b152f0dd3669d7076280573b73fe8d99d03900d76634c11eb41e3ade8` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/instance--309ec3d8fd090b5d8bb0b857.md) | 109 | `declaration-track:309ec3d8fd090b5d8bb0b85731f68bbffd52859f719ca65c68f771dfcad8fe07` |
| 11 | `theorem` | [Subpresheaf.homOfLe_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-homofle--7bd613df7b93e1d29b14c0fb.md) | 117 | `result-track:7bd613df7b93e1d29b14c0fb0b6eca124e8d56a52f10792131e08ff99340d6b8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/instance--486f40e5a8526c0d277c513d.md) | 123 | `declaration-track:486f40e5a8526c0d277c513d0fcd69440b726b1476bce21ca0715f14c87af54a` |
| 13 | `theorem` | [Subpresheaf.eq_top_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-eq-top-iff-isiso--620f4efe87d471b78425ad86.md) | 129 | `result-track:620f4efe87d471b78425ad86f0ad2a84a8b28b0a5f89e656d4bb15d6e1fcce12` |
| 14 | `def` | [Subpresheaf.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-lift--3a6c3430e844940e4a2ae29d.md) | 142 | `declaration-track:3a6c3430e844940e4a2ae29df5901f63652ca23a27cfe7a38cf8aa06b3608397` |
| 15 | `theorem` | [Subpresheaf.lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-lift--1838eaced99281d0a32f3db5.md) | 153 | `result-track:1838eaced99281d0a32f3db554cadc860960e526a87951c1013718b84b71e971` |
| 16 | `def` | [Subpresheaf.sieveOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-sieveofsection--eac3a869062d2f20dca488ed.md) | 162 | `declaration-track:eac3a869062d2f20dca488ed575eb2a365049ca0190acad7027d3c11aaeee485` |
| 17 | `def` | [Subpresheaf.familyOfElementsOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-familyofelementsofsection--072b33a2aa988eb5d906a7b7.md) | 171 | `declaration-track:072b33a2aa988eb5d906a7b7a2dc095e0181bd9bda8d3f3cf67c3d3ba77c951f` |
| 18 | `theorem` | [Subpresheaf.family_of_elements_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-family-of-elements-compatible--76f32513cf0b020de98c497f.md) | 175 | `result-track:76f32513cf0b020de98c497f9b36d286528665c6f3097dea8e38fa11036db223` |
| 19 | `theorem` | [Subpresheaf.nat_trans_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-nat-trans-naturality--25b5b72d68f453258294f8a1.md) | 183 | `result-track:25b5b72d68f453258294f8a15b97d8a7a0bba8e0d1bab5ea705a661cdb7e7dbb` |
| 20 | `def` | [Subpresheaf.sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-sheafify--170694cefa42b5d316078c90.md) | 190 | `declaration-track:170694cefa42b5d316078c900793f8b931e66550d7435646f24e007eab32f018` |
| 21 | `theorem` | [Subpresheaf.le_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-le-sheafify--0cd16b208572289e2145ca2e.md) | 200 | `result-track:0cd16b208572289e2145ca2e79ed0c7fc5c0c668d83c8f883b83713dc8119055` |
| 22 | `theorem` | [Subpresheaf.eq_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-eq-sheafify--a068b557f90ceaa49158101f.md) | 211 | `result-track:a068b557f90ceaa49158101f61013501faf8d5e9db9b5828c05c8197c6e1c344` |
| 23 | `theorem` | [Subpresheaf.sheafify_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-sheafify-issheaf--b6b39d5a9ddaaeeddbae858d.md) | 223 | `result-track:b6b39d5a9ddaaeeddbae858d0b970699c825d0d5bbb9822067b80a7528f5d359` |
| 24 | `theorem` | [Subpresheaf.eq_sheafify_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-eq-sheafify-iff--12e8114ff18c46b4a8510681.md) | 265 | `result-track:12e8114ff18c46b4a85106815c9900fdd1131952cb71a0ec97a3d722e61ef45b` |
| 25 | `theorem` | [Subpresheaf.isSheaf_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-issheaf-iff--749c326837eb9cf8b060adfe.md) | 270 | `result-track:749c326837eb9cf8b060adfeeb0b516e864740b39925bad6327dbe5f240ee845` |
| 26 | `theorem` | [Subpresheaf.sheafify_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-sheafify-sheafify--7e384a97b0cf76accc64a81f.md) | 278 | `result-track:7e384a97b0cf76accc64a81fa2fb26eadbfb836382d85cfec3fcb5ef08390d47` |
| 27 | `def` | [Subpresheaf.sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-sheafifylift--89cc182e654b419700f153ad.md) | 284 | `declaration-track:89cc182e654b419700f153add9776c6bded159f26b6c4548248806ee844a157e` |
| 28 | `theorem` | [Subpresheaf.to_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-to-sheafifylift--31357939835dfcb03f916028.md) | 308 | `result-track:31357939835dfcb03f916028d0b82105a975e3c4aec31e92b29fa41aa195db27` |
| 29 | `theorem` | [Subpresheaf.to_sheafify_lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-to-sheafify-lift-unique--bb3f50e6440ee76937cc7735.md) | 319 | `result-track:bb3f50e6440ee76937cc77350f2de08b8de3877b0972be244390b2704505a381` |
| 30 | `theorem` | [Subpresheaf.sheafify_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/subpresheaf-sheafify-le--3ec734dc226a501bf606b122.md) | 331 | `result-track:3ec734dc226a501bf606b12286466aaee9684619ffb4f39be53e412806f8c0ca` |
| 31 | `def` | [imagePresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/imagepresheaf--bcc92d8659cde013c2caeab5.md) | 349 | `declaration-track:bcc92d8659cde013c2caeab5d7ef10fa8df9950b43a5d3213156b50f9168b23b` |
| 32 | `theorem` | [top_subpresheaf_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/top-subpresheaf-obj--bd9ce03d822cdba87c70b107.md) | 358 | `result-track:bd9ce03d822cdba87c70b10730da6fe9c0194debadf1d578c49b7afeb808b31a` |
| 33 | `theorem` | [imagePresheaf_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/imagepresheaf-id--21606d5bb2eae36f9150f0b4.md) | 363 | `result-track:21606d5bb2eae36f9150f0b4eecaa03386d4994164e0e90c7ff064e83ce31ddb` |
| 34 | `def` | [toImagePresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/toimagepresheaf--c450d58fb01142159f83bf76.md) | 370 | `declaration-track:c450d58fb01142159f83bf768a5074a4974616fc2b250d2459a9c1603ed1242c` |
| 35 | `def` | [toImagePresheafSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/toimagepresheafsheafify--9e8761cfd3349ad296e43e7e.md) | 378 | `declaration-track:9e8761cfd3349ad296e43e7e5795926c969f23bb9177f744d8f8c802bbf449e5` |
| 36 | `theorem` | [toImagePresheaf_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/toimagepresheaf--8b468908178e89b1345fa988.md) | 385 | `result-track:8b468908178e89b1345fa988a64d1d2be74638646057b31cc673a59ab0c92ca4` |
| 37 | `theorem` | [imagePresheaf_comp_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/imagepresheaf-comp-le--5624e30e5c1505795b86af25.md) | 389 | `result-track:5624e30e5c1505795b86af25b2f5584724f18e80eae59f4ab3ebd378131b3435` |
| 38 | `instance` | [isIso_toImagePresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/isiso-toimagepresheaf--2f2214f4c1ec8e9127871203.md) | 393 | `declaration-track:2f2214f4c1ec8e9127871203fc172937aed1820c97d80bc18ebbb7432b52567c` |
| 39 | `def` | [imageSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/imagesheaf--d20986c60f2451c21c16362c.md) | 410 | `declaration-track:d20986c60f2451c21c16362c1e4a2994f56d244755c6eddead904a479be127ca` |
| 40 | `def` | [toImageSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/toimagesheaf--a117a66279cbb71be72c277e.md) | 420 | `declaration-track:a117a66279cbb71be72c277e6337ade3ba1341a463edb12410084cb86a24bc33` |
| 41 | `def` | [imageSheafι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/imagesheaf--852c99c48a80515ef8c58f81.md) | 426 | `declaration-track:852c99c48a80515ef8c58f815de50bb579d4d0b34c63d51042a9ccab602d20af` |
| 42 | `theorem` | [toImageSheaf_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/toimagesheaf--d1c527e7279ea2a2874c3c3a.md) | 431 | `result-track:d1c527e7279ea2a2874c3c3a65c78c8e0cf7b254846dad1e64b7b40c03caf9ae` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/instance--2afa3468d82fef56339d8f9f.md) | 437 | `declaration-track:2afa3468d82fef56339d8f9fe3769444568b500fc3a9cd7fc112843613d49493` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/instance--8e1447d5c517f92de603c5ce.md) | 443 | `declaration-track:8e1447d5c517f92de603c5ce0781ed7a4614b9eba675ced78a8309da253fa12f` |
| 45 | `def` | [imageMonoFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/imagemonofactorization--18b506c893e03cd3c385bd0c.md) | 457 | `declaration-track:18b506c893e03cd3c385bd0c26d0ac0e4dcafe979e94d86fc2d7b554fc7b78b0` |
| 46 | `def` | [imageFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/imagefactorization--6581d2a5da1a2faf8532db08.md) | 464 | `declaration-track:6581d2a5da1a2faf8532db08868aad826e07f6e4449253f3cfab327cd3bf36dd` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/declarations/instance--de2ac226897de35277ce4451.md) | 490 | `declaration-track:de2ac226897de35277ce445148d203d0b80c2934e317736e1096b0064584fe1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
