# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddDistLat.Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ed7c81e0cd291b295299a77a09100b20a9554af",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ed7c81e0cd291b295299a77a09100b20a9554af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.BddLat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.DistLat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/bdddistlat--2c5fa21d794e22bda033dbcd.md) | 32 | `declaration-track:2c5fa21d794e22bda033dbcd17b9f2b9dbd0388d5f8a19d285fbd8a93e3cad0a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/instance--752d4bb19595660d79a0a4f3.md) | 40 | `declaration-track:752d4bb19595660d79a0a4f30e91e139ee8f64137968f129ffc82b8409f5dd29` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/instance--4e14390000b235a608d07d84.md) | 43 | `declaration-track:4e14390000b235a608d07d84363e4daa48f409c6bb35b88a7f4732e07443bd9e` |
| 4 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/of--dcd4e9dd663080ae9735e0cd.md) | 49 | `declaration-track:dcd4e9dd663080ae9735e0cdddfe63121fc3a27f79da6ad35066bb0c0cdc0440` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/coe-of--f7b4019fba63aa8bbbf93068.md) | 52 | `result-track:f7b4019fba63aa8bbbf930688e90a57c62f6864583c0b95de569f5c381a24877` |
| 6 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/hom--70f2364cdada04eb6ff2349f.md) | 57 | `declaration-track:70f2364cdada04eb6ff2349f7eafbc25c2a6d8c40af557eda42348901f339e68` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/instance--09076877d0f427cb4c3266ed.md) | 62 | `declaration-track:09076877d0f427cb4c3266ed422df53150386d23af5666c539d3b2667af607f9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/instance--ed0c5e99ce33acb639e9026a.md) | 67 | `declaration-track:ed0c5e99ce33acb639e9026a304481661ef186037b402f595b7ad8b3ba5e26c8` |
| 9 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/hom-hom--57bdae5abdbbdb8d4da60fe6.md) | 72 | `declaration-track:57bdae5abdbbdb8d4da60fe6a96ad21287e753422a9da952ca3b457522ab826f` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/ofhom--a47831a608c608421340dc12.md) | 76 | `declaration-track:a47831a608c608421340dc1233efbad753cedf473cb554fdd9a7ee9cd3f4cb4c` |
| 11 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/hom-simps-hom--4a4780e41c59dff00073798c.md) | 83 | `declaration-track:4a4780e41c59dff00073798c28fc08a1b397a170c1bafec763647f10fd5de5f8` |
| 12 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/coe-id--f68736da56f6484c2826c6dd.md) | 93 | `result-track:f68736da56f6484c2826c6dd0eb6017725fece9f30dc6a59568a5c6a4a0c5d7f` |
| 13 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/coe-comp--22fe5fd7e2c43f9b0a2f0eb2.md) | 96 | `result-track:22fe5fd7e2c43f9b0a2f0eb207dd2e2c8fbb34a0d8c395c87631d98153ec5e37` |
| 14 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/forget-map--434ca9b5d7ede456074c484b.md) | 99 | `result-track:434ca9b5d7ede456074c484b960538d95fa03ca9efc0d558cfeebd0d8138c472` |
| 15 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/ext--70c98486fe8b44d9675c3af9.md) | 103 | `result-track:70c98486fe8b44d9675c3af90d1cfa844cd86a43ec68112c27a8cb54d4cc99bf` |
| 16 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/hom-id--771350fbd6caf23897f0dbf5.md) | 107 | `result-track:771350fbd6caf23897f0dbf5181f1d38cce1d3f6b2fe3e84d7f8bc9498d71c64` |
| 17 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/id-apply--2f1c4dc1cef477da84081b09.md) | 110 | `result-track:2f1c4dc1cef477da84081b0990818131fcdfc22f94288fe9299e60f6a7cffc26` |
| 18 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/hom-comp--df03ddb3415b8beda214e553.md) | 114 | `result-track:df03ddb3415b8beda214e553cc8ea0181de83aca996e1e1dfa9645bf1067ab99` |
| 19 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/comp-apply--d4b2101fed875014941a9ffa.md) | 118 | `result-track:d4b2101fed875014941a9ffa95f96367c54306b67d90bc1cb300e9f56b889d07` |
| 20 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/hom-ext--096fadbf1565829eec85d0a2.md) | 122 | `result-track:096fadbf1565829eec85d0a26b3193dbf094ab44139f3beb7e011232a911a59b` |
| 21 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/hom-ofhom--23cc84e345bde905f3161ec2.md) | 126 | `result-track:23cc84e345bde905f3161ec2efa840a4ae1fe172ed575b5423d37a4045bf50d6` |
| 22 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/ofhom-hom--53d2b4d675ae1c172031d9f3.md) | 131 | `result-track:53d2b4d675ae1c172031d9f3a3a4e1b5115c1238a513445e8b1b626295af50e4` |
| 23 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/ofhom-id--e301091e8ef5c4c5064fad18.md) | 135 | `result-track:e301091e8ef5c4c5064fad184cf27457dbcfd119f92f2f290b4e5c31651c4052` |
| 24 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/ofhom-comp--b77d311a76688d27fdda0012.md) | 139 | `result-track:b77d311a76688d27fdda0012f42576299154f8bb2bf7ae3fe79c4e0427fb5a1c` |
| 25 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/ofhom-apply--84ff59785b7a5f26c5be0ae5.md) | 145 | `result-track:84ff59785b7a5f26c5be0ae5901e8e82a458c5daa6b2f1f56a0562ce15f38aec` |
| 26 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/inv-hom-apply--05cec38848141b9c83f8e959.md) | 150 | `result-track:05cec38848141b9c83f8e959952c8340c90e63c9606a1686d9995a31680c2e31` |
| 27 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/hom-inv-apply--37bb8426b83b3a3689ecf3a9.md) | 153 | `result-track:37bb8426b83b3a3689ecf3a9cdbcce3c9876733f02b122e7eb5c77d7e37f4fa0` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/instance--d7c15273448fca194f23dbf4.md) | 156 | `declaration-track:d7c15273448fca194f23dbf453c1329f7a84fd125e4da81e12f580d621d43df4` |
| 29 | `def` | [toBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/tobddlat--9a7331a97a42becd7aaf5574.md) | 160 | `declaration-track:9a7331a97a42becd7aaf5574c0486ba5b5d944a3e1ad2f9a07ffae51eeb8e9c9` |
| 30 | `theorem` | [coe_toBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/coe-tobddlat--01a2914a0e6111b54e94f62d.md) | 164 | `result-track:01a2914a0e6111b54e94f62d4537b47bdff72f58521649362aba8359c537a8f3` |
| 31 | `instance` | [hasForgetToDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/hasforgettodistlat--c34056bd4c312446c193484f.md) | 167 | `declaration-track:c34056bd4c312446c193484fcb3215bf05c25f8d4d9fb0d3dc496d83261d8508` |
| 32 | `instance` | [hasForgetToBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/hasforgettobddlat--4ef39c816878c395afa929a5.md) | 171 | `declaration-track:4ef39c816878c395afa929a5ca7ac25eab8f6224a27131f234ddf116d6bc6785` |
| 33 | `theorem` | [forget_bddLat_lat_eq_forget_distLat_lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/forget-bddlat-lat-eq-forget-distlat-lat--54d500c222ed560749e2ee8f.md) | 175 | `result-track:54d500c222ed560749e2ee8f8b3b8cd7a231160c3b435e275a93f2a8843ba281` |
| 34 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/iso-mk--b04bf1b87fb7865473f94de0.md) | 183 | `declaration-track:b04bf1b87fb7865473f94de0a5bffd0d1c4a201e1b8288969f773f2cfadd2d0e` |
| 35 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/dual--19698324eeb18698970e3c1c.md) | 189 | `declaration-track:19698324eeb18698970e3c1c26f1216e5becbe1c8e440ec6fb43ce755edd0a2d` |
| 36 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/dualequiv--be700a81aa28ef0a9dbdfb64.md) | 195 | `declaration-track:be700a81aa28ef0a9dbdfb64de91e35b83762bcde25a9449feb1acc727b25f16` |
| 37 | `theorem` | [bddDistLat_dual_comp_forget_to_distLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant93ba3624145ef0cd5afc7eda161a440f6d49c6304686666f9d05a52428f89316.lean/declarations/bdddistlat-dual-comp-forget-to-distlat--440677d847eaad34c8668d3b.md) | 203 | `result-track:440677d847eaad34c8668d3b4d7cb893cd06ad47fab7325cd0e4dd31eb2e9274` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
