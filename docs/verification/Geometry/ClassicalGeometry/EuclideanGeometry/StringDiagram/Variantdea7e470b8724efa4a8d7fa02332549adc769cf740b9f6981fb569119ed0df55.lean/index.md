# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.StringDiagram.Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8cd9a3b017be047f95abdbe6790307399f314e5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8cd9a3b017be047f95abdbe6790307399f314e5`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Widget.StringDiagram` — import line 1; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.Panel.SelectionPanel` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [left_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean/declarations/left-triangle--cf4dc83965f47c0e63a75fa0.md) | 19 | `result-track:cf4dc83965f47c0e63a75fa0cf8477a8e39ce4583fc173dc2f56a702752a6c50` |
| 2 | `lemma` | [yang_baxter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean/declarations/yang-baxter--e5999c47ad837f48ac0ca3cc.md) | 32 | `result-track:e5999c47ad837f48ac0ca3ccf9fe1e1c86c64b5f238bbe55ba93f194989b3700` |
| 3 | `lemma` | [yang_baxter'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean/declarations/yang-baxter--9dcac3dfdfbe4d3b8fca4f8d.md) | 38 | `result-track:9dcac3dfdfbe4d3b8fca4f8dadb9b01f0e4f800223984f374f292662706d365e` |
| 4 | `lemma` | [yang_baxter''](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean/declarations/yang-baxter--b9823a36d17163a6bd3a2744.md) | 43 | `result-track:b9823a36d17163a6bd3a2744ced52d491aa92c2b52732f9f3e91046458e5d995` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean/declarations/example--d0e9d0c9b18da9718c3bfd0d.md) | 52 | `declaration-track:d0e9d0c9b18da9718c3bfd0d33afe49a66679f5cee7616719538f3d1c7ea2b66` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean/declarations/example--b5a9881b7430f97877f8cce3.md) | 55 | `declaration-track:b5a9881b7430f97877f8cce3e92a36fba820ba8d4059fd4ab21c8bb482b18bdf` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean/declarations/example--d2850799c1af1bb1eeb14830.md) | 58 | `declaration-track:d2850799c1af1bb1eeb1483049f0a2f8afd54bad9618b9fc4a944cf2b786296c` |
| 8 | `abbrev` | [yangBaxterLhs](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variantdea7e470b8724efa4a8d7fa02332549adc769cf740b9f6981fb569119ed0df55.lean/declarations/yangbaxterlhs--65f762d7c43a9efddd1678e0.md) | 416 | `declaration-track:65f762d7c43a9efddd1678e0d4d5f32ce051991d50146d4ca59098705bdab42d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
