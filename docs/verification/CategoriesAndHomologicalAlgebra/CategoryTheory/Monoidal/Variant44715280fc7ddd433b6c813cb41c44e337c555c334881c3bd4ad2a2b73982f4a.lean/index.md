# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e12a50064c14b5732e0b16f9822c2f608a3652eb",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e12a50064c14b5732e0b16f9822c2f608a3652eb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Trifunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/ismonoidal--382a7be279dadf4fe1072888.md) | 45 | `declaration-track:382a7be279dadf4fe107288861637d748b523680f2a540b41fe61244de989c1b` |
| 2 | `lemma` | [whiskerLeft_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/whiskerleft-mem--14475c1d7f6d84783d00ca9f.md) | 51 | `result-track:14475c1d7f6d84783d00ca9f55d4ed06727f64715f1fd7a681519602646902d5` |
| 3 | `lemma` | [whiskerRight_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/whiskerright-mem--a3662685eabfac596e4feed4.md) | 54 | `result-track:a3662685eabfac596e4feed492e6cff0de14535197c5df8aeb6a88df3f90b7d3` |
| 4 | `lemma` | [tensorHom_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/tensorhom-mem--31915eed79d2949b18e6ccc3.md) | 57 | `result-track:31915eed79d2949b18e6ccc3871c9ac16200a9aaebb04793be5f53d2fa63fc7a` |
| 5 | `def` | [LocalizedMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/localizedmonoidal--e6fd749897326350b0b8e9a5.md) | 69 | `declaration-track:e6fd749897326350b0b8e9a5404092b568c38eee341be806885577b434f6ef7c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/instance--17c0273f3676f9ddc12466ec.md) | 77 | `declaration-track:17c0273f3676f9ddc12466ec8ab4a152a10444b6548729494cd6684fb622d943` |
| 7 | `def` | [toMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/tomonoidalcategory--f5bb35c52a803e8b384300e0.md) | 84 | `declaration-track:f5bb35c52a803e8b384300e0efb36c0d8dab1c97c77a62147812862214c481e4` |
| 8 | `abbrev` | [ε'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/anonymous--f9dc49a4261476bee58e95d9.md) | 88 | `declaration-track:f9dc49a4261476bee58e95d93f8f14c76d8e63490f6f16b5161ee3c5ee1011f5` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/instance--e23ab479881c72641cf6a572.md) | 92 | `declaration-track:e23ab479881c72641cf6a572755c78bed5ba4d10b586ccda52d79da25ffb8924` |
| 10 | `lemma` | [isInvertedBy₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/isinvertedby--7abc5a58cc447674d99ad29d.md) | 94 | `result-track:7abc5a58cc447674d99ad29da5abb6bd4e33840c78a986641bbf4eefb69b49ae` |
| 11 | `def` | [tensorBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/tensorbifunctor--aca890ed74c0d27b120085fe.md) | 104 | `declaration-track:aca890ed74c0d27b120085fecedc97dfdf3d9c4f1d8392ba862af14b1c4572dd` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/instance--736817a585d64f034f047a5b.md) | 108 | `declaration-track:736817a585d64f034f047a5be2e617b78444bb65ead6eea0a99255a0c6641f1a` |
| 13 | `abbrev` | [tensorBifunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/tensorbifunctoriso--fa63a067fd674cc35ea83e5e.md) | 115 | `declaration-track:fa63a067fd674cc35ea83e5e1a1f4bde275d458bdea092bf2bdb2c9c26f59edc` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/instance--a34f9d10a03c884c569da47f.md) | 121 | `declaration-track:a34f9d10a03c884c569da47feed47dcad34f3ed8fed6d28b774ed0dd3bbce2a1` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/instance--1b8e81660404d38ee268776a.md) | 125 | `declaration-track:1b8e81660404d38ee268776a71c41852a12ef6ca28d4a2c245e6484b3b020b6d` |
| 16 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/leftunitor--f09c1a8f010dfd2830b20cbc.md) | 130 | `declaration-track:f09c1a8f010dfd2830b20cbc878069833d3fe421a276a8a713507da6e3cd349a` |
| 17 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/rightunitor--c774a71f3bea8967b0b34825.md) | 137 | `declaration-track:c774a71f3bea8967b0b3482555adf851d96f91f8f8d3219eda9679a3289c51f3` |
| 18 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/associator--f839d25b23b57890c24db2b6.md) | 144 | `declaration-track:f839d25b23b57890c24db2b627c4d485da9bde6c57cf07dc9122350e1a903d25` |
| 19 | `instance` | [monoidalCategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/monoidalcategorystruct--d85c628fa53f17b100370503.md) | 151 | `declaration-track:d85c628fa53f17b10037050355101d138a77975e042851d9c5468f46ae5119ca` |
| 20 | `def` | [μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/anonymous--290f8dda129698fd0f760096.md) | 163 | `declaration-track:290f8dda129698fd0f760096f32976b76b413d007659c9fb607127078a995c9b` |
| 21 | `lemma` | [μ_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/natural-left--b35687820e81d504a071bc48.md) | 167 | `result-track:b35687820e81d504a071bc48b66ef304c6ccc11b3646459bd26ec2b163d4938e` |
| 22 | `lemma` | [μ_inv_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/inv-natural-left--4e5776668622e680b175f483.md) | 173 | `result-track:4e5776668622e680b175f483adfa6562ae95a068b0726ba6667cb8dc61fa8ccf` |
| 23 | `lemma` | [μ_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/natural-right--89fcf003f7bd7a2ec7a262a6.md) | 179 | `result-track:89fcf003f7bd7a2ec7a262a6080fa692ea4fbf0125c069eb13419380e50aa81d` |
| 24 | `lemma` | [μ_inv_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/inv-natural-right--408dc3c3e5603744522ccd57.md) | 185 | `result-track:408dc3c3e5603744522ccd57c64ab136ff0a6ea5fdba8a86bb9926ca7d3da99a` |
| 25 | `lemma` | [leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/leftunitor-hom-app--3ca37b47629254480d63e187.md) | 190 | `result-track:3ca37b47629254480d63e18760e2eedb9f33344980647771487ba68b39e793c8` |
| 26 | `lemma` | [rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/rightunitor-hom-app--b5e5061aa84ab6f16fe8d38f.md) | 200 | `result-track:b5e5061aa84ab6f16fe8d38fe8672c3cc0481227d76128233f0fc464acea08d3` |
| 27 | `lemma` | [associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/associator-hom-app--cfa8b502c6575a57ec11ad80.md) | 211 | `result-track:cfa8b502c6575a57ec11ad80d033567e17ab247f0b3293950ddbc98cfeeff9a4` |
| 28 | `lemma` | [id_tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/id-tensorhom--147bff01f46a1d4ec656cd81.md) | 220 | `result-track:147bff01f46a1d4ec656cd81351772705c9897a48dbdcc21c8a0b185e421b77f` |
| 29 | `lemma` | [tensorHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/tensorhom-id--e5b17776e04bacbc39f57eeb.md) | 224 | `result-track:e5b17776e04bacbc39f57eeb9fdf43601092838805b85c4825a8dca39193ea2b` |
| 30 | `lemma` | [tensor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/tensor-comp--eb36e2f706198d9407a3d84f.md) | 229 | `result-track:eb36e2f706198d9407a3d84fc12371625dc00086c8f13e3c09dd632c858c410d` |
| 31 | `lemma` | [tensor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/tensor-id--ef4f92a49f91d6404cce8ed8.md) | 234 | `result-track:ef4f92a49f91d6404cce8ed89fcddeb5031243399dd91927bc211ee925d4cb43` |
| 32 | `theorem` | [whiskerLeft_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/whiskerleft-comp--c6cede4588c25f6f595e0eec.md) | 238 | `result-track:c6cede4588c25f6f595e0eec1b338a9885e497839945b4b73f391ef6fe2ecc09` |
| 33 | `theorem` | [whiskerRight_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/whiskerright-comp--ad60fbd3115c02fd0d294df4.md) | 244 | `result-track:ad60fbd3115c02fd0d294df44969a38e79da6ecd82247c5c5ade8f8c57c62142` |
| 34 | `lemma` | [whiskerLeft_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/whiskerleft-id--9ebc01cfbf82855a3c542d27.md) | 249 | `result-track:9ebc01cfbf82855a3c542d27a38a959ab2369c77daab14b7972c72210292453a` |
| 35 | `lemma` | [whiskerRight_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/whiskerright-id--e9b865ae67d0ec22f6186bd3.md) | 252 | `result-track:e9b865ae67d0ec22f6186bd3422ab7853fc964f47efd2f516879c21ddeb30219` |
| 36 | `lemma` | [whisker_exchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/whisker-exchange--38585d41adbed45c7de0dc4b.md) | 256 | `result-track:38585d41adbed45c7de0dc4bb72e74774c3ba8147ca28b29e322d379148a4b1f` |
| 37 | `lemma` | [associator_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/associator-naturality--71fa4c020412fc890230f3b8.md) | 261 | `result-track:71fa4c020412fc890230f3b82a79b511bbab8f193363c33c266c33083c584e5b` |
| 38 | `lemma` | [associator_naturality₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/associator-naturality--aace8ea82281c4e820b43826.md) | 272 | `result-track:aace8ea82281c4e820b438266d994a5ccaf0be75460a275aa3c10f4675bbd6ed` |
| 39 | `lemma` | [associator_naturality₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/associator-naturality--53bc0742f21792aa3315e51f.md) | 277 | `result-track:53bc0742f21792aa3315e51f95d5ba6d605ee5346d3431d2e69fe6c6a94610ae` |
| 40 | `lemma` | [associator_naturality₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/associator-naturality--ea6f12a128603bf278f26011.md) | 282 | `result-track:ea6f12a128603bf278f260119cfbc0bf30b3335694c6b6edd18c40ae1621b17c` |
| 41 | `lemma` | [pentagon_aux₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/pentagon-aux--8c808c041a183d68a660c304.md) | 286 | `result-track:8c808c041a183d68a660c3047c40852fb49d845b95c8a0c6299e3bac73d96329` |
| 42 | `lemma` | [pentagon_aux₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/pentagon-aux--aea9fbc74715bea315a9a432.md) | 291 | `result-track:aea9fbc74715bea315a9a43291ad910cd6d36eaa3ffbcfc4a69be55dccd6e241` |
| 43 | `lemma` | [pentagon_aux₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/pentagon-aux--f2d999102e8152553527c2a8.md) | 296 | `result-track:f2d999102e8152553527c2a85f60ac46058864c49dae2baf0ec510a91d82bae9` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/instance--4dc7244a03d9dcf6a3867c2c.md) | 301 | `declaration-track:4dc7244a03d9dcf6a3867c2c322a6471dd51b535b920bb1774dce04e571fd9da` |
| 45 | `lemma` | [pentagon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/pentagon--2b42de7b6907f100117159f8.md) | 304 | `result-track:2b42de7b6907f100117159f8739901913c3efc11ff51a10f98a4ef304466fae7` |
| 46 | `lemma` | [leftUnitor_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/leftunitor-naturality--49a691e8d06603d4cc3b177f.md) | 347 | `result-track:49a691e8d06603d4cc3b177f82edacb2d14a2eb521bc173030a5a5368be7ef8f` |
| 47 | `lemma` | [rightUnitor_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/rightunitor-naturality--6395c24ca8a24a1ed3a39203.md) | 351 | `result-track:6395c24ca8a24a1ed3a3920368aa121173fb93e21718cf8c65b43ef22219ec78` |
| 48 | `lemma` | [triangle_aux₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/triangle-aux--158765cdf961aeb9ee61fe12.md) | 356 | `result-track:158765cdf961aeb9ee61fe12057d3cb0b5a797d7ec31acfe3229a29df6008eaa` |
| 49 | `lemma` | [triangle_aux₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/triangle-aux--76fca93b624bd0e5e3fbe419.md) | 363 | `result-track:76fca93b624bd0e5e3fbe4192e03942b6abfd4a38b9ee7f8c14f8e9c5f3a4254` |
| 50 | `lemma` | [triangle_aux₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/triangle-aux--0b3db4a4a79fa2ab22019ff8.md) | 373 | `result-track:0b3db4a4a79fa2ab22019ff86ae0ab033d1db421b68e9a7fa61d9c260b5919f2` |
| 51 | `lemma` | [triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/triangle--e08672e83eb44e7caf15204e.md) | 385 | `result-track:e08672e83eb44e7caf15204eb339d1d0a2552ba8820d4445f4fa45184c4e7153` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/instance--d507f6069260a550359b5f6f.md) | 412 | `declaration-track:d507f6069260a550359b5f6f5b53ce6ebe8bdbe35204cc5b488436e4595fd979` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/declarations/instance--581adba6a40e5122c61eba95.md) | 431 | `declaration-track:581adba6a40e5122c61eba95601303f150bc74ccf6e0df0551fc626c796b6a0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
