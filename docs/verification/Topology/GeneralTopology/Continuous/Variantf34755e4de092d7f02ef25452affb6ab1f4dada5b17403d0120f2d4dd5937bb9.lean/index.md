# Verification target: GRWTSK.Topology.GeneralTopology.Continuous.Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9689ce29d56c83f52ac5d9edfdf72813aa58d3bb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9689ce29d56c83f52ac5d9edfdf72813aa58d3bb`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.BoundedLinearMaps` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.isBoundedBilinearMap_inner](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean/declarations/root-isboundedbilinearmap-inner--18a7515e0dff1a09c5403e7f.md) | 47 | `result-track:18a7515e0dff1a09c5403e7f20e08a6db186007f0a2f55c678e68a07940dad26` |
| 2 | `theorem` | [continuous_inner](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean/declarations/continuous-inner--2d81a485ff06d6c0460e807c.md) | 60 | `result-track:2d81a485ff06d6c0460e807c6c12ca60e7849cadfec815424b670713aafd12c3` |
| 3 | `theorem` | [Filter.Tendsto.inner](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean/declarations/filter-tendsto-inner--2da5a164744c9a1c8c2a45b4.md) | 67 | `result-track:2da5a164744c9a1c8c2a45b49f7d2e8d19f98d86de020eaa0729c483566cfbaa` |
| 4 | `theorem` | [ContinuousWithinAt.inner](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean/declarations/continuouswithinat-inner--102cd38115506ce76d9bf622.md) | 73 | `result-track:102cd38115506ce76d9bf622549dc1445b6dec614df1de9cfc79a74bff5dee81` |
| 5 | `theorem` | [ContinuousAt.inner](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean/declarations/continuousat-inner--7eb0a8f324e7c3e881c6712b.md) | 78 | `result-track:7eb0a8f324e7c3e881c6712b0f3d8e8b755ee4f121fb2c8b50d1040c9c4f942e` |
| 6 | `theorem` | [ContinuousOn.inner](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean/declarations/continuouson-inner--6da8fa21f922eed353171c63.md) | 83 | `result-track:6da8fa21f922eed353171c633e3e108d6e1a501dce692893e8da3c9189b672e1` |
| 7 | `theorem` | [Continuous.inner](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variantf34755e4de092d7f02ef25452affb6ab1f4dada5b17403d0120f2d4dd5937bb9.lean/declarations/continuous-inner--3073155f8db0ac7722068612.md) | 87 | `result-track:3073155f8db0ac7722068612d6da42889b9206d4fbf3d93f84e746caa9c365fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
