# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29d751d2c3a03762edebdd764c617ff2366638c3",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29d751d2c3a03762edebdd764c617ff2366638c3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prod--856d0eb6b816cd5536d67091.md) | 40 | `declaration-track:856d0eb6b816cd5536d67091de1a3cb42b55ec11caa07bc8a89c94609caa8ba9` |
| 2 | `def` | [prod.fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prod-fst--36400b313073110e540edec2.md) | 48 | `declaration-track:36400b313073110e540edec28611eaafbea9d40b56ea3d983f05f0614a5637ca` |
| 3 | `def` | [prod.snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prod-snd--f6ed9fdceb03fa074e2df89f.md) | 53 | `declaration-track:f6ed9fdceb03fa074e2df89f975a4aea98e1b3f7efee2033bf5284d05e59bd78` |
| 4 | `def` | [prod.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prod-lift--c285cba294e4c0a0cf62561e.md) | 59 | `declaration-track:c285cba294e4c0a0cf62561e0331bf27f1f891cbd2cd7f215617f18e351b78d6` |
| 5 | `lemma` | [prod.lift_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prod-lift-fst--954116bb442f31db675e0eeb.md) | 68 | `result-track:954116bb442f31db675e0eeb13c56c3d507130ead6869f77802442e49937ac7b` |
| 6 | `lemma` | [prod.lift_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prod-lift-snd--75c7d762ca82befdef666555.md) | 72 | `result-track:75c7d762ca82befdef6665554b72573b14daf4c2146dd57af2bad301b905d383` |
| 7 | `def` | [binaryProductCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductcone--cc02ce2a48f44fcb42c05aee.md) | 79 | `declaration-track:cc02ce2a48f44fcb42c05aeefa6038e1cda67f62cc025af5aa76046fc96b0966` |
| 8 | `def` | [binaryProductLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductlimit--15a2abe246ac7fca06474642.md) | 84 | `declaration-track:15a2abe246ac7fca06474642dba8b0a37dec0bc5a01dc14d8c0466f485e518c1` |
| 9 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductlimitcone--139fff174c7d1412e5f81c52.md) | 92 | `declaration-track:139fff174c7d1412e5f81c5227d6e0145b1bd1e643a2f2b1f6d42b5d5c57b9c8` |
| 10 | `def` | [binaryProductIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductiso--18f5c4653cd1382c9e1d7ec4.md) | 96 | `declaration-track:18f5c4653cd1382c9e1d7ec4281547124e5438926ee1d0cebd615c2d23e14e27` |
| 11 | `lemma` | [binaryProductIso_hom_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductiso-hom-comp-fst--db4edc07a2c4a298569cf697.md) | 100 | `result-track:db4edc07a2c4a298569cf69782416d4eb64f0af5f3476a624d213cdcabfedc44` |
| 12 | `lemma` | [binaryProductIso_hom_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductiso-hom-comp-snd--82e3360deeb50bb2502a1dd4.md) | 104 | `result-track:82e3360deeb50bb2502a1dd437ea65b751203ea7e7d1a71fe71d78688f4f5fe4` |
| 13 | `lemma` | [binaryProductIso_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductiso-inv-comp-fst--3c4fede4342b1b4334b6be8e.md) | 108 | `result-track:3c4fede4342b1b4334b6be8ed17b994d6f135926ba90be7c55dbc7e3026bef2e` |
| 14 | `lemma` | [binaryProductIso_inv_comp_fst_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductiso-inv-comp-fst-apply--dcdf28b7685e617977ab6ecb.md) | 113 | `result-track:dcdf28b7685e617977ab6ecba224d1a26850a4957fe0271bcbd2be629f65cd4c` |
| 15 | `lemma` | [binaryProductIso_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductiso-inv-comp-snd--f993eaf062bd8a669e01d222.md) | 118 | `result-track:f993eaf062bd8a669e01d2226e1a49fc68d7520278be4595ece1bccefadde3f7` |
| 16 | `lemma` | [binaryProductIso_inv_comp_snd_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductiso-inv-comp-snd-apply--e9c33e4ca56b0972a11e8e78.md) | 123 | `result-track:e9c33e4ca56b0972a11e8e787c7213316b2c9e3198ffeb661095ea1e9630b70d` |
| 17 | `def` | [prodMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prodmk--1e6c7a19f6717034f58c953c.md) | 132 | `declaration-track:1e6c7a19f6717034f58c953c6f8e18ed447f8b92d4ffe0cdcdd30fed0e4b9271` |
| 18 | `lemma` | [prodMk_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prodmk-fst--02adf8206b2e17052aa601d5.md) | 136 | `result-track:02adf8206b2e17052aa601d5242848d0115e171eca99c86505804f6e97bf0d82` |
| 19 | `lemma` | [prodMk_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prodmk-snd--a3f7b0d54f91d7ab408a3629.md) | 141 | `result-track:a3f7b0d54f91d7ab408a36295a83371d055423ae15dceee5daa57a75954f5db9` |
| 20 | `lemma` | [prod_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prod-ext--8eed8a4bb3a916decf78871c.md) | 146 | `result-track:8eed8a4bb3a916decf78871c10bcc417ec0edaad15283d390b12881a53ea76fa` |
| 21 | `def` | [binaryProductEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binaryproductequiv--e4e8eecbdb32904f01a5ba53.md) | 154 | `declaration-track:e4e8eecbdb32904f01a5ba535f847d44f388cc9aa6e523a46502ddeeb83d1778` |
| 22 | `lemma` | [prod_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/prod-ext--497791b61cbcf590d40f41df.md) | 161 | `result-track:497791b61cbcf590d40f41df8de762e8ff6327509e6af0647ceb7f6c85a911f0` |
| 23 | `def` | [coprod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/coprod--222f01873cf3dc19e4d4ac16.md) | 173 | `declaration-track:222f01873cf3dc19e4d4ac162c4c32803008c39a6397b848b207dc364e1ddd54` |
| 24 | `def` | [coprod.inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/coprod-inl--e20e5adc0571c5bb4bcb54dd.md) | 184 | `declaration-track:e20e5adc0571c5bb4bcb54dd84110dad2b9055944b804a5aee6f3c176b4ba44e` |
| 25 | `def` | [coprod.inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/coprod-inr--2bec88cabdc588ff005b8a97.md) | 189 | `declaration-track:2bec88cabdc588ff005b8a97d222dc74b0fec6bcd57ec22bad2acacbfe263d83` |
| 26 | `def` | [coprod.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/coprod-desc--5f55dacfcc6f694c97552ab3.md) | 195 | `declaration-track:5f55dacfcc6f694c97552ab31422d7ab9b393e1c17a4fd3fb54e5ed335d4e575` |
| 27 | `lemma` | [coprod.desc_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/coprod-desc-inl--74fecd3103cc009e19438b2c.md) | 206 | `result-track:74fecd3103cc009e19438b2c6e496f871974a2a87e4672f9227bda3aae885222` |
| 28 | `lemma` | [coprod.desc_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/coprod-desc-inr--3126ef56101fcdcbac71a206.md) | 210 | `result-track:3126ef56101fcdcbac71a206725c9ad358e46c7b75d78588ea3c9e6bec023913` |
| 29 | `def` | [binaryCoproductCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binarycoproductcocone--64ffc9e5c1cb8de4c0668b99.md) | 217 | `declaration-track:64ffc9e5c1cb8de4c0668b9917fbcc1e83530d950093ad4adb4a752ed26f4fc8` |
| 30 | `def` | [binaryCoproductColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binarycoproductcolimit--51920dde4bf8c2aafd0b9011.md) | 222 | `declaration-track:51920dde4bf8c2aafd0b9011d5c8473c973b9af710fdb8dd7f453d3dce64f4da` |
| 31 | `def` | [binaryCoproductColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binarycoproductcolimitcocone--e60650e544321638b8421f40.md) | 230 | `declaration-track:e60650e544321638b8421f40571735cbc561c10a0621d1ccab43f29e65b7bb41` |
| 32 | `def` | [binaryCoproductIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binarycoproductiso--1385f3507870867ad758d6a3.md) | 234 | `declaration-track:1385f3507870867ad758d6a395d0f15f151eae3a5628479a57db87a0f4459c71` |
| 33 | `lemma` | [inl_comp_binaryCoproductIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/inl-comp-binarycoproductiso-hom--d6161a11419339664355d812.md) | 238 | `result-track:d6161a11419339664355d812c58ab485e5f0e12e260a321d1526ca065754ab0b` |
| 34 | `lemma` | [inl_comp_binaryCoproductIso_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/inl-comp-binarycoproductiso-hom-apply--2804b6f641ebac6d7f3daffc.md) | 244 | `result-track:2804b6f641ebac6d7f3daffcd6f8d05d159b48e810c14ba8d7a96493f484dbb8` |
| 35 | `lemma` | [inr_comp_binaryCoproductIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/inr-comp-binarycoproductiso-hom--3ecd218b2fc6b2e1cfe7ffb7.md) | 249 | `result-track:3ecd218b2fc6b2e1cfe7ffb78e80f08b1829e326056cf7307025181bf02f09fc` |
| 36 | `lemma` | [inr_comp_binaryCoproductIso_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/inr-comp-binarycoproductiso-hom-apply--76b669a75a75a154fd34e2aa.md) | 255 | `result-track:76b669a75a75a154fd34e2aadc8d0d40b6ea256a90129f87f33536bc1b3644c6` |
| 37 | `lemma` | [inl_comp_binaryCoproductIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/inl-comp-binarycoproductiso-inv--a4bc594995a3f170205ae421.md) | 260 | `result-track:a4bc594995a3f170205ae4213c4a82e1b899ec0541829fc83260feb832d44f3d` |
| 38 | `lemma` | [inl_comp_binaryCoproductIso_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/inl-comp-binarycoproductiso-inv-apply--700e48873fef4f68d6a68ac8.md) | 264 | `result-track:700e48873fef4f68d6a68ac8bf6b41f956585502e0f431377d8930ba55a6b8f2` |
| 39 | `lemma` | [inr_comp_binaryCoproductIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/inr-comp-binarycoproductiso-inv--e39359f41d0db2aec69715d3.md) | 268 | `result-track:e39359f41d0db2aec69715d37f17e20629f16a3b314246bac19807e9d7693dcd` |
| 40 | `lemma` | [inr_comp_binaryCoproductIso_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/inr-comp-binarycoproductiso-inv-apply--1ab81735774c55e4c6c29a75.md) | 272 | `result-track:1ab81735774c55e4c6c29a759e58291344ce8f2d4f5b32c57a94d9e89350d42d` |
| 41 | `abbrev` | [coprodInl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/coprodinl--4011490da826f5b5d225b688.md) | 279 | `declaration-track:4011490da826f5b5d225b6887506d0c622e8833697af0ee2365bfeec481c673d` |
| 42 | `abbrev` | [coprodInr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/coprodinr--95394270b061c2e694a77634.md) | 284 | `declaration-track:95394270b061c2e694a7763498ddd07eb98cc1a1087a5a8decaca28bfa644d51` |
| 43 | `def` | [binaryCoproductEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantfa84ba5044c9b71c54fa27646be9910e440493b5ef09e7c7661c037309121336.lean/declarations/binarycoproductequiv--9bcfe6fa291ecdc53561bb22.md) | 292 | `declaration-track:9bcfe6fa291ecdc53561bb22e3f07f6e5dd693bab6343f0cd7cb6579087bf03c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
