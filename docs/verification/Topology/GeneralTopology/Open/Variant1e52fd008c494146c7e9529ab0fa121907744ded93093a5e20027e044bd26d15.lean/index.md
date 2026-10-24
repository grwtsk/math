# Verification target: GRWTSK.Topology.GeneralTopology.Open.Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3864661a5032b62f50708987de253b259c4727d4",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3864661a5032b62f50708987de253b259c4727d4`.

Source path: `GRWTSK/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOpenMap](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/continuousopenmap--3576687d8ff1303240fc706b.md) | 39 | `declaration-track:3576687d8ff1303240fc706bdf7138d89f2302f8689934af08d00be963d0d4be` |
| 2 | `class` | [ContinuousOpenMapClass](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/continuousopenmapclass--754dac9f664940c548175694.md) | 50 | `declaration-track:754dac9f664940c548175694be1d2345d2f4c45c74195cc71d569fb1a3dcabb1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/instance--6baa8ee94c5598e9db260635.md) | 58 | `declaration-track:6baa8ee94c5598e9db260635197c715f9edab8d9b658256dba25793ccc590382` |
| 4 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/instfunlike--986c7fd239d10e6fe498572a.md) | 70 | `declaration-track:986c7fd239d10e6fe498572a899c60fd1519b80e57094d5f76ffb8e4a6b1e6bf` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/instance--15e66dd1d695abd17561f39a.md) | 77 | `declaration-track:15e66dd1d695abd17561f39ad3763153da076f862895d8031b9fd0d7684d3797` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/tofun-eq-coe--7e9058ae6823e66a58555cbe.md) | 81 | `result-track:7e9058ae6823e66a58555cbeff6712458114bf50701988d88c474c9d96a35bb1` |
| 7 | `theorem` | [coe_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/coe-tocontinuousmap--78e240bc6166b14bcead5a50.md) | 86 | `result-track:78e240bc6166b14bcead5a5040a8747d477cb932f3e634838e29c736dff2ca8c` |
| 8 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/ext--0dedd36cf9a7d4acaedb98f1.md) | 89 | `result-track:0dedd36cf9a7d4acaedb98f1702cb25210c510ab87e17f1a508f627a112f62ee` |
| 9 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/copy--04410ba97ab333357f0e4f85.md) | 94 | `declaration-track:04410ba97ab333357f0e4f8524ecfbfbee898fb0e1f3aeb27a69bda107cca3ef` |
| 10 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/coe-copy--c8887b1798b24f959c98032f.md) | 98 | `result-track:c8887b1798b24f959c98032f58fb6529acc967774f4b019d246868f7f4f94945` |
| 11 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/copy-eq--7d740dff1a9f7f615069f67e.md) | 101 | `result-track:7d740dff1a9f7f615069f67e62b378bec212debaaa27dac0984b5c21a67751cb` |
| 12 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/id--d4c9e38f517a11533364f3e0.md) | 107 | `declaration-track:d4c9e38f517a11533364f3e027b045cbcf7c45f580b3404e56bda1e870f4a5ff` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/instance--73de090b91ad509e84ffbd55.md) | 110 | `declaration-track:73de090b91ad509e84ffbd55b309ff1332352d40be7c147a40c6ad95cd9692c4` |
| 14 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/coe-id--8749b9ce02ff632ca5fbc2e2.md) | 114 | `result-track:8749b9ce02ff632ca5fbc2e206b0297dad107a39592ca6b2dbea6413ea03f0fc` |
| 15 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/id-apply--e2c5e2e058ab11e05c7af773.md) | 120 | `result-track:e2c5e2e058ab11e05c7af773b6d0f184aba61fdc7fbe356ec2e64408310ad67e` |
| 16 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/comp--552c3cd6465a87ac25404035.md) | 124 | `declaration-track:552c3cd6465a87ac25404035cc3518570f33be0feab9e802813f9d3e69946615` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/coe-comp--f1cd5bc11db800ec3022aaf9.md) | 128 | `result-track:f1cd5bc11db800ec3022aaf9251809d57afb5c46671c451f745aefc7a124da12` |
| 18 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/comp-apply--63bd5c29e91e9d6b13c83a55.md) | 132 | `result-track:63bd5c29e91e9d6b13c83a55ef753fcdf66beb8312e75ecbf8ac1a512db3dee1` |
| 19 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/comp-assoc--1c576871a6873f5260b2c928.md) | 136 | `result-track:1c576871a6873f5260b2c928629cfe6ec8f643c7d6378acdb207a4c6fb3ac39d` |
| 20 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/comp-id--feeac249cb2889bd8b8c434d.md) | 141 | `result-track:feeac249cb2889bd8b8c434d3ae04646306887f7e4d237c9db922512be05b053` |
| 21 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/id-comp--6fe1b30238ad7c12124abeb2.md) | 145 | `result-track:6fe1b30238ad7c12124abeb2db06bd949f9abd6c25fdafa16e7e7001f165e744` |
| 22 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/cancel-right--1428ac0b14d2567b811c183d.md) | 149 | `result-track:1428ac0b14d2567b811c183d58a8e1ee230c7f67eabfd25fe9d53c100895e518` |
| 23 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Open/Variant1e52fd008c494146c7e9529ab0fa121907744ded93093a5e20027e044bd26d15.lean/declarations/cancel-left--cb9bada758102d11a7bdd2fa.md) | 154 | `result-track:cb9bada758102d11a7bdd2fab70e2f654346a171e577536470383e875579bb70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
