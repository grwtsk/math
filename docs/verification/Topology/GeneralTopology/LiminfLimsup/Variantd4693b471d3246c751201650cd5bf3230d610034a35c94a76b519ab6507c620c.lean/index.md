# Verification target: GRWTSK.Topology.GeneralTopology.LiminfLimsup.Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8`.

Source path: `GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.IndicatorFunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LiminfLimsup` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Archimedean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBounded_le_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/isbounded-le-nhds--87ab1faf3f5fa1256301162e.md) | 36 | `result-track:87ab1faf3f5fa1256301162e6dbfe3207c4eef4cbd54028450865b3f73f498b8` |
| 2 | `theorem` | [Filter.Tendsto.isBoundedUnder_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-isboundedunder-le--e16548aa640ccab05c138f79.md) | 41 | `result-track:e16548aa640ccab05c138f79e8c75207944d566092de26696dccd52707e10796` |
| 3 | `theorem` | [Filter.Tendsto.bddAbove_range_of_cofinite](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-bddabove-range-of-cofinite--34a00a67e8172a0a204b7348.md) | 46 | `result-track:34a00a67e8172a0a204b73484f726edb01dcd14c809e6825e31c1c4a2009e242` |
| 4 | `theorem` | [Filter.Tendsto.bddAbove_range](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-bddabove-range--d731479d7f16246af7483952.md) | 51 | `result-track:d731479d7f16246af748395283f7b508e00296a82ee0186bfa1648f2c84a55ff` |
| 5 | `theorem` | [isCobounded_ge_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/iscobounded-ge-nhds--bc8aafa1b9d19d7c33e20e80.md) | 56 | `result-track:bc8aafa1b9d19d7c33e20e80339f6a0063872341db5e555df709408dfea3ef64` |
| 6 | `theorem` | [Filter.Tendsto.isCoboundedUnder_ge](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-iscoboundedunder-ge--fdeeb90ad281238016f53d40.md) | 60 | `result-track:fdeeb90ad281238016f53d40e58ce2cf6b6e7a493a33cbf76499f0f3de23e3a0` |
| 7 | `theorem` | [isBounded_le_atBot](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/isbounded-le-atbot--4427bcd9e96790932a62b8b4.md) | 65 | `result-track:4427bcd9e96790932a62b8b4c49fe35ea143c7c2374b25da29b3d7a8d8a42877` |
| 8 | `theorem` | [Filter.Tendsto.isBoundedUnder_le_atBot](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-isboundedunder-le-atbot--a3a416261d0dec537daa85e8.md) | 70 | `result-track:a3a416261d0dec537daa85e8e34baac54a895b4fe9e622779c3a7b6de3f3082e` |
| 9 | `theorem` | [bddAbove_range_of_tendsto_atTop_atBot](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/bddabove-range-of-tendsto-attop-atbot--6194d868008bd2fe5dacf5d3.md) | 75 | `result-track:6194d868008bd2fe5dacf5d3f7b04ed4430a3232985767eecdd7c40bb498d131` |
| 10 | `theorem` | [isBounded_ge_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/isbounded-ge-nhds--ac497c6e40f9b51ce4971a54.md) | 86 | `result-track:ac497c6e40f9b51ce4971a546207446480004bf818abaa056b9cc345202ae2d2` |
| 11 | `theorem` | [Filter.Tendsto.isBoundedUnder_ge](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-isboundedunder-ge--8b25f08519cf711ae9ab3644.md) | 90 | `result-track:8b25f08519cf711ae9ab36441260dc1e8dd59e000671eebe10b8fa69ed4bac98` |
| 12 | `theorem` | [Filter.Tendsto.bddBelow_range_of_cofinite](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-bddbelow-range-of-cofinite--82fb08c18327cad4b072f811.md) | 95 | `result-track:82fb08c18327cad4b072f811d2d25280a02d6a407e18cc42c9c21a8fec58c4cc` |
| 13 | `theorem` | [Filter.Tendsto.bddBelow_range](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-bddbelow-range--5b0e987f4beb4ceb27f477bb.md) | 100 | `result-track:5b0e987f4beb4ceb27f477bb5c661dfca01c915e0f96907ec2f295517abc481c` |
| 14 | `theorem` | [isCobounded_le_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/iscobounded-le-nhds--be9bf9ce1e25f392d04a2037.md) | 105 | `result-track:be9bf9ce1e25f392d04a20372ea03837712812611a53fa00628bfb2ba394e994` |
| 15 | `theorem` | [Filter.Tendsto.isCoboundedUnder_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-iscoboundedunder-le--8e4b4b47e2ec1c0f04d25e32.md) | 109 | `result-track:8e4b4b47e2ec1c0f04d25e3236b83961db4e391b6f804c1f67a99bf6ba59a82f` |
| 16 | `theorem` | [isBounded_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/isbounded-ge-attop--7f78eb5afa5ab408f59c38e5.md) | 114 | `result-track:7f78eb5afa5ab408f59c38e5ac09fbc27ec5fa300ade6aac0a1a0ad6dd37a5e3` |
| 17 | `theorem` | [Filter.Tendsto.isBoundedUnder_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-isboundedunder-ge-attop--01be0d6827feba45b7c275c3.md) | 119 | `result-track:01be0d6827feba45b7c275c3c34827386b408aae55b341f6391a0836c4185ddf` |
| 18 | `theorem` | [bddBelow_range_of_tendsto_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/bddbelow-range-of-tendsto-attop-attop--8d2ac5b2d692a802f559299b.md) | 124 | `result-track:8d2ac5b2d692a802f559299b4b635d567d9fc7e924ffc1afbbce26e7be514f4f` |
| 19 | `theorem` | [lt_mem_sets_of_limsSup_lt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/lt-mem-sets-of-limssup-lt--4ab7219b36cf4b98861b20ed.md) | 135 | `result-track:4ab7219b36cf4b98861b20ed09e4ad7db4014aaa9fd39004b3afb9651dbc0b2e` |
| 20 | `theorem` | [gt_mem_sets_of_limsInf_gt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/gt-mem-sets-of-limsinf-gt--8c77d45c31f7ad1cb0104bb0.md) | 142 | `result-track:8c77d45c31f7ad1cb0104bb0f5f059a5c88b47f7b46bb62910d42f68a084c1bb` |
| 21 | `theorem` | [le_nhds_of_limsSup_eq_limsInf](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/le-nhds-of-limssup-eq-limsinf--847da32bc9e29f90ebc572a1.md) | 152 | `result-track:847da32bc9e29f90ebc572a1acd68f6accd243d47be631b4d717d3b0ee674e26` |
| 22 | `theorem` | [limsSup_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limssup-nhds--7d70c9adc7f962cec206dccf.md) | 159 | `result-track:7d70c9adc7f962cec206dccf0197d477bd5bf22ac66333c4caa428fdeb368fa0` |
| 23 | `theorem` | [limsInf_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limsinf-nhds--88b7cf6420402f32e2161d31.md) | 170 | `result-track:88b7cf6420402f32e2161d314155625dfd3ec0d972a0d73b67ba9bddc6524e64` |
| 24 | `theorem` | [limsInf_eq_of_le_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limsinf-eq-of-le-nhds--19410ae53884f0fe045866d4.md) | 176 | `result-track:19410ae53884f0fe045866d4021d54e587c1a5869505673a054ac0a2842ac8d9` |
| 25 | `theorem` | [limsSup_eq_of_le_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limssup-eq-of-le-nhds--0f4408305ae113a03afd154b.md) | 191 | `result-track:0f4408305ae113a03afd154bdc2df4352bd41448f1394de0094f8e5a965b9f26` |
| 26 | `theorem` | [Filter.Tendsto.limsup_eq](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-limsup-eq--1ba5cd6952719f89693d6b76.md) | 197 | `result-track:1ba5cd6952719f89693d6b761dea82fdd8ce60e1491515776f5591740bd4696a` |
| 27 | `theorem` | [Filter.Tendsto.liminf_eq](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/filter-tendsto-liminf-eq--03c78c1c6ed7b820efb7a7b5.md) | 203 | `result-track:03c78c1c6ed7b820efb7a7b5fd9ba706fbd0f30758e4a51b09ade23b4b5b0dd8` |
| 28 | `theorem` | [tendsto_of_liminf_eq_limsup](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/tendsto-of-liminf-eq-limsup--4687dbe1aded6a1ffb7e3e55.md) | 210 | `result-track:4687dbe1aded6a1ffb7e3e558f3b76fa01dd9622adad357382e5f8f70fea197b` |
| 29 | `theorem` | [tendsto_of_le_liminf_of_limsup_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/tendsto-of-le-liminf-of-limsup-le--49a256f87c60d6e69cf6da51.md) | 218 | `result-track:49a256f87c60d6e69cf6da51e56ce723077c7435e43f680c0942497cfa5beda0` |
| 30 | `theorem` | [tendsto_of_no_upcrossings](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/tendsto-of-no-upcrossings--dcd1e78dccfdb367d0b6775d.md) | 232 | `result-track:dcd1e78dccfdb367d0b6775db1df0d72cf3c4556df34dce18308e0c73e4e8e65` |
| 31 | `theorem` | [eventually_le_limsup](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/eventually-le-limsup--63d1f3f1edc29586a80f03b1.md) | 254 | `result-track:63d1f3f1edc29586a80f03b1f8a8628536bf8949c0d8d6adc1fffcde46a94bfb` |
| 32 | `theorem` | [eventually_liminf_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/eventually-liminf-le--9373ab8c7e9417220fe38f2d.md) | 273 | `result-track:9373ab8c7e9417220fe38f2d3e8064ff10fe5ec8fad290188b38baae71e7e81f` |
| 33 | `theorem` | [limsup_eq_bot](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limsup-eq-bot--134ecb876dbd54b7862ea2e8.md) | 286 | `result-track:134ecb876dbd54b7862ea2e833b2b0a20f17c497d14d4ba3a951e071077342a0` |
| 34 | `theorem` | [liminf_eq_top](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/liminf-eq-top--d642730fb24cd5d841f7bec5.md) | 296 | `result-track:d642730fb24cd5d841f7bec5c684a220d5d10041cbbcd8f86b66905acf8340b3` |
| 35 | `theorem` | [Antitone.map_limsSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/antitone-map-limssup-of-continuousat--d361265d0330f6b927eacbb9.md) | 313 | `result-track:d361265d0330f6b927eacbb9841e39aa924d7b65b19d2b1c8ceefca696d72c10` |
| 36 | `theorem` | [Antitone.map_limsup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/antitone-map-limsup-of-continuousat--808f779647353fa5f86d0550.md) | 365 | `result-track:808f779647353fa5f86d0550a493e9d74299008b4857afa65ba8e3823a5b1cd2` |
| 37 | `theorem` | [Antitone.map_limsInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/antitone-map-limsinf-of-continuousat--c8cc743733282c12318cd143.md) | 376 | `result-track:c8cc743733282c12318cd143cc36bdb723140a78a616d5046aa27350558b24fe` |
| 38 | `theorem` | [Antitone.map_liminf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/antitone-map-liminf-of-continuousat--11d8788ed74a55019ff4ce5c.md) | 387 | `result-track:11d8788ed74a55019ff4ce5c4cc50e2e947a135914bfc4571bf04844bad91eb2` |
| 39 | `theorem` | [Monotone.map_limsSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/monotone-map-limssup-of-continuousat--05fa7054c3d9cff8c8dbae8a.md) | 398 | `result-track:05fa7054c3d9cff8c8dbae8a8b7a3283410849c4b0c9b6b174d4bfe3ab2dec87` |
| 40 | `theorem` | [Monotone.map_limsup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/monotone-map-limsup-of-continuousat--297c6f2728da8d49af0b9f1a.md) | 409 | `result-track:297c6f2728da8d49af0b9f1a811ede433d7b3f9d1f2efe98fe8074bdb3da8ee9` |
| 41 | `theorem` | [Monotone.map_limsInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/monotone-map-limsinf-of-continuousat--f54cb40080fe5970b32da3ed.md) | 420 | `result-track:f54cb40080fe5970b32da3ed6884c4da2ecad32ce78462fd307a2c3183e48ad7` |
| 42 | `theorem` | [Monotone.map_liminf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/monotone-map-liminf-of-continuousat--c8e5f4dfcdb5ba3d84701f1b.md) | 431 | `result-track:c8e5f4dfcdb5ba3d84701f1b932dadd4ae39eb0847b2f5d46d357446d3dffe3e` |
| 43 | `theorem` | [iInf_eq_of_forall_le_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/iinf-eq-of-forall-le-of-tendsto--2e8af38855449fb06c001c57.md) | 449 | `result-track:2e8af38855449fb06c001c57f5e7f14562a4f17e7b59a088472e9005775610cd` |
| 44 | `theorem` | [iSup_eq_of_forall_le_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/isup-eq-of-forall-le-of-tendsto--b636389d5e08b69aa93486dd.md) | 455 | `result-track:b636389d5e08b69aa93486dd82c23e984ecebf9d1dd3baa3088c29e3dbb0584a` |
| 45 | `theorem` | [iUnion_Ici_eq_Ioi_of_lt_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/iunion-ici-eq-ioi-of-lt-of-tendsto--dd6e5663bd40719dadb079eb.md) | 460 | `result-track:dd6e5663bd40719dadb079eb7d838de5bef7c6c3462f523b9d182e5b45a9c1f4` |
| 46 | `theorem` | [iUnion_Iic_eq_Iio_of_lt_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/iunion-iic-eq-iio-of-lt-of-tendsto--36fcedd65f282bd3a5fc9283.md) | 474 | `result-track:36fcedd65f282bd3a5fc92835ea9029a7afc959903908fa254c23e3d1c5f9371` |
| 47 | `theorem` | [limsup_eq_tendsto_sum_indicator_nat_atTop](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limsup-eq-tendsto-sum-indicator-nat-attop--6ba52a52680e107bb8bcaa2f.md) | 486 | `result-track:6ba52a52680e107bb8bcaa2fdaadeb6c2f8141bdd4a23b8f65be5c551e6b853b` |
| 48 | `theorem` | [limsup_eq_tendsto_sum_indicator_atTop](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limsup-eq-tendsto-sum-indicator-attop--a32c78111b2eb6c7b2062c19.md) | 544 | `result-track:a32c78111b2eb6c7b2062c19d652c461528243cd83dfd098921ac68a9a38d3b6` |
| 49 | `lemma` | [limsup_const_add](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limsup-const-add--10144027f645269fb068d5c0.md) | 566 | `result-track:10144027f645269fb068d5c026fbc0c86214f34ee94ee15453a300ef3483e296` |
| 50 | `lemma` | [limsup_add_const](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limsup-add-const--e5ac37ae86624d7c232723df.md) | 574 | `result-track:e5ac37ae86624d7c232723df5e25e4c88c7cee3de9e39771e574dca013a1b3b6` |
| 51 | `lemma` | [liminf_const_add](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/liminf-const-add--62525dff78a75f6422381c9d.md) | 583 | `result-track:62525dff78a75f6422381c9d3c3afa52edf6cb8b51e92158a53f0c46e940fbd5` |
| 52 | `lemma` | [liminf_add_const](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/liminf-add-const--09188f350694d4361b7436a0.md) | 591 | `result-track:09188f350694d4361b7436a030ec16ebd29d4b4461a90b1942b55ab89442df42` |
| 53 | `lemma` | [limsup_const_sub](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limsup-const-sub--b88ae08e8ea0161c554a29bb.md) | 600 | `result-track:b88ae08e8ea0161c554a29bb6eef2941cd421d8dccb9f4a01b5bf33e4ffd7984` |
| 54 | `lemma` | [limsup_sub_const](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/limsup-sub-const--80e03d2234ed7c66c78d89ba.md) | 609 | `result-track:80e03d2234ed7c66c78d89ba6201ecb62d02a31a28c98cbac58255fecc96e1a3` |
| 55 | `lemma` | [liminf_const_sub](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/liminf-const-sub--072fb27d5112fe6219823263.md) | 618 | `result-track:072fb27d5112fe62198232637dadd310d475fedf38dddf22878074963021a160` |
| 56 | `lemma` | [liminf_sub_const](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/declarations/liminf-sub-const--e9a85376d941e20887161f27.md) | 627 | `result-track:e9a85376d941e20887161f27b73ddb707cb9b91afeabf13492a6a2d72e90c85f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
