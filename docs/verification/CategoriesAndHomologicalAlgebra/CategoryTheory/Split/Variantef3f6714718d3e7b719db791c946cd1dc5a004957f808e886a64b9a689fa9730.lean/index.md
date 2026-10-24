# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Split.Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1a24959db714d03bc69ba01e80dc8f9d347413c",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1a24959db714d03bc69ba01e80dc8f9d347413c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IndexSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/indexset--3b3c091d56e43c420707d65a.md) | 51 | `declaration-track:3b3c091d56e43c420707d65a0f329dafd15f9e817a307e6226557e988da9199c` |
| 2 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/mk--2429f190d1088a53d4f10e86.md) | 58 | `declaration-track:2429f190d1088a53d4f10e86257bb340842dd20e3bf99c2a36cc09437f756130` |
| 3 | `def` | [e](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/e--9f76cd643e7791a5e918d4ec.md) | 64 | `declaration-track:9f76cd643e7791a5e918d4ec1999305ec210602b139be110d591a7d9f78962aa` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/instance--884a61be05f1092152d93088.md) | 67 | `declaration-track:884a61be05f1092152d93088b645d7f2b8adfc7776dbb8c4be48c888c3f4bec7` |
| 5 | `theorem` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/ext--3f6d9691372e2d6039e3e88f.md) | 70 | `result-track:3f6d9691372e2d6039e3e88f5a6a4c4b958e678830eb7f2bcf22063c552289c1` |
| 6 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/ext--c88a72a844e9cbd6862c736a.md) | 72 | `result-track:c88a72a844e9cbd6862c736ae244fb364abb9a61e16d0c3a8dcff621791a1f4b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/instance--4f2901d71898952b7c4d7c05.md) | 81 | `declaration-track:4f2901d71898952b7c4d7c057155bf97a5de156717fd2b5514548ecc3a9eacee` |
| 8 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/id--b6c5677d194fa102d361a229.md) | 105 | `declaration-track:b6c5677d194fa102d361a2290aba2ef8ccdc35fefc18ab2586cd52d7bcf255ee` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/instance--0317163b5f42b32aca483429.md) | 108 | `declaration-track:0317163b5f42b32aca4834298f0f6e93280bcc6945acc2ff1ce20f9103be97d8` |
| 10 | `def` | [EqId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/eqid--f3f8ddad057e666e3c2ecb20.md) | 116 | `declaration-track:f3f8ddad057e666e3c2ecb2026aad12da0ffc36d4c0918f77a00b0487485ec27` |
| 11 | `theorem` | [eqId_iff_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/eqid-iff-eq--b2c9394acdebf961eaf10cd3.md) | 119 | `result-track:b2c9394acdebf961eaf10cd3370b0c64afe00dda0d0fab7a93c61cd924967dba` |
| 12 | `theorem` | [eqId_iff_len_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/eqid-iff-len-eq--29bf3b9262dd0d5c55dbb642.md) | 134 | `result-track:29bf3b9262dd0d5c55dbb6421eadecc9448d5856152f5cc30ec1651f1f666997` |
| 13 | `theorem` | [eqId_iff_len_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/eqid-iff-len-le--e7b7006a249665c8fceefc9f.md) | 144 | `result-track:e7b7006a249665c8fceefc9f52544045d9f93bc99a237df14a80d3e9a0608f69` |
| 14 | `theorem` | [eqId_iff_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/eqid-iff-mono--91db083a803e215fec38f809.md) | 151 | `result-track:91db083a803e215fec38f809a7783d398a8c3ab6a229256ee1e15b327fa7dfe4` |
| 15 | `def` | [epiComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/epicomp--d48688c10493828fcbacd5a3.md) | 166 | `declaration-track:d48688c10493828fcbacd5a33c2c7e799bf9263cf42eb821543dbfbadd3717c7` |
| 16 | `def` | [pull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/pull--954f537e9d0b4822b83f1cd8.md) | 176 | `declaration-track:954f537e9d0b4822b83f1cd83f1288112597621b56f9a02d72855034a4ec55f1` |
| 17 | `theorem` | [fac_pull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/fac-pull--bbccde0053b0b013f31cac96.md) | 180 | `result-track:bbccde0053b0b013f31cac9634d8f1ed80982e595b3ce788b1052b8a14eabae4` |
| 18 | `def` | [summand](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/summand--cafce8248f9bd8486919f7cf.md) | 192 | `declaration-track:cafce8248f9bd8486919f7cf03559c9e32f1b34772b4ec1fffeba04eff2b1d42` |
| 19 | `def` | [cofan'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/cofan--3aed208926fe4560a0b76558.md) | 196 | `declaration-track:3aed208926fe4560a0b765580db08e0df1af56c7c84db2aefab34db93d23ae4b` |
| 20 | `structure` | [Splitting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/splitting--8557ab073f2b0126b093e5cd.md) | 205 | `declaration-track:8557ab073f2b0126b093e5cd549ce254a7b93d46977357f13320737c811b64a2` |
| 21 | `def` | [cofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/cofan--f5759bad102f6a915d1f7863.md) | 219 | `declaration-track:f5759bad102f6a915d1f7863cbaf70ea4b2133e93770750fbc953631595c8087` |
| 22 | `def` | [isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/iscolimit--e7e6bf282b307c021791f890.md) | 223 | `declaration-track:e7e6bf282b307c021791f890f48ee2d5b00adfcf3649415c01ca011163e3e094` |
| 23 | `theorem` | [cofan_inj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/cofan-inj-eq--a390b19ed2876c901379f80c.md) | 226 | `result-track:a390b19ed2876c901379f80c16454e8d9de428ce9ea799b05dec81e2e26f8260` |
| 24 | `theorem` | [cofan_inj_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/cofan-inj-id--3e6cb552d76f12964c7a2eff.md) | 229 | `result-track:3e6cb552d76f12964c7a2eff18b506020d56c585898f11666cc7d2ac3841907d` |
| 25 | `def` | [φ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/anonymous--7c8ffd2c7f20d1eeb34972c7.md) | 236 | `declaration-track:7c8ffd2c7f20d1eeb34972c71893d0fb5f57abba4acada0c6d0980c9a21a3ef4` |
| 26 | `theorem` | [cofan_inj_comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/cofan-inj-comp-app--ab960835a40ff9a5b8774d82.md) | 240 | `result-track:ab960835a40ff9a5b8774d828fc2e138dd5d2a9d9f1806e066df30a300685ebe` |
| 27 | `theorem` | [hom_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/hom-ext--dc1ab0523dd3b5175cae8561.md) | 245 | `result-track:dc1ab0523dd3b5175cae85614be9fc9677a09633e5fd3a53fddd21a4b570d17d` |
| 28 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/hom-ext--79bafc18490ec7822509b4e8.md) | 249 | `result-track:79bafc18490ec7822509b4e84119f1dfcfe4ec18099a60704db9c71da2e5522a` |
| 29 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/desc--ebd1791e01148f9ba32589b0.md) | 260 | `declaration-track:ebd1791e01148f9ba32589b075f010c2e9b144382942b9c430542861ea7d1e68` |
| 30 | `theorem` | [ι_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/desc--ad3e2dd170182014319edff9.md) | 265 | `result-track:ad3e2dd170182014319edff94083aa0cc5fb71e86b7f5d6da8d0b133dd87a4c3` |
| 31 | `def` | [ofIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/ofiso--debc077627580660c9650f24.md) | 271 | `declaration-track:debc077627580660c9650f240690afd2755dbdf5227ace229b33bed8aaec114a` |
| 32 | `theorem` | [cofan_inj_epi_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/cofan-inj-epi-naturality--3e82149d65129240f2899af9.md) | 278 | `result-track:3e82149d65129240f2899af947e1a52d620def0e95cd6ce40f92801fd7887b81` |
| 33 | `structure` | [Split](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/split--367a9aed80e3e82ccd40615a.md) | 292 | `declaration-track:367a9aed80e3e82ccd40615a1d0400f2fe40abfecf095e420daec607670db0a7` |
| 34 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/mk--e301216b23533a66bafd0815.md) | 305 | `declaration-track:e301216b23533a66bafd0815b68418e58c830f176046c977067c395e1c0d66ee` |
| 35 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/hom--f591b231871a2b1e3beb5c35.md) | 310 | `declaration-track:f591b231871a2b1e3beb5c354718d4cfbac352bae98770d440f58a2b43f4b6d6` |
| 36 | `theorem` | [Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/hom-ext--e1a877bdd60753696b39826b.md) | 318 | `result-track:e1a877bdd60753696b39826b4013486676c785026045658fb7f226d4037c676a` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/instance--67dd64d48812d23437bcf7f2.md) | 335 | `declaration-track:67dd64d48812d23437bcf7f25d204874f3f7bc60fdae28ed52bf3ed1629aeefc` |
| 38 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/hom-ext--04564fe51fc27be13d534db0.md) | 352 | `result-track:04564fe51fc27be13d534db0639e6a3c77bbcbdfb1e20182021f8bef8446f52f` |
| 39 | `theorem` | [congr_F](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/congr-f--e07a60ff03c4f666a4b3c34e.md) | 355 | `result-track:e07a60ff03c4f666a4b3c34ecb7daebdf0d27fc4f16c84fe6972f8f25e2a4e97` |
| 40 | `theorem` | [congr_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/congr-f--fd39f8dd2279230b100cd602.md) | 357 | `result-track:fd39f8dd2279230b100cd6022570ed52e44c678c4448cda9cdb0302c049bc8cf` |
| 41 | `theorem` | [id_F](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/id-f--1cc6d7ebf0d7c2081ee8b124.md) | 361 | `result-track:1cc6d7ebf0d7c2081ee8b124d9cc793f7023752ab4b555fdffe7dee7c706d46b` |
| 42 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/id-f--71beff87bdd0acf7a6a849a7.md) | 365 | `result-track:71beff87bdd0acf7a6a849a7b0b4d5feaea3f4e7067a1d41a0b3b7043685b867` |
| 43 | `theorem` | [comp_F](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/comp-f--a80df9e43814459fdfe40af3.md) | 369 | `result-track:a80df9e43814459fdfe40af354e11a8674f2bcf66895a87e9d23c1dcd6728530` |
| 44 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/comp-f--70d8a657d4d46476dcce20de.md) | 374 | `result-track:70d8a657d4d46476dcce20de1b51c566c7ba363482225aa252aab8c913e96ba2` |
| 45 | `theorem` | [cofan_inj_naturality_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/cofan-inj-naturality-symm--a7456b475ee50a9c1201d040.md) | 380 | `result-track:a7456b475ee50a9c1201d040b3363491f9ebe075160b4afebcb2d848b92d79e1` |
| 46 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/forget--39c914074ee8652093cdd9ab.md) | 390 | `declaration-track:39c914074ee8652093cdd9ab2a261a6d8e3f05d85c15480be9786cbd8003b17e` |
| 47 | `def` | [evalN](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/evaln--ce751856456248e7a711a999.md) | 397 | `declaration-track:ce751856456248e7a711a999ae85092f04bedc7acb5f3f56a5728f8721ef8a9e` |
| 48 | `def` | [natTransCofanInj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantef3f6714718d3e7b719db791c946cd1dc5a004957f808e886a64b9a689fa9730.lean/declarations/nattranscofaninj--7cdc65fe81bd848e2e9c37f3.md) | 405 | `declaration-track:7cdc65fe81bd848e2e9c37f34cfcde20c4dbc5c5b1bf06ee2e4bd7f10bb538e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
