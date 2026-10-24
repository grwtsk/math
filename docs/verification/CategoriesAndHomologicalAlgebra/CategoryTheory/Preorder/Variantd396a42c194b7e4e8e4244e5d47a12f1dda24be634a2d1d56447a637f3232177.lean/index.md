# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preorder.Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "121395f6a904f1b13723037628902efb2ce40c48",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `121395f6a904f1b13723037628902efb2ce40c48`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneOfLowerBound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/coneoflowerbound--3288cde99517fe8c375fcc7c.md) | 47 | `declaration-track:3288cde99517fe8c375fcc7c0bc168791063a68aa01fd7fabce70597b7ef7764` |
| 2 | `lemma` | [conePt_mem_lowerBounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/conept-mem-lowerbounds--277415af214aed2e39b95356.md) | 52 | `result-track:277415af214aed2e39b95356b19e8d71e496e16c5e1920de00b2c2788ddc3fd3` |
| 3 | `lemma` | [isGLB_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/isglb-of-islimit--03fe1e0463af17ae4b2aaea7.md) | 56 | `result-track:03fe1e0463af17ae4b2aaea7938a07eaabfb168e640bee37a4b6450d3f883250` |
| 4 | `def` | [isLimitOfIsGLB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/islimitofisglb--f8d78c55307f4e1177b2135a.md) | 60 | `declaration-track:f8d78c55307f4e1177b2135ab7935be5a0919ddbfe2a056f5d0a7d5bf2ef6de3` |
| 5 | `def` | [limitConeOfIsGLB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/limitconeofisglb--fe5a0462aed58ea99b66eea4.md) | 66 | `declaration-track:fe5a0462aed58ea99b66eea4261595d4672df1116d83d5c1b73f51c1bae29444` |
| 6 | `lemma` | [hasLimit_iff_hasGLB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/haslimit-iff-hasglb--d2e8d7292a6586458b6b10cc.md) | 72 | `result-track:d2e8d7292a6586458b6b10cc13e9eccaed27e4b13d65b1193b5835280c447a3c` |
| 7 | `def` | [coconeOfUpperBound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/coconeofupperbound--7c75905904577c121b23b5ad.md) | 78 | `declaration-track:7c75905904577c121b23b5ad899cdc8cd27552c376075c5dd0fbc7df5d2ca004` |
| 8 | `lemma` | [coconePt_mem_upperBounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/coconept-mem-upperbounds--53d25ff3ac77982864079e41.md) | 83 | `result-track:53d25ff3ac77982864079e416f194d8854553104916c1c02db2470caacd6fd74` |
| 9 | `lemma` | [isLUB_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/islub-of-iscolimit--75f56cbe72022c7fd11574a7.md) | 87 | `result-track:75f56cbe72022c7fd11574a77d975c39895a8bb4df036041464c2b5720a5517e` |
| 10 | `def` | [isColimitOfIsLUB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/iscolimitofislub--de9ed0930fe4c19ec83b5755.md) | 91 | `declaration-track:de9ed0930fe4c19ec83b5755fc70304dc9ac24c1153f903f0702be5210ab42c6` |
| 11 | `def` | [colimitCoconeOfIsLUB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/colimitcoconeofislub--2a23312a7d0398aa8a0ad941.md) | 97 | `declaration-track:2a23312a7d0398aa8a0ad9418f4be5658479abadb48d95e8c612c050b7595afd` |
| 12 | `lemma` | [hasColimit_iff_hasLUB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/hascolimit-iff-haslub--c88f6a9314eef95db4bce85a.md) | 103 | `result-track:c88f6a9314eef95db4bce85a583c78d92967367f999e7c760a2c6e2dc10f9a08` |
| 13 | `def` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConeOfLowerBound.Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.CategoryTheory.Limits.IsTerminal.orderTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-coneoflowerbo--c70b6b381629808c378a0831.md) | 116 | `declaration-track:c70b6b381629808c378a08317c2120488a2d72d636e74cf70aa76de1ecc49d8b` |
| 14 | `def` | [orderTopOfHasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/ordertopofhasterminal--15c5d61ead6c02b9208c50d2.md) | 122 | `declaration-track:15c5d61ead6c02b9208c50d2d8c02c394e97f7b90090418b381def522016a5cc` |
| 15 | `def` | [isTerminalTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/isterminaltop--9f3cae62b7e5a1704e35069d.md) | 127 | `declaration-track:9f3cae62b7e5a1704e35069df55f92cdebdf248ed693fa953ee844d482dbe8f7` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/instance--612309c9c81e2ff8b09850c8.md) | 129 | `declaration-track:612309c9c81e2ff8b09850c8dbe75f0b114bbfa3820f077ffe02a590e8c8b7ee` |
| 17 | `def` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConeOfLowerBound.Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.CategoryTheory.Limits.IsInitial.orderBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-coneoflowerbo--1fbf561354b09db0df59561c.md) | 133 | `declaration-track:1fbf561354b09db0df59561ce8109d360e317ae2595ddf6a2676a0396cb95049` |
| 18 | `def` | [orderBotOfHasInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/orderbotofhasinitial--b8df98042b1004baae4f84c5.md) | 139 | `declaration-track:b8df98042b1004baae4f84c574deef9c936b76bbc74c90aef89464778cac60fb` |
| 19 | `def` | [isInitialBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/isinitialbot--291d23e7430531079a51d04a.md) | 144 | `declaration-track:291d23e7430531079a51d04a279cde7620a4632189ded39b6bf0904e8b97661c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/instance--2e738f157271ea6a05ffcc8e.md) | 146 | `declaration-track:2e738f157271ea6a05ffcc8e95032cf8dd295e9fbd30a083d2283cff52565036` |
| 21 | `def` | [semilatticeInfOfIsLimitBinaryFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/semilatticeinfofislimitbinaryfan--6fa49ca52e654e0fd7d7d0d1.md) | 158 | `declaration-track:6fa49ca52e654e0fd7d7d0d1c327ac23be6017a801d69448bb6dc24c4f5c4444` |
| 22 | `def` | [semilatticeInfOfHasBinaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/semilatticeinfofhasbinaryproducts--e2375f514dd9891a41c26a8a.md) | 168 | `declaration-track:e2375f514dd9891a41c26a8abef38c221873c6bd0d9d584ad8be871cdca28b2a` |
| 23 | `def` | [semilatticeSupOfIsColimitBinaryCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/semilatticesupofiscolimitbinarycofan--4e3f1f2a81beb0222b587394.md) | 176 | `declaration-track:4e3f1f2a81beb0222b5873940fa64d7c171a6a9815d6370a148c88db2f4dc307` |
| 24 | `def` | [semilatticeSupOfHasBinaryCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/semilatticesupofhasbinarycoproducts--3425438ab8091913ef4a87d7.md) | 186 | `declaration-track:3425438ab8091913ef4a87d7acd25537fcfb5dd4ccafc70f4f6944ef2e6d0f64` |
| 25 | `def` | [isLimitBinaryFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/islimitbinaryfan--f39875a4a52d5f66e92ca8f2.md) | 196 | `declaration-track:f39875a4a52d5f66e92ca8f2b7f52636647a8cc5c3721757381313ee5a4b6e30` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/instance--f9d551d8710a122fae6b2b86.md) | 201 | `declaration-track:f9d551d8710a122fae6b2b86534a78d55b21cf9b357a18406553d81d18784fe2` |
| 27 | `def` | [isColimitBinaryCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/iscolimitbinarycofan--1f068daa5152a14ad9bc8a53.md) | 209 | `declaration-track:1f068daa5152a14ad9bc8a53599e44192576c1fe4aa28cd581975c8dac2dbfeb` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/instance--4a68442653c9687604fb1b90.md) | 214 | `declaration-track:4a68442653c9687604fb1b906fccf4a26478c9cceb2c75c836f5796cc476a19b` |
| 29 | `def` | [isLimitIInf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/islimitiinf--a7ab05843de9bc9ce1247c49.md) | 225 | `declaration-track:a7ab05843de9bc9ce1247c494a8fda491132783dccfb685ec62ad6bf2c040a60` |
| 30 | `def` | [isColimitISup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/declarations/iscolimitisup--7f37ec6207a58db08bd6febb.md) | 230 | `declaration-track:7f37ec6207a58db08bd6febb6dd94ba596effb79cc1aa715c02241d3c3267a8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
