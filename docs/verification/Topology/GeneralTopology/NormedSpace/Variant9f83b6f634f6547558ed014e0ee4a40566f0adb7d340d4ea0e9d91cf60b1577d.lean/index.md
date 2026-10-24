# Verification target: GRWTSK.Topology.GeneralTopology.NormedSpace.Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd7da992fbb22d9212138d1adfad7f5722507fc3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd7da992fbb22d9212138d1adfad7f5722507fc3`.

Source path: `GRWTSK/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.RCLike.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.BirkhoffSum.Average` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Function.IsFixedPt.tendsto_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/declarations/function-isfixedpt-tendsto-birkhoffaverage--8aa5cd1d94ebdd49bb54d290.md) | 32 | `result-track:8aa5cd1d94ebdd49bb54d290d017a5867eac3e611b30654d082feeda644c08b0` |
| 2 | `theorem` | [dist_birkhoffSum_apply_birkhoffSum](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/declarations/dist-birkhoffsum-apply-birkhoffsum--e3c9cbfefd705d54c5b73013.md) | 42 | `result-track:e3c9cbfefd705d54c5b730138762e44ef70743237b85266bde89c843626d82c6` |
| 3 | `theorem` | [dist_birkhoffSum_birkhoffSum_le](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/declarations/dist-birkhoffsum-birkhoffsum-le--f131b080b11904fbcc3d2296.md) | 46 | `result-track:f131b080b11904fbcc3d22962fdde41ca70cf0b830c231af539ccc62093100c5` |
| 4 | `theorem` | [dist_birkhoffAverage_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/declarations/dist-birkhoffaverage-birkhoffaverage--91c0cdee2d5dcb75a46b887e.md) | 53 | `result-track:91c0cdee2d5dcb75a46b887eeeeaa15d1c15b9573a9083a501b044aa15d55f45` |
| 5 | `theorem` | [dist_birkhoffAverage_birkhoffAverage_le](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/declarations/dist-birkhoffaverage-birkhoffaverage-le--8068b322bb5632c4f9ab0764.md) | 58 | `result-track:8068b322bb5632c4f9ab0764b17bc467044c4c094ec0de0284d8c0936b6cb92f` |
| 6 | `theorem` | [dist_birkhoffAverage_apply_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/declarations/dist-birkhoffaverage-apply-birkhoffaverage--457f2e0c0aafa7b7730b2a3b.md) | 64 | `result-track:457f2e0c0aafa7b7730b2a3bc3b54e7676be229c29dded2968c95bb2f40db249` |
| 7 | `theorem` | [tendsto_birkhoffAverage_apply_sub_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/declarations/tendsto-birkhoffaverage-apply-sub-birkhoffaverage--1d3f12e4bd5b95cd6c20117f.md) | 75 | `result-track:1d3f12e4bd5b95cd6c20117f4273512349dbc44c05e0e2e9d593791965a999bc` |
| 8 | `theorem` | [tendsto_birkhoffAverage_apply_sub_birkhoffAverage'](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/declarations/tendsto-birkhoffaverage-apply-sub-birkhoffaverage--ce00dd46d4737a6fcff0fd76.md) | 92 | `result-track:ce00dd46d4737a6fcff0fd76b7ecf76c874fb9f92fa122dcd86e3ff218957530` |
| 9 | `theorem` | [uniformEquicontinuous_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/declarations/uniformequicontinuous-birkhoffaverage--f5d485fb287a8c8d28a6ce16.md) | 106 | `result-track:f5d485fb287a8c8d28a6ce164bcc8ca17f4362fc821bb4b1fa7b0eebba04dba2` |
| 10 | `theorem` | [isClosed_setOf_tendsto_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant9f83b6f634f6547558ed014e0ee4a40566f0adb7d340d4ea0e9d91cf60b1577d.lean/declarations/isclosed-setof-tendsto-birkhoffaverage--b1acc140082f476262886728.md) | 129 | `result-track:b1acc140082f4762628867289416bd7e6830d6cf66249b29b9e22b4b3e223d64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
