# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleFunctors.Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "321305067e68b697fdae57dcf4adb8028bdaded1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `321305067e68b697fdae57dcf4adb8028bdaded1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SingleFunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/singlefunctors--f5f77c3a262c44c21f6f9b45.md) | 45 | `declaration-track:f5f77c3a262c44c21f6f9b45546f4abcb003fc2eced502b14987812bfde87049` |
| 2 | `lemma` | [shiftIso_add_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/shiftiso-add-hom-app--d0d759e1cd4af85c2c2ac999.md) | 64 | `result-track:d0d759e1cd4af85c2c2ac9996e68418b34aa80cb1f3d63c78a0862b151f085ba` |
| 3 | `lemma` | [shiftIso_add_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/shiftiso-add-inv-app--312a370a7120cf5b365ebe40.md) | 71 | `result-track:312a370a7120cf5b365ebe405c79df96376491d0fff8fd6da14bb101a1237c7b` |
| 4 | `lemma` | [shiftIso_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/shiftiso-add--21082f5aec6556ecf8046089.md) | 78 | `result-track:21082f5aec6556ecf8046089241aa4724cd67df4053f2d6771f534750230de46` |
| 5 | `lemma` | [shiftIso_add'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/shiftiso-add-hom-app--94747a033c2248a251affa3f.md) | 86 | `result-track:94747a033c2248a251affa3f8f5847164dce33a404999e99e4c5597a5bb32a89` |
| 6 | `lemma` | [shiftIso_add'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/shiftiso-add-inv-app--f001ce162be87982535d1a43.md) | 93 | `result-track:f001ce162be87982535d1a43e20642469d8b87554eef8eba626974b38b9f8511` |
| 7 | `lemma` | [shiftIso_zero_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/shiftiso-zero-hom-app--7d50a2fef8ffebb240ebf703.md) | 102 | `result-track:7d50a2fef8ffebb240ebf703f30b6b9a20d8f3db33254b56874553055c3515f2` |
| 8 | `lemma` | [shiftIso_zero_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/shiftiso-zero-inv-app--4cfedb6d865226d63d2857cd.md) | 108 | `result-track:4cfedb6d865226d63d2857cdaf3f40480dd325aa4cfe0f8297a8032a65b4a8ab` |
| 9 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/hom--90318d6a0ac49e8b978d1cfe.md) | 115 | `declaration-track:90318d6a0ac49e8b978d1cfe973b09f9ae74810c9d67a1c1f2ca8aa00858eb54` |
| 10 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/id--505a22fe7afb592550140bcc.md) | 128 | `declaration-track:505a22fe7afb592550140bccdff52f003ffcea098db9172609465cba46e60f3d` |
| 11 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/comp--9b2ae0d9e7e99bf79e8e0b0a.md) | 135 | `declaration-track:9b2ae0d9e7e99bf79e8e0b0a547ec9ba64a1e95178acc93f1b64cd49e7a8998b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/instance--f56a64db1d09cb8c55133b73.md) | 140 | `declaration-track:f56a64db1d09cb8c55133b7396cfebcb0eb88604a0d7f422abf0dab2925756e5` |
| 13 | `lemma` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/id-hom--cd32e94218bedd1fd9138f7c.md) | 146 | `result-track:cd32e94218bedd1fd9138f7c7ea4a7a6ba812871af81d4ebf80141161af68c41` |
| 14 | `lemma` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/comp-hom--52fb289b02183e35e4243621.md) | 151 | `result-track:52fb289b02183e35e4243621297d2c407b4bbbd99922522ce129bac408ad1dfd` |
| 15 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/hom-ext--9f12cb8f1f06447a645097d7.md) | 154 | `result-track:9f12cb8f1f06447a645097d7bc03df8b140824515f3328e018b66b3ab8a60cc5` |
| 16 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/isomk--60c4a0f1e97c8347c55b26cc.md) | 159 | `declaration-track:60c4a0f1e97c8347c55b26cc661a0721e2fca8763bf9e6e642db67c31df0ba81` |
| 17 | `def` | [evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/evaluation--e0b40cde19223c8a6a99654c.md) | 176 | `declaration-track:e0b40cde19223c8a6a99654c26d0741f71e876ab11ff8ebb88ceaa2240c985e3` |
| 18 | `lemma` | [hom_inv_id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/hom-inv-id-hom--d0e6cdb3f6ec0ac32b8a2aad.md) | 183 | `result-track:d0e6cdb3f6ec0ac32b8a2aad25ea3a9ee8c1ab3c1535b5191f5e4522e7b259ab` |
| 19 | `lemma` | [inv_hom_id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/inv-hom-id-hom--ee109ffdfa44774900b4bf15.md) | 187 | `result-track:ee109ffdfa44774900b4bf15004cb2c578e9da117b578091ba94c152f346dd4d` |
| 20 | `lemma` | [hom_inv_id_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/hom-inv-id-hom-app--c9b126703d9c07bb2ad322da.md) | 191 | `result-track:c9b126703d9c07bb2ad322da941aec0b8009f07216cd06ed28f297a6bc2ddf5c` |
| 21 | `lemma` | [inv_hom_id_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/inv-hom-id-hom-app--161d33e1ed51940cf1dbfeb0.md) | 196 | `result-track:161d33e1ed51940cf1dbfeb0a6ca271d285cc97662759ef7368e6ffe98de405b` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/instance--bc293b74b33abedbed4d3035.md) | 200 | `declaration-track:bc293b74b33abedbed4d3035c75ac0dc396a28c0b9264876d0b470412adf50c4` |
| 23 | `def` | [postcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/postcomp--7ec7331bd8eeaed9a4ba2d62.md) | 208 | `declaration-track:7ec7331bd8eeaed9a4ba2d6250617a62aebcfb995d76631f1532e27a410f9402` |
| 24 | `def` | [postcompFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/postcompfunctor--4c369eb90025234781fa0104.md) | 232 | `declaration-track:4c369eb90025234781fa0104a04ec6c606bb91a0685faba81e11cb009ef9950c` |
| 25 | `def` | [postcompPostcompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/postcomppostcompiso--6287ba03dc0f95ced919f35a.md) | 245 | `declaration-track:6287ba03dc0f95ced919f35a4f0ea7c636c68d8dd0145adb1ea8faa54f9ca36a` |
| 26 | `def` | [postcompIsoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Varianta141921a3ddbd5a77571af99b507f612e46ae7e9d46db97e111e1e98c5994a15.lean/declarations/postcompisoofiso--9fd0c6effa12ff1f637b7bb4.md) | 254 | `declaration-track:9fd0c6effa12ff1f637b7bb4e93b2a25496eaa235e311f43c77f0323bd73f98a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
