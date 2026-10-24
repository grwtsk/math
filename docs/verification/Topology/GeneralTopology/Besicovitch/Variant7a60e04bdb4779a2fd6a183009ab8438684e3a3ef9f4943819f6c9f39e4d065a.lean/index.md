# Verification target: GRWTSK.Topology.GeneralTopology.Besicovitch.Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d908a29a0b3f27e2f9b6163a20011fb3cc29e3b5",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d908a29a0b3f27e2f9b6163a20011fb3cc29e3b5`.

Source path: `GRWTSK/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.Differentiation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Besicovitch.SatelliteConfig](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/besicovitch-satelliteconfig--9c143687a9ec385ab1b22e4d.md) | 120 | `declaration-track:9c143687a9ec385ab1b22e4dea5ed3fad0cc068eb0aa7557e51bf75ff1643078` |
| 2 | `def` | [evalBesicovitchSatelliteConfigR](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/evalbesicovitchsatelliteconfigr--023e573d8a00e818ba556d0d.md) | 137 | `declaration-track:023e573d8a00e818ba556d0d8f33407be713802c57de6cdbab123f749509aec0` |
| 3 | `class` | [HasBesicovitchCovering](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/hasbesicovitchcovering--7eb7c4baae78f2fc003cdec0.md) | 150 | `declaration-track:7eb7c4baae78f2fc003cdec02b6db3423dc8e797657ce05bf0e9a9076f22e419` |
| 4 | `instance` | [Besicovitch.SatelliteConfig.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/besicovitch-satelliteconfig-instinhabited--400184be04f2b0665152e9d8.md) | 154 | `declaration-track:400184be04f2b0665152e9d86fe919540cdfbfd1153164dab6572b28232dad47` |
| 5 | `theorem` | [inter'](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/inter--715dd96e217a64b8f286568e.md) | 171 | `result-track:715dd96e217a64b8f286568e050e48818726feaa103ecffc363e52250146be13` |
| 6 | `theorem` | [hlast'](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/hlast--578383992f636f414da24ede.md) | 178 | `result-track:578383992f636f414da24ede0b1c2ec7f7451d98a4e4fbad1800059f2de88c97` |
| 7 | `structure` | [BallPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/ballpackage--90ae9c3a6b3e25ba7927a784.md) | 191 | `declaration-track:90ae9c3a6b3e25ba7927a784c6409a3483ee1e1722c6245dd569566ea4bd26ea` |
| 8 | `def` | [unitBallPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/unitballpackage--96cef6aa0976060fb41fca85.md) | 202 | `declaration-track:96cef6aa0976060fb41fca850a872c83d715eee408c9ad2e6885c01c71c5620c` |
| 9 | `instance` | [BallPackage.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/ballpackage-instinhabited--54c4bfbc88b8f352a68724a0.md) | 209 | `declaration-track:54c4bfbc88b8f352a68724a06b008abd0dde174b603601772e6f59a9e30a879c` |
| 10 | `structure` | [TauPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/taupackage--b94e0973019d37c6034982cc.md) | 216 | `declaration-track:b94e0973019d37c6034982cc55605280085b713d4734e37995a811f723f1ba35` |
| 11 | `instance` | [TauPackage.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/taupackage-instinhabited--bab3f8c66ee5463362af2f37.md) | 221 | `declaration-track:bab3f8c66ee5463362af2f37c302940c6c97fa9ab8d7cda368fd14482bc7ae1e` |
| 12 | `def` | [index](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/index--6368d225218bd67b4ac470db.md) | 234 | `declaration-track:6368d225218bd67b4ac470dbc15e820b38cea18230ce55b28afe4401c7e9e436` |
| 13 | `def` | [iUnionUpTo](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/iunionupto--6cfd9bd9991377d66fd0d2cf.md) | 247 | `declaration-track:6cfd9bd9991377d66fd0d2cfe3c23ac311677e85bfb1e0cd6e85875e32ce2efb` |
| 14 | `theorem` | [monotone_iUnionUpTo](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/monotone-iunionupto--526b6bb1c27d1ec3b8e70d53.md) | 250 | `result-track:526b6bb1c27d1ec3b8e70d53f910207fae12163521a660f864644bd71669038c` |
| 15 | `def` | [R](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/r--fd0cea73c5edeead2224c0a2.md) | 256 | `declaration-track:fd0cea73c5edeead2224c0a2c1acdf78faceae3766be9af90f7f3affd95902a4` |
| 16 | `def` | [color](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/color--ebce1147a6750983fb2f3300.md) | 261 | `declaration-track:ebce1147a6750983fb2f3300f7b19e20f95830c257cd6c141c2257ef0d618577` |
| 17 | `def` | [lastStep](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/laststep--9cb1f96c858d0a7693955362.md) | 273 | `declaration-track:9cb1f96c858d0a7693955362c6a23dfb5e7b323a68288d011736119f96d9a97f` |
| 18 | `theorem` | [lastStep_nonempty](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/laststep-nonempty--949947d4bd6386a8e3e67cac.md) | 276 | `result-track:949947d4bd6386a8e3e67cac68a477a144bd6e2ea9df479251a26d1e581a5d40` |
| 19 | `theorem` | [mem_iUnionUpTo_lastStep](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/mem-iunionupto-laststep--f5fa5d1541e1d11b0c6de9a1.md) | 301 | `result-track:f5fa5d1541e1d11b0c6de9a1f9661b2395d68416621c301f1d3bfe9fcf30c121` |
| 20 | `theorem` | [color_lt](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/color-lt--41bdef9aa514c4abf262aaaa.md) | 327 | `result-track:41bdef9aa514c4abf262aaaad71b8aa9fe3739e83013e9cebb932cff5370b19f` |
| 21 | `theorem` | [exist_disjoint_covering_families](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/exist-disjoint-covering-families--41cbee22b792ca4575ea5df2.md) | 452 | `result-track:41cbee22b792ca4575ea5df2e78538f6c74d4b3cabcfd9ca591a1ca0ddc1287c` |
| 22 | `theorem` | [exist_finset_disjoint_balls_large_measure](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/exist-finset-disjoint-balls-large-measure--e939fdb8b9a4386a2ae604b5.md) | 526 | `result-track:e939fdb8b9a4386a2ae604b52faf816c4c99b57fd6eab760423051751cafab13` |
| 23 | `theorem` | [exists_disjoint_closedBall_covering_ae_of_finiteMeasure_aux](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/exists-disjoint-closedball-covering-ae-of-finitemeasure-aux--86c6068270dec23735ceac7e.md) | 665 | `result-track:86c6068270dec23735ceac7eb8ece5126195893457f616b2e3574a37b4f05c2a` |
| 24 | `theorem` | [exists_disjoint_closedBall_covering_ae_aux](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/exists-disjoint-closedball-covering-ae-aux--f61b93b72cc373efdc43d8f6.md) | 810 | `result-track:f61b93b72cc373efdc43d8f625232668592b173c350bba366b7d3ae5f3fe2473` |
| 25 | `theorem` | [exists_disjoint_closedBall_covering_ae](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/exists-disjoint-closedball-covering-ae--c0426795c352f91f1d2c2715.md) | 832 | `result-track:c0426795c352f91f1d2c271558fdcc97789266b0b21202d4f6a044584bd0dc78` |
| 26 | `theorem` | [exists_closedBall_covering_tsum_measure_le](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/exists-closedball-covering-tsum-measure-le--405323fd448442652b56b395.md) | 856 | `result-track:405323fd448442652b56b3958b487bae441fa09e1b77e1e2184ee859b472493f` |
| 27 | `def` | [vitaliFamily](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/vitalifamily--df19a264b7cc996a2284203c.md) | 1025 | `declaration-track:df19a264b7cc996a2284203c4a53da87fdad975a44bbe556473b449b7e16d9d8` |
| 28 | `theorem` | [tendsto_filterAt](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/tendsto-filterat--e53df0368a122682522cf038.md) | 1065 | `result-track:e53df0368a122682522cf038894f6a7bc193d831562ed03463b9ecbe7b30ed5f` |
| 29 | `theorem` | [ae_tendsto_rnDeriv](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/ae-tendsto-rnderiv--cf02ecb49ef41abd77007cc3.md) | 1083 | `result-track:cf02ecb49ef41abd77007cc3ff744b40952e787c88548040a0e20bf488421f9d` |
| 30 | `theorem` | [ae_tendsto_measure_inter_div_of_measurableSet](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/ae-tendsto-measure-inter-div-of-measurableset--5d2659140e5c55334d14a437.md) | 1094 | `result-track:5d2659140e5c55334d14a4377de86c7afb2faf9807c1f28d9d5570de68eeab8e` |
| 31 | `theorem` | [ae_tendsto_measure_inter_div](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/declarations/ae-tendsto-measure-inter-div--75cc87812b22bdc65b155ba6.md) | 1110 | `result-track:75cc87812b22bdc65b155ba6b6d2dcee18c782e261c52fd6fc472dcf5540a228` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
