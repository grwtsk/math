# Verification target: GRWTSK.Topology.GeneralTopology.OpenSubgroup.Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63abc1298d30b2ebc2029c7315ba4a655367eb83",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63abc1298d30b2ebc2029c7315ba4a655367eb83`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OpenAddSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/openaddsubgroup--fd9c1edeaaf49ea914dfd219.md) | 47 | `declaration-track:fd9c1edeaaf49ea914dfd219e5fcbf7ef6a8a36403aa356982771ece52ea6c5c` |
| 2 | `structure` | [OpenSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/opensubgroup--dbc770f2c81609ec33a706cf.md) | 53 | `declaration-track:dbc770f2c81609ec33a706cfcda015e960ec32386526d03486b19dd7c5a83c1c` |
| 3 | `instance` | [hasCoeSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/hascoesubgroup--bdf032e8cf556a7612235956.md) | 71 | `declaration-track:bdf032e8cf556a76122359563f7f814ca6e2171fd67b0bfc830421a3903c9acc` |
| 4 | `theorem` | [toSubgroup_injective](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/tosubgroup-injective--feee536974ed10a16f7bef65.md) | 77 | `result-track:feee536974ed10a16f7bef65ac2a6a5d8903a5d2147105c49fe7bbc4b4297f91` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/instance--6192731777509a311094eae6.md) | 83 | `declaration-track:6192731777509a311094eae6ff61a11f0a2e8a0a03c60fa40793e95984a4bf82` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/instance--bdad4341c1c26ec2f33708ff.md) | 88 | `declaration-track:bdad4341c1c26ec2f33708ff2434d733c03f902585c5a1bb19922f26fe2eff96` |
| 7 | `def` | [toOpens](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/toopens--c6563d10fe5b8f302abf3703.md) | 95 | `declaration-track:c6563d10fe5b8f302abf37032120ac496eae2928bbeda51271c4781335e35b41` |
| 8 | `instance` | [hasCoeOpens](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/hascoeopens--0d8c436d536709e25b20f697.md) | 98 | `declaration-track:0d8c436d536709e25b20f69724bc8602cd59fbba2ddfa3123292ff7ac8c1d410` |
| 9 | `theorem` | [coe_toOpens](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/coe-toopens--78b28c57eab7af9b16bcc971.md) | 103 | `result-track:78b28c57eab7af9b16bcc971ae9108c70bacc2873fdd109e6311ad5b13523e5f` |
| 10 | `theorem` | [coe_toSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/coe-tosubgroup--f029357601c576a2e3184b54.md) | 109 | `result-track:f029357601c576a2e3184b54d623292a62c5028e7edde160d3a9af11d769e222` |
| 11 | `theorem` | [mem_toOpens](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/mem-toopens--a9d7dddb3b103a98e82bc9e3.md) | 114 | `result-track:a9d7dddb3b103a98e82bc9e3daa4eba5a5fec2c48f8b2e55bb9c2ca9a7f70fad` |
| 12 | `theorem` | [mem_toSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/mem-tosubgroup--9586da761739d42dbb05e430.md) | 119 | `result-track:9586da761739d42dbb05e430ac174f932cd50d03fac55a2cda228bd2339f0136` |
| 13 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/ext--189ffe9256bc0b36d8ce2ac0.md) | 124 | `result-track:189ffe9256bc0b36d8ce2ac0986905e736becacd941b81b42194aa5f7913329f` |
| 14 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/isopen--2e0321f33fa87b850ec70772.md) | 132 | `result-track:2e0321f33fa87b850ec70772977b353f066408cad13883ff39279c50c8364a39` |
| 15 | `theorem` | [mem_nhds_one](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/mem-nhds-one--cef3b912f9b9ba4991fa280a.md) | 138 | `result-track:cef3b912f9b9ba4991fa280a71480471915ecd56f8001e668a40dd2fe0037ee6` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/instance--9509ddb7358408af76757265.md) | 145 | `declaration-track:9509ddb7358408af76757265dec93b526f74bb1caf2643a49a4c0b7de8976dab` |
| 17 | `theorem` | [mem_top](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/mem-top--4447408035f75ca2d6b9ac37.md) | 148 | `result-track:4447408035f75ca2d6b9ac37805380ad101da6a0f0b2a7c98ab2db999ae1f764` |
| 18 | `theorem` | [coe_top](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/coe-top--d34ddf3c57f2fd6a86778948.md) | 154 | `result-track:d34ddf3c57f2fd6a86778948496ea2d378676e65c24feb459764e6f280535686` |
| 19 | `theorem` | [toSubgroup_top](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/tosubgroup-top--698b0a503200eeea83e13560.md) | 160 | `result-track:698b0a503200eeea83e13560c10c08e0d41ee25c61171ec4016c27e798aca673` |
| 20 | `theorem` | [toOpens_top](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/toopens-top--f364f270f837e12cf23f7a82.md) | 166 | `result-track:f364f270f837e12cf23f7a824682366d30381f3811e29ca0504f649d6fc7bea3` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/instance--8c11a1121a7ae29acb24fcde.md) | 172 | `declaration-track:8c11a1121a7ae29acb24fcdee10cf1ac9597397c66f8a0cca87980c1c13bdb45` |
| 22 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/isclosed--f29430fb8cbdf5d8d3b523d7.md) | 176 | `result-track:f29430fb8cbdf5d8d3b523d72e51d445ce55bd1d0c0b05a9d07d2dedd30f57aa` |
| 23 | `theorem` | [isClopen](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/isclopen--c37a0c79554b386b571d4ed9.md) | 189 | `result-track:c37a0c79554b386b571d4ed9d875b1d76630015137359a6fe1015733606e66dd` |
| 24 | `def` | [prod](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/prod--386924e1d91625d1261afa2c.md) | 200 | `declaration-track:386924e1d91625d1261afa2cfc3e68b2a2cc8c6139fbb5fb2945a96e7c5230e3` |
| 25 | `theorem` | [coe_prod](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/coe-prod--17c0335e0c137da80422bdec.md) | 206 | `result-track:17c0335e0c137da80422bdec173e722cad8a4fed3ec5cba3b2f38d658798247f` |
| 26 | `theorem` | [toSubgroup_prod](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/tosubgroup-prod--99b12ae639385f61dd172c48.md) | 213 | `result-track:99b12ae639385f61dd172c488c9c6004a3988a3d2fbb90560e299ab06b618345` |
| 27 | `instance` | [instInfOpenSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/instinfopensubgroup--82352205d57ad13cd0f4c4f9.md) | 222 | `declaration-track:82352205d57ad13cd0f4c4f993852ad2c6744c2d9f30b73f0ab101f102c72764` |
| 28 | `theorem` | [coe_inf](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/coe-inf--96e6e68687f15bb49206760c.md) | 226 | `result-track:96e6e68687f15bb49206760c0d5e869e6d15848e4143e5dc70f061632c40edb7` |
| 29 | `theorem` | [toSubgroup_inf](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/tosubgroup-inf--21acf4c2aa6b147900449dae.md) | 232 | `result-track:21acf4c2aa6b147900449dae29b0e1d6faf865a5a222dae1cd143e4296518771` |
| 30 | `theorem` | [toOpens_inf](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/toopens-inf--3227d134927c5acc5132c387.md) | 238 | `result-track:3227d134927c5acc5132c387e3691343e494f9d47ba3424e2d02676aec91ede0` |
| 31 | `theorem` | [mem_inf](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/mem-inf--88f753c6acee6311c4c14fd3.md) | 244 | `result-track:88f753c6acee6311c4c14fd302ecc5b5f438f9c8d82525e1a27688a2f9e75438` |
| 32 | `instance` | [instPartialOrderOpenSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/instpartialorderopensubgroup--3c29385ac2bcfea956f7d2c3.md) | 250 | `declaration-track:3c29385ac2bcfea956f7d2c3b55535e4e4f469c81599f3343b283bba75666229` |
| 33 | `instance` | [instSemilatticeInfOpenSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/instsemilatticeinfopensubgroup--278078c68ec66886ebb8f601.md) | 254 | `declaration-track:278078c68ec66886ebb8f601237b956ff932f20b9561d79a34f0d3d4de7f06dd` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/instance--51e332f13b448751df0c051c.md) | 260 | `declaration-track:51e332f13b448751df0c051c4221ba934d49de7f273f68c872c942728d42fa78` |
| 35 | `theorem` | [toSubgroup_le](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/tosubgroup-le--d15d795b7ec354db8647b468.md) | 265 | `result-track:d15d795b7ec354db8647b46885ca2ac1fd47079df1195fe1dd7e85fcf17f121f` |
| 36 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/comap--595b62088538454ba6137137.md) | 276 | `declaration-track:595b62088538454ba6137137e2612f9886b8d676780c4f535bb183034a7b8cbc` |
| 37 | `theorem` | [coe_comap](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/coe-comap--e085881615f4903735bb7b1e.md) | 282 | `result-track:e085881615f4903735bb7b1e640c803d338622f6cf7f51aea85786f04c46d09f` |
| 38 | `theorem` | [toSubgroup_comap](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/tosubgroup-comap--281e9b77dfe2a75a17b75b16.md) | 289 | `result-track:281e9b77dfe2a75a17b75b164055d86eef55dd5885dc85f48243424b7f226586` |
| 39 | `theorem` | [mem_comap](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/mem-comap--02a51307b09dd77c99bf516e.md) | 296 | `result-track:02a51307b09dd77c99bf516e83379f1412a51c5d05ee37e5852737b28662384e` |
| 40 | `theorem` | [comap_comap](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/comap-comap--0f876c915bb32e5c6858e2d4.md) | 303 | `result-track:0f876c915bb32e5c6858e2d4acb5c765a7a8de943eec73ee19e3102dcf2e4f1a` |
| 41 | `theorem` | [isOpen_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/isopen-of-mem-nhds--ac38e7f3b6b75fc23d60d7b3.md) | 317 | `result-track:ac38e7f3b6b75fc23d60d7b33cf6159f37a167299a54336d94ccb7e938878bea` |
| 42 | `theorem` | [isOpen_mono](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/isopen-mono--e328442eeeaeb429513d98c3.md) | 328 | `result-track:e328442eeeaeb429513d98c3bd040bc8f76d4d8a9b9e831589f296398845bc1e` |
| 43 | `theorem` | [isOpen_of_openSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/isopen-of-opensubgroup--210908033271cc471fecdf2b.md) | 335 | `result-track:210908033271cc471fecdf2b4852e4de33a7de8d548460d1dae9622f3419839e` |
| 44 | `theorem` | [isOpen_of_one_mem_interior](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/isopen-of-one-mem-interior--59e342872d4bf3038366049a.md) | 343 | `result-track:59e342872d4bf3038366049aebc0498a1ee95008e8dbfd14d5d6979843f1de1a` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/instance--8af6a71fbe380e27c204f41b.md) | 356 | `declaration-track:8af6a71fbe380e27c204f41b1b409d2ddc1662b2b83dad95a1637e3463762174` |
| 46 | `theorem` | [toSubgroup_sup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/tosubgroup-sup--aa9194ca87cd3867f1b41b8e.md) | 360 | `result-track:aa9194ca87cd3867f1b41b8ebccc5ba0452bf6595864ea92392d526620ba90fe` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/instance--a6afe00a0959930e6d679bf4.md) | 366 | `declaration-track:a6afe00a0959930e6d679bf48226a77f44eba582fb3670090ad5b985bfcf1fa0` |
| 48 | `theorem` | [isOpen_mono](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/isopen-mono--4370f0fd5e7b4c8a6588c7de.md) | 381 | `result-track:4370f0fd5e7b4c8a6588c7def9e75b24c92932d08ff1605ab0dfa99e829def21` |
| 49 | `theorem` | [isOpen_of_open_subideal](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/declarations/isopen-of-open-subideal--c2a05bc4356a8adf3a9cf25f.md) | 394 | `result-track:c2a05bc4356a8adf3a9cf25f60980e1e1ca179c85eb0d75f9dcdfa9dd18ee78c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
