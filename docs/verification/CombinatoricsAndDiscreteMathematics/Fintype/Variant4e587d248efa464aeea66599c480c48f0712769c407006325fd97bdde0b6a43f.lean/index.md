# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac6fb0ceeafa9ab559ebd568a2ffa898ad13b039",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac6fb0ceeafa9ab559ebd568a2ffa898ad13b039`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ToType](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/totype--6bdc6d3a904f818c8106a440.md) | 42 | `declaration-track:6bdc6d3a904f818c8106a44028e3074126b20014d00cf8286f9ecb5542efef58` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/instance--8f0fcacc83b9774cf22173f7.md) | 47 | `declaration-track:8f0fcacc83b9774cf22173f711aabcf7894a193d9509f5713285fc5db3e6de71` |
| 3 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/example--e94cbb9caceba17149d2636e.md) | 49 | `declaration-track:e94cbb9caceba17149d2636e51d8d374c7642f532333e225958666340eea6c96` |
| 4 | `def` | [mkToType](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/mktotype--9fbf415ae9abad6f3986fdd1.md) | 54 | `declaration-track:9fbf415ae9abad6f3986fdd173cb83da5882ea3defc3c3b2038a46ad1c8d8906` |
| 5 | `instance` | [instCoeSortMultisetType.instCoeOutToType](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/instcoesortmultisettype-instcoeouttotype--f09242f982e187224e518091.md) | 59 | `declaration-track:f09242f982e187224e51809191cb568d4d0411a135a17b7be8ffa193ac5b30e1` |
| 6 | `theorem` | [coe_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/coe-mk--1034467ca4da5bfe2bd0dac4.md) | 62 | `result-track:1034467ca4da5bfe2bd0dac429f0748b19c82219338a94630033e8d71f3cc3b0` |
| 7 | `lemma` | [coe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/coe-mem--d21fedf5fb1f8a9a5c628c64.md) | 65 | `result-track:d21fedf5fb1f8a9a5c628c647a7ec7f738b309158d15526223306ea077d40774` |
| 8 | `theorem` | [forall_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/forall-coe--964e47cbe3ef4439960ab0f5.md) | 68 | `result-track:964e47cbe3ef4439960ab0f5bc393531ff8f6cd85972d4a8518b9b0e4713cde3` |
| 9 | `theorem` | [exists_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/exists-coe--ec172910fe06fdd74f424eab.md) | 73 | `result-track:ec172910fe06fdd74f424eab0f9f84672535ed8f3b5fdba42052249304651c01` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/instance--a359e2c723902768294319d1.md) | 77 | `declaration-track:a359e2c723902768294319d1651f7721efc1392189538a43a1d146218e51cbde` |
| 11 | `def` | [toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/toenumfinset--66e6ce542c67512a7f9eda6b.md) | 90 | `declaration-track:66e6ce542c67512a7f9eda6b2334280fa74301e19cd9263d03805636f15c6cd8` |
| 12 | `theorem` | [mem_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/mem-toenumfinset--c0773a69e7ddded375feb003.md) | 94 | `result-track:c0773a69e7ddded375feb0032c5f665a54c5c1aef974dac0e66bc627d9173439` |
| 13 | `theorem` | [mem_of_mem_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/mem-of-mem-toenumfinset--9c349ebc0112520272a4efcb.md) | 98 | `result-track:9c349ebc0112520272a4efcbb48638894f5dad71e84fb5909166928dab062177` |
| 14 | `lemma` | [toEnumFinset_filter_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/toenumfinset-filter-eq--78b42d02b988de8a6af3cdc5.md) | 101 | `result-track:78b42d02b988de8a6af3cdc5705f44490680135037c73eee3a0d126f4e96b688` |
| 15 | `lemma` | [map_toEnumFinset_fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/map-toenumfinset-fst--adf6043066d9778b494befda.md) | 104 | `result-track:adf6043066d9778b494befdaee5dd8f91bc72e5289c617d16e2b4be96dc1e894` |
| 16 | `lemma` | [image_toEnumFinset_fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/image-toenumfinset-fst--2515d6becd38dde348bc4f31.md) | 107 | `result-track:2515d6becd38dde348bc4f31819194eddc007606853d315a979746606285cc2e` |
| 17 | `lemma` | [map_fst_le_of_subset_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/map-fst-le-of-subset-toenumfinset--124fb377997736be3316e293.md) | 111 | `result-track:124fb377997736be3316e293c1a11bede1666c967bf02419f09a72342048f70f` |
| 18 | `theorem` | [toEnumFinset_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/toenumfinset-mono--3f76073eb80f5d4b0d83b60d.md) | 129 | `result-track:3f76073eb80f5d4b0d83b60d2650a25be9caceb65067e02c3e57a141da74f287` |
| 19 | `theorem` | [toEnumFinset_subset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/toenumfinset-subset-iff--288bb8f0e5597e03c8e9d64f.md) | 136 | `result-track:288bb8f0e5597e03c8e9d64f8e087ae43768cf8ca93613ec3f70bb4d542c0a35` |
| 20 | `def` | [coeEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/coeembedding--09d8244a2620ed659f1beb71.md) | 143 | `declaration-track:09d8244a2620ed659f1beb71262b284da10f4d604db28361120b41d20e394144` |
| 21 | `def` | [coeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/coeequiv--a7d987bf5723eb631866f67c.md) | 153 | `declaration-track:a7d987bf5723eb631866f67ca54df71ceefac0b1016fcf6e20ed1bf237626851` |
| 22 | `theorem` | [toEmbedding_coeEquiv_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/toembedding-coeequiv-trans--172af06c6fd879a0112064d6.md) | 170 | `result-track:172af06c6fd879a0112064d6fe51782dc52e3e7b9fe03fc2cc81686a4c244dd1` |
| 23 | `instance` | [fintypeCoe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/fintypecoe--10a0b14bd7fd507c1ee6bd93.md) | 174 | `declaration-track:10a0b14bd7fd507c1ee6bd93867f30d65dd7b183a78d5550a280a6b6dc72397b` |
| 24 | `theorem` | [map_univ_coeEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/map-univ-coeembedding--250e2c231cb54100f422c5d8.md) | 177 | `result-track:250e2c231cb54100f422c5d8c42199cacfc48bc76bb1ce5f173cf38bcf48d100` |
| 25 | `theorem` | [map_univ_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/map-univ-coe--f9a480662a31f383dfeaabe7.md) | 185 | `result-track:f9a480662a31f383dfeaabe7533e52747186a1aeb00dcadce416f4474cae9332` |
| 26 | `theorem` | [map_univ_comp_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/map-univ-comp-coe--1099ffbbe5ce06b84dfa801c.md) | 192 | `result-track:1099ffbbe5ce06b84dfa801c366e7e7c1216b848d17ebb1bd71449a607b08d22` |
| 27 | `theorem` | [map_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/map-univ--4279f2eefd1f35e1073a19b9.md) | 197 | `result-track:4279f2eefd1f35e1073a19b9932f4608648fab6a6be2f95b4503256d582c3278` |
| 28 | `theorem` | [card_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/card-toenumfinset--dd54f45a7cf5e7b2d4e4a125.md) | 203 | `result-track:dd54f45a7cf5e7b2d4e4a125959faf99badde9aa8350b282e7ccad542b470712` |
| 29 | `theorem` | [card_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/card-coe--671034714317b291f7ff6288.md) | 209 | `result-track:671034714317b291f7ff6288e3237770a781fa3a59dafb24060207b96c9ef720` |
| 30 | `theorem` | [prod_eq_prod_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/prod-eq-prod-coe--d313ad8004bf7beaa6e2c47b.md) | 214 | `result-track:d313ad8004bf7beaa6e2c47b4207bc2b29b2db3c6c0ec4bf14c2ef9b5e6d727d` |
| 31 | `theorem` | [prod_eq_prod_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/prod-eq-prod-toenumfinset--ccaa4ca30d049446b24150b2.md) | 219 | `result-track:ccaa4ca30d049446b24150b208e5e7ba95746c7a925caf63bd0045da6da3eaa3` |
| 32 | `theorem` | [prod_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/prod-toenumfinset--ad3a998e09a057f1bbd810aa.md) | 225 | `result-track:ad3a998e09a057f1bbd810aa8682c92033c4818ecc64034366cf637417fe29e3` |
| 33 | `def` | [cast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/cast--d74244185390301d7025a505.md) | 236 | `declaration-track:d74244185390301d7025a5051dadca53ec95f91ec340d305bc8ca20bb41329d5` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/instance--4f5f4ffbe9db76bf664d269c.md) | 242 | `declaration-track:4f5f4ffbe9db76bf664d269ce100d0d3c0846611c6bcd9aaa7314271140eefed` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/instance--c3bc57580936b626bd1a1ab2.md) | 244 | `declaration-track:c3bc57580936b626bd1a1ab2d408ffff4b016e99543eb8b228e1b03a20fdc0b9` |
| 36 | `def` | [consEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/consequiv--b062b97fea58f39cd3968f68.md) | 249 | `declaration-track:b062b97fea58f39cd3968f68d0c79b9884b1e947d855193e721a09d0dcc59d07` |
| 37 | `lemma` | [consEquiv_symm_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/consequiv-symm-none--4554a618ef2025cdd20be3d1.md) | 277 | `result-track:4554a618ef2025cdd20be3d165dcf58031fcbb658d3d7bb6ebc10a3e8067eda5` |
| 38 | `lemma` | [consEquiv_symm_some](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/consequiv-symm-some--0e72b19525aaec6193071210.md) | 283 | `result-track:0e72b19525aaec6193071210e9de089702820d8ee4182e2bef741ec374ebc84e` |
| 39 | `lemma` | [coe_consEquiv_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/coe-consequiv-of-ne--acc5649714875d555a32e599.md) | 288 | `result-track:acc5649714875d555a32e599bcfd094591b763771a48a031ef11f3933414eb9b` |
| 40 | `lemma` | [coe_consEquiv_of_eq_of_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/coe-consequiv-of-eq-of-eq--79ae71da1763f05ed81ae120.md) | 293 | `result-track:79ae71da1763f05ed81ae120766655562392ffadd97553eda5c03cea70668d5c` |
| 41 | `lemma` | [coe_consEquiv_of_eq_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/coe-consequiv-of-eq-of-lt--0c1ecdd2982db984578060c6.md) | 296 | `result-track:0c1ecdd2982db984578060c68956378769ad150d39a27c3657b345e39404eabb` |
| 42 | `def` | [mapEquiv_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/mapequiv-aux--202fb810c4d4d1dcb30b7c3c.md) | 302 | `declaration-track:202fb810c4d4d1dcb30b7c3c15d164c1e8d8c6459792515c1ef73e0380214025` |
| 43 | `def` | [mapEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/mapequiv--04853c27c16a0971436f9ddd.md) | 316 | `declaration-track:04853c27c16a0971436f9ddd6ce00e5eae7a0bfe5364608a51d91a22b53fe47c` |
| 44 | `theorem` | [mapEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/declarations/mapequiv-apply--9aa88c0e2bb4f7f92e846db0.md) | 320 | `result-track:9aa88c0e2bb4f7f92e846db0f36a0b1a54586f534ce96a8b5827809fa109615c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
