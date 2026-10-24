# Verification target: GRWTSK.Topology.GeneralTopology.Map.Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c746a4d5ba37eab965f03e0986ae7c25d9afb3d1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c746a4d5ba37eab965f03e0986ae7c25d9afb3d1`.

Source path: `GRWTSK/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Map` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrderIso` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comap_atTop](../../../../../mathematics/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean/declarations/comap-attop--15f3844c5f6db008764e49cb.md) | 36 | `result-track:15f3844c5f6db008764e49cbb4a718e32246f8f03037c84e65ad278465377560` |
| 2 | `theorem` | [comap_atBot](../../../../../mathematics/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean/declarations/comap-atbot--8c2bb677d96276206d532dc4.md) | 40 | `result-track:8c2bb677d96276206d532dc4243489b20815f3c3d724d0591da61ad3da04ef59` |
| 3 | `theorem` | [map_atTop](../../../../../mathematics/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean/declarations/map-attop--92301583b2b846d9b120b806.md) | 44 | `result-track:92301583b2b846d9b120b806aff215a5199f1d33e92c738649176b41ce44fccc` |
| 4 | `theorem` | [map_atBot](../../../../../mathematics/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean/declarations/map-atbot--61c2d256657a0d397eca6367.md) | 48 | `result-track:61c2d256657a0d397eca636767fe16071aeed5031c982bd4369c983d68d20684` |
| 5 | `theorem` | [tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean/declarations/tendsto-attop--ab58bd065fe72bcf3c9b82b5.md) | 51 | `result-track:ab58bd065fe72bcf3c9b82b5f24a14e3b6104c036427ffd6907078be0b01daec` |
| 6 | `theorem` | [tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean/declarations/tendsto-atbot--c1fc93fb63eeb0a0de691108.md) | 54 | `result-track:c1fc93fb63eeb0a0de691108531fcdf113d4c86431dd9ae020a696cc00b33eb7` |
| 7 | `theorem` | [tendsto_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean/declarations/tendsto-attop-iff--eb96388140cf619243243a56.md) | 58 | `result-track:eb96388140cf619243243a56cb69a476582d9820b02c163d8af21ada4730d1ac` |
| 8 | `theorem` | [tendsto_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Map/Variante83e5e07f3967c8c7203f22049ff9496c84c4cab8e56a1640c1a8db9fd649850.lean/declarations/tendsto-atbot-iff--5a2083a26a067215b5031b79.md) | 63 | `result-track:5a2083a26a067215b5031b79e3d3725c963edb0b218654cc48e4e75145a063ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
