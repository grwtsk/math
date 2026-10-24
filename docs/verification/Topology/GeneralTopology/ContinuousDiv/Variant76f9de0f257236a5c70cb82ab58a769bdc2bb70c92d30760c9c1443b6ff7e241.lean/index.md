# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousDiv.Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db53bb1ea7ab9c79c101497d2a2335717bc75076",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db53bb1ea7ab9c79c101497d2a2335717bc75076`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean.json)

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
| 1 | `theorem` | [Filter.Tendsto.div_const'](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/filter-tendsto-div-const--f70454fd415f8baf6e1d9ae3.md) | 35 | `result-track:f70454fd415f8baf6e1d9ae398769c574e8ad28dfa4326c16f7d76fe92ad267a` |
| 2 | `lemma` | [Filter.tendsto_div_const_iff](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/filter-tendsto-div-const-iff--ea75ec72e69254671e743b6c.md) | 39 | `result-track:ea75ec72e69254671e743b6c7ded2818c5a15bd943c64c919175c46c475fb102` |
| 3 | `lemma` | [Filter.tendsto_div_const_iff'](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/filter-tendsto-div-const-iff--f18eca9abd1c74df772844f7.md) | 47 | `result-track:f18eca9abd1c74df772844f74f640440d96d161cc1820a79a4fb771124ffc398` |
| 4 | `theorem` | [Filter.Tendsto.const_div'](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/filter-tendsto-const-div--f54b67101f29f0e83270bde9.md) | 55 | `result-track:f54b67101f29f0e83270bde973423ae4cca124e07edde092015629f3c2949d3c` |
| 5 | `lemma` | [continuous_div_left'](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/continuous-div-left--aa033a2591235f8074d3920e.md) | 60 | `result-track:aa033a2591235f8074d3920e10889a088b69e9d304d1b43da2a5709175fa93e7` |
| 6 | `lemma` | [continuous_div_right'](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/continuous-div-right--a89682884b8b1cbe6aec936c.md) | 63 | `result-track:a89682884b8b1cbe6aec936c3057ce1add28916c6bcda8b25c49411a3ae6ff53` |
| 7 | `lemma` | [Filter.tendsto_const_div_iff'](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/filter-tendsto-const-div-iff--33b9aca9fb6be5d011513b1b.md) | 72 | `result-track:33b9aca9fb6be5d011513b1b08fcdfd420a0dd397e244a04f22e170116f24542` |
| 8 | `def` | [Homeomorph.divLeft](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/homeomorph-divleft--185e03bd4b33f43bdd83008f.md) | 80 | `declaration-track:185e03bd4b33f43bdd83008fa3a284fdb1ff46fe35b4f9af205276a1384e903d` |
| 9 | `theorem` | [Homeomorph.coe_divLeft](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/homeomorph-coe-divleft--7124bb13c05139a75ee6aef8.md) | 84 | `result-track:7124bb13c05139a75ee6aef8ea46ba2f4922a72af5cc922b8efa871dca6d8826` |
| 10 | `theorem` | [isOpenMap_div_left](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/isopenmap-div-left--e579dc94e541312ec8dc3114.md) | 88 | `result-track:e579dc94e541312ec8dc311499b11297df77da998f7bc3607ed8022a7d01e1c0` |
| 11 | `theorem` | [isClosedMap_div_left](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/isclosedmap-div-left--1c0da29689b5d8159f2e86e2.md) | 92 | `result-track:1c0da29689b5d8159f2e86e23d720d12cdc820a5d91798abd3543fc621561501` |
| 12 | `def` | [Homeomorph.divRight](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/homeomorph-divright--f4016a307c3c5b0cc4793f94.md) | 98 | `declaration-track:f4016a307c3c5b0cc4793f94db332080c3a9e4b75602ad5044d2947f878c5c25` |
| 13 | `theorem` | [Homeomorph.coe_divRight](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/homeomorph-coe-divright--a0650182939294c305356987.md) | 102 | `result-track:a0650182939294c305356987678d8e38af88f36166dca6853c1dc009d47fa122` |
| 14 | `lemma` | [isOpenMap_div_right](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/isopenmap-div-right--b2e97b0f8ed299dea5a161b1.md) | 106 | `result-track:b2e97b0f8ed299dea5a161b15c77db144cd981a03ffc38f366fa2bb48abc11ed` |
| 15 | `lemma` | [isClosedMap_div_right](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/isclosedmap-div-right--4f4c0d48983a2000a29d146a.md) | 109 | `result-track:4f4c0d48983a2000a29d146aec50fef66c332b4d90cfbd4f3126580638e9d34e` |
| 16 | `theorem` | [tendsto_div_nhds_one_iff](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/tendsto-div-nhds-one-iff--366a49a8c7d42b711439a2d8.md) | 112 | `result-track:366a49a8c7d42b711439a2d81dc561f75eac33f2ba069ecbcb34bdc6915e27d8` |
| 17 | `theorem` | [tendsto_div_nhds_one_iff_eq](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/tendsto-div-nhds-one-iff-eq--1456b20f2bb9c07160f3e9b7.md) | 120 | `result-track:1456b20f2bb9c07160f3e9b7880d20dcb630176f5e648a4be51eeba4c4ebbed7` |
| 18 | `theorem` | [nhds_translation_div](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/nhds-translation-div--f0c4aa6498da05245145e8dd.md) | 130 | `result-track:f0c4aa6498da05245145e8dd526345d0a14633bdf6b8758f70b41b61b040ed81` |
| 19 | `theorem` | [Filter.map_divRight_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/filter-map-divright-nhdsne--775b55eccc989593e2876186.md) | 134 | `result-track:775b55eccc989593e287618694168657782658866945eee49c1d2cfe0fd5e6fd` |
| 20 | `theorem` | [Filter.map_divRight_nhds](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/filter-map-divright-nhds--ac5eb963328ea1cb57df9956.md) | 140 | `result-track:ac5eb963328ea1cb57df9956af3822a5cc7dff42ddc4914a094c0e94f4e76a8a` |
| 21 | `theorem` | [Filter.map_divLeft_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/filter-map-divleft-nhdsne--a63e5dd919f9dfe763115637.md) | 145 | `result-track:a63e5dd919f9dfe763115637bd828900070796642485ef11d7315def343373e5` |
| 22 | `theorem` | [Filter.map_divLeft_nhds](../../../../../mathematics/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/declarations/filter-map-divleft-nhds--8067b16461e4e59e837380d6.md) | 151 | `result-track:8067b16461e4e59e837380d6eb0ff17419518d428b5673f194a29eab52c95fa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
