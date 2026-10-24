# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NatIso.Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8626f4a69400b37d390874f70275efd4086a51e4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8626f4a69400b37d390874f70275efd4086a51e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Category` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/app--dae9d9b2327bf81dbedd10fb.md) | 51 | `declaration-track:dae9d9b2327bf81dbedd10fbb8df8c887f18586b3628f7f1bcc5685bf1cb4588` |
| 2 | `theorem` | [hom_inv_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/hom-inv-id-app--96676a314c42ac4c73a4151a.md) | 59 | `result-track:96676a314c42ac4c73a4151a43e8ab42005319699f36686534af0358caf69987` |
| 3 | `theorem` | [inv_hom_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/inv-hom-id-app--697d816046cc531d0efcbbbb.md) | 64 | `result-track:697d816046cc531d0efcbbbbd5642564b0d4a31ff6224240d46a2b885c5c9005` |
| 4 | `lemma` | [hom_inv_id_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/hom-inv-id-app-app--699a7906aab06effba071a8b.md) | 69 | `result-track:699a7906aab06effba071a8b100caedc8df5c8d8e394faf7ab87f3e89563159e` |
| 5 | `lemma` | [inv_hom_id_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/inv-hom-id-app-app--3b5f96a99c724ca6fefff2dc.md) | 74 | `result-track:3b5f96a99c724ca6fefff2dc7622fd3c075132c9c6917b40a0c840d0c4cbfe40` |
| 6 | `lemma` | [hom_inv_id_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/hom-inv-id-app-app-app--d5d1573aa6c07cf62253bda8.md) | 79 | `result-track:d5d1573aa6c07cf62253bda860e38758f17fd1c4c770f0846e84c7ecd46e224d` |
| 7 | `lemma` | [inv_hom_id_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/inv-hom-id-app-app-app--301cdad279fec1d920e5c366.md) | 86 | `result-track:301cdad279fec1d920e5c36654e1753e10a29e4762bd672d5a8decbbe2509e7c` |
| 8 | `theorem` | [trans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/trans-app--853fd577d07e25973e221369.md) | 99 | `result-track:853fd577d07e25973e2213695239b698e69d59961f8f9bffe9386602067d52da` |
| 9 | `theorem` | [app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/app-hom--5ab7d00b8b0cf316e7124a96.md) | 104 | `result-track:5ab7d00b8b0cf316e7124a9627484a8090b87417d658171374764945285eb121` |
| 10 | `theorem` | [app_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/app-inv--c1938889112d822d14cb62b2.md) | 108 | `result-track:c1938889112d822d14cb62b2bdf660609d7b93a56bdb6372d8b6a94cb362bffb` |
| 11 | `instance` | [hom_app_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/hom-app-isiso--ac834812238710585388db0d.md) | 113 | `declaration-track:ac834812238710585388db0d032c0e4953ee3c338a21d7e6e82870c818a9598b` |
| 12 | `instance` | [inv_app_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/inv-app-isiso--f8db72f8b9b365a62bc8935f.md) | 117 | `declaration-track:f8db72f8b9b365a62bc8935f131792ddc7f259f5a88e3a4b065de477b428595a` |
| 13 | `theorem` | [cancel_natIso_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/cancel-natiso-hom-left--e2b14ebf2825c90e594fd466.md) | 138 | `result-track:e2b14ebf2825c90e594fd4669ed9095ea117e188d38e6d2bea742d914a9ed211` |
| 14 | `theorem` | [cancel_natIso_inv_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/cancel-natiso-inv-left--ff0b4b9eaef0e1ac2222e50b.md) | 142 | `result-track:ff0b4b9eaef0e1ac2222e50bb62fa96f2004dd0137f8af5bd7708300b05554df` |
| 15 | `theorem` | [cancel_natIso_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/cancel-natiso-hom-right--a87abac9936502e6b9d781ae.md) | 146 | `result-track:a87abac9936502e6b9d781ae1876f355fd9d42eb51ecf83ce4ba5ad26bb55bc2` |
| 16 | `theorem` | [cancel_natIso_inv_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/cancel-natiso-inv-right--bce512f3c4a6b4d5c050e05c.md) | 150 | `result-track:bce512f3c4a6b4d5c050e05cca716c25c8646f09c89939ae1701653509ee3c2c` |
| 17 | `theorem` | [cancel_natIso_hom_right_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/cancel-natiso-hom-right-assoc--525b0db0c3bbeb098cea8b13.md) | 154 | `result-track:525b0db0c3bbeb098cea8b1310d060479a44a6bb6307395fdd99eef59f684672` |
| 18 | `theorem` | [cancel_natIso_inv_right_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/cancel-natiso-inv-right-assoc--526986a2503f8c52b4c2c6a5.md) | 160 | `result-track:526986a2503f8c52b4c2c6a5d55564007b62a5fef95c6e57f171547357c53366` |
| 19 | `theorem` | [inv_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/inv-inv-app--7badde1132dc966efecdcd1a.md) | 166 | `result-track:7badde1132dc966efecdcd1acf6caf83134561aee7ccd4a1e3eb9d19b71ffa87` |
| 20 | `theorem` | [naturality_1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/naturality-1--d1ddea9d115445ed3bda7182.md) | 173 | `result-track:d1ddea9d115445ed3bda7182998b4c60ecbf1a8f0e4e3812a4a98841c2978c33` |
| 21 | `theorem` | [naturality_2](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/naturality-2--311ad2447ebd4164c04caf39.md) | 176 | `result-track:311ad2447ebd4164c04caf3947082937c7c5d0b2eb3efcf79ab978fd54dc6a86` |
| 22 | `theorem` | [naturality_1'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/naturality-1--1f98328c9c0ca239b5509cac.md) | 179 | `result-track:1f98328c9c0ca239b5509cac6ee2d7f67480967a89e3a717a2188bb648f6d14d` |
| 23 | `theorem` | [naturality_2'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/naturality-2--ed9e505d6bbf23001d4b2875.md) | 183 | `result-track:ed9e505d6bbf23001d4b2875bb9112aa7da371d699a091ad06a1d82f6ac6558e` |
| 24 | `instance` | [isIso_app_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/isiso-app-of-isiso--ccf31dff1fa7f74609842b71.md) | 189 | `declaration-track:ccf31dff1fa7f74609842b71422e640a9d039e11740a131929833011bcfd73a3` |
| 25 | `theorem` | [isIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/isiso-inv-app--8dfd747e3f8960a0e566dc07.md) | 195 | `result-track:8dfd747e3f8960a0e566dc07d7618c0221ca71e69be04f70971ea6eb6391eab0` |
| 26 | `theorem` | [inv_map_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/inv-map-inv-app--cb95b00dceaff387012de568.md) | 204 | `result-track:cb95b00dceaff387012de568e5fbd1293f0c988b1a8df86e5d3bad13659ba52e` |
| 27 | `def` | [ofComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/ofcomponents--182000323fbaf865970f6118.md) | 212 | `declaration-track:182000323fbaf865970f6118fe26fcbd41093418a1636ed62207400ec8048a4c` |
| 28 | `theorem` | [ofComponents.app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/ofcomponents-app--6738fea229c748bbd5aa115e.md) | 225 | `result-track:6738fea229c748bbd5aa115e204b20ca6f2439e41dcdcdb81659b4b976349ff3` |
| 29 | `theorem` | [isIso_of_isIso_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/isiso-of-isiso-app--ec5199c068dfe8373388ff35.md) | 231 | `result-track:ec5199c068dfe8373388ff356b6d711b0b6aca826e901ef0f3d63a166461ce8e` |
| 30 | `def` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/hcomp--677434efddc34b52f5e67605.md) | 236 | `declaration-track:677434efddc34b52f5e6760511ee42969a0e7e2c29d2b2daa313e62fb7bccff8` |
| 31 | `theorem` | [isIso_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/isiso-map-iff--f2b1151a66f61ffeed089e6d.md) | 243 | `result-track:f2b1151a66f61ffeed089e6d31f40ff252ed08db1e6ba73c932a0c088e79f6ab` |
| 32 | `lemma` | [NatTrans.isIso_iff_isIso_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/nattrans-isiso-iff-isiso-app--b20579e63ad04b60f7a866a7.md) | 255 | `result-track:b20579e63ad04b60f7a866a76b808beea39c236455b763f3e6a98de021fe9587` |
| 33 | `def` | [copyObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/copyobj--a6478096c387cabbf5503c68.md) | 267 | `declaration-track:a6478096c387cabbf5503c6826f0d2514eeede4ffa5046418ec3e225736cb2e8` |
| 34 | `def` | [isoCopyObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/declarations/isocopyobj--76664470becc6ed7a0bc998a.md) | 273 | `declaration-track:76664470becc6ed7a0bc998a18ad19c6dcb74e576ddbaea0a03493e4125db719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
