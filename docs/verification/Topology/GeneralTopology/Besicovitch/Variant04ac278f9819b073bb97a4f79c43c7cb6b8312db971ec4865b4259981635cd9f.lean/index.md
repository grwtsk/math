# Verification target: GRWTSK.Topology.GeneralTopology.Besicovitch.Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69c4088316c800628826c79b2c643c22292baebf",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69c4088316c800628826c79b2c643c22292baebf`.

Source path: `GRWTSK/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.Differentiation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.VitaliFamily` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Arithmetic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Besicovitch.SatelliteConfig](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/besicovitch-satelliteconfig--26e76e9610221661400941b9.md) | 127 | `declaration-track:26e76e9610221661400941b9ebc54ed9c366156117af6399bdf19ee050926b63` |
| 2 | `class` | [HasBesicovitchCovering](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/hasbesicovitchcovering--d57d90b488260ad4707e35bf.md) | 146 | `declaration-track:d57d90b488260ad4707e35bf159f45c6185825c0ff1c0bf0b3bf0d7ffcb67d5f` |
| 3 | `instance` | [Besicovitch.SatelliteConfig.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/besicovitch-satelliteconfig-instinhabited--5b63c58c83ad05fc98ec370e.md) | 152 | `declaration-track:5b63c58c83ad05fc98ec370e8a3150ac0520aece63b9eda3930e0bc7129a368d` |
| 4 | `theorem` | [inter'](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/inter--61da5f8b45d8618599335c9d.md) | 170 | `result-track:61da5f8b45d8618599335c9d54a896948438188089d96e3033ceccf18f591347` |
| 5 | `theorem` | [hlast'](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/hlast--1ec203e33346e267ce232321.md) | 178 | `result-track:1ec203e33346e267ce232321cd1cbf8eb12f8307bc4aa37ee4693d88a1eb732a` |
| 6 | `structure` | [BallPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/ballpackage--078e08a466dd4334fdb54950.md) | 192 | `declaration-track:078e08a466dd4334fdb5495076b64caeb55c2d88a6f89a9b6fadd2b02dc084ed` |
| 7 | `def` | [unitBallPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/unitballpackage--cccabbc9e8653a0f5e234458.md) | 206 | `declaration-track:cccabbc9e8653a0f5e234458db1882663407b970047bb0d4abd4d6e900fd9e14` |
| 8 | `instance` | [BallPackage.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/ballpackage-instinhabited--7e6533dc490a6e606819eacd.md) | 214 | `declaration-track:7e6533dc490a6e606819eacd7dfd72422030d984baac5735f74120d6360785ce` |
| 9 | `structure` | [TauPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/taupackage--9a44a282bbba8e8b93729857.md) | 222 | `declaration-track:9a44a282bbba8e8b93729857271a6b93eb7cb2ee2c6346ac1de5df7740a6c9ae` |
| 10 | `instance` | [TauPackage.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/taupackage-instinhabited--f9d560775c5d48c0db184418.md) | 229 | `declaration-track:f9d560775c5d48c0db1844189eb8aeb0f2e389c2c7671e5ababe70808c52fe33` |
| 11 | `def` | [index](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/index--2b2eba0db04418907dfe9a63.md) | 243 | `declaration-track:2b2eba0db04418907dfe9a63e34dea9329c72c5cce76c9f367e88d0a651c3973` |
| 12 | `def` | [iUnionUpTo](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/iunionupto--85a34a6f419fde2934f8f93c.md) | 257 | `declaration-track:85a34a6f419fde2934f8f93cad6fd4c7ee3f513f94b7631d0d168abd9b9d801a` |
| 13 | `theorem` | [monotone_iUnionUpTo](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/monotone-iunionupto--174ca03791b7ef380b0f9f93.md) | 261 | `result-track:174ca03791b7ef380b0f9f935475ce277fee77753896e5a97a1cc94b3fd135fd` |
| 14 | `def` | [R](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/r--3333017340e5ae8d17b577fe.md) | 268 | `declaration-track:3333017340e5ae8d17b577fe8a6d4b87c82ea37eabdb7d3a0fe6515965804813` |
| 15 | `def` | [color](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/color--f36d7b6979326f24d5c80d30.md) | 275 | `declaration-track:f36d7b6979326f24d5c80d307bba67eb5335288067c40a5c5eb8b7f43b8d4631` |
| 16 | `def` | [lastStep](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/laststep--84398e7fd67cb1d0dd2726c4.md) | 288 | `declaration-track:84398e7fd67cb1d0dd2726c41b5759c0b330c455188b51f7a51f70022317e361` |
| 17 | `theorem` | [lastStep_nonempty](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/laststep-nonempty--652d7c2985180ab6e5e9ff85.md) | 292 | `result-track:652d7c2985180ab6e5e9ff85431ab5c7deddcb05a3988b405e5b2cbc167a121e` |
| 18 | `theorem` | [mem_iUnionUpTo_lastStep](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/mem-iunionupto-laststep--3edd05a3d8d1f69e93d9ee99.md) | 318 | `result-track:3edd05a3d8d1f69e93d9ee99dddb554ef1c520ec5a2d394c7a42d46e1c052cff` |
| 19 | `theorem` | [color_lt](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/color-lt--b12dbb9896f5e6ba4ff98d8c.md) | 346 | `result-track:b12dbb9896f5e6ba4ff98d8cb8f02697043711d4a5ce342e026fb69834b72878` |
| 20 | `theorem` | [exist_disjoint_covering_families](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/exist-disjoint-covering-families--e6e3762a1c7ebca1a6103731.md) | 471 | `result-track:e6e3762a1c7ebca1a610373147cb0fbacf10ab8de1e5d279b079a4a0fb0385d3` |
| 21 | `theorem` | [exist_finset_disjoint_balls_large_measure](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/exist-finset-disjoint-balls-large-measure--6c85bf8eb3d6b336905f6624.md) | 546 | `result-track:6c85bf8eb3d6b336905f6624b1a3cffb5bdddba48f95231708fee176e75eba32` |
| 22 | `theorem` | [exists_disjoint_closedBall_covering_ae_of_finiteMeasure_aux](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/exists-disjoint-closedball-covering-ae-of-finitemeasure-aux--70ee73f8194a454310488d3b.md) | 686 | `result-track:70ee73f8194a454310488d3b6f9437cb2cdf9165b11dcdb479527c2908566086` |
| 23 | `theorem` | [exists_disjoint_closedBall_covering_ae_aux](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/exists-disjoint-closedball-covering-ae-aux--f3da1ce9505d482d76b8e038.md) | 832 | `result-track:f3da1ce9505d482d76b8e038b4d3d5a09a3a3b551bfa793989132e3a4091d2de` |
| 24 | `theorem` | [exists_disjoint_closedBall_covering_ae](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/exists-disjoint-closedball-covering-ae--f658a87485114fe3774eb83c.md) | 854 | `result-track:f658a87485114fe3774eb83c05b9a988f23f35aac65ae2b153ebf23e2111a5be` |
| 25 | `theorem` | [exists_closedBall_covering_tsum_measure_le](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/exists-closedball-covering-tsum-measure-le--e3636756cce4045e9b20c3bf.md) | 917 | `result-track:e3636756cce4045e9b20c3bf4a17141314a205839327f9f2e07ca6e3a95241dc` |
| 26 | `def` | [vitaliFamily](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/vitalifamily--1c6e69e6dc9d1646692bce79.md) | 1090 | `declaration-track:1c6e69e6dc9d1646692bce79668ca4a60be56cd3331dfa36a67da576c9eef13b` |
| 27 | `theorem` | [tendsto_filterAt](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/tendsto-filterat--05a1d99db845494e36e87968.md) | 1138 | `result-track:05a1d99db845494e36e8796814977bc627f5fa55b0519a70d8ff922d68a9467a` |
| 28 | `theorem` | [ae_tendsto_rnDeriv](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/ae-tendsto-rnderiv--fe144f5c10bfc34ff6e34557.md) | 1158 | `result-track:fe144f5c10bfc34ff6e345574db66be9c3cd55c8e61a4e4fff2baef010c4a19a` |
| 29 | `theorem` | [ae_tendsto_measure_inter_div_of_measurableSet](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/ae-tendsto-measure-inter-div-of-measurableset--dd3eb148a2e9c18947cd488a.md) | 1170 | `result-track:dd3eb148a2e9c18947cd488a9dd774f9ee8aabcf841fadbf1de7ce1d3688fc06` |
| 30 | `theorem` | [ae_tendsto_measure_inter_div](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/declarations/ae-tendsto-measure-inter-div--132bb9aefd5d97f12b4df880.md) | 1187 | `result-track:132bb9aefd5d97f12b4df88000c8f45a21fd0a58e57afab9f0b5bae97567b991` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
