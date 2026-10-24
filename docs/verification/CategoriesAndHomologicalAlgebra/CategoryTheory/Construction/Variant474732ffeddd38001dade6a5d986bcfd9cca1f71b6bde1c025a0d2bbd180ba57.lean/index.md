# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Construction.Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5df78f0acd47ba9effd5c46b70db5ac48dde155",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5df78f0acd47ba9effd5c46b70db5ac48dde155`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.RelativeCellComplex.AttachCells` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FunctorObjIndex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobjindex--f5d4bc8140a71ae77892daa7.md) | 66 | `declaration-track:f5d4bc8140a71ae77892daa7adf80e6383c5e480e9e91d9862e181093e9bc068` |
| 2 | `abbrev` | [functorObjSrcFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobjsrcfamily--bbce93cef85c6c83f084d9cd.md) | 80 | `declaration-track:bbce93cef85c6c83f084d9cd5999ec8fbe7bcaa5d8426ec3651ce550f86ba9c7` |
| 3 | `abbrev` | [functorObjTgtFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobjtgtfamily--0d819609587f125bca5baea5.md) | 83 | `declaration-track:0d819609587f125bca5baea5806dd162662e793a6938870cf68278f6d3ad2e1e` |
| 4 | `abbrev` | [functorObjLeftFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobjleftfamily--34a4253472b1ed8a2cef6b0f.md) | 87 | `declaration-track:34a4253472b1ed8a2cef6b0fecd4eafcdf2ca081df5b63c4460099dd1c5ef0bc` |
| 5 | `abbrev` | [functorObjTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobjtop--cadd723eb179d37cf3c191ff.md) | 91 | `declaration-track:cadd723eb179d37cf3c191ff9187da5e3da8f66f7a578eb8f979349f57ce2ea3` |
| 6 | `abbrev` | [functorObjLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobjleft--b4eddaf021db1172defd35e1.md) | 95 | `declaration-track:b4eddaf021db1172defd35e1d7abbff571b5c9340a437c69678c7fc0d69951bf` |
| 7 | `abbrev` | [functorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj--e678a23f2687f5b26f3602c8.md) | 104 | `declaration-track:e678a23f2687f5b26f3602c89df44d3374d68fdc6d7637b38111f0e3b2baed3d` |
| 8 | `abbrev` | [ιFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj--8d305c004977d59e4a143f4a.md) | 108 | `declaration-track:8d305c004977d59e4a143f4aedaee25cfb1c253695c85c6e0dbcb2092d9b096e` |
| 9 | `abbrev` | [ρFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj--bbd3d742c87c9d5c7492a8d4.md) | 111 | `declaration-track:bbd3d742c87c9d5c7492a8d49b6c3c6df468548e4999effa8ea4b2a67a68ee16` |
| 10 | `lemma` | [functorObj_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj-comm--32e0e91fc4e14a873b44a919.md) | 114 | `result-track:32e0e91fc4e14a873b44a9199df9168ee39da5885b2f84a6322f1519dfc7665f` |
| 11 | `lemma` | [functorObj_isPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj-ispushout--38ae03e5a3b099f324c5a255.md) | 118 | `result-track:38ae03e5a3b099f324c5a2552bd61cb8b2ec38fc43409543c14c26b95b313757` |
| 12 | `lemma` | [FunctorObjIndex.comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobjindex-comm--8cc3890a793057c41c160198.md) | 123 | `result-track:8cc3890a793057c41c1601980d1566eb5a6bdf282cabaf94083de23c6c49868f` |
| 13 | `abbrev` | [π'FunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj--fecfbaca746c99209c294d68.md) | 128 | `declaration-track:fecfbaca746c99209c294d68bff9045e07a0a5efe17597b82f79ecb2fa945f88` |
| 14 | `def` | [πFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj--b836e3958c4b000fa903f033.md) | 131 | `declaration-track:b836e3958c4b000fa903f03336c52055005de4da7e07373aafc795907816ffbd` |
| 15 | `lemma` | [ρFunctorObj_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj--5314b05658e8a83f8706bd9c.md) | 135 | `result-track:5314b05658e8a83f8706bd9c5ab85a416ae28dcd5bf6fe8412588e4f7a077d21` |
| 16 | `lemma` | [ιFunctorObj_πFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj-functorobj--10cb8377c11ac23e89d931c1.md) | 139 | `result-track:10cb8377c11ac23e89d931c15a58da1db67fa68dd61e07ce1446bb96e9bb6271` |
| 17 | `def` | [attachCellsιFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/attachcells-functorobj--413ac4b6333877c2eff32b86.md) | 145 | `declaration-track:413ac4b6333877c2eff32b86e3a8f1c2323b68942436917d57c85ac342d0c402` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/instance--3310dcbba05c5edb9bcab433.md) | 162 | `declaration-track:3310dcbba05c5edb9bcab433d39834ca17a421cfcdc8ec6263d572c7deea6702` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/instance--40102eade54c1854206c4925.md) | 175 | `declaration-track:40102eade54c1854206c492571cebd7a19768781148b437f1b4b98ade5709efd` |
| 20 | `def` | [attachCellsιFunctorObjOfSmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/attachcells-functorobjofsmall--8a5e0d31b11298052035cc2b.md) | 183 | `declaration-track:8a5e0d31b11298052035cc2b01f392c4d0683253b1d1671298b3cff2dcd709b3` |
| 21 | `def` | [functorMapSrc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functormapsrc--6a9e4145a93b41532b0beec7.md) | 197 | `declaration-track:6a9e4145a93b41532b0beec70e0af8944863df31378cbeafa805b419771de1b1` |
| 22 | `lemma` | [ι_functorMapSrc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functormapsrc--c41cfb3e89f327ed5e4eea61.md) | 203 | `result-track:c41cfb3e89f327ed5e4eea611cf74df41f615fcedb35685e7a5121a488f87b6e` |
| 23 | `lemma` | [functorMapSrc_functorObjTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functormapsrc-functorobjtop--3279666f60d13ae34375b453.md) | 216 | `result-track:3279666f60d13ae34375b45347a0713f70ae47f451f840f428e422ea24f1480e` |
| 24 | `def` | [functorMapTgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functormaptgt--f6f9bac15fcddc6a5993f2d0.md) | 223 | `declaration-track:f6f9bac15fcddc6a5993f2d0ca143b200d5870ab736debce7be142189a40e77b` |
| 25 | `lemma` | [ι_functorMapTgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functormaptgt--cd045e60886f568a955c9739.md) | 229 | `result-track:cd045e60886f568a955c9739883c80c71ce662b753e783d129e5c34619298b69` |
| 26 | `lemma` | [functorMap_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functormap-comm--382dada2ae47caf89310f43b.md) | 241 | `result-track:382dada2ae47caf89310f43b72112735a415d44c1b0dceb8af5eb544fd3f1728` |
| 27 | `def` | [functorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functormap--fd4b713dd8af46954fa7a1b0.md) | 254 | `declaration-track:fd4b713dd8af46954fa7a1b0f1788685446af3c513800a62c45d643dc1d219fe` |
| 28 | `lemma` | [functorMap_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functormap--f91be2b474740df290cabadd.md) | 259 | `result-track:f91be2b474740df290cabaddffc989306e8b30cf3a332ffff6a818e63d38f1fd` |
| 29 | `lemma` | [functorMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functormap-id--34406220b563e1629538ed99.md) | 266 | `result-track:34406220b563e1629538ed996164265a8a1525005c3b83bbd1b862369d256eaa` |
| 30 | `lemma` | [ιFunctorObj_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj-naturality--fa2a45bceb50d64122011d2e.md) | 273 | `result-track:fa2a45bceb50d64122011d2e9f651e6b4e4b33b96941edc99ef57c4c38c5cdd3` |
| 31 | `lemma` | [ιFunctorObj_extension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj-extension--62209bd2d3ec82d8f7344316.md) | 277 | `result-track:62209bd2d3ec82d8f7344316c86fe5540d1227591e5dd5aaa0a833a8ccda7a07` |
| 32 | `lemma` | [ιFunctorObj_extension'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functorobj-extension--0482cb6fa31946f9de2d6fd8.md) | 286 | `result-track:0482cb6fa31946f9de2d6fd8fa2200d5f01a3f8476faeac008ad2f822401454a` |
| 33 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/functor--293bba08cf5f303c32c14f9b.md) | 309 | `declaration-track:293bba08cf5f303c32c14f9b273585f1291d88c4c1a498e1a994b6fa7a1b4199` |
| 34 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/declarations/anonymous--1865ec3f81a98ab425c570ae.md) | 331 | `declaration-track:1865ec3f81a98ab425c570aecdc7ea0d9915ca1fc30416ab3f0a97c96f4fdca1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
