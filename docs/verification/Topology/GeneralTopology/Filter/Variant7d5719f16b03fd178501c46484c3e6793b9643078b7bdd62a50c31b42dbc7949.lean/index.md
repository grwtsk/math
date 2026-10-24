# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b8cee12a195c83da8f3fa84c94359428a408199",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b8cee12a195c83da8f3fa84c94359428a408199`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Lift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Monotone` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/instance--d5e683c2b92cb7644b789a6c.md) | 48 | `declaration-track:d5e683c2b92cb7644b789a6c318d0d6a62bd648c53cc60db97c6598978590b3f` |
| 2 | `theorem` | [isOpen_Iic_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/isopen-iic-principal--00f6c9385753a351a77589a6.md) | 51 | `result-track:00f6c9385753a351a77589a6edb5a54509645c24bd28a1dddc39118fab8345b4` |
| 3 | `theorem` | [isOpen_setOf_mem](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/isopen-setof-mem--1fcaa0fe9ba49365f887e442.md) | 55 | `result-track:1fcaa0fe9ba49365f887e442b7a24182dd101ceb40fce2ae1d60dd562453d042` |
| 4 | `theorem` | [isTopologicalBasis_Iic_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/istopologicalbasis-iic-principal--22c6a7271c345ec25ae29254.md) | 59 | `result-track:22c6a7271c345ec25ae2925481d5620b628b0e36703e45c786ace88c66965264` |
| 5 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/isopen-iff--fb315fffd43a12304f1eecbd.md) | 69 | `result-track:fb315fffd43a12304f1eecbd9c7c5d7928adc796f7f89a17d789ba1443368515` |
| 6 | `theorem` | [nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-eq--3683db608dabb95658b2c8e1.md) | 74 | `result-track:3683db608dabb95658b2c8e1cbaaf7601376117236527390d538843323c1dc39` |
| 7 | `theorem` | [nhds_eq'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-eq--201b913e0d839335f2badd6d.md) | 80 | `result-track:201b913e0d839335f2badd6d51601d95e2f09d1388dc0cae7f4f4c70d18dcdde` |
| 8 | `theorem` | [tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/tendsto-nhds--5618e7377e73418ea813552d.md) | 84 | `result-track:5618e7377e73418ea813552d9b12271ae778e664705b2426b439f20fcddca8ec` |
| 9 | `theorem` | [HasBasis.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/hasbasis-nhds--9c24e1ee4992952c55a7ad29.md) | 89 | `result-track:9c24e1ee4992952c55a7ad2941da79fb2e95d65a1eb5caa6d7aa4bd42d7dd959` |
| 10 | `theorem` | [tendsto_pure_self](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/tendsto-pure-self--0856bff8acb62b6108e0798e.md) | 95 | `result-track:0856bff8acb62b6108e0798edce02d803709df4dc5585d6beccc42aa917fbb0e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/instance--4b12ce489caef98d622378c6.md) | 101 | `declaration-track:4b12ce489caef98d622378c6706bb2b67435b62234f90f33da359bcd27a6da26` |
| 12 | `theorem` | [HasBasis.nhds'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/hasbasis-nhds--97101ac3cd309329a673b505.md) | 105 | `result-track:97101ac3cd309329a673b50528b7a0c003e63f790e617eda1be69bd888e8ad52` |
| 13 | `theorem` | [mem_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/mem-nhds-iff--8733d57adda5c1159f9a6981.md) | 109 | `result-track:8733d57adda5c1159f9a698121113d7ffac1a9fd4ce0c7acedfd3e422a6c4e4b` |
| 14 | `theorem` | [mem_nhds_iff'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/mem-nhds-iff--e72b526916a6bc2fc8e23741.md) | 113 | `result-track:e72b526916a6bc2fc8e237414d9935238b3037555791c242e4f02a21469d3310` |
| 15 | `theorem` | [nhds_bot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-bot--318a6bee49041deabcca551b.md) | 119 | `result-track:318a6bee49041deabcca551b9e4704a9cf316dfe0749c1260f3be73df59aeb2d` |
| 16 | `theorem` | [nhds_top](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-top--f7236974406dc4d5ea63805d.md) | 124 | `result-track:f7236974406dc4d5ea63805dc19ce8b77fba72cc6dc3ab60e705f23d87762919` |
| 17 | `theorem` | [nhds_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-principal--56b98b36a3cdd622620bec8e.md) | 128 | `result-track:56b98b36a3cdd622620bec8e5ce9f940ddec74c6d537bf0c3b9b8ceedc0c7cf3` |
| 18 | `theorem` | [nhds_pure](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-pure--7253df5e17a2e71064c3b281.md) | 133 | `result-track:7253df5e17a2e71064c3b281ebfd3640a087f3d318111e1d56727d8c735a54df` |
| 19 | `theorem` | [nhds_iInf](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-iinf--68b035bd3d39db0440a1b0d7.md) | 138 | `result-track:68b035bd3d39db0440a1b0d73ed9ee2058081c7cc87df6dcecf2506b4877be56` |
| 20 | `theorem` | [nhds_inf](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-inf--14c80f04020f55f7227dd9eb.md) | 144 | `result-track:14c80f04020f55f7227dd9eb737fd342c4328e71e06f710ae4c6ea11b549450b` |
| 21 | `theorem` | [monotone_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/monotone-nhds--cdd7f4ca31d833275da5c9cf.md) | 148 | `result-track:cdd7f4ca31d833275da5c9cf2fa868f95480ce7de6a54ddf74df158f73dda5ca` |
| 22 | `theorem` | [sInter_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/sinter-nhds--96bf630f23897b92f3282bed.md) | 152 | `result-track:96bf630f23897b92f3282beda8ceb64ac27c486e607e489d05a23aa9a27f6af6` |
| 23 | `theorem` | [nhds_mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-mono--6d53d1c18d19af0e5f263763.md) | 158 | `result-track:6d53d1c18d19af0e5f2637632fc40505dc3ae6c2d2aa9dde995dd6323c29a427` |
| 24 | `theorem` | [mem_interior](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/mem-interior--e03f32e93a05f02d3050ec2f.md) | 164 | `result-track:e03f32e93a05f02d3050ec2f3a7b58dc12604b6206aa9041719b4758baa1719a` |
| 25 | `theorem` | [mem_closure](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/mem-closure--e7da061680e73c1d94bc9bec.md) | 168 | `result-track:e7da061680e73c1d94bc9bec5e2a37c9fae510f382afa28089210287dfab39dd` |
| 26 | `theorem` | [closure_singleton](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/closure-singleton--495c763b1286b0d6379da476.md) | 176 | `result-track:495c763b1286b0d6379da476d676af13a325f4ceb64094ea42b67c3276371269` |
| 27 | `theorem` | [specializes_iff_le](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/specializes-iff-le--446c609cca7ea77f603f9ee0.md) | 182 | `result-track:446c609cca7ea77f603f9ee093dc7d8ca157a8f27916b144bd76163e8b918ea7` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/instance--246c634ffc1493647e613d1f.md) | 186 | `declaration-track:246c634ffc1493647e613d1fc68d7fa5157005f13029599398efc15f4a5f5dd1` |
| 29 | `theorem` | [nhds_atTop](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-attop--550e6239a28ca04c12f111a7.md) | 190 | `result-track:550e6239a28ca04c12f111a7a973a49c0eb56fa5de82d93f82bba92ced1a586c` |
| 30 | `theorem` | [tendsto_nhds_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/tendsto-nhds-attop-iff--6866cee67cf8b17408364a6e.md) | 194 | `result-track:6866cee67cf8b17408364a6ec2097b94b14623131fe86bd311e17c005b1118fd` |
| 31 | `theorem` | [nhds_atBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-atbot--be24bc856ebf42feeb905f2d.md) | 199 | `result-track:be24bc856ebf42feeb905f2dd7a686d13610152c5ba31005a6faef13b415c53c` |
| 32 | `theorem` | [tendsto_nhds_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/tendsto-nhds-atbot-iff--37be910e6c34dcf643ed2f7f.md) | 203 | `result-track:37be910e6c34dcf643ed2f7f476bb181d821295bfddc489ecc5cfe7c8d75977b` |
| 33 | `theorem` | [nhds_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/nhds-nhds--c5aeb12f93870bdad0e38f15.md) | 210 | `result-track:c5aeb12f93870bdad0e38f1532793e30e6751c017ba6baa2d1c33d4f8df119e3` |
| 34 | `theorem` | [inducing_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/inducing-nhds--f02802fcf197fa7b30c0f813.md) | 214 | `result-track:f02802fcf197fa7b30c0f8134f613d6a9b27c619bb851e812ce628b077350504` |
| 35 | `theorem` | [continuous_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/continuous-nhds--22687e20d9393e9c9b53ef43.md) | 223 | `result-track:22687e20d9393e9c9b53ef43c7e5fea6a327735bc0b4a13d7bec9eb5981b41d1` |
| 36 | `theorem` | [Tendsto.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/tendsto-nhds--e9d51713224ca434ddce5116.md) | 227 | `result-track:e9d51713224ca434ddce51160a88e331dc47b821bd1d335f29839189700b07b2` |
| 37 | `theorem` | [ContinuousWithinAt.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/continuouswithinat-nhds--10515c62fa8468cee8e9ccb3.md) | 236 | `result-track:10515c62fa8468cee8e9ccb3fe1c681624553de6fcd893703f372777b2b7f8aa` |
| 38 | `theorem` | [ContinuousAt.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/continuousat-nhds--79e6bb3e098b1382a72b977f.md) | 241 | `result-track:79e6bb3e098b1382a72b977fabed280ac4d3467ca25ff731f3220c4457663afb` |
| 39 | `theorem` | [ContinuousOn.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/continuouson-nhds--38cfca322ac1a83c0578bd44.md) | 245 | `result-track:38cfca322ac1a83c0578bd44cc87c507eea7bf3461104a4cc42a6a0029ac3678` |
| 40 | `theorem` | [Continuous.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7d5719f16b03fd178501c46484c3e6793b9643078b7bdd62a50c31b42dbc7949.lean/declarations/continuous-nhds--9e6e35e91c73dacea1d7ba28.md) | 249 | `result-track:9e6e35e91c73dacea1d7ba289af598fecb1e1b98bcd9b119899c2ecd4165cc6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
