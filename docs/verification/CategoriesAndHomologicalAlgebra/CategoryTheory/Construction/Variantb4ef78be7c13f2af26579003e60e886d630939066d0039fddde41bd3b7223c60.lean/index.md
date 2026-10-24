# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Construction.Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58593e2eeef30b0784d88917037fd86a36b38a9d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58593e2eeef30b0784d88917037fd86a36b38a9d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.RelativeCellComplex.AttachCells` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FunctorObjIndex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobjindex--4f3ad17790d2f3b15c2a239f.md) | 74 | `declaration-track:4f3ad17790d2f3b15c2a239f50c5d80be2999ca8c5449acf1f833c56b808dca6` |
| 2 | `abbrev` | [functorObjSrcFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobjsrcfamily--3f5e23ff176e6c935682f493.md) | 88 | `declaration-track:3f5e23ff176e6c935682f493f6906ce5e99540eea4f2b2cd910f11885198a287` |
| 3 | `abbrev` | [functorObjTgtFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobjtgtfamily--b40c54e487d2b4b3e275e64f.md) | 91 | `declaration-track:b40c54e487d2b4b3e275e64fd68bb9f3badcde9418ff2803b1119c9e3acf3d7b` |
| 4 | `abbrev` | [functorObjLeftFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobjleftfamily--2342af9a60769a399a7b86ed.md) | 95 | `declaration-track:2342af9a60769a399a7b86ed8293e8026b6416cb6df956e5bdf49499dd635463` |
| 5 | `abbrev` | [functorObjTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobjtop--84e944fa211a7990cf51102f.md) | 99 | `declaration-track:84e944fa211a7990cf51102f2af5b2c8c12e3a34965bd8c610f9312d04dc7140` |
| 6 | `abbrev` | [functorObjLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobjleft--7f5a61c8546342fb5d0c125c.md) | 103 | `declaration-track:7f5a61c8546342fb5d0c125c95e87756f591fa63c856478e5ed927bf76339c9a` |
| 7 | `abbrev` | [functorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj--699496f183b44b0de330c3cd.md) | 112 | `declaration-track:699496f183b44b0de330c3cd2b500c86c2571a124c11f761f31cc4248294cdfc` |
| 8 | `abbrev` | [ιFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj--6f94a1dbe74a30ff77efa4b7.md) | 116 | `declaration-track:6f94a1dbe74a30ff77efa4b7a94eba724c1f0f9062e0f11319c5aab3859750ee` |
| 9 | `abbrev` | [ρFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj--7e541a59dd3090f778278cf1.md) | 119 | `declaration-track:7e541a59dd3090f778278cf17aad423a25ac96690d4611001c31ce73b1ddec96` |
| 10 | `lemma` | [functorObj_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj-comm--a097363705130183641e614e.md) | 122 | `result-track:a097363705130183641e614ec1920da050c900f48b637ce4279c192f736196a7` |
| 11 | `lemma` | [functorObj_isPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj-ispushout--7f5665cb7fefd31dd9ee15e8.md) | 126 | `result-track:7f5665cb7fefd31dd9ee15e8278d63242ee6f1f1004e764c0da7fcfea9be29ff` |
| 12 | `lemma` | [FunctorObjIndex.comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobjindex-comm--37bfc0acaef1461e1e873258.md) | 131 | `result-track:37bfc0acaef1461e1e87325836f619eaa66b6d8b7248aa74266d442d92843cdc` |
| 13 | `abbrev` | [π'FunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj--c60533d2dbb7a827edcaa977.md) | 136 | `declaration-track:c60533d2dbb7a827edcaa977b344de0a34ce1ad0b35055f565d99bd326f7f4c1` |
| 14 | `def` | [πFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj--b148fd9a3a4ef928513ab69c.md) | 139 | `declaration-track:b148fd9a3a4ef928513ab69c71f001509cdd0d6b7a7ed693ce02ff286ec666d7` |
| 15 | `lemma` | [ρFunctorObj_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj--e9b952c3fffc9fd3584605e4.md) | 143 | `result-track:e9b952c3fffc9fd3584605e4ee5249f4e40cc5f4112f8ee829d0b381f632d532` |
| 16 | `lemma` | [ιFunctorObj_πFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj-functorobj--680398962bb74601bcaa572c.md) | 147 | `result-track:680398962bb74601bcaa572ce3389230b9dc935b751aa3746b129d0e7f99c40d` |
| 17 | `def` | [attachCellsιFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/attachcells-functorobj--65f10d455e235112c882d25a.md) | 153 | `declaration-track:65f10d455e235112c882d25a50cb667986638404303a10170f070d57ce8fdd2d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/instance--b89d69b0fb9e11fea85faf05.md) | 170 | `declaration-track:b89d69b0fb9e11fea85faf05535b05ae0a992b42319dab26d21772b075d87072` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/instance--ec0bd658e74ea02182e3edca.md) | 183 | `declaration-track:ec0bd658e74ea02182e3edca0fde2e08f5bf0d38cfb0bf86ab778c6b9a48ffcd` |
| 20 | `def` | [attachCellsιFunctorObjOfSmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/attachcells-functorobjofsmall--85020d1573b2b798ea2a082d.md) | 191 | `declaration-track:85020d1573b2b798ea2a082de54a6323adbc2763f774fad6a50aa602fb2b604c` |
| 21 | `def` | [functorMapSrc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functormapsrc--c646a27df4130cbe1e30b359.md) | 205 | `declaration-track:c646a27df4130cbe1e30b3592751e4c22c3a225c9dc95b443ccead5a4ad5fc37` |
| 22 | `lemma` | [ι_functorMapSrc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functormapsrc--032139eb3bb32e616f02578c.md) | 211 | `result-track:032139eb3bb32e616f02578cb8f6114dd6ea2a5a689d3f57eabf5a9a3de5487b` |
| 23 | `lemma` | [functorMapSrc_functorObjTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functormapsrc-functorobjtop--311778e9116fd2f8072ae013.md) | 224 | `result-track:311778e9116fd2f8072ae0133f0f10acee7341caa56ecec71fdbf37efd66b339` |
| 24 | `def` | [functorMapTgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functormaptgt--43a98a5906735172e0e1d599.md) | 231 | `declaration-track:43a98a5906735172e0e1d599b711ba8b7e61bdb7c3c6dbf125c3dbe88b4e9c2e` |
| 25 | `lemma` | [ι_functorMapTgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functormaptgt--b6eae717ed1f6d60cf67e833.md) | 237 | `result-track:b6eae717ed1f6d60cf67e8333d83500692491a936244dffeebf20dca01710549` |
| 26 | `lemma` | [functorMap_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functormap-comm--a3954bd9f1fa8fbf8d26e6c4.md) | 249 | `result-track:a3954bd9f1fa8fbf8d26e6c450c0a3b92681d37a0c7443a23b29f5a4897f8c5b` |
| 27 | `def` | [functorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functormap--76af6248b6cab4d7cdba6493.md) | 262 | `declaration-track:76af6248b6cab4d7cdba649378b0418b176a1d161eb536df7ad836f3cb8d3f14` |
| 28 | `lemma` | [functorMap_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functormap--4571efe673081879928a6ca4.md) | 267 | `result-track:4571efe673081879928a6ca4354ac665ee0665053db8ad07ea71352935414638` |
| 29 | `lemma` | [functorMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functormap-id--2268df26c9e2d0f663cda47e.md) | 274 | `result-track:2268df26c9e2d0f663cda47eb89519ce5da37b4f48365f63d1e83261efaaef1e` |
| 30 | `lemma` | [ιFunctorObj_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj-naturality--6a0a11ca123e7eb7796d1daf.md) | 281 | `result-track:6a0a11ca123e7eb7796d1dafc24797404903e4587720b086fc2e52ebdc690570` |
| 31 | `lemma` | [ιFunctorObj_extension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj-extension--78308c5b349376ac0ff55cdb.md) | 285 | `result-track:78308c5b349376ac0ff55cdb06f9bd86df91c02fb1cb12bf96c1096209a50674` |
| 32 | `lemma` | [ιFunctorObj_extension'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functorobj-extension--441536f8aed9bdea84c47c55.md) | 294 | `result-track:441536f8aed9bdea84c47c55722b4b25204f7475c052986fd56d98f4029ec264` |
| 33 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/functor--50ccaefae2ea8407ec160ffa.md) | 317 | `declaration-track:50ccaefae2ea8407ec160ffa1594922ee98118c2e2e445512f2557439767ff82` |
| 34 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variantb4ef78be7c13f2af26579003e60e886d630939066d0039fddde41bd3b7223c60.lean/declarations/anonymous--deea634f2b54d00670c6baa7.md) | 339 | `declaration-track:deea634f2b54d00670c6baa75b44e1cfbccfd0bd341872dc834c43fad143ef0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
