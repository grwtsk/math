# Verification target: GRWTSK.Topology.GeneralTopology.Defs.Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be0f37296fc48138aad8bc3d20a20776dac50083",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be0f37296fc48138aad8bc3d20a20776dac50083`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions.SumProd` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousAdd](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean/declarations/continuousadd--ae2b9fc243f9a54db84f49eb.md) | 39 | `declaration-track:ae2b9fc243f9a54db84f49eb7340657029da2aca4f1650c33f388d509f4ae05e` |
| 2 | `class` | [ContinuousMul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean/declarations/continuousmul--7cc9074141327240357d4e2c.md) | 49 | `declaration-track:7cc9074141327240357d4e2c4688e3d6160863d4f0ce2be5942d5a5e0ad6d669` |
| 3 | `theorem` | [continuous_mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean/declarations/continuous-mul--55db7813cb8e77532c63cbcd.md) | 57 | `result-track:55db7813cb8e77532c63cbcd28b90b32efbc6230eaeb8f0443faf3d1cc293dcb` |
| 4 | `theorem` | [Filter.Tendsto.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean/declarations/filter-tendsto-mul--dac3172a8b6b4ecd20673dc8.md) | 61 | `result-track:dac3172a8b6b4ecd20673dc8c5e0d55d589eada3e18fba12f27add628b13d302` |
| 5 | `theorem` | [Continuous.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean/declarations/continuous-mul--d072640a1e6651f1eb44079a.md) | 68 | `result-track:d072640a1e6651f1eb44079a9620de75889bd500b9a8d54005e18a46bcdf7696` |
| 6 | `theorem` | [ContinuousWithinAt.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean/declarations/continuouswithinat-mul--a8db5e9586934c20a1368f50.md) | 73 | `result-track:a8db5e9586934c20a1368f508b6dc3abbacfe420877161bd65af131a60bd9691` |
| 7 | `theorem` | [ContinuousAt.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean/declarations/continuousat-mul--bf2d66bfd29f0f60e6307ab0.md) | 78 | `result-track:bf2d66bfd29f0f60e6307ab09600c0ef5d0946e364323f70503927737ac9780b` |
| 8 | `theorem` | [ContinuousOn.mul](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce.lean/declarations/continuouson-mul--55b150716ba1967b722b0571.md) | 83 | `result-track:55b150716ba1967b722b0571a58d90fca5c208cea871ff340eb0998dd541c25f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
