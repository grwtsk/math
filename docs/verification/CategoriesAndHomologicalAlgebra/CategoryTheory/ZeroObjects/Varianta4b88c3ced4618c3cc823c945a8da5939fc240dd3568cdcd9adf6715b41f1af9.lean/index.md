# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ZeroObjects.Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db799144fb8daae03945f132387d8c2cdb10ff44",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db799144fb8daae03945f132387d8c2cdb10ff44`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/iszero--a0f8e3917ff5ab58c42747a8.md) | 48 | `declaration-track:a0f8e3917ff5ab58c42747a8d0f822f4749ce02a032cc45b4d72064d0a7e3105` |
| 2 | `def` | [to_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/to--2e91c2f32fbe07962fc73455.md) | 60 | `declaration-track:2e91c2f32fbe07962fc73455cb98b4e9cd23f509c93fb1caf2f5612878ed6481` |
| 3 | `theorem` | [eq_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/eq-to--994d8af0413a40418f254844.md) | 63 | `result-track:994d8af0413a40418f25484481aaa08476b731554f3a02196cb4a7500c599ea4` |
| 4 | `theorem` | [to_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/to-eq--9c5b47b054ac323c737a0c74.md) | 66 | `result-track:9c5b47b054ac323c737a0c74b0bca2cdda6573378d34dbc186998ae10175ecd1` |
| 5 | `def` | [from_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/from--b6bee892a1892c283f8cb32a.md) | 71 | `declaration-track:b6bee892a1892c283f8cb32a77b804152fbbc92e2bc61cc57c510a7f5432640b` |
| 6 | `theorem` | [eq_from](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/eq-from--c8a70576c64377fe7946cb2f.md) | 74 | `result-track:c8a70576c64377fe7946cb2f0e81ea2b1e8da3a1010077abc01da25304ba685f` |
| 7 | `theorem` | [from_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/from-eq--32876637b61bdeae4fcd45e0.md) | 77 | `result-track:32876637b61bdeae4fcd45e0416157a917520ce6342940cbe5af441bb67c4b70` |
| 8 | `theorem` | [eq_of_src](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/eq-of-src--cea5e86c86026d6a2d034616.md) | 80 | `result-track:cea5e86c86026d6a2d03461655a7dd409ad472057b487a6fe2cf99ceb78cc17d` |
| 9 | `theorem` | [eq_of_tgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/eq-of-tgt--0f3aa396d832060a98336960.md) | 83 | `result-track:0f3aa396d832060a9833696031eff5da9007ad20f2158f7eea26a63976ffda21` |
| 10 | `lemma` | [epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/epi--02743cb0697aa49b579effa1.md) | 86 | `result-track:02743cb0697aa49b579effa1de1b6d07833aac025919cf8c38fa17e849714fe4` |
| 11 | `lemma` | [mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/mono--83cc5b521379fb8fb780ea9e.md) | 89 | `result-track:83cc5b521379fb8fb780ea9e7eb3abf599db39438b663972f9f0d7466b5b6697` |
| 12 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/iso--3b850440a1e6e26748179f19.md) | 93 | `declaration-track:3b850440a1e6e26748179f1963e9c733d9b2102ca0f42c165d0b4c2ad9d7fbe4` |
| 13 | `def` | [isInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/isinitial--03e4fe63044271b8765d7771.md) | 100 | `declaration-track:03e4fe63044271b8765d7771438bcc05a7c054a31be673924f8f08c67df9a7b9` |
| 14 | `def` | [isTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/isterminal--0c362cb8b169edb346fb3ac3.md) | 104 | `declaration-track:0c362cb8b169edb346fb3ac3ab64f260cfaea4d386b4cf40f1baeb201219d4b8` |
| 15 | `def` | [isoIsInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/isoisinitial--6eb74665d123bf38517c54f7.md) | 108 | `declaration-track:6eb74665d123bf38517c54f7c30a2980c1a411bb1e266cf15e360f267189715a` |
| 16 | `def` | [isoIsTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/isoisterminal--190eebceefc4c6be36854ba0.md) | 112 | `declaration-track:190eebceefc4c6be36854ba02af2110daf33b5ad16a8cfadd9fa67ebeceb0f79` |
| 17 | `theorem` | [of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/of-iso--3bce815d43309847382cb96a.md) | 115 | `result-track:3bce815d43309847382cb96ab143334a8803109c6f73819e6191e76462cc20b2` |
| 18 | `theorem` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/op--e6be2ea6efb9e55a41d0a1c3.md) | 123 | `result-track:e6be2ea6efb9e55a41d0a1c329048126dd4255fe00bc722a716254fff7a6ff2e` |
| 19 | `theorem` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/unop--f094284e149a2e38df61fd39.md) | 127 | `result-track:f094284e149a2e38df61fd390de756ce695ed54f90f20acbaf448d076221bfa0` |
| 20 | `theorem` | [Iso.isZero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/iso-iszero-iff--122adf607c2bf5dc9a503f47.md) | 137 | `result-track:122adf607c2bf5dc9a503f4787429c4915a1e0e1e001c3989aac85c7c24f5a42` |
| 21 | `theorem` | [Functor.isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/functor-iszero--c22746a0f224dc34b0adc0d5.md) | 140 | `result-track:c22746a0f224dc34b0adc0d58cfaf2a406dda1fba276d69fe566ca30f20c4c2e` |
| 22 | `class` | [HasZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/haszeroobject--5323245e121b57df177f3aa3.md) | 164 | `declaration-track:5323245e121b57df177f3aa33c467398254ed1edac858dc4bc52e0aa6367ce33` |
| 23 | `instance` | [hasZeroObject_pUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/haszeroobject-punit--fbe83002b7cebd019ad09634.md) | 168 | `declaration-track:fbe83002b7cebd019ad096348dbfbbd77bee9882e1ea84c483a720b94a88d429` |
| 24 | `def` | [HasZeroObject.zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/haszeroobject-zero--f0b5c6415e8cb868ee5165de.md) | 184 | `declaration-track:f0b5c6415e8cb868ee5165de9198267b23338f408da0eed540c54a405d83b626` |
| 25 | `theorem` | [isZero_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/iszero-zero--f56fff432415a77711fb2964.md) | 190 | `result-track:f56fff432415a77711fb29642a5b924c4296dfdddf67a9705dd88e9586590159` |
| 26 | `instance` | [hasZeroObject_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/haszeroobject-op--c18c5a03b288a9dbacdbe0fc.md) | 193 | `declaration-track:c18c5a03b288a9dbacdbe0fc5bb0b84ef0ef9a5b8d72f2063e237dba4af9ddb7` |
| 27 | `theorem` | [hasZeroObject_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/haszeroobject-unop--d09e8a5ec5d0bd3a47e57b4d.md) | 200 | `result-track:d09e8a5ec5d0bd3a47e57b4da38c30f3d68bd625c9a0b5f385a08ca3b7e91a1d` |
| 28 | `theorem` | [IsZero.hasZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/iszero-haszeroobject--2c4cc716afc880de3c7253e0.md) | 205 | `result-track:2c4cc716afc880de3c7253e0b06c7a10dd30a725355c1c1d4b1072900aa18e84` |
| 29 | `def` | [IsZero.isoZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/iszero-isozero--09be03793f5982a4c92aeb2f.md) | 209 | `declaration-track:09be03793f5982a4c92aeb2f2e03c47cd1b2fde2e87476cc5804aeae568d0efa` |
| 30 | `theorem` | [IsZero.obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/iszero-obj--b12c8e34bbbc3903e1e96561.md) | 212 | `result-track:b12c8e34bbbc3903e1e965618b2e2960dfd1ddcca26b5192333b20d575b80685` |
| 31 | `def` | [uniqueTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/uniqueto--4511836002ac65abe7fef55d.md) | 223 | `declaration-track:4511836002ac65abe7fef55d8915e726995a80d73bc1de9d2d3c23f0e61a7b4e` |
| 32 | `def` | [uniqueFrom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/uniquefrom--871931684a74b4912a0b5889.md) | 227 | `declaration-track:871931684a74b4912a0b5889c9d7fef7057bf6f99d23b94175b7e6d7d3dfde14` |
| 33 | `theorem` | [to_zero_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/to-zero-ext--a4b786c77aa1f5070c017e4f.md) | 235 | `result-track:a4b786c77aa1f5070c017e4f252239fbc51a99dcb7cc94828d2308add3a06dcc` |
| 34 | `theorem` | [from_zero_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/from-zero-ext--ccd99e4df5efe1a32328c049.md) | 239 | `result-track:ccd99e4df5efe1a32328c0490d7c3da3077c5236d777fb2bc93296e7f10d1e69` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/instance--f15c0ae913bdbaae202646b4.md) | 242 | `declaration-track:f15c0ae913bdbaae202646b4d174c55f3806ccb34c6082a7ffb4f90364aa2992` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/instance--ca13b5e5b1cb10e4575c42f7.md) | 244 | `declaration-track:ca13b5e5b1cb10e4575c42f7cf5f69189e5edfd235aeff691ac84b4de3776c9e` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/instance--372235329104f604999bb598.md) | 246 | `declaration-track:372235329104f604999bb5989a896ddacd15e583bdf41be26fd2118029c547c9` |
| 38 | `instance` | [zero_to_zero_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/zero-to-zero-isiso--5256bf1886acba0c15d89503.md) | 248 | `declaration-track:5256bf1886acba0c15d89503b178471daa395408ab8b30e7001db7803473ae58` |
| 39 | `def` | [zeroIsInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/zeroisinitial--a8814543386f5371c27cd3b4.md) | 253 | `declaration-track:a8814543386f5371c27cd3b427b9242f07027af3fe0386399a36fc389f65c710` |
| 40 | `def` | [zeroIsTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/zeroisterminal--f137c6603a2b92f7667c5d7f.md) | 257 | `declaration-track:f137c6603a2b92f7667c5d7fa68318493406d233e63d4e9f93450f3cebcd6a86` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/instance--80013a11b709de72d1ac5338.md) | 261 | `declaration-track:80013a11b709de72d1ac533807ac5e9f7d1e43e6569c566013e449acb0db941c` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/instance--6c3368fe4c4d2a7383c5280c.md) | 265 | `declaration-track:6c3368fe4c4d2a7383c5280cd75f5fe096b7b33ccae4141824b259c12f64e6ef` |
| 43 | `def` | [zeroIsoIsInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/zeroisoisinitial--d49c7db568132bd950dbef0f.md) | 269 | `declaration-track:d49c7db568132bd950dbef0f88a6e2b395b6380d5ec2264b24cf498a93c1efbe` |
| 44 | `def` | [zeroIsoIsTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/zeroisoisterminal--8fce64519a728b654c183f77.md) | 273 | `declaration-track:8fce64519a728b654c183f77ddffa0cbbe2e3104dc9b3b26d3bf1067dcc14661` |
| 45 | `def` | [zeroIsoInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/zeroisoinitial--65e831a50b2285673ba7179a.md) | 277 | `declaration-track:65e831a50b2285673ba7179a3fc306e74775e53f72976cb400b9032e3510fc45` |
| 46 | `def` | [zeroIsoTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/zeroisoterminal--83df747d0d7d53458ab15928.md) | 281 | `declaration-track:83df747d0d7d53458ab15928c8d5618d0bdaff518e919bcd202156a01485a016` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/instance--7bb6e4b9c6859136982b56a4.md) | 284 | `declaration-track:7bb6e4b9c6859136982b56a4c4b065ccb7a6124e5d1999a2a7299455dfe4f8a2` |
| 48 | `theorem` | [Functor.isZero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Varianta4b88c3ced4618c3cc823c945a8da5939fc240dd3568cdcd9adf6715b41f1af9.lean/declarations/functor-iszero-iff--a825d98d0de670e68176663d.md) | 295 | `result-track:a825d98d0de670e68176663de4b0c45208be588a0b7bb5feaf69b0d4f974812b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
