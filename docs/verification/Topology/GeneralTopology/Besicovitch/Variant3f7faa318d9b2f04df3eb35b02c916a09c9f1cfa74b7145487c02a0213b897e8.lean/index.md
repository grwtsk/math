# Verification target: GRWTSK.Topology.GeneralTopology.Besicovitch.Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d690b794dd75291c757f229b70e7afb934ddbc18",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d690b794dd75291c757f229b70e7afb934ddbc18`.

Source path: `GRWTSK/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.Differentiation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Besicovitch.SatelliteConfig](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/besicovitch-satelliteconfig--c6a8fd6972ebb731b8d00599.md) | 128 | `declaration-track:c6a8fd6972ebb731b8d005994fcf78dddaec592bbe882419d11bacc4afd71ea6` |
| 2 | `def` | [evalBesicovitchSatelliteConfigR](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/evalbesicovitchsatelliteconfigr--5fdf30bfeaf64f6f5dc816e3.md) | 145 | `declaration-track:5fdf30bfeaf64f6f5dc816e3200437c79e7c142f062cb1cca758cacb135089d2` |
| 3 | `class` | [HasBesicovitchCovering](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/hasbesicovitchcovering--f23bbf3ea86601c29a067793.md) | 158 | `declaration-track:f23bbf3ea86601c29a0677930d827fd8e278e606449599f37a8cd6778ce69983` |
| 4 | `instance` | [Besicovitch.SatelliteConfig.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/besicovitch-satelliteconfig-instinhabited--ed64208085bc9c7436642725.md) | 162 | `declaration-track:ed64208085bc9c7436642725231b9990b12bbfe9096aaafa29ad256b20e065d9` |
| 5 | `theorem` | [inter'](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/inter--470195c607851c99357bd3de.md) | 179 | `result-track:470195c607851c99357bd3ded5f242a6af969bfdb2a0c2f79da3a0c89f38def7` |
| 6 | `theorem` | [hlast'](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/hlast--f15e68cf84521dfc6d275187.md) | 186 | `result-track:f15e68cf84521dfc6d275187fb8d80e0c84000a8b4fa26d9fdc88a2ee3918ae1` |
| 7 | `structure` | [BallPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/ballpackage--3804dac5dcd4010bf1e56713.md) | 199 | `declaration-track:3804dac5dcd4010bf1e567138a9c54b0b4a7c92d209ad83769e5721d97312745` |
| 8 | `def` | [unitBallPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/unitballpackage--c519482391dd4a361cc4b145.md) | 210 | `declaration-track:c519482391dd4a361cc4b1457a875c269fc6f3077a3539997b11a1ba14a57bfd` |
| 9 | `instance` | [BallPackage.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/ballpackage-instinhabited--9b143a1cd2d68aab9f880ddb.md) | 217 | `declaration-track:9b143a1cd2d68aab9f880ddb1557b8d399277cc9968c3391cef2a51c17d53bac` |
| 10 | `structure` | [TauPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/taupackage--a263269c400655755edb1afc.md) | 224 | `declaration-track:a263269c400655755edb1afcca1828ffb76d69e7629ac244561e0285fa593292` |
| 11 | `instance` | [TauPackage.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/taupackage-instinhabited--ddea5b63f892d4d68bce8eb6.md) | 229 | `declaration-track:ddea5b63f892d4d68bce8eb67457c304ce12d2e1dd82937a8096329ee35af180` |
| 12 | `def` | [index](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/index--45564ddace39bc05e681cb8c.md) | 242 | `declaration-track:45564ddace39bc05e681cb8ce2f7d897b403d27cf9b8b72ccab3504eb556a520` |
| 13 | `def` | [iUnionUpTo](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/iunionupto--78f92b2497f4abdfc08020b0.md) | 255 | `declaration-track:78f92b2497f4abdfc08020b01a545ce090784813ce58388634ac4281b3d56762` |
| 14 | `theorem` | [monotone_iUnionUpTo](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/monotone-iunionupto--5e9a428ea20588020cfb6308.md) | 258 | `result-track:5e9a428ea20588020cfb6308185dd6db4788ac8a2e53c9f60fe9606969eab77d` |
| 15 | `def` | [R](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/r--4c291b27ce9e7497a1a14758.md) | 264 | `declaration-track:4c291b27ce9e7497a1a1475896c2fb56f7d522408050362463be9495d7287245` |
| 16 | `def` | [color](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/color--0d5a7d29933b87cea30c2ab1.md) | 269 | `declaration-track:0d5a7d29933b87cea30c2ab130a8a49874189595a68b4a116ad4d0c4e0d81678` |
| 17 | `def` | [lastStep](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/laststep--888bbe9fb22395889fced992.md) | 281 | `declaration-track:888bbe9fb22395889fced9926d94c7e1ecf1cd62c04ffe309a19e0cf40e09db2` |
| 18 | `theorem` | [lastStep_nonempty](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/laststep-nonempty--82f1be1cf7136e66d4c236d8.md) | 284 | `result-track:82f1be1cf7136e66d4c236d85e8b9ccd50c8b05fa0bfa78b24f3faaadaecc378` |
| 19 | `theorem` | [mem_iUnionUpTo_lastStep](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/mem-iunionupto-laststep--5be5997c95c9bc9acb3b4f45.md) | 309 | `result-track:5be5997c95c9bc9acb3b4f45c6120fa4066a3e58e5809f5a0733b02ce6c8fd99` |
| 20 | `theorem` | [color_lt](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/color-lt--ebe972a74ce0f98d39742fc9.md) | 335 | `result-track:ebe972a74ce0f98d39742fc9c72da4a09494b9c5abc7a5371769db34c2da503e` |
| 21 | `theorem` | [exist_disjoint_covering_families](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/exist-disjoint-covering-families--d4747a5f349a97315993514e.md) | 460 | `result-track:d4747a5f349a97315993514e20bdb7773039fc8240b8c88a1dcf3dd38b5b1ca2` |
| 22 | `theorem` | [exist_finset_disjoint_balls_large_measure](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/exist-finset-disjoint-balls-large-measure--d6290bdca393a93eac77f157.md) | 534 | `result-track:d6290bdca393a93eac77f157dbad96d69cae54e572d2bfe32f09366cfe0dfb5a` |
| 23 | `theorem` | [exists_disjoint_closedBall_covering_ae_of_finiteMeasure_aux](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/exists-disjoint-closedball-covering-ae-of-finitemeasure-aux--7d1c81b531cdadd23bdd35f0.md) | 673 | `result-track:7d1c81b531cdadd23bdd35f07344e106f183c79c4fd2bc1960c9f0f19e77ebca` |
| 24 | `theorem` | [exists_disjoint_closedBall_covering_ae_aux](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/exists-disjoint-closedball-covering-ae-aux--fc837e16bf5984ba54724d90.md) | 818 | `result-track:fc837e16bf5984ba54724d901a84ca22158a3dbb63e288f8af3127c2d0804f08` |
| 25 | `theorem` | [exists_disjoint_closedBall_covering_ae](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/exists-disjoint-closedball-covering-ae--cd3b0068ec364532ee6c75c4.md) | 840 | `result-track:cd3b0068ec364532ee6c75c4829f8ca2fb55848007b5e11f1ca56622ac8df620` |
| 26 | `theorem` | [exists_closedBall_covering_tsum_measure_le](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/exists-closedball-covering-tsum-measure-le--8ee0262359fe5b1cc5fed438.md) | 864 | `result-track:8ee0262359fe5b1cc5fed438832dfc26f6066fe4e1972e6476c6aa4efda9f183` |
| 27 | `def` | [vitaliFamily](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/vitalifamily--d512e88edd58e77ef0a636ac.md) | 1033 | `declaration-track:d512e88edd58e77ef0a636acecd50819678213ecd64f424c04f3d9ce49b236b0` |
| 28 | `theorem` | [tendsto_filterAt](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/tendsto-filterat--8a7336fa022179334903cf5b.md) | 1073 | `result-track:8a7336fa022179334903cf5b85007ed0cbcc5b4b4c9f3cddc399588010d3b68a` |
| 29 | `theorem` | [ae_tendsto_rnDeriv](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/ae-tendsto-rnderiv--621c62b63878e3ba96fe093f.md) | 1091 | `result-track:621c62b63878e3ba96fe093f19237b85a182b2a70eb6f02bceaec3caa46a7d3f` |
| 30 | `theorem` | [ae_tendsto_measure_inter_div_of_measurableSet](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/ae-tendsto-measure-inter-div-of-measurableset--3efabb32c31ad9033bdbe99b.md) | 1102 | `result-track:3efabb32c31ad9033bdbe99b44240d516992a2ea030134a8182a5ce9edec8eca` |
| 31 | `theorem` | [ae_tendsto_measure_inter_div](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/declarations/ae-tendsto-measure-inter-div--67ed606df10a1e2e40610dac.md) | 1118 | `result-track:67ed606df10a1e2e40610dacd9fb25597983ac88253da9def518999567f9123f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
