# Verification target: GRWTSK.Topology.GeneralTopology.Open.Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "640bd949f5e96bdc18cb583789046e71276d59e5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `640bd949f5e96bdc18cb583789046e71276d59e5`.

Source path: `GRWTSK/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOpenMap](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/continuousopenmap--a231f8706eb9ec5cf5f7e6e8.md) | 33 | `declaration-track:a231f8706eb9ec5cf5f7e6e8602beb585f8a013b36f42828d49269c43d3efc99` |
| 2 | `class` | [ContinuousOpenMapClass](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/continuousopenmapclass--aba31f78cbac3f88aa0cd637.md) | 45 | `declaration-track:aba31f78cbac3f88aa0cd63775aea9f18d3574e5079559044d91fce4cf26588a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/instance--17fd0eb92f4348515264156e.md) | 54 | `declaration-track:17fd0eb92f4348515264156e141e65d0f6c8c255d7d672aa054a6b80a278f2eb` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/instance--d00c3774c90840a6491fa832.md) | 65 | `declaration-track:d00c3774c90840a6491fa832d04b0637c5dde49ca8dc51286ed0ded563b0ef32` |
| 5 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/tofun-eq-coe--6d1b0133b4c980c23c2f8dca.md) | 74 | `result-track:6d1b0133b4c980c23c2f8dca2e56851d45254fe043c47cb68bedfb831315ed60` |
| 6 | `theorem` | [coe_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/coe-tocontinuousmap--1a193b7ac91113f45a69b541.md) | 79 | `result-track:1a193b7ac91113f45a69b541932f3380bb4fb958ec7cf1487afb2649c50b3e1e` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/ext--94c743b3736430a4ed636d6e.md) | 82 | `result-track:94c743b3736430a4ed636d6e67dbb1db08001540507a16c6101a288f04c5f97b` |
| 8 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/copy--56494435f4baba820ec5a095.md) | 88 | `declaration-track:56494435f4baba820ec5a0956ea05b4dd32ae78ac1c77609d79125c7e003beeb` |
| 9 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/coe-copy--48143efc974e2815855ce1b0.md) | 93 | `result-track:48143efc974e2815855ce1b0c40127a0363940ea71dd7d96c1a0cf7871410281` |
| 10 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/copy-eq--6e38f1019f2395a8abc05a79.md) | 97 | `result-track:6e38f1019f2395a8abc05a798298cc9237fcc0d4d13c30366f287d9ae8f21354` |
| 11 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/id--6579faf700e3df7d48325123.md) | 104 | `declaration-track:6579faf700e3df7d48325123bd19a34ffe3f4ae8b1f9fec11a1883aeb9ed2b7f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/instance--15a73665dd27f70bf521af66.md) | 108 | `declaration-track:15a73665dd27f70bf521af665cd090cd17f4f4e4e5afb2452e805d983ca5ed01` |
| 13 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/coe-id--f7161aa6c40f2c83878d009f.md) | 112 | `result-track:f7161aa6c40f2c83878d009f9c0d1af0e99fb590ab90eee83cdf1954716c9f22` |
| 14 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/id-apply--dadf09ae71ed2372e2975cd1.md) | 119 | `result-track:dadf09ae71ed2372e2975cd1a720f0263572df331fc363c44e7b88d588653afe` |
| 15 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/comp--68962ae886b468c37928f1fd.md) | 124 | `declaration-track:68962ae886b468c37928f1fd59a2a43bca4836ed5f9567be0a2c9e69490da89b` |
| 16 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/coe-comp--3d62caa1aee9da77f25b22dd.md) | 129 | `result-track:3d62caa1aee9da77f25b22dd4e850785ba374aa718f9d02b63a51e7dd9d06565` |
| 17 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/comp-apply--2f198fd561793334e3b472ff.md) | 134 | `result-track:2f198fd561793334e3b472ff0b7d4e6e151b28b35435bec4694ac5472381a2db` |
| 18 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/comp-assoc--af9b531e8492abd1579b72bd.md) | 139 | `result-track:af9b531e8492abd1579b72bd1c14c9966d67594513fbe254111f1fbd7a925b5f` |
| 19 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/comp-id--a07257326bf5ce3f03e870ca.md) | 145 | `result-track:a07257326bf5ce3f03e870ca78f404992693b4790957c8989e3d81be939cf86c` |
| 20 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/id-comp--53f3e90c77e14e900306e4bb.md) | 150 | `result-track:53f3e90c77e14e900306e4bb4966385121150b81d5087f98862106d9eba770af` |
| 21 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/cancel-right--2221462071babee2494f0afe.md) | 154 | `result-track:2221462071babee2494f0afed3188b857749ab5cce2ba3288da30b722632ffb2` |
| 22 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Open/Varianta646be03c59b2982444c8eae8254fa16a8f47d0025a9fdd67e0d5c97e3ea7aa5.lean/declarations/cancel-left--9ec5aaf6a384b0ee667c684f.md) | 159 | `result-track:9ec5aaf6a384b0ee667c684ffaaf64b333842a50a1307eb1ffcf170e85bbfc26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
