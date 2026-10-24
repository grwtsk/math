# Verification target: GRWTSK.Topology.GeneralTopology.Defs.Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b92f362a37ee01901d168856f9669c4812916e6e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b92f362a37ee01901d168856f9669c4812916e6e`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions.SumProd` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousAdd](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean/declarations/continuousadd--7acd85102434e66f3f1917ae.md) | 31 | `declaration-track:7acd85102434e66f3f1917aefb692c5ee8fe09d2af5bd6a02a1bb98a4d67b15d` |
| 2 | `class` | [ContinuousMul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean/declarations/continuousmul--b57a90a85cf68433025946ea.md) | 41 | `declaration-track:b57a90a85cf68433025946ea2f794e391da04cff3e219bc01e72ac98627e851f` |
| 3 | `theorem` | [continuous_mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean/declarations/continuous-mul--929487c27570fe3c0f0173c6.md) | 49 | `result-track:929487c27570fe3c0f0173c67a8b05db2c404882a739f9762bb5248d2527b7b9` |
| 4 | `theorem` | [Filter.Tendsto.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean/declarations/filter-tendsto-mul--7af94032da720d3765c7266e.md) | 53 | `result-track:7af94032da720d3765c7266e3658ab2f39a47c15e640bed1e590571cc7d23cd4` |
| 5 | `theorem` | [Continuous.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean/declarations/continuous-mul--f4f7e64763e873abc35f5355.md) | 60 | `result-track:f4f7e64763e873abc35f5355ff36b96e48df3a00976b2066ba65f1d39e1c1c9b` |
| 6 | `theorem` | [ContinuousWithinAt.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean/declarations/continuouswithinat-mul--08a237faf4ffade186c95b4d.md) | 65 | `result-track:08a237faf4ffade186c95b4deb2d9cb32fbf7486897998ae2606b071a7e1f6d0` |
| 7 | `theorem` | [ContinuousAt.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean/declarations/continuousat-mul--a033eef69f456166709622b6.md) | 70 | `result-track:a033eef69f456166709622b6069a3e2d0bd00b0df42101baaa6c7a87d1050210` |
| 8 | `theorem` | [ContinuousOn.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9.lean/declarations/continuouson-mul--42fd19bfc97c8846cf4b8113.md) | 75 | `result-track:42fd19bfc97c8846cf4b811309e4ee0d0eae1f14fb23dbe94cf1b0f7540103d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
