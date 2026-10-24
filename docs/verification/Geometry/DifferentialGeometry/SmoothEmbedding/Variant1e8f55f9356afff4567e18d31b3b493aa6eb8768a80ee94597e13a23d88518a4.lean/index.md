# Verification target: GRWTSK.Geometry.DifferentialGeometry.SmoothEmbedding.Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bc4992ec04f09e37c86dd195efc1ffb5266d043",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bc4992ec04f09e37c86dd195efc1ffb5266d043`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean.json)

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
| 1 | `structure` | [IsSmoothEmbedding](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/declarations/issmoothembedding--0e68478faf31e9d3d0de35d0.md) | 73 | `declaration-track:0e68478faf31e9d3d0de35d096081dc2b8fe4f6f43a4b244ca269b3c7ea43424` |
| 2 | `lemma` | [id](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/declarations/id--9971a43e6db4077f42a4ceb0.md) | 81 | `result-track:9971a43e6db4077f42a4ceb0664428581ab243bd591ddcd3d0fa5f071c4b08de` |
| 3 | `theorem` | [prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/declarations/prodmap--e6192c9b17649d9eae6c4182.md) | 85 | `result-track:e6192c9b17649d9eae6c41824b96f7246bf133ff1cd5c6e7ee572106234492ef` |
| 4 | `lemma` | [of_opens](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/declarations/of-opens--8fc86e922638a220f9645afd.md) | 92 | `result-track:8fc86e922638a220f9645afd46d63bc8d9295bd5a3a549e34e1280210a376ec5` |
| 5 | `lemma` | [_root_.ModelWithCorners.isSmoothEmbedding](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/declarations/root-modelwithcorners-issmoothembedding--7973c1686979a53dae28874a.md) | 98 | `result-track:7973c1686979a53dae28874a71252cbadb77dd5d87671e98839e1ac4f5c1071f` |
| 6 | `lemma` | [sumInl](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/declarations/suminl--d7c84ea5530cd6107ee85a2a.md) | 103 | `result-track:d7c84ea5530cd6107ee85a2a97ad9cef7cb46d7f042c4fbe11b6729dedaea235` |
| 7 | `lemma` | [sumInr](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/declarations/suminr--a32121adae431f35e0577bfe.md) | 108 | `result-track:a32121adae431f35e0577bfe579f00cac54a5f68e2e210a10f5be5f22b7c307b` |
| 8 | `lemma` | [contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/declarations/contmdiff--4ec5e80d6fcac6de28bcf86e.md) | 113 | `result-track:4ec5e80d6fcac6de28bcf86e085fccc8776ed4591bbbd99951989b6ecc582ef1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
