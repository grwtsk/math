# Verification target: GRWTSK.Topology.GeneralTopology.Completeness.Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9864a7dd2cf9a7f5dc10a732c5cc9fcd27dd2ae",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9864a7dd2cf9a7f5dc10a732c5cc9fcd27dd2ae`.

Source path: `GRWTSK/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Bilinear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NNNorm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofMemClosureImageCoeBounded](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/ofmemclosureimagecoebounded--8769c8aa1c105b5350d83d24.md) | 40 | `declaration-track:8769c8aa1c105b5350d83d24b8882f953a3f52153d271c3aed1a1c44fbb625da` |
| 2 | `def` | [ofTendstoOfBoundedRange](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/oftendstoofboundedrange--b2958cb63f4728f9cbe21a02.md) | 58 | `declaration-track:b2958cb63f4728f9cbe21a02fbccef0391578f9ae409d2f1a8de4a33aa73456f` |
| 3 | `theorem` | [tendsto_of_tendsto_pointwise_of_cauchySeq](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/tendsto-of-tendsto-pointwise-of-cauchyseq--81ed73ef204be0fedefa8f51.md) | 67 | `result-track:81ed73ef204be0fedefa8f5186ed95eb922a827740eac56cfada253b079540cf` |
| 4 | `theorem` | [isCompact_closure_image_coe_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/iscompact-closure-image-coe-of-bounded--e758ef92e7d6f452c5f1f2cf.md) | 88 | `result-track:e758ef92e7d6f452c5f1f2cfb80c3b510f360b9b0ee95479db600bb6567dc359` |
| 5 | `theorem` | [isCompact_image_coe_of_bounded_of_closed_image](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/iscompact-image-coe-of-bounded-of-closed-image--01252e1e951c727d083829da.md) | 100 | `result-track:01252e1e951c727d083829da3cf26a8e42fcde20566ae209c26a731eb262a67b` |
| 6 | `theorem` | [isClosed_image_coe_of_bounded_of_weak_closed](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/isclosed-image-coe-of-bounded-of-weak-closed--d29926383446dd1565e85442.md) | 110 | `result-track:d29926383446dd1565e8544259bf7a6f60eb5b9199dbbfb68474be09b0e2c90c` |
| 7 | `theorem` | [isCompact_image_coe_of_bounded_of_weak_closed](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/iscompact-image-coe-of-bounded-of-weak-closed--8905d1147c57a3633292ce8f.md) | 121 | `result-track:8905d1147c57a3633292ce8fae49d3c215a877b02ec1e24fb207565c6927f429` |
| 8 | `theorem` | [is_weak_closed_closedBall](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/is-weak-closed-closedball--4844d0a0400515febc66ce96.md) | 130 | `result-track:4844d0a0400515febc66ce96eda57e38f00a50c4ced872fcd53385dbd3a2264f` |
| 9 | `theorem` | [isClosed_image_coe_closedBall](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/isclosed-image-coe-closedball--69551e623f4cb8216bf3ca77.md) | 143 | `result-track:69551e623f4cb8216bf3ca774b0d960d0b0e8e6d25b5d0d033621eb810ad93e9` |
| 10 | `theorem` | [isCompact_image_coe_closedBall](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/iscompact-image-coe-closedball--2994bbaa5a096885e8f873e4.md) | 151 | `result-track:2994bbaa5a096885e8f873e45aee4fb8938fccb1168936fbf62ec8037213e07f` |
| 11 | `def` | [extend](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/extend--12b669d62390b66b427b3134.md) | 171 | `declaration-track:12b669d62390b66b427b3134b716f4851048b1c1b79f1d2a0d235e3d3773c4c2` |
| 12 | `theorem` | [extend_eq](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/extend-eq--a2b261a92c461bfe3bb06db9.md) | 196 | `result-track:a2b261a92c461bfe3bb06db9149fdfdbe32fe10f289d1b7d9caf8e2ca1d80d13` |
| 13 | `theorem` | [extend_unique](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/extend-unique--2dce9c76273fd6ee5453ed1e.md) | 199 | `result-track:2dce9c76273fd6ee5453ed1e469da30db92e8614b9806e848e896d32bfae2d84` |
| 14 | `theorem` | [extend_zero](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/extend-zero--634b8d45634a6636878e8e48.md) | 204 | `result-track:634b8d45634a6636878e8e48cb8b06b69b227a04392cc0f149b04ef5adc364b1` |
| 15 | `theorem` | [opNorm_extend_le](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/declarations/opnorm-extend-le--72e503f125fc8a5ebf6946d6.md) | 217 | `result-track:72e503f125fc8a5ebf6946d6dd1b8933bb343604514f3fb51312966768ac4de4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
