# Verification target: GRWTSK.Geometry.ThreePlusOne.DynamicWitnessChannel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4764826f8e834778a76d3282e3b7fe44f5c007a6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ThreePlusOne/DynamicWitnessChannel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/ThreePlusOne/DynamicWitnessChannel.lean/index.md) · [Full source](../../../../mathematics/Geometry/ThreePlusOne/DynamicWitnessChannel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4764826f8e834778a76d3282e3b7fe44f5c007a6`.

Source path: `GRWTSK/Geometry/ThreePlusOne/DynamicWitnessChannel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ThreePlusOne/DynamicWitnessChannel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Finite` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TrianglePhase](../../../../mathematics/Geometry/ThreePlusOne/DynamicWitnessChannel.lean/declarations/trianglephase--54a0a014ab9e5716696455a1.md) | 19 | `declaration-track:54a0a014ab9e5716696455a1adf67a1864dc27ea4cf8a2ca0635a5dcd97415fa` |
| 2 | `structure` | [DynamicWitnessChannel](../../../../mathematics/Geometry/ThreePlusOne/DynamicWitnessChannel.lean/declarations/dynamicwitnesschannel--1345dd380b39dc859970479a.md) | 22 | `declaration-track:1345dd380b39dc859970479aa932bc5116acb20b98b25248133c7cd2085c0b38` |
| 3 | `def` | [DynamicWitnessChannel.Total](../../../../mathematics/Geometry/ThreePlusOne/DynamicWitnessChannel.lean/declarations/dynamicwitnesschannel-total--b5f3a091874e1905542677d4.md) | 27 | `declaration-track:b5f3a091874e1905542677d4e7a7122b3959caef8d900b201919322bf0f3481e` |
| 4 | `structure` | [StagedDynamicWitnessChannel](../../../../mathematics/Geometry/ThreePlusOne/DynamicWitnessChannel.lean/declarations/stageddynamicwitnesschannel--28e26c0bdc72459d6724772f.md) | 33 | `declaration-track:28e26c0bdc72459d6724772f1939cff8da48c26b43c3d5949bd24e8add68189c` |
| 5 | `def` | [VaryingWitnessSize](../../../../mathematics/Geometry/ThreePlusOne/DynamicWitnessChannel.lean/declarations/varyingwitnesssize--7c78b8bc079f0ad8c87f1168.md) | 42 | `declaration-track:7c78b8bc079f0ad8c87f1168f4d8a71a71d384e7b6624c0bcb12b5a8af5c1be6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
