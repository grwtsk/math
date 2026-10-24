# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preord.Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4691df2b3f297cfc49a2f3758e89f8f85c26da",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4691df2b3f297cfc49a2f3758e89f8f85c26da`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Preorder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteBooleanAlgebra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Preord](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/preord--dc653b94c4d9c380d8073985.md) | 32 | `declaration-track:dc653b94c4d9c380d807398562c77dd98cf037ac2ac45703e9627ca52fcbf4ad` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/instance--b44d3186efeb71576f5db545.md) | 43 | `declaration-track:b44d3186efeb71576f5db5452fc74ce5c1e9ea4a2179658bf6ff24c410bd874c` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/of--d1792d9caaeaf59418bb450d.md) | 49 | `declaration-track:d1792d9caaeaf59418bb450d2bde0c1c6edd874799cbd2393d30164624bd012b` |
| 4 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/hom--b9a43edf2eb1d8783c212375.md) | 53 | `declaration-track:b9a43edf2eb1d8783c212375d90be81db3c5c32902eb8f0f08ac1db2f52a3b16` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/instance--1ab47ff700960430931b65db.md) | 58 | `declaration-track:1ab47ff700960430931b65db4cb6bf7b876a001447cd049ab39e927e25ef8e42` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/instance--6680f5ae1451a0a205b0fccf.md) | 63 | `declaration-track:6680f5ae1451a0a205b0fccf94fa28ce62c1d8700c38071dd5a9ddbf1a0bee7d` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/hom-hom--87a6a55663ae746030cb2977.md) | 68 | `declaration-track:87a6a55663ae746030cb297728e043fe114c0092e5104a052b34c404607f1d10` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/ofhom--db2e26fd2b57c4e1e4ac5255.md) | 72 | `declaration-track:db2e26fd2b57c4e1e4ac52557c6fe301da3e57cf3c0b2d7c11e6e493e7af9378` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/hom-simps-hom--bba4f073f03d152e000c5d3f.md) | 77 | `declaration-track:bba4f073f03d152e000c5d3fe856d8cbaed7754ada2f64807aeec847dabbcf39` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/coe-id--38b363d0d0891822dec9dc84.md) | 87 | `result-track:38b363d0d0891822dec9dc848a0c6d4dfc10fe3b84436d78e6f7a26b613de242` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/coe-comp--d0fb0ca3348d49b7c1a5b0d1.md) | 90 | `result-track:d0fb0ca3348d49b7c1a5b0d11a1daa136ab98f84411e39afbbff61dfb2cbb5cf` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/forget-map--ae6e83c6dc84de0972c5cfb9.md) | 93 | `result-track:ae6e83c6dc84de0972c5cfb90ef4fee7db8596e1e4bd7c55f4e0a09328886dc9` |
| 13 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/ext--0d0d6962eeb7f49787890289.md) | 97 | `result-track:0d0d6962eeb7f497878902898697fc855197b7a95e8f938736da4481cb0cd34d` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/coe-of--07d484a66559cd03913e5094.md) | 101 | `result-track:07d484a66559cd03913e50942ca4513e6f997ea67b92f373d06a33fe5ba059fc` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/hom-id--ef2d19df794e2d350b207dbd.md) | 104 | `result-track:ef2d19df794e2d350b207dbd929e672e8e0d79eebf2378bdd222970ba44b31f2` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/id-apply--d16724536b190a30e57bf8b8.md) | 107 | `result-track:d16724536b190a30e57bf8b8536920c6b92fc74444a56583471cf6a1c55ace2c` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/hom-comp--2451dcfe55f530161b83859d.md) | 111 | `result-track:2451dcfe55f530161b83859d25441bd793a8df006f85e749cfb676d903b1d6fb` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/comp-apply--e3c0c56b0d9b14ee570be393.md) | 115 | `result-track:e3c0c56b0d9b14ee570be393a5a20111b7837816afaf1a31bb2a2a903e6a6001` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/hom-ext--ff3c56ff268277fd32a64075.md) | 119 | `result-track:ff3c56ff268277fd32a6407539a8193927d95e5ddda6acd9ce425ad94f0fde0d` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/hom-ofhom--fa801f0f408ee2dd81d48c34.md) | 123 | `result-track:fa801f0f408ee2dd81d48c34e3129f5e96f142230be1f7c26887a2e7484e8f0b` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/ofhom-hom--3ee3970e16e58a789f68d3d8.md) | 127 | `result-track:3ee3970e16e58a789f68d3d8a2532d1e0178e2056d6bfbd5c5c159c0f2ed3009` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/ofhom-id--16c35708239a598d71b65aca.md) | 131 | `result-track:16c35708239a598d71b65acad5778d4e44e29f8180707b7bf7d6ab89e5fd41b3` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/ofhom-comp--a7c980171ed47836a7a92c6d.md) | 134 | `result-track:a7c980171ed47836a7a92c6d96ee94f9046625ae87fd2d4d1fe571f296511388` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/ofhom-apply--c352d4732aa422ba3aab5edb.md) | 139 | `result-track:c352d4732aa422ba3aab5edbfce21a803af637c3963aab1a3b399bdf8092cce5` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/inv-hom-apply--e0d4e79613c9638a6e234a5f.md) | 142 | `result-track:e0d4e79613c9638a6e234a5f15238d467fdd77a40971173e03c529a95b57f41b` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/hom-inv-apply--9fcfbdd69242e28f166f1481.md) | 145 | `result-track:9fcfbdd69242e28f166f1481b87f6862f6c6ba8530e5b9e1aa3a84b9a3794fe2` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/instance--e4d1cdb329f2ef02d6e3d28b.md) | 148 | `declaration-track:e4d1cdb329f2ef02d6e3d28be3bc04b787c4c5b9de3f9411e9bcbb2034fa0e1b` |
| 28 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/iso-mk--aa206c5d547158388f1a8812.md) | 153 | `declaration-track:aa206c5d547158388f1a8812fdd553bff875e1e9b7f421ed43750a917c10ec38` |
| 29 | `def` | [dual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/dual--b3d7f676b6b02aec9eaa4ec9.md) | 159 | `declaration-track:b3d7f676b6b02aec9eaa4ec99fe333b49a5dd30e148d258443037f4cb670549d` |
| 30 | `def` | [dualEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/dualequiv--655a42abdfc23583c8b392ca.md) | 165 | `declaration-track:655a42abdfc23583c8b392ca4b6e3da8e873a634586e36d27f670f241b54e5a6` |
| 31 | `def` | [preordToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/preordtocat--268226b9ad080e86086753ea.md) | 176 | `declaration-track:268226b9ad080e86086753ea51e47a59bc9843c66b949cb9f57c7109fafe050e` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/instance--1906d23cb6146ec995e9e0da.md) | 180 | `declaration-track:1906d23cb6146ec995e9e0daa4ce7dc0e0cde197f19c0c44bc26adb70d8c247a` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variantf1ee9f735c0f83751de7232c34cc4053c5d46a3c73bdbd04801afa8a919be12c.lean/declarations/instance--b904fd51b83fb8991512345f.md) | 183 | `declaration-track:b904fd51b83fb8991512345fd6495feca00e46fa58fefedb7a754f7454141390` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
