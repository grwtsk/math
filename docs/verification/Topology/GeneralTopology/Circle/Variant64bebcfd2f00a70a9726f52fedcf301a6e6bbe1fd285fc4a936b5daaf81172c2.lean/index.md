# Verification target: GRWTSK.Topology.GeneralTopology.Circle.Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a14ca26f5701113b966c51eb5a931b4d7d3bdef",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a14ca26f5701113b966c51eb5a931b4d7d3bdef`.

Source path: `GRWTSK/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean.json)

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
| 1 | `def` | [Circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/circle--6cf4f93727df9d33186da945.md) | 62 | `declaration-track:6cf4f93727df9d33186da945fdac89dc254f4ef7a3b65b8e6f6500017350e26e` |
| 2 | `instance` | [instCoeOut](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instcoeout--ff903a61564a9e49a31fa2e2.md) | 68 | `declaration-track:ff903a61564a9e49a31fa2e2745ce57e200658dc035707fe8ebd3f8b4fe03238` |
| 3 | `instance` | [instCommGroup](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instcommgroup--fbb02d48e79f71841c39d18b.md) | 70 | `declaration-track:fbb02d48e79f71841c39d18b63e789eec286b6801e292558054639a6bdf63608` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instance--2c00f7fc052c4a609faf8741.md) | 71 | `declaration-track:2c00f7fc052c4a609faf8741eb88de5a246a7358f0238bb8c1371df2aecdebdb` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instance--437b7804a85a6997ef6ed93b.md) | 72 | `declaration-track:437b7804a85a6997ef6ed93b3c7396fd48aae93a82ba0130f8acc96ea8213a98` |
| 6 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instmetricspace--70c178825e35beb371b1bcad.md) | 73 | `declaration-track:70c178825e35beb371b1bcad222e71a3763bd2f1f1f94db565b79dc7e9d5f124` |
| 7 | `lemma` | [ext](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/ext--6291a285949feaa11de67a19.md) | 75 | `result-track:6291a285949feaa11de67a19a880b27da7c1c95384830ab12f3d5c0e2d4c909c` |
| 8 | `lemma` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-injective--8044049087f4300b386b7e5a.md) | 77 | `result-track:8044049087f4300b386b7e5a0f1f5e0f6437cf5397057d98322010a4dac1eadc` |
| 9 | `lemma` | [coe_inj](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-inj--24d6cb0ac14c444521012a32.md) | 80 | `result-track:24d6cb0ac14c444521012a3214144e2b65fa10c028cf8b85d0ece3e1d3a86f1d` |
| 10 | `lemma` | [norm_coe](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/norm-coe--738d89e7ef5a23ec9b21e2e9.md) | 82 | `result-track:738d89e7ef5a23ec9b21e2e9745a3fa6e0cb2090266271d91f08be828853fc14` |
| 11 | `lemma` | [nnnorm_coe](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/nnnorm-coe--7ac3633d9075e87ab74b712a.md) | 83 | `result-track:7ac3633d9075e87ab74b712a7df1c3cff4fc039690ac9fc84c21290db2196bd0` |
| 12 | `lemma` | [enorm_coe](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/enorm-coe--9d02778191383dcc671f5dfb.md) | 84 | `result-track:9d02778191383dcc671f5dfb287a8ab6400917f63ba75c7db917033b9fdbfeb1` |
| 13 | `lemma` | [normSq_coe](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/normsq-coe--8a56614e5672474334ccd0b7.md) | 86 | `result-track:8a56614e5672474334ccd0b73975ec53ac96e4b629cff73387f458daef4533fa` |
| 14 | `lemma` | [coe_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-ne-zero--0b3ec36cadc4f14a6a223ca1.md) | 87 | `result-track:0b3ec36cadc4f14a6a223ca1ed572dbc66b2f0b586b1c8bd8f2ff7c787e78061` |
| 15 | `lemma` | [coe_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-one--fa4a3f5f89bf274832dbbf9c.md) | 88 | `result-track:fa4a3f5f89bf274832dbbf9c336b338bd318f3ffc8a243ae3d629a646ae913e0` |
| 16 | `lemma` | [coe_eq_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-eq-one--95b110c4efaf96cdc1cb4048.md) | 90 | `result-track:95b110c4efaf96cdc1cb4048590a4d1a23ff30b1baf2adbf257c50dd6a44839f` |
| 17 | `lemma` | [coe_mul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-mul--5bc24cc730ad7eef06571d3a.md) | 91 | `result-track:5bc24cc730ad7eef06571d3a9a97ba2d0a36e2be10af0365d529edbf293e0e46` |
| 18 | `lemma` | [coe_inv](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-inv--a9eae0e20c18bf2c15023f6a.md) | 92 | `result-track:a9eae0e20c18bf2c15023f6a923963bcd95b1f874176b0b5cefc2c9ac63ad0db` |
| 19 | `lemma` | [coe_inv_eq_conj](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-inv-eq-conj--be0f6a4031b93fa1b9b2ef28.md) | 93 | `result-track:be0f6a4031b93fa1b9b2ef28c296de73e81fe3c8926e68ede5b494f0377366fb` |
| 20 | `lemma` | [coe_div](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-div--2d679d9e6f6b703bdc168c71.md) | 96 | `result-track:2d679d9e6f6b703bdc168c7145229bfe25ca4b3c869ce5a652e6617d728040ca` |
| 21 | `lemma` | [coe_pow](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-pow--6304bf158989b92d5b6286c2.md) | 97 | `result-track:6304bf158989b92d5b6286c23cad61f300f2773be972f9543b1d95c8b6453e76` |
| 22 | `lemma` | [coe_zpow](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-zpow--e4ee04d2981c23060b7ae6f7.md) | 98 | `result-track:e4ee04d2981c23060b7ae6f7741e1acec929f730d77fcaebc12681737c6594df` |
| 23 | `lemma` | [coe_neg](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-neg--5e94c65de4d81d136db2a50d.md) | 99 | `result-track:5e94c65de4d81d136db2a50dc491c90ba653decb79d54658692bb4ada8eea14c` |
| 24 | `lemma` | [neg_ne_self](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/neg-ne-self--fbb25f0e3640c68d72b4a05e.md) | 101 | `result-track:fbb25f0e3640c68d72b4a05ecdaed5b3f6bc75145bda04c9f147340f7a64e1a8` |
| 25 | `def` | [coeHom](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coehom--71960685c083e6b7a17f25a7.md) | 106 | `declaration-track:71960685c083e6b7a17f25a73e2ad99768a4a9ad18803a6a7b711767f05b472e` |
| 26 | `def` | [toUnits](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/tounits--697f45297ac0648f1d94d556.md) | 112 | `declaration-track:697f45297ac0648f1d94d5567a76dd7a4865145fa8d240daa42d54350be11767` |
| 27 | `lemma` | [toUnits_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/tounits-apply--e6a086cf55a813b2f282299f.md) | 115 | `result-track:e6a086cf55a813b2f282299f293756127113213fac38931633c8dfe8ae574f50` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instance--e7baeb91e175d253085182ac.md) | 117 | `declaration-track:e7baeb91e175d253085182acca66754433a15b2b99ce03a31fc6d7669bd6fc15` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instance--d69f84e530fa601b05f0f81a.md) | 118 | `declaration-track:d69f84e530fa601b05f0f81a154c5d4f6b4904191751f2d05b824047f40f7d37` |
| 30 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instuniformspace--b5ff808a99e9a74eb51a51b4.md) | 119 | `declaration-track:b5ff808a99e9a74eb51a51b4f1753aa39866e6386e4387590159a1b302c9f83d` |
| 31 | `def` | [ofConjDivSelf](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/ofconjdivself--6a505ba957d2c4e1da07a4aa.md) | 123 | `declaration-track:6a505ba957d2c4e1da07a4aa93d440e59911b017ffdb450b44e0de956722a2b7` |
| 32 | `def` | [exp](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exp--6ebc5476efa143ae9cfdb67e.md) | 129 | `declaration-track:6ebc5476efa143ae9cfdb67e3f96d36ce4375b57a3d37e7f8d13c48144d99845` |
| 33 | `theorem` | [coe_exp](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/coe-exp--b5a51623fd57491fb6f871c1.md) | 135 | `result-track:b5a51623fd57491fb6f871c12e7546226fa0d462f34f88579207caccdba13b95` |
| 34 | `theorem` | [exp_zero](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exp-zero--1be00128754de085afb21904.md) | 138 | `result-track:1be00128754de085afb219046d334971bb51928245a3647c17fa06d776f2f1cf` |
| 35 | `theorem` | [exp_add](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exp-add--eb3c476416bc05f2187e2ea9.md) | 142 | `result-track:eb3c476416bc05f2187e2ea91b5bb65f7d2857ae6de2a620971c35d200217b8e` |
| 36 | `def` | [expHom](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exphom--667d61919c6a0c2500cd12d5.md) | 149 | `declaration-track:667d61919c6a0c2500cd12d57f6f4327732ab7571ff26155372eaaef31830483` |
| 37 | `lemma` | [exp_sub](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exp-sub--a99092efbf65f336da2033fb.md) | 154 | `result-track:a99092efbf65f336da2033fba574061c35dcd0006855cc6ea5aecf4a037eac31` |
| 38 | `lemma` | [exp_neg](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exp-neg--2d1c5b44bc1e7f53a140bae4.md) | 155 | `result-track:2d1c5b44bc1e7f53a140bae4143905c5bf97e3c44310126aa99a5536b5bac34e` |
| 39 | `lemma` | [exp_nsmul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exp-nsmul--84ba37175e6d3ddf55776285.md) | 156 | `result-track:84ba37175e6d3ddf557762859972f4b4569138ae38888fed8fc9ec8bff7af4dc` |
| 40 | `lemma` | [exp_zsmul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exp-zsmul--dc524a5640478a8eb4a8cfea.md) | 157 | `result-track:dc524a5640478a8eb4a8cfeae4d68ff9b7c38d571dcf518ed5bd9dd6e1d5e7ba` |
| 41 | `lemma` | [exp_natCast_mul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exp-natcast-mul--d3d921a23efbc170c9eabb25.md) | 158 | `result-track:d3d921a23efbc170c9eabb25bebc50c0a0397316e04087f1e6f4e3137d21dc72` |
| 42 | `lemma` | [exp_intCast_mul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exp-intcast-mul--76b55b8f637ab9094df636ad.md) | 160 | `result-track:76b55b8f637ab9094df636add86d6f6e0b30d85798b77efc66b63060f9243894` |
| 43 | `lemma` | [exp_pi_ne_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/exp-pi-ne-one--1684ab876b35d825e7514e66.md) | 163 | `result-track:1684ab876b35d825e7514e66c1dd08feb9560d4c8805c815d918a114dc3d6629` |
| 44 | `lemma` | [star_addChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/star-addchar--8e7184b110d6e662300e147b.md) | 173 | `result-track:8e7184b110d6e662300e147b69c57e181b678f0554433424af54d0993b24fc65` |
| 45 | `lemma` | [starRingEnd_addChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/starringend-addchar--7423827b374713327912ef3b.md) | 179 | `result-track:7423827b374713327912ef3bc1d8de22f8566e1ed85d99bca3650f23f4f62366` |
| 46 | `instance` | [instSMul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instsmul--ff27676a18c4b797bf89463e.md) | 183 | `declaration-track:ff27676a18c4b797bf89463e5e505fdf415e5ac6c476f99b4328644c4ce4fa4f` |
| 47 | `instance` | [instSMulCommClass_left](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instsmulcommclass-left--d7ce10a506a7144a63cddf7c.md) | 185 | `declaration-track:d7ce10a506a7144a63cddf7c069f923e6d7089419d2785e45c2345fa9014cf3c` |
| 48 | `instance` | [instSMulCommClass_right](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instsmulcommclass-right--fb51f79f449c4c0d8927285f.md) | 189 | `declaration-track:fb51f79f449c4c0d8927285fdaf7f8774626cadae25e02125d137f34a4d8e02f` |
| 49 | `instance` | [instIsScalarTower](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instisscalartower--ba24c5f6e9cd98b1e4398b6a.md) | 193 | `declaration-track:ba24c5f6e9cd98b1e4398b6ab30f00b3d833a5a9aa4a17b788e5dc89cdd934b4` |
| 50 | `instance` | [instMulAction](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instmulaction--ec14cde3b2973efeaf02046c.md) | 197 | `declaration-track:ec14cde3b2973efeaf02046c592177698317d3ab6924e60a35d237d0e500cd22` |
| 51 | `instance` | [instDistribMulAction](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instdistribmulaction--39cd53c815bfad63603d26c9.md) | 200 | `declaration-track:39cd53c815bfad63603d26c995758488c5c2e74004c7de1833f91f4f1151da9b` |
| 52 | `lemma` | [smul_def](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/smul-def--f1d541288494e603857576e3.md) | 204 | `result-track:f1d541288494e603857576e37bf5af1c73582e541cb94475b4581cba149496b4` |
| 53 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instcontinuoussmul--352cb263bd76315dd7042c48.md) | 206 | `declaration-track:352cb263bd76315dd7042c487d01981b6d8d6db2b335bc8e14228772f0d8e4ba` |
| 54 | `lemma` | [norm_smul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/norm-smul--a186c9900d031af2b250a9ba.md) | 214 | `result-track:a186c9900d031af2b250a9ba0f99b08f3c9924c0435e0f27fca2c25d1f07ae6c` |
| 55 | `lemma` | [nnnorm_smul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/nnnorm-smul--4ec4090f86642d2ae736526b.md) | 215 | `result-track:4ec4090f86642d2ae736526b7f4e18e092840f73622ec924532947ea563f870b` |
| 56 | `lemma` | [enorm_smul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/enorm-smul--0ca9171c12f996e5d5ae26f3.md) | 216 | `result-track:0ca9171c12f996e5d5ae26f3862eb3316c2614155199245410436c2a1d4ae9f8` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/instance--5d566b0728178a933080cebf.md) | 218 | `declaration-track:5d566b0728178a933080cebfb48affe1ef60232f750e590cae5c32dd642ea694` |
| 58 | `def` | [fourierChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/fourierchar--19ece9948712ea56fddd1c9a.md) | 230 | `declaration-track:19ece9948712ea56fddd1c9a6fdc78d90274a0aa0edbc2570f6092f14afd09fd` |
| 59 | `theorem` | [fourierChar_apply'](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/fourierchar-apply--9d25f8afa8471271f646c23f.md) | 239 | `result-track:9d25f8afa8471271f646c23f7820d5e3ec29f5dbdc32ea9cedd0fe2644514620` |
| 60 | `theorem` | [fourierChar_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/fourierchar-apply--b72b970d4d592760d4de8603.md) | 241 | `result-track:b72b970d4d592760d4de86037307c004f8e9f50e6fbea97b0b58a434a4dcc030` |
| 61 | `theorem` | [continuous_fourierChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/continuous-fourierchar--c8d993a6a85836d51565ded6.md) | 244 | `result-track:c8d993a6a85836d51565ded6cc96d20b32f241c356083ad6c00a44b1f4bbfbb1` |
| 62 | `theorem` | [fourierChar_ne_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/fourierchar-ne-one--1d8673aa9ea9d3b9ad889343.md) | 246 | `result-track:1d8673aa9ea9d3b9ad889343622607e95d9e6714fc76669dd2257f385ec4d0e3` |
| 63 | `def` | [probChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/probchar--482ca2456b2048b0455d56fa.md) | 255 | `declaration-track:482ca2456b2048b0455d56fa9cb01cc385fe7e3e2b734444fd75beead39ac16a` |
| 64 | `theorem` | [probChar_apply'](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/probchar-apply--b6fc48ba5c4643f29dba03b9.md) | 260 | `result-track:b6fc48ba5c4643f29dba03b90fd058e6ad26e92b760592973cc5d7a9d9899c08` |
| 65 | `theorem` | [probChar_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/probchar-apply--f90b1e74907a969a8ddcf75b.md) | 262 | `result-track:f90b1e74907a969a8ddcf75b4e7dbb7a47c4733cbee77f7b3b62c6d95866bd78` |
| 66 | `theorem` | [continuous_probChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/continuous-probchar--2d730bbeceb129d88e080464.md) | 265 | `result-track:2d730bbeceb129d88e08046418293107b69e3010c202f676484abb37bb0420c8` |
| 67 | `theorem` | [probChar_ne_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/declarations/probchar-ne-one--a923ccc53518d1a2b81e4be3.md) | 267 | `result-track:a923ccc53518d1a2b81e4be3643127296525b234fa222b279e6d159cdfaab4b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
