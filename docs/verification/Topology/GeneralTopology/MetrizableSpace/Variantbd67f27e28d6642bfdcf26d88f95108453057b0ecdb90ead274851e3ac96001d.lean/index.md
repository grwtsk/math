# Verification target: GRWTSK.Topology.GeneralTopology.MetrizableSpace.Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "196b5909015716ce90be19ecaf83e4de4fc08142",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `196b5909015716ce90be19ecaf83e4de4fc08142`.

Source path: `GRWTSK/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.GDelta` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean/declarations/instance--77fdd6d42a401bbabe3e4083.md) | 33 | `declaration-track:77fdd6d42a401bbabe3e4083873a793ec5f7ecf38c6cf56ca6d9d9099529faf1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean/declarations/instance--1fb0e0efb7b4d5372200bb2e.md) | 49 | `declaration-track:1fb0e0efb7b4d5372200bb2e99ad6192f2a4f90836bcc0b7688dd0f0eec54fc7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean/declarations/instance--e382c99674da612eb2b55f52.md) | 57 | `declaration-track:e382c99674da612eb2b55f52a9900167d16970e99fced55c5f0eecd089327815` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean/declarations/instance--a1105e6b7570354fbc02536c.md) | 59 | `declaration-track:a1105e6b7570354fbc02536ceb97efc7711b12183cc5ca78d107ab719e71728a` |
| 5 | `theorem` | [IsGδ.setOf_continuousAt](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean/declarations/isg-setof-continuousat--cbf5af4897a5789e15397ca1.md) | 66 | `result-track:cbf5af4897a5789e15397ca1db3e764d7c59d998583229e904ce62632d469257` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
