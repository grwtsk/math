# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.QuasiIso.Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e871785a0879c158883b56b62ca3e7735d3ff590",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e871785a0879c158883b56b62ca3e7735d3ff590`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Retract` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiIsoAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat--0589fae15679e08081dd2c26.md) | 31 | `declaration-track:0589fae15679e08081dd2c26eeb2eec4b9b4fb39e52e9e641c93553081c85307` |
| 2 | `lemma` | [quasiIsoAt_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-iff--e9cfe8b142219f17fc27d437.md) | 34 | `result-track:e9cfe8b142219f17fc27d437ddb01c69516dd62be293af718dbeab55bc4c5a1e` |
| 3 | `instance` | [quasiIsoAt_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-of-isiso--128b06164e088028cf5d19e0.md) | 43 | `declaration-track:128b06164e088028cf5d19e074e011112717fba155ab42b65396d60e615af961` |
| 4 | `lemma` | [quasiIsoAt_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-iff--59e13cadb538a277633a4e8f.md) | 48 | `result-track:59e13cadb538a277633a4e8f08eee327399c790fb6570f620b286835dc512da8` |
| 5 | `lemma` | [quasiIsoAt_of_retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-of-retract--f0e87706811ae219989fffb1.md) | 56 | `result-track:f0e87706811ae219989fffb171f8e480172bae60b3ce69f1401d70f48019f963` |
| 6 | `lemma` | [quasiIsoAt_iff_isIso_homologyMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-iff-isiso-homologymap--4be1fea53d3f8a49b48a7967.md) | 65 | `result-track:4be1fea53d3f8a49b48a7967683e6c5127c910a4337529e57b967e3cd0dd76dd` |
| 7 | `lemma` | [quasiIsoAt_iff_exactAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-iff-exactat--5ceb6282656e099e3d58e18f.md) | 71 | `result-track:5ceb6282656e099e3d58e18f91f431f34776ee6716218871b1449ceabcbc9fd2` |
| 8 | `lemma` | [quasiIsoAt_iff_exactAt'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-iff-exactat--343f956a0d0464cca1c3c374.md) | 82 | `result-track:343f956a0d0464cca1c3c374599fefe0af8e71036744b45a00629ec057e1b42c` |
| 9 | `lemma` | [exactAt_iff_of_quasiIsoAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/exactat-iff-of-quasiisoat--65a60318f775e2e667d1c549.md) | 93 | `result-track:65a60318f775e2e667d1c549100ff0912935aa3cdb3dc60f4f0011745519b89f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/instance--ace65a15c1c3773d852b4ef2.md) | 99 | `declaration-track:ace65a15c1c3773d852b4ef2a627955e9131de5f6a9de41219463dff85a0523f` |
| 11 | `def` | [isoOfQuasiIsoAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/isoofquasiisoat--4422e70b5fd90dc7d7b2586f.md) | 106 | `declaration-track:4422e70b5fd90dc7d7b2586fd4fff29311ca9dc3bf8d59e38cd5f81f1f164274` |
| 12 | `lemma` | [isoOfQuasiIsoAt_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/isoofquasiisoat-hom-inv-id--ae4f469bb58fa1f7474203db.md) | 111 | `result-track:ae4f469bb58fa1f7474203dbef122504a84d45cb7bc368ec8ff91b75375e5977` |
| 13 | `lemma` | [isoOfQuasiIsoAt_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/isoofquasiisoat-inv-hom-id--a2f559faeabfdb11e68ad46f.md) | 117 | `result-track:a2f559faeabfdb11e68ad46f6a684b75a39b99000cefa76863c0d28a530c2705` |
| 14 | `lemma` | [CochainComplex.quasiIsoAt₀_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/cochaincomplex-quasiisoat-iff--3d0763753306a9fcf9f278d6.md) | 122 | `result-track:3d0763753306a9fcf9f278d635f898169da27f0ec949d93ce4c3be10a31094c2` |
| 15 | `lemma` | [ChainComplex.quasiIsoAt₀_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/chaincomplex-quasiisoat-iff--cb7d06846392820189eb156b.md) | 128 | `result-track:cb7d06846392820189eb156bd93b41df1536a0352d8754ab9b8eca43329e5a4b` |
| 16 | `class` | [QuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso--fceac620f4120b9ccf81c00f.md) | 137 | `declaration-track:fceac620f4120b9ccf81c00f24c989c4def2fb74adc60b2cc06275685f4f1b1b` |
| 17 | `lemma` | [quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-iff--f8ffaaa8497ebdc024c1f015.md) | 140 | `result-track:f8ffaaa8497ebdc024c1f015226292eb90c37b34ddaa53e23d6d805372c22617` |
| 18 | `instance` | [quasiIso_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-of-isiso--e48f4ce9756f3f7453d9026a.md) | 146 | `declaration-track:e48f4ce9756f3f7453d9026a713e3fcd0a546c1d0160dcbeb20bd816b4d9d897` |
| 19 | `instance` | [quasiIsoAt_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-comp--fa70ce47616768d00b13f77e.md) | 149 | `declaration-track:fa70ce47616768d00b13f77ea7a4af01e1580ff968c0ef839f75cb3576ab3ff0` |
| 20 | `instance` | [quasiIso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-comp--1659fb9c79f4aa557697ef4f.md) | 157 | `declaration-track:1659fb9c79f4aa557697ef4fbd07ef6667349bbab3796eea4c0b4df380452e6b` |
| 21 | `lemma` | [quasiIsoAt_of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-of-comp-left--0440f9c4b7a1d8693e63250c.md) | 162 | `result-track:0440f9c4b7a1d8693e63250c8cc865482dbcb78685cfb63b7009f1c5b9a8d299` |
| 22 | `lemma` | [quasiIsoAt_iff_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-iff-comp-left--20b3e4389ae2a4c87f449332.md) | 170 | `result-track:20b3e4389ae2a4c87f4493329a6df2d7b61531daf729c5690fb7316631d5077d` |
| 23 | `lemma` | [quasiIso_iff_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-iff-comp-left--b8cea394b5989e8d5c44c4ae.md) | 180 | `result-track:b8cea394b5989e8d5c44c4aecfa5163f586b2cadcc7c16171c0ed5c6d14d030e` |
| 24 | `lemma` | [quasiIso_of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-of-comp-left--c877c7c277ab11e148efe9d7.md) | 186 | `result-track:c877c7c277ab11e148efe9d7a1acaf658eff89f66a62a214433f9a24e2224492` |
| 25 | `lemma` | [quasiIsoAt_of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-of-comp-right--e7f4fc485fd9f66ef7fe1bab.md) | 193 | `result-track:e7f4fc485fd9f66ef7fe1baba8288c86b5bc026a54f375830362333b4e1ba9f9` |
| 26 | `lemma` | [quasiIsoAt_iff_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-iff-comp-right--567c0d0d865d8eeb54a08463.md) | 201 | `result-track:567c0d0d865d8eeb54a08463ea5f2ae0549e28d41590dfc00af659b21d0d4bac` |
| 27 | `lemma` | [quasiIso_iff_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-iff-comp-right--794974daa4a31ae7f98a154f.md) | 211 | `result-track:794974daa4a31ae7f98a154fae2a545ec410b1bda9563d5cfcc178b87d25fd33` |
| 28 | `lemma` | [quasiIso_of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-of-comp-right--8dfbbc5a460cb08be9a7e353.md) | 217 | `result-track:8dfbbc5a460cb08be9a7e353e2df6fcdb7721852384cffa2461e1218e13e0095` |
| 29 | `lemma` | [quasiIso_iff_of_arrow_mk_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-iff-of-arrow-mk-iso--e1a92495269d5885ed2f5281.md) | 224 | `result-track:e1a92495269d5885ed2f52815453fe022e282a95071ad5601fbd66d6d2debf98` |
| 30 | `lemma` | [quasiIso_of_arrow_mk_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-of-arrow-mk-iso--07c2ea839f4e31c71ba08a97.md) | 231 | `result-track:07c2ea839f4e31c71ba08a97fd7f68f6437d65685ff5f29d2991dfb3f61b10e6` |
| 31 | `lemma` | [quasiIso_of_retractArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-of-retractarrow--a3d8992b8ec298a1594875b0.md) | 237 | `result-track:a3d8992b8ec298a1594875b04b3b2d0ff24375b7e463bd09bb7f8c6636c26cb7` |
| 32 | `instance` | [quasiIsoAt_map_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-map-of-preserveshomology--c811aeef6f968424fdb90449.md) | 257 | `declaration-track:c811aeef6f968424fdb9044945e68bf966334f66f82a9b93cb6e4b7cbf7560c0` |
| 33 | `lemma` | [quasiIsoAt_map_iff_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiisoat-map-iff-of-preserveshomology--c468831a1b6cad3b476d9f65.md) | 263 | `result-track:c468831a1b6cad3b476d9f65aa838f177a8c4fcd4876f5a45474d4ccc6786edc` |
| 34 | `instance` | [quasiIso_map_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-map-of-preserveshomology--59fcbf6421df20b0f949dc94.md) | 277 | `declaration-track:59fcbf6421df20b0f949dc940b4ccc1d58566b4dd200ec80e900ec68c36252d7` |
| 35 | `lemma` | [quasiIso_map_iff_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso-map-iff-of-preserveshomology--2243e1c4fcc8e728345a9d84.md) | 280 | `result-track:2243e1c4fcc8e728345a9d84dcde82f69e909f80b9c38eca8e51cf1874c1711a` |
| 36 | `def` | [quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/quasiiso--9e2157db536832d00cd4b9f9.md) | 291 | `declaration-track:9e2157db536832d00cd4b9f949caac4900c786ed88ba401914a817fe8c93a2e7` |
| 37 | `lemma` | [mem_quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/mem-quasiiso-iff--aded963267cea5457e8a3170.md) | 297 | `result-track:aded963267cea5457e8a3170df7f0425732ebf13d588217cdda5ab97827bb7d7` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/instance--42af7ce495731d4055e0a703.md) | 299 | `declaration-track:42af7ce495731d4055e0a7032d691bd1f85ec82939b14f348fb10a91dc2e540d` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/instance--0b31a512ac7e2959a3ed0c6f.md) | 307 | `declaration-track:0b31a512ac7e2959a3ed0c6f6d150bc67ab0ae2e21a670fc9f45830f2ea6e638` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/instance--9a639ba765cf4e3159498774.md) | 315 | `declaration-track:9a639ba765cf4e3159498774146a81d7aaa6f48a0979664e1049381f4cc5bbae` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/instance--f5fa0070b5ce591e20624130.md) | 320 | `declaration-track:f5fa0070b5ce591e2062413099aabe2ce2827f4f09eba48458aa9f9bf217a6e4` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/instance--dcf716a734f6c69ae87c0134.md) | 334 | `declaration-track:dcf716a734f6c69ae87c0134cb26844f90437e0cffa98314a2b0728d50a8376e` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/instance--39480d3364ef1cb4190b0541.md) | 340 | `declaration-track:39480d3364ef1cb4190b054119c2896740c5847ab50d2d36757390c3808eed2e` |
| 44 | `lemma` | [homotopyEquivalences_le_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantb5009f27d29f36770fd26c24e0400ec1f81d93b5ac5661eb73909e037b4e7888.lean/declarations/homotopyequivalences-le-quasiiso--a36b5cca6b0ca1585271ee2c.md) | 344 | `result-track:a36b5cca6b0ca1585271ee2c5c80699bf2ee019877b85d260258b53d8e54740d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
