# Verification target: GRWTSK.Geometry.DifferentialGeometry.Tangent.Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f3742a281a99612c9bb892f43f93d11308a7a5b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f3742a281a99612c9bb892f43f93d11308a7a5b`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tangentMap_chart](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/declarations/tangentmap-chart--2d5397e485cbc603a5c09637.md) | 47 | `result-track:2d5397e485cbc603a5c09637a857e5dd88664fcd1dde392611d08f243f2bbcba` |
| 2 | `theorem` | [tangentMap_chart_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/declarations/tangentmap-chart-symm--ce597847659e02a0c36de6ed.md) | 60 | `result-track:ce597847659e02a0c36de6edc42e2fea89be310770199fa9aa5dc6c4c7f62b04` |
| 3 | `lemma` | [mfderiv_chartAt_eq_tangentCoordChange](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/declarations/mfderiv-chartat-eq-tangentcoordchange--9f86e294b9475ed274097c35.md) | 72 | `result-track:9f86e294b9475ed274097c35f77bf9b50db12e19e12105d6845ead98bae3a6e4` |
| 4 | `theorem` | [UniqueMDiffOn.tangentBundle_proj_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/declarations/uniquemdiffon-tangentbundle-proj-preimage--1ec6f1f14afef3f2d4867b85.md) | 80 | `result-track:1ec6f1f14afef3f2d4867b85e89d2adec2ab12e4a869de8e74c30b2072add3cd` |
| 5 | `lemma` | [inTangentCoordinates_eq_mfderiv_comp](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/declarations/intangentcoordinates-eq-mfderiv-comp--e3d68fe48071b0659b9f93fc.md) | 89 | `result-track:e3d68fe48071b0659b9f93fc6116e77b80dddb6f23c7c243f6e4cfb9c1aee483` |
| 6 | `lemma` | [inTangentCoordinates_eq_mfderiv_comp_abuse](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/declarations/intangentcoordinates-eq-mfderiv-comp-abuse--6a7e7417d623bfe2dfc553f6.md) | 115 | `result-track:6a7e7417d623bfe2dfc553f616e2dd32e8876321663f1441f603ead187fbd6d2` |
| 7 | `def` | [tangentBundleModelSpaceDiffeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/declarations/tangentbundlemodelspacediffeomorph--f6805ec51f13a219716d62f1.md) | 128 | `declaration-track:f6805ec51f13a219716d62f1ee0ff1ba5449eae6dade243a92b15718bed1e4c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
