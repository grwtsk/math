# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mat.Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6272da13cb771916f50c170a425cc2617eab1321",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6272da13cb771916f50c170a425cc2617eab1321`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FintypeCat` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.SingleObj` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Mat_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/mat--ef293373dfe1646471c91991.md) | 64 | `declaration-track:ef293373dfe1646471c91991cb355e4461a34621c901d91be043301baafada08` |
| 2 | `def` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/hom--2c211785cd9f6125c79a7d32.md) | 78 | `declaration-track:2c211785cd9f6125c79a7d329f72a575d6c16a6dea7ea09cb51adfbc58017d8f` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/id--80f8fb75143856666109865c.md) | 85 | `declaration-track:80f8fb75143856666109865c3b64a376fafe9285c6cc7058b5e8d1557c14181d` |
| 4 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/comp--090ba9bc0f2d838e03fe271d.md) | 88 | `declaration-track:090ba9bc0f2d838e03fe271d7b41de53dbd523572dfe904e361f5836e506cc7a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--a53f78ed2d9872c5c3050263.md) | 97 | `declaration-track:a53f78ed2d9872c5c3050263092e4a9204b2e4298fff0f1c3694b81f13effc7e` |
| 6 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/hom-ext--571a1404bd4d3bce445cb945.md) | 114 | `result-track:571a1404bd4d3bce445cb945af440aa970c99c59191b9a1a5cb2ef29c4ab5d71` |
| 7 | `theorem` | [id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/id-def--53cebec7ccab280d78809624.md) | 118 | `result-track:53cebec7ccab280d78809624a957cbca90c8697bb7ce9299af785027eab5c4e8` |
| 8 | `theorem` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/id-apply--6ef63642e1e71865f6b570fd.md) | 123 | `result-track:6ef63642e1e71865f6b570fd91351ea840eae3bea22a3ad2bd7597a481b576c8` |
| 9 | `theorem` | [id_apply_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/id-apply-self--639eb6261c3466b88638ba76.md) | 128 | `result-track:639eb6261c3466b88638ba763406715db76a8db076aba7aac59bdc7f109b40b0` |
| 10 | `theorem` | [id_apply_of_ne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/id-apply-of-ne--749bbaf70925ef1d05920513.md) | 131 | `result-track:749bbaf70925ef1d059205136eaeb9079816fdf232ec77276dbe868869667ad0` |
| 11 | `theorem` | [comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/comp-def--26ebb0d650b2c5fceb3f98ee.md) | 134 | `result-track:26ebb0d650b2c5fceb3f98ee0c7ef6e2b104f7b1c4cb5cdc451cc8308cd3710f` |
| 12 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/comp-apply--0af6cfe5f724dbd6573eb515.md) | 139 | `result-track:0af6cfe5f724dbd6573eb5156f839cc9286c18378ac439c990508d1fe13e3430` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--054a6152451299aaee5777d2.md) | 143 | `declaration-track:054a6152451299aaee5777d2f59530e8f061e3360b1f0435a1b1311e72bdf569` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--3cc71dd78bfd5f455e6c8b52.md) | 150 | `declaration-track:3cc71dd78bfd5f455e6c8b529667dcf57430de0bdc980f0673fe422603c7c029` |
| 15 | `theorem` | [add_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/add-apply--70d3b44ec1d38fc9474c03dd.md) | 155 | `result-track:70d3b44ec1d38fc9474c03dde0dced901f7369992325fbab85b960d3b06e5bce` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--4145b2067e01620ac2f9101e.md) | 158 | `declaration-track:4145b2067e01620ac2f9101ee7e7f62c62c203219962d65dc0936e8cf00fb7db` |
| 17 | `instance` | [hasFiniteBiproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/hasfinitebiproducts--1c4d1689ba73cd0dc54ae161.md) | 172 | `declaration-track:1c4d1689ba73cd0dc54ae161f0a1d9be4587da38b1a2c157d00ba1fb4f0ab6de` |
| 18 | `def` | [mapMat_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/mapmat--3e30603440a9aeb279f69e71.md) | 250 | `declaration-track:3e30603440a9aeb279f69e71a61157bf6ff89284e1fb38e67cefec779d0fb2f2` |
| 19 | `def` | [mapMatId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/mapmatid--db87f5ea19d2f89038c8336d.md) | 257 | `declaration-track:db87f5ea19d2f89038c8336d4d4cb4e78df95e517f8a62207c3351c6637da499` |
| 20 | `def` | [mapMatComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/mapmatcomp--3cf244d5235d684f947a8879.md) | 267 | `declaration-track:3cf244d5235d684f947a887999d94eaf59afa3c2339c3a5a9e1f298d9438ccdc` |
| 21 | `def` | [embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/embedding--1052434b7e08860ad65c9ca3.md) | 282 | `declaration-track:1052434b7e08860ad65c9ca307f92e2ddfea41b855a3a7c23400de3a30c69ccb` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--627b66869263cc73a17617bd.md) | 290 | `declaration-track:627b66869263cc73a17617bdbe5ef11ba4643d75a0c5ca973ec0260c9ab86781` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--73ba8e387909d2101dcf3a45.md) | 293 | `declaration-track:73ba8e387909d2101dcf3a45f6b8a83ac0a403860b980c2fbf13c18c334eb492` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--96a638cb7a188e8181043d7c.md) | 295 | `declaration-track:96a638cb7a188e8181043d7cc7a02201ff36cf0058054afc6b060c12c37b700d` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--5c088318f78c72662fbecb55.md) | 299 | `declaration-track:5c088318f78c72662fbecb5587b878a96d8847d3a1317226e0c4add44837e48f` |
| 26 | `def` | [isoBiproductEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/isobiproductembedding--4d80380e00f6f8baf2d8f9d2.md) | 310 | `declaration-track:4d80380e00f6f8baf2d8f9d2d945a64458f2d32200ff796df31f5ccceb11519d` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--59db0aec3cd9c9ec547e5f8e.md) | 342 | `declaration-track:59db0aec3cd9c9ec547e5f8e0d63b4cfcb264ad9c35921ecf79c6425b5959e68` |
| 28 | `def` | [additiveObjIsoBiproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/additiveobjisobiproduct--01b7948201ff6b0200ff7bbe.md) | 350 | `declaration-track:01b7948201ff6b0200ff7bbe37cea2851e42fea4742ad9b454ce038296879279` |
| 29 | `lemma` | [additiveObjIsoBiproduct_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/additiveobjisobiproduct-hom--214c82a4e1aec1d25dcd48e7.md) | 355 | `result-track:214c82a4e1aec1d25dcd48e7dc7cdea30ed3bc5b8b5e92872c108b8509c4614a` |
| 30 | `lemma` | [ι_additiveObjIsoBiproduct_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/additiveobjisobiproduct-inv--229fe469a2313eaef370ce11.md) | 364 | `result-track:229fe469a2313eaef370ce1126f6e67c852373ce5b322fcb1e8758c86f1cc8a0` |
| 31 | `theorem` | [additiveObjIsoBiproduct_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/additiveobjisobiproduct-naturality--fd20a54fb39d3ed1c9ca419b.md) | 373 | `result-track:fd20a54fb39d3ed1c9ca419b82d6288ab387c6273c8c3f14dc9cfab832972f4d` |
| 32 | `theorem` | [additiveObjIsoBiproduct_naturality'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/additiveobjisobiproduct-naturality--79f8fdd7981d3d3132525a58.md) | 391 | `result-track:79f8fdd7981d3d3132525a58d34a869403b5838c3cc389163bab86d6c3808942` |
| 33 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/lift--343f33ccea854e10107b95f2.md) | 403 | `declaration-track:343f33ccea854e10107b95f254d6b9456bd9baa0210236ab7ed9d3217515ce6d` |
| 34 | `instance` | [lift_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/lift-additive--79bb2f5f2c4b356f78e5ff3b.md) | 412 | `declaration-track:79bb2f5f2c4b356f78e5ff3b7d63c1bebcf77f5b873f7c83c62faa4edc7d7eb5` |
| 35 | `def` | [embeddingLiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/embeddingliftiso--64db573f0daa2768275b7972.md) | 416 | `declaration-track:64db573f0daa2768275b79728220e725552623f212f6448d876302fce5c2b13f` |
| 36 | `def` | [liftUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/liftunique--1858a406aa7b840cabf3aa2c.md) | 424 | `declaration-track:1858a406aa7b840cabf3aa2ce0da39dc167f0d6ee9c7d953a408d2659eea87fd` |
| 37 | `def` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/ext--22679b699221f76a8d366e09.md) | 448 | `declaration-track:22679b699221f76a8d366e09a866246db83aa0c8be4db528fa25b3ffc5c31d0c` |
| 38 | `def` | [equivalenceSelfOfHasFiniteBiproductsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/equivalenceselfofhasfinitebiproductsaux--fa4c979967d2e677fc4037b3.md) | 454 | `declaration-track:fa4c979967d2e677fc4037b301763c757f868bf73f0e7511984eb09f810be83d` |
| 39 | `def` | [equivalenceSelfOfHasFiniteBiproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/equivalenceselfofhasfinitebiproducts--7c376d8fa7c69d5d9908731f.md) | 466 | `declaration-track:7c376d8fa7c69d5d9908731f2e0ab0fbc1569eb25a300adf75f471f51a608eb0` |
| 40 | `theorem` | [equivalenceSelfOfHasFiniteBiproducts_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/equivalenceselfofhasfinitebiproducts-functor--488a7950acd58d8e48c292d6.md) | 475 | `result-track:488a7950acd58d8e48c292d6c89ddea5b50132f7f96970a703beee33fcf3a981` |
| 41 | `theorem` | [equivalenceSelfOfHasFiniteBiproducts_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/equivalenceselfofhasfinitebiproducts-inverse--15d2419b36adc85d69d70c21.md) | 481 | `result-track:15d2419b36adc85d69d70c21b1f0c21ca58889a6a102b93c7a88f9862c086ad3` |
| 42 | `def` | [Mat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/mat--3302d3c7e75b85d3cc744651.md) | 493 | `declaration-track:3302d3c7e75b85d3cc744651ffca94ab0d6ea12c360fd2913697b8060fe7f9d6` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--2352c4fd3b7f1398323930de.md) | 496 | `declaration-track:2352c4fd3b7f1398323930de23ccd736f4485cf03194083d17e2fc4967c8f99f` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--888ee7b9fae1935df8e35b79.md) | 500 | `declaration-track:888ee7b9fae1935df8e35b79f69fdb25807d2229882e439bd18ec82a0aba4548` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--c5d8718dff9a8911fd927237.md) | 506 | `declaration-track:c5d8718dff9a8911fd927237a75bab48de03292d15d18893604e1547721a2e83` |
| 46 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/hom-ext--470ab9307af04b69105df713.md) | 519 | `result-track:470ab9307af04b69105df7131893aa19f3df5943de43681a83eed483b1dce94f` |
| 47 | `theorem` | [id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/id-def--47da446ce0f702868d9eb593.md) | 525 | `result-track:47da446ce0f702868d9eb59327f4dbc9b82bbdc3a8dfc7054414310dbf01a034` |
| 48 | `theorem` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/id-apply--d6b273ef840ec2f289de1f33.md) | 529 | `result-track:d6b273ef840ec2f289de1f33b66f97d1f84026d985299b779c9a8d76c775e33c` |
| 49 | `theorem` | [id_apply_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/id-apply-self--db479a2a003f5b388321e197.md) | 533 | `result-track:db479a2a003f5b388321e1976fec679b0b835b1a1bf1a4a6c4d2f7049cd7671d` |
| 50 | `theorem` | [id_apply_of_ne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/id-apply-of-ne--64c3263d753963852b440d6c.md) | 536 | `result-track:64c3263d753963852b440d6cc5efd56e2504d1f3765d3bcdbf0951b207bb76bb` |
| 51 | `theorem` | [comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/comp-def--0957fabe93734129310e54c8.md) | 539 | `result-track:0957fabe93734129310e54c8af1e755fe9c6deb815c94e0cb60a28101b71163e` |
| 52 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/comp-apply--2e85e4403af0dc0527e5daea.md) | 544 | `result-track:2e85e4403af0dc0527e5daea38de7b610922184e0467e2cd89f1cbfb9e91bbd6` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--db14bd52242e89b71f84c81c.md) | 548 | `declaration-track:db14bd52242e89b71f84c81c3bdb1951ac6aaafc09bac2aec799f941dce826bd` |
| 54 | `def` | [equivalenceSingleObjInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/equivalencesingleobjinverse--0f35ba8e7b3fd74db47d386d.md) | 559 | `declaration-track:0f35ba8e7b3fd74db47d386df0531535fdbb3126b481925c18addfcdedb4d874` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--7810862df103a5cb1d34fd75.md) | 572 | `declaration-track:7810862df103a5cb1d34fd750df01eef7e84caaefc4b00a9bbcf562cc6e5a07f` |
| 56 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--3e20be47a16ccf1fcc7dffc0.md) | 578 | `declaration-track:3e20be47a16ccf1fcc7dffc001a42a56a4307cf8481e60e695650b68121bd149` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--19ac72e0f32a34facd3c26ae.md) | 581 | `declaration-track:19ac72e0f32a34facd3c26ae9028dd32f7e9589307ce9998f3f23984dd92cafd` |
| 58 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--1146aed5619b598ea2a9f409.md) | 586 | `declaration-track:1146aed5619b598ea2a9f40975eb665290c843ba110bd71685da8b7b0a9065e0` |
| 59 | `def` | [equivalenceSingleObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/equivalencesingleobj--f7a0f822ea53a1f56aeca657.md) | 590 | `declaration-track:f7a0f822ea53a1f56aeca6576d059192c1e721315c06addd617b4689dc9cf7f1` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--bcd8b5ca4055b7cf1d5ed283.md) | 594 | `declaration-track:bcd8b5ca4055b7cf1d5ed283e2a6787259a050233d1eb97a6ad962b4937ce1cf` |
| 61 | `theorem` | [add_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/add-apply--f67ebd8ed1f396e75a836545.md) | 602 | `result-track:f67ebd8ed1f396e75a836545c3cc84a39b4d285ba1d1f0b938a170e8f27eb423` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/declarations/instance--c214725bdbe8e80adea74e8a.md) | 607 | `declaration-track:c214725bdbe8e80adea74e8a72bec8dbd58284230fa74138ef66f5a55cd71037` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
