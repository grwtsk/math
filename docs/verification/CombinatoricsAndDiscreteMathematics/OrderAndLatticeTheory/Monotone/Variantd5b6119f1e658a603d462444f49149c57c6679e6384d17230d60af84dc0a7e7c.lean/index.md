# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Monotone.Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da891a4ab837f87043162884a64b54a6b4c492af",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da891a4ab837f87043162884a64b54a6b4c492af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Monotone` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Disjoint` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Archimedean` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [antitone_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitone-ici--627804f41aa985143a688ffb.md) | 32 | `result-track:627804f41aa985143a688ffb9ed188a7d56627c50762f405060b61bd35c1127e` |
| 2 | `theorem` | [monotone_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotone-iic--d6cb1a6252bb4d2e0cc6f5ca.md) | 34 | `result-track:d6cb1a6252bb4d2e0cc6f5ca68e01f891fae32b91f4222e07c6ea5461c7acaff` |
| 3 | `theorem` | [antitone_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitone-ioi--cd4199f85b21a504a1e811ac.md) | 36 | `result-track:cd4199f85b21a504a1e811ac137518b3ac682089d8d2209b659652e1d788d05a` |
| 4 | `theorem` | [monotone_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotone-iio--a0a896596c4fabfccb4ca32a.md) | 38 | `result-track:a0a896596c4fabfccb4ca32abaca102e22b5759015530bd0a5614b32b9f7fedb` |
| 5 | `theorem` | [Monotone.Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotone-ici--12c33763a087392291bdfa21.md) | 40 | `result-track:12c33763a087392291bdfa217f4b184e64c2f68bfb11717856e6aa4fed07f14e` |
| 6 | `theorem` | [MonotoneOn.Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotoneon-ici--2478a14857cd4a8e54f4ed54.md) | 43 | `result-track:2478a14857cd4a8e54f4ed5484e5dde205a0eea1789cbd7055a6de724f073e61` |
| 7 | `theorem` | [Antitone.Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitone-ici--97ef5aae76db717448a556a0.md) | 46 | `result-track:97ef5aae76db717448a556a031cdb6f0365bbaa4bfb4b5c35c0058817e0cbd15` |
| 8 | `theorem` | [AntitoneOn.Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitoneon-ici--d2feeb7490d6a214f9980968.md) | 49 | `result-track:d2feeb7490d6a214f9980968267a793a09e91859ff63d87449c9f07542e8a76f` |
| 9 | `theorem` | [Monotone.Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotone-iic--39823aa4e35ab1e4ddbad79f.md) | 52 | `result-track:39823aa4e35ab1e4ddbad79ff649ef98a0c52f55432e9eb5484ba9a28f6f8d27` |
| 10 | `theorem` | [MonotoneOn.Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotoneon-iic--6536484d2383693f65c0e9b8.md) | 55 | `result-track:6536484d2383693f65c0e9b8c7bc116ed116e3474d4d9fb044878fdbe9c93168` |
| 11 | `theorem` | [Antitone.Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitone-iic--30cd38fb41149b35b0abd51e.md) | 58 | `result-track:30cd38fb41149b35b0abd51ec4a2a1951cb0710fefe0d0518005ec30bca9392c` |
| 12 | `theorem` | [AntitoneOn.Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitoneon-iic--2206e04d0c4fbea3386a22ea.md) | 61 | `result-track:2206e04d0c4fbea3386a22ea62e49a6a88a0bd9eb22bbd93a192b4456027b972` |
| 13 | `theorem` | [Monotone.Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotone-ioi--34c2fe8d8f238ad15e09e4e5.md) | 64 | `result-track:34c2fe8d8f238ad15e09e4e5d5b7337347b20832e105cdc37e8c240fb78de949` |
| 14 | `theorem` | [MonotoneOn.Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotoneon-ioi--31acffad87fc19bbd3fced7e.md) | 67 | `result-track:31acffad87fc19bbd3fced7ea6dde951420ebe3aeb9bbd93eed08e940bf9bbf6` |
| 15 | `theorem` | [Antitone.Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitone-ioi--abeae14700a396288fc5ad86.md) | 70 | `result-track:abeae14700a396288fc5ad86179213a1b60f599617b66be40f057ba719e337f0` |
| 16 | `theorem` | [AntitoneOn.Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitoneon-ioi--1fa990f231e66656c82887a1.md) | 73 | `result-track:1fa990f231e66656c82887a1861aff2c98bd2a22bd799c6d227d57f335c989cd` |
| 17 | `theorem` | [Monotone.Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotone-iio--1e85d8fc7fe113d2ac5272e9.md) | 76 | `result-track:1e85d8fc7fe113d2ac5272e91139f9d37d4cc6828d6a8b162b9fbe9a946d76be` |
| 18 | `theorem` | [MonotoneOn.Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotoneon-iio--9e3b3888d2d19468a3c5bb8a.md) | 79 | `result-track:9e3b3888d2d19468a3c5bb8a300f0e54e9badb40d8e1096447624b2894ebc38f` |
| 19 | `theorem` | [Antitone.Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitone-iio--7315de648a3a74bc365e0169.md) | 82 | `result-track:7315de648a3a74bc365e01691f20abaf38d5bc35483f54c19560be86e1fd3b1e` |
| 20 | `theorem` | [AntitoneOn.Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitoneon-iio--2a0e1eeba5c823e015ca2179.md) | 85 | `result-track:2a0e1eeba5c823e015ca2179441fcf3089ac35a0ba28d3921a3876dcad916860` |
| 21 | `theorem` | [Monotone.Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotone-icc--c6c340240dca5a978dd6ea68.md) | 88 | `result-track:c6c340240dca5a978dd6ea68015a866d6a628b4e7771c44b47589cd274bb9919` |
| 22 | `theorem` | [MonotoneOn.Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotoneon-icc--fc4b4f961d12a0c70cab2ad6.md) | 92 | `result-track:fc4b4f961d12a0c70cab2ad67445ae99fd985e88424ec592ea07f70fb8220af5` |
| 23 | `theorem` | [Antitone.Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitone-icc--77ab677e01e208b9331cc4c7.md) | 96 | `result-track:77ab677e01e208b9331cc4c7a5617b0444f079b422fbaf8b589d4329eb51121d` |
| 24 | `theorem` | [AntitoneOn.Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitoneon-icc--129087286c3c40e0303ce2b4.md) | 100 | `result-track:129087286c3c40e0303ce2b472ea0640fcaadfede2afac2e9cee2751bee572c8` |
| 25 | `theorem` | [Monotone.Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotone-ico--4d91e53b7c2e4827bc3d416c.md) | 104 | `result-track:4d91e53b7c2e4827bc3d416cbbd1a4a56321bb25dcaa10e98a284476bfc4917c` |
| 26 | `theorem` | [MonotoneOn.Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotoneon-ico--3b31dff3f26028b1bd8ab185.md) | 108 | `result-track:3b31dff3f26028b1bd8ab1851e64644f89c192290c01b513403750b836f23f84` |
| 27 | `theorem` | [Antitone.Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitone-ico--507ee1f91d6333eec58b63ae.md) | 112 | `result-track:507ee1f91d6333eec58b63aeb253e454293c9eb4ae44d79eb6689931b89a37dd` |
| 28 | `theorem` | [AntitoneOn.Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitoneon-ico--d7f55f43d1a7d100d72d3f55.md) | 116 | `result-track:d7f55f43d1a7d100d72d3f55cbef7dee4f1a79a0a0a245acbad76d3c7809cc21` |
| 29 | `theorem` | [Monotone.Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotone-ioc--bdef5e71811a506af116ade9.md) | 120 | `result-track:bdef5e71811a506af116ade992cdc1cd04b1f8dcb1f58101f912270a1c7664f4` |
| 30 | `theorem` | [MonotoneOn.Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotoneon-ioc--db531bcc37f0f7ebd6a3c770.md) | 124 | `result-track:db531bcc37f0f7ebd6a3c7702b7ac8beac549e2d52793b2dbf334506a6f3915f` |
| 31 | `theorem` | [Antitone.Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitone-ioc--7c762986142b5a1d169451c9.md) | 128 | `result-track:7c762986142b5a1d169451c9084ddb8340fd7496189fa976b5066b0c5cfa38fd` |
| 32 | `theorem` | [AntitoneOn.Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitoneon-ioc--39cea7a2f20951fe3a791911.md) | 132 | `result-track:39cea7a2f20951fe3a791911a6006933ef86dfd94e664128d3d4ef44505cc205` |
| 33 | `theorem` | [Monotone.Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotone-ioo--fec9947070b56af8990a8f50.md) | 136 | `result-track:fec9947070b56af8990a8f50da927973c3b88225ac260220746114af22d634ed` |
| 34 | `theorem` | [MonotoneOn.Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/monotoneon-ioo--655c3402a71199a68820d213.md) | 140 | `result-track:655c3402a71199a68820d213ba56f6859810b4c821fc1b6c24f5d3b8a1b6c99a` |
| 35 | `theorem` | [Antitone.Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitone-ioo--be49d9c7617911832ddce3f1.md) | 144 | `result-track:be49d9c7617911832ddce3f1ff66c0a06bd568d1e93d0845a199b57c612b258e` |
| 36 | `theorem` | [AntitoneOn.Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/antitoneon-ioo--1f7f57ee46cc2181e274c5a1.md) | 148 | `result-track:1f7f57ee46cc2181e274c5a1dd488040eb36dd4dad2e313795f94f6a4981188b` |
| 37 | `theorem` | [iUnion_Ioo_of_mono_of_isGLB_of_isLUB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/iunion-ioo-of-mono-of-isglb-of-islub--754ad85244dce638d48fad51.md) | 158 | `result-track:754ad85244dce638d48fad51cb2c9a2da8416af2c839987e2ae66631977a732a` |
| 38 | `theorem` | [strictMonoOn_Iic_of_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/strictmonoon-iic-of-lt-succ--8eb1ac021275122ea98aa16c.md) | 175 | `result-track:8eb1ac021275122ea98aa16c150b2c056ff8778343baf81893df3adb86ce46e3` |
| 39 | `theorem` | [strictAntiOn_Iic_of_succ_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/strictantion-iic-of-succ-lt--c4de663bd8f5fa87c2507ba8.md) | 180 | `result-track:c4de663bd8f5fa87c2507ba85e16f3d6b699e9307d2bea8b1ca30a0c42b50462` |
| 40 | `theorem` | [strictMonoOn_Ici_of_pred_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/strictmonoon-ici-of-pred-lt--f74b56d1c8ae9fc2c214ef5a.md) | 184 | `result-track:f74b56d1c8ae9fc2c214ef5a672822fc26ec35bc62cf78552e01e3f29b456084` |
| 41 | `theorem` | [strictAntiOn_Ici_of_lt_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/strictantion-ici-of-lt-pred--3924227fe3ae8d749ef082d4.md) | 188 | `result-track:3924227fe3ae8d749ef082d457f28af772409272733a174043566d6e3e691ae6` |
| 42 | `theorem` | [StrictMonoOn.Iic_id_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/strictmonoon-iic-id-le--58dac36d48b5d83bd467afb8.md) | 200 | `result-track:58dac36d48b5d83bd467afb83b2fe82d99d9d18610c21a508bef2707ad230668` |
| 43 | `theorem` | [StrictMonoOn.Ici_le_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantd5b6119f1e658a603d462444f49149c57c6679e6384d17230d60af84dc0a7e7c.lean/declarations/strictmonoon-ici-le-id--869772e9ad8dbdfd35be5cdd.md) | 217 | `result-track:869772e9ad8dbdfd35be5cdd3a9302af6d8ba8a2eeedc545ca69f4b46027459e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
