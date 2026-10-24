# Verification target: GRWTSK.Topology.GeneralTopology.FoelnerFilter.Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e476581597365722a3623f900a5780cf10b8c700",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e476581597365722a3623f900a5780cf10b8c700`.

Source path: `GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean.json)

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
| 1 | `structure` | [IsAddFoelner](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/isaddfoelner--f106863b22edc84ff94d1930.md) | 78 | `declaration-track:f106863b22edc84ff94d19309b91fa2448d825805f5276f89b8e1c5f3795822a` |
| 2 | `structure` | [IsFoelner](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/isfoelner--f1bd1a3c675beeeafc019475.md) | 91 | `declaration-track:f1bd1a3c675beeeafc019475de87858c50596c9fba46587677821ead823646c6` |
| 3 | `theorem` | [univ_of_isFiniteMeasure](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/univ-of-isfinitemeasure--a5261e013eabd6f8d673ab83.md) | 104 | `result-track:a5261e013eabd6f8d673ab83e7fca02119d2b6b078ec02eedd95a689aa279d8c` |
| 4 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/mono--9554db6039b42d39b88647d2.md) | 112 | `result-track:9554db6039b42d39b88647d25c4fa87925dfba3b182263abc198fbd8ddf6c786` |
| 5 | `theorem` | [comp_tendsto](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/comp-tendsto--356b6ae40075f3750315603f.md) | 120 | `result-track:356b6ae40075f3750315603f68778d8f9605f7104b04af65fdf2a8fb3b598469` |
| 6 | `def` | [mean](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/mean--0290ae26538350273e802d88.md) | 132 | `declaration-track:0290ae26538350273e802d88f62fc9e8f8dd5966e0b7dd30bb5d165838d05720` |
| 7 | `theorem` | [tendsto_nhds_mean](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/tendsto-nhds-mean--3a33ea2b8008a65972740bdc.md) | 136 | `result-track:3a33ea2b8008a65972740bdc2c24dbe6ab6d6e9f984e44f031a21cc702182461` |
| 8 | `theorem` | [mean_univ_eq_one](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/mean-univ-eq-one--ca9211222aecdee84e61d6cd.md) | 146 | `result-track:ca9211222aecdee84e61d6cdbc26037377a4a55554c64d72ebc13a898e0a7553` |
| 9 | `theorem` | [mean_union_eq_add_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/mean-union-eq-add-of-disjoint--da3cd5002a7e1455e5284e53.md) | 153 | `result-track:da3cd5002a7e1455e5284e535921705747cf0ed5bb647b8baeb24469f7c71be1` |
| 10 | `theorem` | [tendsto_meas_smul_symmDiff_smul](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/tendsto-meas-smul-symmdiff-smul--2ae09c89155aa73fbe8b3a6d.md) | 163 | `result-track:2ae09c89155aa73fbe8b3a6de7edda42c746929c5b56658a27f778d471c76405` |
| 11 | `theorem` | [mean_smul_eq_mean_smul](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/mean-smul-eq-mean-smul--1609017666d1fffef0acc292.md) | 169 | `result-track:1609017666d1fffef0acc2927902fd5cda883d83285966cd285211f6a5962869` |
| 12 | `theorem` | [mean_smul_eq_mean](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/mean-smul-eq-mean--5a24f142062d56fb1d6b8725.md) | 185 | `result-track:5a24f142062d56fb1d6b8725a3833a475c6bf3569f87c264c29e2948e6bcd919` |
| 13 | `theorem` | [amenable](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/amenable--39a8634fd45087a7a541151c.md) | 196 | `result-track:39a8634fd45087a7a541151c706781da71cfa7327d2db98ee4a8485de6851f7d` |
| 14 | `def` | [maxFoelner](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/maxfoelner--87bcfd4110cb389b61ae2974.md) | 216 | `declaration-track:87bcfd4110cb389b61ae297411abd23e0e576750d8470f067e03ff59da72872e` |
| 15 | `theorem` | [isFoelner_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/isfoelner-iff-tendsto--8bb5b3234d757a42bf016f96.md) | 222 | `result-track:8bb5b3234d757a42bf016f965892f10525bc12d291170141316ce50401efbb2f` |
| 16 | `theorem` | [isFoelner_maxFoelner](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/isfoelner-maxfoelner--620aa1b772193929b6d5221c.md) | 227 | `result-track:620aa1b772193929b6d5221c72cab161e928840ba7ea0350b0af3351f361b4bf` |
| 17 | `theorem` | [amenable_of_maxFoelner_neBot](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/declarations/amenable-of-maxfoelner-nebot--e312381b9a7885970dff0139.md) | 231 | `result-track:e312381b9a7885970dff01396d5079a381e4d6a30f1311c7aeeac0465a17c875` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
