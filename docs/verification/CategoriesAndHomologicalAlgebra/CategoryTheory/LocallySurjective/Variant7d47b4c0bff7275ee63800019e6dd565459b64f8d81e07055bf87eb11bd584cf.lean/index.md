# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySurjective.Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f659a8828b111e9a60ab65cb96c3db1eb55d731",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f659a8828b111e9a60ab65cb96c3db1eb55d731`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Subsheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CompatibleSheafification` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyInjective` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [imageSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/imagesieve--1b83a1bdf181f672ef76661c.md) | 44 | `declaration-track:1b83a1bdf181f672ef76661c0dc8d20082ef1c7b9d95728d4b9da91d260b7ec5` |
| 2 | `theorem` | [imageSieve_eq_sieveOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/imagesieve-eq-sieveofsection--2ad5510bd59b24e79afc1982.md) | 51 | `result-track:2ad5510bd59b24e79afc198280b22eb8d8fac4af74f77cb77cfb3e0f79146589` |
| 3 | `theorem` | [imageSieve_whisker_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/imagesieve-whisker-forget--cd2d7ad62d3a56169cf68ed8.md) | 57 | `result-track:cd2d7ad62d3a56169cf68ed8c98adf2b8e17482d4cfc518c2abe9f98b68cc288` |
| 4 | `theorem` | [imageSieve_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/imagesieve-app--f1246d3f88ee1a87dc705592.md) | 61 | `result-track:f1246d3f88ee1a87dc70559257ec25dfedc9e37742a8da6b7f52497991dc3fd1` |
| 5 | `def` | [localPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/localpreimage--e670874e158ad53cd383cd46.md) | 70 | `declaration-track:e670874e158ad53cd383cd46aac31f8aa9ccd5363d9875db367417410fb8a4eb` |
| 6 | `lemma` | [app_localPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/app-localpreimage--b8302c4e26bd9d9bfa8b5b91.md) | 76 | `result-track:b8302c4e26bd9d9bfa8b5b91dc1b9a12b1c06e70b91dcf78db905fa313c20f39` |
| 7 | `class` | [IsLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective--1aae74cc5fba7553d3702782.md) | 83 | `declaration-track:1aae74cc5fba7553d370278213752ac2512609547b705a7ead368da2ef7a64c0` |
| 8 | `lemma` | [imageSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/imagesieve-mem--3a77a4b9e1725c3b9faf73a4.md) | 86 | `result-track:3a77a4b9e1725c3b9faf73a4d3ce5e95fca9c77b031d6f1ac4d13a5ae733d91f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/instance--421de6dd4af9cac56c2892d5.md) | 91 | `declaration-track:421de6dd4af9cac56c2892d58f16041f5230b4a1cfbd998cfa4c0ecbe4f76505` |
| 10 | `theorem` | [isLocallySurjective_iff_range_sheafify_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-iff-range-sheafify-eq-top--9e02c50d36446e5750c360eb.md) | 95 | `result-track:9e02c50d36446e5750c360eb0d39db4d5ae2d4155cb88cfa66548ceb4913d987` |
| 11 | `theorem` | [isLocallySurjective_iff_range_sheafify_eq_top'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-iff-range-sheafify-eq-top--4791ee451439a58d517ab45d.md) | 106 | `result-track:4791ee451439a58d517ab45dab107f3c4cbcf2a948f73365ef194e561c45ab40` |
| 12 | `theorem` | [isLocallySurjective_iff_whisker_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-iff-whisker-forget--c5be244c35dfff1f1e65a58c.md) | 115 | `result-track:c5be244c35dfff1f1e65a58c79e242102f40bf82293ebfde62e932df5adfc0a3` |
| 13 | `theorem` | [isLocallySurjective_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-of-surjective--1990e9f76326fe352b04a45b.md) | 120 | `result-track:1990e9f76326fe352b04a45b70ea17bd7b95e5f326b91b98674de4979d409d22` |
| 14 | `instance` | [isLocallySurjective_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-of-iso--03130305fba3be37f500c891.md) | 127 | `declaration-track:03130305fba3be37f500c89135a8f8e7967fe7366e58ec69eded4fe31300e467` |
| 15 | `instance` | [isLocallySurjective_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-comp--2a677ad474520091fd770b20.md) | 135 | `declaration-track:2a677ad474520091fd770b2047485bac037d34a89a87c56cdd90d3f082a165eb` |
| 16 | `lemma` | [isLocallySurjective_of_isLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-of-islocallysurjective--aed84a455dbc4f7da5e75bd0.md) | 150 | `result-track:aed84a455dbc4f7da5e75bd0009b7dc846980b48cbbf74f4b03c7f153a6396ca` |
| 17 | `lemma` | [isLocallySurjective_of_isLocallySurjective_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-of-islocallysurjective-fac--bf7fab33c997c22d82858f62.md) | 160 | `result-track:bf7fab33c997c22d82858f625f3d847a53e3029bbb3d61606d44dbbf644ff00f` |
| 18 | `lemma` | [isLocallySurjective_iff_of_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-iff-of-fac--140db4f90da62151700d550c.md) | 166 | `result-track:140db4f90da62151700d550c300fbbcbd84e2495c9a178b884076b407f921daa` |
| 19 | `lemma` | [comp_isLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/comp-islocallysurjective-iff--815b9cbd4ab77045d004cfb8.md) | 177 | `result-track:815b9cbd4ab77045d004cfb8aef938850bf7711ff8cfa110ebc93e8ecafbd410` |
| 20 | `lemma` | [isLocallySurjective_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-of-le--109ba0b0a55389595ed7a4e5.md) | 184 | `result-track:109ba0b0a55389595ed7a4e513d3657e93a924b2f350cfbd36a29d93c5d896ad` |
| 21 | `lemma` | [isLocallyInjective_of_isLocallyInjective_of_isLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallyinjective-of-islocallyinjective-of-islocallysurjective--c8ac05c91d581cf17e8723bb.md) | 188 | `result-track:c8ac05c91d581cf17e8723bb6f831e99e3f6383512b479e9608a888f48296596` |
| 22 | `lemma` | [isLocallyInjective_of_isLocallyInjective_of_isLocallySurjective_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallyinjective-of-islocallyinjective-of-islocallysurjective-fac--3c2ed0fa18da722988766235.md) | 209 | `result-track:3c2ed0fa18da7229887662351e147c5ba97e0fea4e6c36b25f8c4c81960493e9` |
| 23 | `lemma` | [isLocallySurjective_of_isLocallySurjective_of_isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-of-islocallysurjective-of-islocallyinjective--8aab2565b723864c12ce9a34.md) | 216 | `result-track:8aab2565b723864c12ce9a346c7faf49faf7e48e2edd0462f6e731edfa2757d5` |
| 24 | `lemma` | [isLocallySurjective_of_isLocallySurjective_of_isLocallyInjective_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-of-islocallysurjective-of-islocallyinjective-fac--89446e30a11ce8f76e1241b9.md) | 234 | `result-track:89446e30a11ce8f76e1241b935e6c84568c76d71b775ff18acef9368399df2bf` |
| 25 | `lemma` | [comp_isLocallyInjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/comp-islocallyinjective-iff--f5fb9046760194e0c7501e13.md) | 241 | `result-track:f5fb9046760194e0c7501e13508b7d8b35d3aede57dd5cad7c96f7bcbb2ec9b3` |
| 26 | `lemma` | [isLocallySurjective_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-comp-iff--2c47207ee8d16f421eba61f7.md) | 251 | `result-track:2c47207ee8d16f421eba61f7fd73955019d3ae4523b72389001f49711461a750` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/instance--27ced90d490636891f5847a8.md) | 262 | `declaration-track:27ced90d490636891f5847a89f4cf88d6bdd92b17a4602d5a566e4bbd4c1db74` |
| 28 | `def` | [sheafificationIsoImagePresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/sheafificationisoimagepresheaf--2f9fba056e50c68a41f1728f.md) | 272 | `declaration-track:2f9fba056e50c68a41f1728fe46fecb9a3e821fff81be17b074123bf4c70eb37` |
| 29 | `instance` | [isLocallySurjective_toPlus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-toplus--8914baf5a5c93da1d9e7d43a.md) | 293 | `declaration-track:8914baf5a5c93da1d9e7d43a8e995245d4bc3ad321c16c6377c0badcee55497e` |
| 30 | `instance` | [isLocallySurjective_toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-tosheafify--e2b2e39d1b81c02396ae5a83.md) | 305 | `declaration-track:e2b2e39d1b81c02396ae5a837a4720e6a15cae5da880130dcab1e50d0b25744c` |
| 31 | `instance` | [isLocallySurjective_toSheafify'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-tosheafify--80273acb3708159c9b4c081f.md) | 312 | `declaration-track:80273acb3708159c9b4c081fc556a94879dc29b8031e53e7c075119bf4e9606d` |
| 32 | `abbrev` | [IsLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective--095b215acf9670ad50b1e9fb.md) | 333 | `declaration-track:095b215acf9670ad50b1e9fbb3908c1f5da06f35cff95f04b65627e4703f499c` |
| 33 | `lemma` | [isLocallySurjective_sheafToPresheaf_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-sheaftopresheaf-map-iff--7fcd85a49926e51cc6876c14.md) | 335 | `result-track:7fcd85a49926e51cc6876c1474eb53bbd303ddf5c98158a39ec53745172f9f42` |
| 34 | `instance` | [isLocallySurjective_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-comp--88ade16a11fe173bd10d117a.md) | 338 | `declaration-track:88ade16a11fe173bd10d117acbe4234b0e11aa5216c6af68fcdc96632259054c` |
| 35 | `instance` | [isLocallySurjective_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-of-iso--81cf9dcc7f3c31189eece843.md) | 342 | `declaration-track:81cf9dcc7f3c31189eece843cb0783c773733114de6323bb87b4230188963dd4` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/instance--09cadf88dab8831e23da465f.md) | 347 | `declaration-track:09cadf88dab8831e23da465f9fc773346d2d29095e53c2fb6f047b0055ba034a` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/instance--12c83bd5e871e9ad4d39fbbf.md) | 355 | `declaration-track:12c83bd5e871e9ad4d39fbbfa3e31658808e4147ff82e20e47cfaa73e083007f` |
| 38 | `theorem` | [isLocallySurjective_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-iff-isiso--cc812aac3862a8a8dfc5f0a3.md) | 360 | `result-track:cc812aac3862a8a8dfc5f0a38ad398a71e9f0ca0d3ca38faba6498e6dc55581f` |
| 39 | `instance` | [epi_of_isLocallySurjective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/epi-of-islocallysurjective--342951af4d280774bfa9986a.md) | 368 | `declaration-track:342951af4d280774bfa9986a6f48166946c61839909cadafd407a6c3928401a4` |
| 40 | `instance` | [epi_of_isLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/epi-of-islocallysurjective--19a2c3bc543cbdeace5dc301.md) | 382 | `declaration-track:19a2c3bc543cbdeace5dc3017b52320e413bf3b7b3d7937972ad37f343ffe17e` |
| 41 | `lemma` | [isLocallySurjective_iff_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/islocallysurjective-iff-epi--7553ee337a3372f7c59ffaa3.md) | 386 | `result-track:7553ee337a3372f7c59ffaa34b3c2fde331f95fc8daf774f00235d02d8a66cb1` |
| 42 | `def` | [localPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/localpreimage--6ee5b8e8cd44e2392dbe96b2.md) | 408 | `declaration-track:6ee5b8e8cd44e2392dbe96b2757d1b95f5b728b733c5d94d74057d3911642984` |
| 43 | `lemma` | [isAmalgamation_map_localPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7d47b4c0bff7275ee63800019e6dd565459b64f8d81e07055bf87eb11bd584cf.lean/declarations/isamalgamation-map-localpreimage--e4b5bff550f38a90d3f1f914.md) | 413 | `result-track:e4b5bff550f38a90d3f1f9146b07cec6daddc65dda7a280cbd3e153183bc0bff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
