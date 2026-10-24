# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0d6508f42fee5e99b5e3ef7e71caeb2e6826b93",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0d6508f42fee5e99b5e3ef7e71caeb2e6826b93`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/shortcomplex--843270d0e11ae0934931e4f1.md) | 37 | `declaration-track:843270d0e11ae0934931e4f1da68729449a540c1ed563858d135a6bad39c8733` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/hom--a1cf457582ff907199788d8a.md) | 60 | `declaration-track:a1cf457582ff907199788d8aac3b239466161916adb799cdb1545668cdee4e31` |
| 3 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/hom-id--02513896fa1f959ba934db38.md) | 79 | `declaration-track:02513896fa1f959ba934db3845da538b7b1b3649697e06a4135ad3e4551b4ce3` |
| 4 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/hom-comp--0e2692225c551659277d76c4.md) | 86 | `declaration-track:0e2692225c551659277d76c4a1c1b8eae3096542adeeb74369d4180a8ec61380` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/instance--f684839a385d83fde0959711.md) | 91 | `declaration-track:f684839a385d83fde095971162e7b42f517f57506474c128d700a82748990b3d` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/hom-ext--0c285e0f8cbbf24e545a42f5.md) | 97 | `result-track:0c285e0f8cbbf24e545a42f59c229515ab2e186e6afa9361a353d707e78106b2` |
| 7 | `def` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/hommk--cf67fb925ba70b8f5d15beb7.md) | 103 | `declaration-track:cf67fb925ba70b8f5d15beb72d046b96d325cce3d4f5f3191c9f1c0774d1dbbd` |
| 8 | `lemma` | [id_τ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/id--4aebc880d9e5904668e48dc2.md) | 107 | `result-track:4aebc880d9e5904668e48dc2069964cb9648b692a24a8728d70d7cbd10fad5e5` |
| 9 | `lemma` | [id_τ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/id--7f683648fb0e8953f185b9ce.md) | 108 | `result-track:7f683648fb0e8953f185b9ceccdb1664fdb4fab1616faa59d8b1f11406344cc3` |
| 10 | `lemma` | [id_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/id--23977a137ff359b6b91a2e53.md) | 109 | `result-track:23977a137ff359b6b91a2e5317d565efd01f096e135ef7490dc4feb73f4b0ec3` |
| 11 | `lemma` | [comp_τ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/comp--17c4bfd5ed610aafbc8c6a52.md) | 110 | `result-track:17c4bfd5ed610aafbc8c6a521940c7248123226c7f3f7638910e4bb360fb36be` |
| 12 | `lemma` | [comp_τ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/comp--7f642480fef7d0ca6a84df7e.md) | 112 | `result-track:7f642480fef7d0ca6a84df7e2fa43ebb112a89db86e1df1439b56377243ad348` |
| 13 | `lemma` | [comp_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/comp--ce98b29636be4e30cdfa3527.md) | 114 | `result-track:ce98b29636be4e30cdfa35275145514b2a913a2b0e33c7f620f9cbd6c8fc9b2e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/instance--7b6591cf2cae21c1284f1999.md) | 119 | `declaration-track:7b6591cf2cae21c1284f199971b01ec9448b29c70ca92a088d5290ed01870f59` |
| 15 | `lemma` | [zero_τ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/zero--b419f8c6537a422101d767ac.md) | 123 | `result-track:b419f8c6537a422101d767ac6aca482f88ec9d1f7677679ebf97e5561b1544c8` |
| 16 | `lemma` | [zero_τ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/zero--c027aa2d17fe2737730d41f7.md) | 124 | `result-track:c027aa2d17fe2737730d41f712e4e227fd4bd9c62bbfd0ebb4bce26c68734fc5` |
| 17 | `lemma` | [zero_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/zero--8b5107e9a1bd2b4c5bfd21b3.md) | 125 | `result-track:8b5107e9a1bd2b4c5bfd21b3a8d3361efeba1bc1001beeb567de832d60e0c04d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/instance--6ed3bce599c2fbc81803cde9.md) | 129 | `declaration-track:6ed3bce599c2fbc81803cde98a90b15564c2a015faa9723671049d3c745643c5` |
| 19 | `def` | [π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/anonymous--69163678ba840a3168bd0486.md) | 133 | `declaration-track:69163678ba840a3168bd0486328224bd427e6cc5ef323d6ab5a778bd687e999f` |
| 20 | `def` | [π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/anonymous--d52a178e502b1f4d61f87cde.md) | 139 | `declaration-track:d52a178e502b1f4d61f87cdee79e4a17d35a56beaaa0948a06ae06156047437a` |
| 21 | `def` | [π₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/anonymous--43dbc0e6a991543e97d561d7.md) | 145 | `declaration-track:43dbc0e6a991543e97d561d7558e86e8ac7dbb9f895be8cb2a8daf9e31dcdaec` |
| 22 | `instance` | [preservesZeroMorphisms_π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/preserveszeromorphisms--6fb8795e8695dd670a1f659a.md) | 149 | `declaration-track:6fb8795e8695dd670a1f659a6b0463ab272b89188ab2fd910d9f8554cc240a66` |
| 23 | `instance` | [preservesZeroMorphisms_π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/preserveszeromorphisms--de706716451a339378382713.md) | 150 | `declaration-track:de706716451a339378382713bc65cfb233134840b47430923318dfcaf6cee6f3` |
| 24 | `instance` | [preservesZeroMorphisms_π₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/preserveszeromorphisms--5a480ba3fa72a667461fd372.md) | 151 | `declaration-track:5a480ba3fa72a667461fd372e315c963b36ff6e000972b3fd3a9752557882a2b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/instance--03a53f97b22c9eebcaeb9abe.md) | 153 | `declaration-track:03a53f97b22c9eebcaeb9abe45e7aae6527f4197a5d0fac9d4386006f707c45f` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/instance--91a4e7f9ac981d0fbeaf806a.md) | 154 | `declaration-track:91a4e7f9ac981d0fbeaf806aac2a84b2ffd7e6c336b1881eb6d73b0916f6b5a1` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/instance--bfe76eee79a92b0f1e5451b0.md) | 155 | `declaration-track:bfe76eee79a92b0f1e5451b09f8c7e667d51266c60859117e14ff7ad154180f4` |
| 28 | `def` | [π₁Toπ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/to--6f87dd7911fc36a2724fed71.md) | 158 | `declaration-track:6f87dd7911fc36a2724fed71cbea3caeb483d2cb9d7360f744d3ee592a84af45` |
| 29 | `def` | [π₂Toπ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/to--e9fff0dd9f77df939d160468.md) | 162 | `declaration-track:e9fff0dd9f77df939d160468d03fc03e270231d738d571de649086bbadb1e9c5` |
| 30 | `lemma` | [π₁Toπ₂_comp_π₂Toπ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/to-comp-to--fc8d7faa6fca2ba7f1b6d746.md) | 166 | `result-track:fc8d7faa6fca2ba7f1b6d746786add020bd5bd7e919c8ab7696ca11aff599457` |
| 31 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/map--5c228b86db7373374244c1eb.md) | 174 | `declaration-track:5c228b86db7373374244c1eb6ebcf25ce67bca09978e5238b087d802e59a36b5` |
| 32 | `def` | [mapNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/mapnattrans--33dbb1c3daa3b79550d7b0e9.md) | 180 | `declaration-track:33dbb1c3daa3b79550d7b0e964f00a4bb26ef79b1ea4bd15508f14776dd035d7` |
| 33 | `def` | [mapNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/mapnatiso--a8988afa21f038144ae743be.md) | 189 | `declaration-track:a8988afa21f038144ae743be9e48e4a3177cbeb718e83eeea8f64c0e8098b325` |
| 34 | `def` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShortComplex.Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.CategoryTheory.Functor.mapShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-shortcomplex--f75b31ae5d471c4cc5929735.md) | 197 | `declaration-track:f75b31ae5d471c4cc592973545e1a681eeb7ca00e3278255ea48506973cad324` |
| 35 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/isomk--e8681a7940c98a599c3b7791.md) | 213 | `declaration-track:e8681a7940c98a599c3b779172352ee4d3a71d73a33a58f255b6e4efb5601911` |
| 36 | `lemma` | [isIso_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/isiso-of-isiso--d121cef21bdea8836bac03b3.md) | 224 | `result-track:d121cef21bdea8836bac03b3eaa17ec795a6b0e8142c8138c4b693b56e5fbca2` |
| 37 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/op--24bdb751f2aa62d1adefa331.md) | 229 | `declaration-track:24bdb751f2aa62d1adefa3310ef13782b4e7ed1467e5696778bdfac8258d0502` |
| 38 | `def` | [opMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/opmap--d1d866552d7c2a2491640ec7.md) | 234 | `declaration-track:d1d866552d7c2a2491640ec7dfc82c0fd46694ed1da263de7a12903aa4f99a36` |
| 39 | `lemma` | [opMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/opmap-id--e39bd483132716b5f89a3bf1.md) | 246 | `result-track:e39bd483132716b5f89a3bf17a8b6b72bc1181829be11eb5770cdbe14371a130` |
| 40 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/unop--8d1c2b889f69377001cffd8d.md) | 250 | `declaration-track:8d1c2b889f69377001cffd8d0a247db31dc145457640cfb04afb11313122d43d` |
| 41 | `def` | [unopMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/unopmap--e83cc1ef291ff55ac5070a11.md) | 255 | `declaration-track:e83cc1ef291ff55ac5070a115c7b7ec3dad32717bd0705589f58ce7307c30b4c` |
| 42 | `lemma` | [unopMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/unopmap-id--5c6614192d3f0a5af4a66624.md) | 267 | `result-track:5c6614192d3f0a5af4a66624168903925208bc465446522e99fe184990897d91` |
| 43 | `def` | [opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/opfunctor--c0d5e25c3f27f1400503a5a0.md) | 273 | `declaration-track:c0d5e25c3f27f1400503a5a02b37f1f28dd572b3aeb33ae4e61d698f817f6ca9` |
| 44 | `def` | [unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/unopfunctor--967daceca0286d25087f67f7.md) | 279 | `declaration-track:967daceca0286d25087f67f78de9231bef19e2384e5d3a5a815d2940abc2c6f4` |
| 45 | `def` | [opEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/opequiv--f94ba11b7d92fe62eddc62c6.md) | 285 | `declaration-track:f94ba11b7d92fe62eddc62c68766e5478009373147ff907c6fb3bff54e4b8797` |
| 46 | `abbrev` | [unopOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/unopop--9be79ea59fdb379bbdf7d090.md) | 294 | `declaration-track:9be79ea59fdb379bbdf7d090a0ec8c9f20e5aee20043c19811f847089ef642cd` |
| 47 | `abbrev` | [opUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant48363e299de812869697bba1e3ee6f116881dd75be219f8876b2191cd83bd2cf.lean/declarations/opunop--d8ba7120cd56ddb91cab4ad0.md) | 297 | `declaration-track:d8ba7120cd56ddb91cab4ad0bfd0aff4ff85bddcc997144aa282ee20d2b3691a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
