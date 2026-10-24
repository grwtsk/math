# Verification target: GRWTSK.Topology.GeneralTopology.Exposed.Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bad2df0c7b743de8cf2a3fe500eac183e368fcd",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bad2df0c7b743de8cf2a3fe500eac183e368fcd`.

Source path: `GRWTSK/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Extreme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Function` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.OrderClosed` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/isexposed--6b3e2d0181625f830b09fbe1.md) | 51 | `declaration-track:6b3e2d0181625f830b09fbe1d524fb9baaf6431bb10c73c7e3948f6869d08e46` |
| 2 | `def` | [ContinuousLinearMap.toExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/continuouslinearmap-toexposed--dcd9584a4e6106b80e42fd7e.md) | 63 | `declaration-track:dcd9584a4e6106b80e42fd7e89e03649eb55072818372050db3da408cc73be3b` |
| 3 | `theorem` | [ContinuousLinearMap.toExposed.isExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/continuouslinearmap-toexposed-isexposed--8d53fbb70434ebc17225b0d1.md) | 66 | `result-track:8d53fbb70434ebc17225b0d175b8512443ecaaaeb3921ec8c4749f014f811508` |
| 4 | `theorem` | [isExposed_empty](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/isexposed-empty--b7d0b4449d20fac4d9e50d41.md) | 68 | `result-track:b7d0b4449d20fac4d9e50d4138da4f072606203de6512be8d817c89893b32cd0` |
| 5 | `theorem` | [subset](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/subset--75743242957dac79364ff64f.md) | 74 | `result-track:75743242957dac79364ff64f1fb0262d6bf7f1b65c5765b59f8efc14a32dc84e` |
| 6 | `theorem` | [refl](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/refl--77ac740c948e3eeed81266f0.md) | 80 | `result-track:77ac740c948e3eeed81266f03e8fa28dad338f6d33d9f541e26114a714b1e279` |
| 7 | `theorem` | [antisymm](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/antisymm--f2c55156852203a6d8ccb41c.md) | 83 | `result-track:f2c55156852203a6d8ccb41c68844b66ffb59cfe7c342cba5ee602ce5d71ba0d` |
| 8 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/mono--0ee6332a1d856d97a6e5ff4b.md) | 90 | `result-track:0ee6332a1d856d97a6e5ff4bf349b0d151570bc55cd282e14ac87f56fd8d80b7` |
| 9 | `theorem` | [eq_inter_halfSpace'](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/eq-inter-halfspace--d53251a63c39f852a50776f0.md) | 99 | `result-track:d53251a63c39f852a50776f0ee207fee060753e5e0ba1c0d51414e2cf085519a` |
| 10 | `theorem` | [eq_inter_halfSpace](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/eq-inter-halfspace--b2b3b2a0202be6a9faed80a3.md) | 110 | `result-track:b2b3b2a0202be6a9faed80a39e28419031769017a4a2203bba1d6af0eabe7bce` |
| 11 | `theorem` | [inter](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/inter--144254f2778d8afb5a0a1d35.md) | 122 | `result-track:144254f2778d8afb5a0a1d3567edb09c4aceb808f0cf2e9faedb551f71967cf0` |
| 12 | `theorem` | [sInter](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/sinter--72403a89fa16a685fca9dac3.md) | 137 | `result-track:72403a89fa16a685fca9dac3af8faa629fe57c3ce622578e75417f3eebc70fbc` |
| 13 | `theorem` | [inter_left](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/inter-left--8b415a5dbad4d1628bc82d2a.md) | 150 | `result-track:8b415a5dbad4d1628bc82d2ac7e36b5c70c69513aff869f42282355dbc304bb1` |
| 14 | `theorem` | [inter_right](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/inter-right--8e5a20ed661706d7f3a6b3d8.md) | 156 | `result-track:8e5a20ed661706d7f3a6b3d83d71956d378564c322a7a960d0fbe3cab7b32ed1` |
| 15 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/isclosed--3a0206e6e55873df038ae400.md) | 160 | `result-track:3a0206e6e55873df038ae4004622fd56cd77696917068588d5bd00864a997427` |
| 16 | `theorem` | [isCompact](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/iscompact--05ffe1a4e81d496fdf7b2dce.md) | 167 | `result-track:05ffe1a4e81d496fdf7b2dce4f8104a115ab8c3b21b7af54f59c6b2ce8bae920` |
| 17 | `def` | [Set.exposedPoints](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/set-exposedpoints--00aac3ed9070434d215d1401.md) | 176 | `declaration-track:00aac3ed9070434d215d14018957ec64f43e42fa388357b51f8edd230dac4faf` |
| 18 | `theorem` | [exposed_point_def](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/exposed-point-def--161ac38a6cc6fb414af8d590.md) | 179 | `result-track:161ac38a6cc6fb414af8d59076f624d2eddf79852c42c8a40894ba4c4437cf76` |
| 19 | `theorem` | [exposedPoints_subset](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/exposedpoints-subset--20fd6339af15940578def1f2.md) | 183 | `result-track:20fd6339af15940578def1f24c42c6682ac1f2a09e33d550b76c76a1724bbc2f` |
| 20 | `theorem` | [exposedPoints_empty](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/exposedpoints-empty--975d405e49ac51860e03772b.md) | 186 | `result-track:975d405e49ac51860e03772b122cc8ab296534e878d075cea8bfc165e465ada3` |
| 21 | `theorem` | [mem_exposedPoints_iff_exposed_singleton](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/mem-exposedpoints-iff-exposed-singleton--6e35c348a572bd6b65d37966.md) | 190 | `result-track:6e35c348a572bd6b65d37966f16572a80f408dff92c113b74d9d9d2d8456df07` |
| 22 | `theorem` | [convex](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/convex--2c1ec6c09cf6b7fc30a47501.md) | 213 | `result-track:2c1ec6c09cf6b7fc30a475014424a0529f3411bf3b066bb781944e3b988c1a3a` |
| 23 | `theorem` | [isExtreme](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/isextreme--3b00eeabb68b406dc8860bed.md) | 222 | `result-track:3b00eeabb68b406dc8860bed1055a93702e75819ee1f6c8f10a9991ceb367e56` |
| 24 | `theorem` | [exposedPoints_subset_extremePoints](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/declarations/exposedpoints-subset-extremepoints--ab96a6f794eec707fcb7e215.md) | 236 | `result-track:ab96a6f794eec707fcb7e215c8b2cff449c67b853055f2ae6dbd2816e5f8e000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
