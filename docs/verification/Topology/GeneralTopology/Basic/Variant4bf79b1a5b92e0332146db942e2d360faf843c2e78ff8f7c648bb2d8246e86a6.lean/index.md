# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60d4ea68db3eb7744c905a12f6ccdcc9e80f846f",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60d4ea68db3eb7744c905a12f6ccdcc9e80f846f`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elementwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TopCat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/topcat--76f655cc5cfb19e5b19c4c24.md) | 26 | `declaration-track:76f655cc5cfb19e5b19c4c24fd89a5bfb11a07406aa7f099cdcdeb7dee4fb25e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/instance--a6bc256b0b11e4c80b760178.md) | 38 | `declaration-track:a6bc256b0b11e4c80b760178ea67d7a1d0a9d1c204f872b5e8f9088c372fe38f` |
| 3 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/of--5b8ef57bfa163c5d5dc20462.md) | 45 | `declaration-track:5b8ef57bfa163c5d5dc20462899dc99a3126df8a55dc7b23783949ff7962ad92` |
| 4 | `lemma` | [coe_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/coe-of--88e7c1a0463908ae6dbc131e.md) | 48 | `result-track:88e7c1a0463908ae6dbc131e0dbd0d6c520faa5a9e1b5de7245e69bce91f4828` |
| 5 | `lemma` | [of_carrier](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/of-carrier--00bc075917242e984b0c9f12.md) | 51 | `result-track:00bc075917242e984b0c9f12b58426b88b69c9d9ac09e21f786ff2a9b9d8ab91` |
| 6 | `structure` | [Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/hom--ec9954bea0e86530d370d015.md) | 56 | `declaration-track:ec9954bea0e86530d370d015d39110aeb1c1cc6c541899a056256a17aa4e9196` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/instance--ea7111c9dd873e44e653806b.md) | 61 | `declaration-track:ea7111c9dd873e44e653806b35c6e6ade01574aab2fa890bcad0f151a6cdf67c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/instance--30c408fe0a6a28f0159811e5.md) | 66 | `declaration-track:30c408fe0a6a28f0159811e5291b90c5afb798c39ac410307b802d03174708f4` |
| 9 | `abbrev` | [Hom.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/hom-hom--2e87086777ac3d51060601d8.md) | 71 | `declaration-track:2e87086777ac3d51060601d8482eb7109f6b1dfcd8a803890cd68597f8e4c917` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/ofhom--c8a38375290a42e8699f5a25.md) | 75 | `declaration-track:c8a38375290a42e8699f5a25d63932ac346724e0ce3f2c21c626e2cd3f24f097` |
| 11 | `def` | [Hom.Simps.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/hom-simps-hom--8453211a948401e4825e3179.md) | 79 | `declaration-track:8453211a948401e4825e3179c207caa37e94573f2123a895c9deefbfb9058b02` |
| 12 | `lemma` | [hom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/hom-id--b8ba5a7ee2168c429b7ba784.md) | 89 | `result-track:b8ba5a7ee2168c429b7ba78406b78c403ea22e29a5326ea6e2a04ee8485d899f` |
| 13 | `theorem` | [id_app](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/id-app--2c0b597bf862c4a214e86b9c.md) | 92 | `result-track:2c0b597bf862c4a214e86b9c6e9b5bd092258fe07ba676086a227c61b6751054` |
| 14 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/coe-id--52e9d807530bf25cc27e174f.md) | 94 | `result-track:52e9d807530bf25cc27e174f2190c0b4e6a225ecb12edd57a3f17029f41138a2` |
| 15 | `lemma` | [hom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/hom-comp--b04ff7209088652807ef1dd0.md) | 97 | `result-track:b04ff7209088652807ef1dd01dcbdb8ad766c707f51c4c03e6e00223f4170be7` |
| 16 | `theorem` | [comp_app](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/comp-app--41380dac740408f0e9d277c5.md) | 101 | `result-track:41380dac740408f0e9d277c5d08e96afa2d195507188156b7d43cbb6fe4b7427` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/coe-comp--3ca93231c2105c813ca02a58.md) | 104 | `result-track:3ca93231c2105c813ca02a58b839798a3496dba60abf1eb4c948011f90b08d67` |
| 18 | `lemma` | [hom_ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/hom-ext--50c4a91edd52dab7a761be4c.md) | 108 | `result-track:50c4a91edd52dab7a761be4cf2198a428589bd568c2d5d374e679ba113b375b2` |
| 19 | `lemma` | [ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/ext--d2386d4c0ec111dbde453e57.md) | 112 | `result-track:d2386d4c0ec111dbde453e57a802525ffe858c170780d216ae3274428acadae6` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/hom-ofhom--5f238ffd99d981845b724a90.md) | 116 | `result-track:5f238ffd99d981845b724a906d14a5e5d4d23c3fae3cf120d53e6187ee2c5f6b` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/ofhom-hom--6b7b0b0b13497bf2037daf86.md) | 120 | `result-track:6b7b0b0b13497bf2037daf8692d46e84ec6aa66e469a7e45aa0f0ce96b77e2b5` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/ofhom-id--4565e1c49ed9d28711ceb524.md) | 124 | `result-track:4565e1c49ed9d28711ceb52450dfe295583a2b7c471292f793491af263911d87` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/ofhom-comp--3cc3e5edee847e0fb9c4a4bd.md) | 127 | `result-track:3cc3e5edee847e0fb9c4a4bd92eb6e0821f9320e37dd1a3a447a810abfbf374f` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/ofhom-apply--eabb73d82d0ae9bf268f0295.md) | 132 | `result-track:eabb73d82d0ae9bf268f0295fc8a1f995a73b8d569970d978095631876eb8120` |
| 25 | `lemma` | [hom_inv_id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/hom-inv-id-apply--e9a1f9fa624d7f357095bc67.md) | 135 | `result-track:e9a1f9fa624d7f357095bc67af8e81c9834f8d601e42ed943531f2cd04c4661c` |
| 26 | `lemma` | [inv_hom_id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/inv-hom-id-apply--9da8cabee0dcb8bf9ca91869.md) | 138 | `result-track:9da8cabee0dcb8bf9ca91869bad3c5a8251b90bb0e6919307a0946970d4d366b` |
| 27 | `theorem` | [coe_of_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/coe-of-of--48d87057478b4d48e4d35f42.md) | 145 | `result-track:48d87057478b4d48e4d35f42dd6cc535b522bd334d183ce467729fae3204052b` |
| 28 | `instance` | [inhabited](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/inhabited--9d65d485bdcf436ed2a73d9b.md) | 155 | `declaration-track:9d65d485bdcf436ed2a73d9b6d5a0ef8d3896685e746a95a5b6c1a83902d4115` |
| 29 | `lemma` | [hom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/hom-apply--d03f7b6d258d9d048bbe858c.md) | 161 | `result-track:d03f7b6d258d9d048bbe858c3c8389481ca7250f0a48d2b207960af776878735` |
| 30 | `def` | [discrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/discrete--f8fc2941704bbe0542dcd295.md) | 164 | `declaration-track:f8fc2941704bbe0542dcd295f65e3876b4bcd8fa625f6283db4e8567445bea19` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/instance--ce7dde8f2d30bf5d7514f92d.md) | 168 | `declaration-track:ce7dde8f2d30bf5d7514f92d8e5cdee650657ae124547e27614b3138dc957cb0` |
| 32 | `def` | [trivial](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/trivial--5f20f1e52ee913b49b6ecf97.md) | 172 | `declaration-track:5f20f1e52ee913b49b6ecf97959cc7a5bb7a8e5fd61ac279206de82f107f4308` |
| 33 | `def` | [isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/isoofhomeo--b54fd999ab6002c51a444b89.md) | 178 | `declaration-track:b54fd999ab6002c51a444b893e9e487d4740a069dbadacd4d154ce2f8e3a2fd4` |
| 34 | `def` | [homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/homeoofiso--b1764d4e7256d72af12295b9.md) | 184 | `declaration-track:b1764d4e7256d72af12295b9f3cccff31fbd9d7de945a61871d0cdc773c2bddb` |
| 35 | `theorem` | [of_isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/of-isoofhomeo--f50b5dc084ec79ce540062cd.md) | 193 | `result-track:f50b5dc084ec79ce540062cd1ab6696ce2e4a5413a4cec70990da854251e2d33` |
| 36 | `theorem` | [of_homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/of-homeoofiso--e5e04563d466ce18bba376d2.md) | 198 | `result-track:e5e04563d466ce18bba376d296e67f2a308369a55cba2186eddd2c3c616a5a41` |
| 37 | `lemma` | [isIso_of_bijective_of_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/isiso-of-bijective-of-isopenmap--4891f914345fe6fd66780212.md) | 202 | `result-track:4891f914345fe6fd66780212e1287c2d3fda1fe9576403fd90550c2c94c07ccd` |
| 38 | `lemma` | [isIso_of_bijective_of_isClosedMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/isiso-of-bijective-of-isclosedmap--a83353fe5fdc11d6793c1c21.md) | 208 | `result-track:a83353fe5fdc11d6793c1c21b6ba112166687106bc02fb90135f7cd52560c380` |
| 39 | `lemma` | [isIso_iff_isHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/isiso-iff-ishomeomorph--ac712fbc7e3e4439ae3a6068.md) | 214 | `result-track:ac712fbc7e3e4439ae3a6068af04a1878c05363e3ccc4e889236b7406b4b7000` |
| 40 | `theorem` | [isOpenEmbedding_iff_comp_isIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/isopenembedding-iff-comp-isiso--d543de2f478ed660e39da65a.md) | 219 | `result-track:d543de2f478ed660e39da65acf3b907df3601b65ae477c0ebee3ea7b6027632d` |
| 41 | `theorem` | [isOpenEmbedding_iff_comp_isIso'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/isopenembedding-iff-comp-isiso--d4bf9f6c069cd7300b22f115.md) | 224 | `result-track:d4bf9f6c069cd7300b22f1151b46bd7918952bec488f13893d2ba4b6a699724d` |
| 42 | `theorem` | [isOpenEmbedding_iff_isIso_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/isopenembedding-iff-isiso-comp--14151e3c0f4f82f85a9b1ec6.md) | 229 | `result-track:14151e3c0f4f82f85a9b1ec60998d90cf7428f2057823f4910cb512ad7e55d2b` |
| 43 | `theorem` | [isOpenEmbedding_iff_isIso_comp'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/declarations/isopenembedding-iff-isiso-comp--1ff7891b6aaf5d11666ea66c.md) | 238 | `result-track:1ff7891b6aaf5d11666ea66cb0808f410c282a6a5bf0455f30f5be3d3e431293` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
