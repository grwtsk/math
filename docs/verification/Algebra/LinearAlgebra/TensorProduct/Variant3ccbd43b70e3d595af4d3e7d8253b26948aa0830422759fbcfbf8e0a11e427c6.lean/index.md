# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6235a87c6cf105324a932facaec8092ec3950480",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6235a87c6cf105324a932facaec8092ec3950480`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean.json)

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
| 1 | `lemma` | [counit_eq_algHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/counit-eq-alghom-tolinearmap--5c1457e6418b6902430effd1.md) | 35 | `result-track:5c1457e6418b6902430effd1f67a680fe81f3074cbd04d3c147bef6250d74837` |
| 2 | `lemma` | [comul_eq_algHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/comul-eq-alghom-tolinearmap--b69c8e142a784c4de88b3e5a.md) | 41 | `result-track:b69c8e142a784c4de88b3e5a689f73a83462390a56bfe75d8786d2718113845f` |
| 3 | `instance` | [_root_.TensorProduct.instBialgebra](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/root-tensorproduct-instbialgebra--da4039f45bcdb028331ababd.md) | 48 | `declaration-track:da4039f45bcdb028331ababd60fce37221e61b87a8240273c7f39b65328defc1` |
| 4 | `lemma` | [counitAlgHom_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/counitalghom-def--879282ba0e304f3c3f1766b4.md) | 55 | `result-track:879282ba0e304f3c3f1766b4b2634e7d1c0f59f844c4fec167c415e12610dd2a` |
| 5 | `lemma` | [comulAlgHom_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/comulalghom-def--4fee533d4ab25e0e48cc3213.md) | 60 | `result-track:4fee533d4ab25e0e48cc321341670421d8e47a1b45a8a6b89e0ae3cdbe86742f` |
| 6 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/map--ef3f377db98cd97673c766b3.md) | 72 | `declaration-track:ef3f377db98cd97673c766b3d7dab2e1c5a9b0bc31036600fa4e90d9f025bb5d` |
| 7 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/map-tmul--2c08037a313fbeea98660ca1.md) | 77 | `result-track:2c08037a313fbeea98660ca1bbcfb5b6be29749a81490ded8a3a8ed63d865315` |
| 8 | `theorem` | [map_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/map-tocoalghom--2eb60f903e5c87733b7284df.md) | 82 | `result-track:2eb60f903e5c87733b7284df4db535f96c4d9954621fa59924444b1b912f778e` |
| 9 | `theorem` | [map_toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/map-toalghom--ed127596973d33308e4eed7a.md) | 86 | `result-track:ed127596973d33308e4eed7aa0f410fb455616ee81ac2ea91cd77972fed68d75` |
| 10 | `def` | [assoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/assoc--03c4256a84c77250120a0e0b.md) | 93 | `declaration-track:03c4256a84c77250120a0e0b56094b4fb85f961a32aeebada300971a6aa6ac39` |
| 11 | `theorem` | [assoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/assoc-tmul--ea02b8ec040e8363465238c5.md) | 97 | `result-track:ea02b8ec040e8363465238c5c47d791ee884bb5bfd4af0829b2ce7c2c9f388a4` |
| 12 | `theorem` | [assoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/assoc-symm-tmul--d4625ad3f3093e0a1d5e6dae.md) | 102 | `result-track:d4625ad3f3093e0a1d5e6dae347d17e1fa1c93047572174815d8ff87d7ff4be4` |
| 13 | `theorem` | [assoc_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/assoc-tocoalgequiv--a83712bc613da7161776acc3.md) | 107 | `result-track:a83712bc613da7161776acc36acdf7134d93104e935125b9cdaf3b9739e39b9e` |
| 14 | `theorem` | [assoc_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/assoc-toalgequiv--eec06f7b67cd91feb8fa836c.md) | 112 | `result-track:eec06f7b67cd91feb8fa836c7e56aba9dd36a90de22873f5d3c750222ec1f42d` |
| 15 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/lid--03b6535bac0c861d7e51fe41.md) | 119 | `declaration-track:03b6535bac0c861d7e51fe413ae382372c2a791707050faae06e1af01e3994ce` |
| 16 | `theorem` | [lid_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/lid-tocoalgequiv--8eaa7695e082959302604c88.md) | 123 | `result-track:8eaa7695e082959302604c88aec0725de84948a1e41c86b275b0939f432200a2` |
| 17 | `theorem` | [lid_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/lid-toalgequiv--025e3b245e044dbdd402c0c8.md) | 127 | `result-track:025e3b245e044dbdd402c0c83359cae2c5a81d28d4e6530b2d922f685d7075ae` |
| 18 | `theorem` | [lid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/lid-tmul--8835d47788f5889e753bc576.md) | 131 | `result-track:8835d47788f5889e753bc576fc29b14a326bf4d282927d94302a929bb69219a8` |
| 19 | `theorem` | [lid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/lid-symm-apply--18fa8f1f7cfd9c2178a87480.md) | 134 | `result-track:18fa8f1f7cfd9c2178a87480023da635075b75667ba8ab1358fe340b10c86930` |
| 20 | `theorem` | [coalgebra_rid_eq_algebra_rid_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/coalgebra-rid-eq-algebra-rid-apply--768f41aa28783117cdf8105f.md) | 136 | `result-track:768f41aa28783117cdf8105f31e28a81e2374be8caafe745ca6a9367a6f98cba` |
| 21 | `def` | [rid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/rid--7b15b5d33f2ede6c2c4f0a2c.md) | 142 | `declaration-track:7b15b5d33f2ede6c2c4f0a2ca19dc77ebd907841cf6bf8cca711689df3ef1884` |
| 22 | `theorem` | [rid_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/rid-tocoalgequiv--f2a063297e2ffa176edbaf05.md) | 147 | `result-track:f2a063297e2ffa176edbaf05488443623656074a15f72ae27e9a8caf78aa4489` |
| 23 | `theorem` | [rid_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/rid-toalgequiv--b6aa6a1eff00556017884a06.md) | 151 | `result-track:b6aa6a1eff00556017884a06eaf1b385e6d46c40d2b0a4277b38cb6a64049ac6` |
| 24 | `theorem` | [rid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/rid-tmul--6c0b1016d6a5df1b723d76e8.md) | 157 | `result-track:6c0b1016d6a5df1b723d76e8776fa78ea87bc502c703f0089e423ff243db4608` |
| 25 | `theorem` | [rid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/rid-symm-apply--ea0a8873d454827f26f2811c.md) | 160 | `result-track:ea0a8873d454827f26f2811c0071cdc877dc94885083d3eb24e698eff2b9402c` |
| 26 | `def` | [comm](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/comm--8b3d054413c7a449020f5c01.md) | 169 | `declaration-track:8b3d054413c7a449020f5c01cf5319f8e5e650ac46051e346046eb7545463b9b` |
| 27 | `abbrev` | [lTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/ltensor--0c3ac7cf86d2cd64447e7de3.md) | 187 | `declaration-track:0c3ac7cf86d2cd64447e7de3d9dd335d10c8b36774c85f1d07364bdfe0d1634e` |
| 28 | `abbrev` | [rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/rtensor--653ad019346452ae72cc8fc9.md) | 191 | `declaration-track:653ad019346452ae72cc8fc952c4870e9bbe00faa7a66936352451e20c4451ff` |
| 29 | `def` | [comulBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/comulbialghom--85e969b3b7529011daceb7af.md) | 204 | `declaration-track:85e969b3b7529011daceb7aff7006e5edb7ac05b3a8ba14e8b5df7ee81b88571` |
| 30 | `lemma` | [comm_comp_comulBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/comm-comp-comulbialghom--3ceb92725c4fe2df1361e6f4.md) | 208 | `result-track:3ceb92725c4fe2df1361e6f484aab3380951beb920e6f976ae29b5a3ffb7a3f3` |
| 31 | `def` | [mulCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/mulcoalghom--8efe5f6dddc0b0679f7358a4.md) | 215 | `declaration-track:8efe5f6dddc0b0679f7358a465c0e76f605ab33ee71c28fb5cb9cc39fc6f7928` |
| 32 | `lemma` | [toLinearMap_mulCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/tolinearmap-mulcoalghom--1cfbed582ec77791f47759e2.md) | 225 | `result-track:1cfbed582ec77791f47759e2afad8608fea01260576ac89691de328132120d34` |
| 33 | `lemma` | [coe_mulCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/coe-mulcoalghom--d222be59258dab4fd4c2cc49.md) | 227 | `result-track:d222be59258dab4fd4c2cc490ae64fea5a90af006b5986baa45e3b65c3470353` |
| 34 | `def` | [_root_.Coalgebra.Repr.tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/root-coalgebra-repr-tmul--0e5610865e6a2a4b6c5fd3a7.md) | 231 | `declaration-track:0e5610865e6a2a4b6c5fd3a7c7bf4f2e60e16a139fbac64e8a14042e4ef9baf7` |
| 35 | `def` | [_root_.Coalgebra.Repr.mul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/root-coalgebra-repr-mul--9fe88c09003d55b7d3e1d5a7.md) | 242 | `declaration-track:9fe88c09003d55b7d3e1d5a7f8ac9bf97216aedc502ec2d69a5e7de65b000d1c` |
| 36 | `lemma` | [counitAlgHom_comp_includeRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/counitalghom-comp-includeright--9ded2a415d1b1021932129b7.md) | 248 | `result-track:9ded2a415d1b1021932129b7a5080ae58b7e0bf8727a2ed48095caab82734b30` |
| 37 | `lemma` | [comul_includeRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/comul-includeright--2ef1c23d19261e12ed6161ac.md) | 253 | `result-track:2ef1c23d19261e12ed6161ac969dc8817d599d15dc6950ebf55d9d18e5887101` |
| 38 | `def` | [mulBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/mulbialghom--365592805f84f34a7a531937.md) | 270 | `declaration-track:365592805f84f34a7a5319375a55b4cfec9c60eb67f166fff467e03b44079365` |
| 39 | `lemma` | [mulBialgHom_toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/mulbialghom-toalghom--ebf1299610b089ab4eee6987.md) | 275 | `result-track:ebf1299610b089ab4eee6987a0ced981be18cc112dd02cd7bb8be6ad42945ac1` |
| 40 | `lemma` | [coe_mulBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/declarations/coe-mulbialghom--fdcfff1e828bcbd20daaaeff.md) | 277 | `result-track:fdcfff1e828bcbd20daaaeff9c9ce6fde60afe73cfcd1d2a9a8bc892bde18fb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
