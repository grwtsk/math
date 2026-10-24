# Verification target: GRWTSK.Topology.GeneralTopology.Map.Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8438f579a3d09ed69598ed59d2e0df6199ed1239",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8438f579a3d09ed69598ed59d2e0df6199ed1239`.

Source path: `GRWTSK/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Map` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrderIso` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comap_atTop](../../../../../mathematics/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean/declarations/comap-attop--4d2a44934d82a52c8ac13f06.md) | 28 | `result-track:4d2a44934d82a52c8ac13f06402571c4680ab5d0b463c0a3269b15757a515d3b` |
| 2 | `theorem` | [comap_atBot](../../../../../mathematics/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean/declarations/comap-atbot--cf937eccb6de9892b463eabf.md) | 32 | `result-track:cf937eccb6de9892b463eabf8ce52e8580dc0ce32e2d8899bcf519c5f70c6bb3` |
| 3 | `theorem` | [map_atTop](../../../../../mathematics/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean/declarations/map-attop--64b5de754cce0472dcde8db0.md) | 36 | `result-track:64b5de754cce0472dcde8db0d43866dc0803986d219b721f8571727a53c383c4` |
| 4 | `theorem` | [map_atBot](../../../../../mathematics/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean/declarations/map-atbot--cac05bf2401802eb60bd8447.md) | 40 | `result-track:cac05bf2401802eb60bd8447ca296fbb809afde877b2008dab7627e5d1ce58c7` |
| 5 | `theorem` | [tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean/declarations/tendsto-attop--782cdee16487487ce8e2cec3.md) | 43 | `result-track:782cdee16487487ce8e2cec3a17b020ee4ad06c19c8f33980886a8e72db57d71` |
| 6 | `theorem` | [tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean/declarations/tendsto-atbot--ba552dfa43947d0ec63512f5.md) | 46 | `result-track:ba552dfa43947d0ec63512f517d2a6fdb730aa492e2dd1ad514c91d4e215a415` |
| 7 | `theorem` | [tendsto_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean/declarations/tendsto-attop-iff--be91baf73dc85e13851bb7c2.md) | 50 | `result-track:be91baf73dc85e13851bb7c29dbffa999bc5124db5a0327011853be23aae7da0` |
| 8 | `theorem` | [tendsto_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean/declarations/tendsto-atbot-iff--9686c00cc2e737d6d3640746.md) | 55 | `result-track:9686c00cc2e737d6d36407461e2a20a31377da47e32b90b8cef7b98a0b84c4d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
