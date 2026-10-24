# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unitor.Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3491e4f57a7d640cd1fa6e9ddbf7c7ea4240cfc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3491e4f57a7d640cd1fa6e9ddbf7c7ea4240cfc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject.Associator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GradedObject.Single` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapBifunctorObjSingle₀ObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorobjsingle-objiso--60ac38b0687edd730566ae0d.md) | 41 | `declaration-track:60ac38b0687edd730566ae0d18d155b1386fdf37506c80045b6d2573ed63de7b` |
| 2 | `def` | [mapBifunctorObjSingle₀ObjIsInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorobjsingle-objisinitial--bb811fa48a939615c96dd5ff.md) | 48 | `declaration-track:bb811fa48a939615c96dd5ffc40731c866f91d6087ded96a475b4fd0e9a1e424` |
| 3 | `def` | [mapBifunctorLeftUnitorCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorleftunitorcofan--d869c5564e6e5ca48b5364f4.md) | 56 | `declaration-track:d869c5564e6e5ca48b5364f402707ff7649105a7d6baa1d43a62b2a65c64dec6` |
| 4 | `lemma` | [mapBifunctorLeftUnitorCofan_inj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorleftunitorcofan-inj--743fd848ae8dc1dec8948986.md) | 65 | `result-track:743fd848ae8dc1dec8948986e0ecddbb2bdab698f0612a51df4e15ec93055ff6` |
| 5 | `def` | [mapBifunctorLeftUnitorCofanIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorleftunitorcofaniscolimit--e3b95aafebbf31a5ed43d9fe.md) | 71 | `declaration-track:e3b95aafebbf31a5ed43d9feb0117533d6450c91c694153bca042b632431843a` |
| 6 | `lemma` | [mapBifunctorLeftUnitor_hasMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorleftunitor-hasmap--2c7813252fef1646770af04d.md) | 88 | `result-track:2c7813252fef1646770af04d5d179ab9b20baa7dad48e0f3f9a4a9a65874e599` |
| 7 | `def` | [mapBifunctorLeftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorleftunitor--509188d91b084276994d057c.md) | 98 | `declaration-track:509188d91b084276994d057c6f145ed7090b377d35a58b67f1379c4f5b345863` |
| 8 | `lemma` | [ι_mapBifunctorLeftUnitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorleftunitor-hom-apply--ae1f40e11afd7a8b558ab85c.md) | 103 | `result-track:ae1f40e11afd7a8b558ab85c9ced575ccb8fbf23429d3791418d0822f7d1ac2c` |
| 9 | `lemma` | [mapBifunctorLeftUnitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorleftunitor-inv-apply--9cecebf3e3ec306bfe4cce44.md) | 111 | `result-track:9cecebf3e3ec306bfe4cce44aaf3446a905b855ac39e1e23addf73e944846c8f` |
| 10 | `lemma` | [mapBifunctorLeftUnitor_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorleftunitor-inv-naturality--fc84aef280064e34620d7f4a.md) | 119 | `result-track:fc84aef280064e34620d7f4a793de8235e9b0f4ebcacaffa4775f0c966c1ac1d` |
| 11 | `lemma` | [mapBifunctorLeftUnitor_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorleftunitor-naturality--2e34c0ab000b13abaf99d899.md) | 132 | `result-track:2e34c0ab000b13abaf99d899ac41cbb2ebdbda8fcf48638ad608ad7175c162b0` |
| 12 | `def` | [mapBifunctorObjObjSingle₀Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorobjobjsingle-iso--10c1ba93ae2110aeb747c95f.md) | 153 | `declaration-track:10c1ba93ae2110aeb747c95f0b59ef927e8751344b64bc9b9677baf573c2e601` |
| 13 | `def` | [mapBifunctorObjObjSingle₀IsInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorobjobjsingle-isinitial--bcc0e6cd7c57ad5c152eb433.md) | 160 | `declaration-track:bcc0e6cd7c57ad5c152eb4331ad5eb2980d97db0f9ccb72bc485bcc0226afcdf` |
| 14 | `def` | [mapBifunctorRightUnitorCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorrightunitorcofan--1021c7b5ffcfdc974f2bc9fe.md) | 168 | `declaration-track:1021c7b5ffcfdc974f2bc9fed029db4381f13f1279e467bcab8201a282d7312b` |
| 15 | `lemma` | [mapBifunctorRightUnitorCofan_inj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorrightunitorcofan-inj--b0726eb4ecb56bfab39e1984.md) | 177 | `result-track:b0726eb4ecb56bfab39e1984d16a784602cfa40adfa51a0c3e0c81798918babd` |
| 16 | `def` | [mapBifunctorRightUnitorCofanIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorrightunitorcofaniscolimit--dd6ccc721f452695af93ab8a.md) | 183 | `declaration-track:dd6ccc721f452695af93ab8a88a65738e5c1045891b7241c4a0e62e100ec1efd` |
| 17 | `lemma` | [mapBifunctorRightUnitor_hasMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorrightunitor-hasmap--a6c5912fd76698f7cd446c39.md) | 205 | `result-track:a6c5912fd76698f7cd446c3975d029637449d51cfd6061c9aa8e282050047589` |
| 18 | `def` | [mapBifunctorRightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorrightunitor--d45357eefb17cddfbbac6679.md) | 215 | `declaration-track:d45357eefb17cddfbbac667914876a2018785091a01c144853ee0e4fac609dbc` |
| 19 | `lemma` | [ι_mapBifunctorRightUnitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorrightunitor-hom-apply--1fb10055cf225112ef41bd79.md) | 220 | `result-track:1fb10055cf225112ef41bd7932e3f5114b9fcef592a54e51aa70397c07a7623c` |
| 20 | `lemma` | [mapBifunctorRightUnitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorrightunitor-inv-apply--1960081586b660b4a07ecb70.md) | 228 | `result-track:1960081586b660b4a07ecb7097a6290632546d0ad7838e02c87a3de64f070e40` |
| 21 | `lemma` | [mapBifunctorRightUnitor_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorrightunitor-inv-naturality--6c1c6686ee0fc93dd6a956d1.md) | 236 | `result-track:6c1c6686ee0fc93dd6a956d1e6bdd1d06b03c644f6ecd3c187b72fd245e99f91` |
| 22 | `lemma` | [mapBifunctorRightUnitor_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctorrightunitor-naturality--96a13538d578ffe19bfa6024.md) | 249 | `result-track:96a13538d578ffe19bfa6024fa662d4c729beb7fe54bc0b180c9b844a62a721b` |
| 23 | `structure` | [TriangleIndexData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/triangleindexdata--07e32eedf2d426ef687c09d0.md) | 264 | `declaration-track:07e32eedf2d426ef687c09d074ae640a30e2dd2ce99b398c1e334978e3d7effe` |
| 24 | `lemma` | [r_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/r-zero--3203e778569443e9e2a37d3f.md) | 281 | `result-track:3203e778569443e9e2a37d3fcbe2f9049bb21076bc5a5f94a964e897366db82a` |
| 25 | `def` | [ρ₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/anonymous--27baf66ced14a881d9e30043.md) | 286 | `declaration-track:27baf66ced14a881d9e30043109fd8552b8b3caf0f7f11f355f9fe38f1c0f778` |
| 26 | `def` | [ρ₂₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/anonymous--c1891a329fd246f6e50735d6.md) | 294 | `declaration-track:c1891a329fd246f6e50735d6f9c8a5c00f7db3704be445b43253363c4a922dac` |
| 27 | `lemma` | [mapBifunctor_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/declarations/mapbifunctor-triangle--af513a369d7654dbab0dfa8f.md) | 326 | `result-track:af513a369d7654dbab0dfa8f664a95612139ccaffa490fe4201233370d60b2c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
