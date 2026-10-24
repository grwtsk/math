# Verification target: GRWTSK.Topology.GeneralTopology.IsLocallyHomeomorph.Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b64507c0dd2d4e12156fe11d92751a43466ea328",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b64507c0dd2d4e12156fe11d92751a43466ea328`.

Source path: `GRWTSK/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocalHomeomorph` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLocallyHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/islocallyhomeomorphon--9b85a8edc2ef341ec3600bd6.md) | 41 | `declaration-track:9b85a8edc2ef341ec3600bd64f3410df20154c9b69ba6a1eeac9e8f7eeaa7b8a` |
| 2 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/mk--ee6674335e522885482f1db8.md) | 50 | `result-track:ee6674335e522885482f1db8f990c74c93a60b99838a516c81f4de1583fcff1f` |
| 3 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/map-nhds-eq--e927163932e9a992e6dfddf1.md) | 66 | `result-track:e927163932e9a992e6dfddf1300b76640fe23e069a7daff268901b9f8e886fb6` |
| 4 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/continuousat--6a009f48a62e7976d282f76b.md) | 71 | `result-track:6a009f48a62e7976d282f76b90fef0955187f3c483b1dd25249b41bd3f2d22b6` |
| 5 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/continuouson--f12bff84a4d0c058ba3e320f.md) | 76 | `result-track:f12bff84a4d0c058ba3e320f3a51f771db90f1234884df335ab6fb6585b1acc0` |
| 6 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/comp--4dec1628c1ff631d093f1f2e.md) | 80 | `result-track:4dec1628c1ff631d093f1f2e84a906ff2066ad588e4265a9f9f4bf638b68d2bf` |
| 7 | `def` | [IsLocallyHomeomorph](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/islocallyhomeomorph--b77281e8f755546ad27c248d.md) | 92 | `declaration-track:b77281e8f755546ad27c248d973aaf3fc547aa98b7e6c4992032648ddd78dc03` |
| 8 | `theorem` | [isLocallyHomeomorph_iff_isLocallyHomeomorphOn_univ](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/islocallyhomeomorph-iff-islocallyhomeomorphon-univ--45e1ebedced1590081275337.md) | 98 | `result-track:45e1ebedced159008127533719bf1daa3c8db7d04002563608ce2c86368c443c` |
| 9 | `theorem` | [IsLocallyHomeomorph.isLocallyHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/islocallyhomeomorph-islocallyhomeomorphon--65dc28ea55d68e7f2fede439.md) | 103 | `result-track:65dc28ea55d68e7f2fede439956f3e009bc8530d081aac52c8c5ec31f13e8508` |
| 10 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/mk--9f4ec67feb53df677468454e.md) | 115 | `result-track:9f4ec67feb53df677468454e1df788d7d36204bf56dc135055cfa674c4f3139a` |
| 11 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/map-nhds-eq--fb54d7ee426acf41b2157e9b.md) | 123 | `result-track:fb54d7ee426acf41b2157e9b7a3fe3fcb5d0fcfb80c9b6b0bab84345591bce50` |
| 12 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/continuous--cde7c0730c935987f3e3e9e4.md) | 127 | `result-track:cde7c0730c935987f3e3e9e4d97c375e998c4c6f7c310738a1dbff9838a7b8aa` |
| 13 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/isopenmap--927984308d35457cc857c1d0.md) | 131 | `result-track:927984308d35457cc857c1d09e56341bb0fbc4ef50151b63fe29b0b4db0267a2` |
| 14 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant78f6959bfa4bba836c76ec07bd0c3f4767116b74858665ffbb58f6a781f282d6.lean/declarations/comp--065ef2d8de94158c430145cd.md) | 135 | `result-track:065ef2d8de94158c430145cd42791035f54b6ae46d44b1145a10de33d3da52e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
