# Verification target: GRWTSK.Geometry.DifferentialGeometry.UniqueDifferential.Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78cd7bad21b4f3d6484cbab54ac87ded74edfd73",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78cd7bad21b4f3d6484cbab54ac87ded74edfd73`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.Atlas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UniqueMDiffWithinAt.image_denseRange](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffwithinat-image-denserange--a771fac2c9436e7c01acae1e.md) | 51 | `result-track:a771fac2c9436e7c01acae1e0eca35c99802e3ee476ec9025803b702c18c7406` |
| 2 | `theorem` | [UniqueMDiffOn.image_denseRange'](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffon-image-denserange--a1e8b5d14bc1a3e38d79c2a2.md) | 66 | `result-track:a1e8b5d14bc1a3e38d79c2a2af518d0a3e886943e8fcbdaa07020b51ea2ae611` |
| 3 | `theorem` | [UniqueMDiffOn.image_denseRange](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffon-image-denserange--c234ea50b48c9ef1ccb2242d.md) | 74 | `result-track:c234ea50b48c9ef1ccb2242d721acb96299bb9790096b1ba224459c7afcb6585` |
| 4 | `theorem` | [UniqueMDiffWithinAt.preimage_partialHomeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffwithinat-preimage-partialhomeomorph--781bad1ac76a08bb0f7c9443.md) | 79 | `result-track:781bad1ac76a08bb0f7c944366544be7b349e9551b09dfe916b07560f1ce79a8` |
| 5 | `theorem` | [UniqueMDiffOn.uniqueMDiffOn_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffon-uniquemdiffon-preimage--bb0e9dc825096891ba467676.md) | 89 | `result-track:bb0e9dc825096891ba467676876bb79ff65d9fd13b1085c2b64af50a0f2cffff` |
| 6 | `theorem` | [UniqueMDiffOn.uniqueMDiffOn_target_inter](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffon-uniquemdiffon-target-inter--1beda2122c90be9c3e7c7e63.md) | 96 | `result-track:1beda2122c90be9c3e7c7e63df3e99e4827f7537a07cb91ad3f08faa217e18e6` |
| 7 | `theorem` | [UniqueMDiffOn.uniqueDiffOn_target_inter](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffon-uniquediffon-target-inter--566924f63ba74b129338b40d.md) | 108 | `result-track:566924f63ba74b129338b40dd0a89513e728981e5bd7a9d8c5b2a85e709afb3a` |
| 8 | `theorem` | [UniqueMDiffOn.uniqueDiffWithinAt_range_inter](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffon-uniquediffwithinat-range-inter--b12b83f1180bc11de52527b3.md) | 113 | `result-track:b12b83f1180bc11de52527b3c76b0e398d99453f6f8e063993ee9299cb92f89d` |
| 9 | `theorem` | [UniqueMDiffOn.uniqueDiffOn_inter_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffon-uniquediffon-inter-preimage--afb79f5d1538f3227ea76379.md) | 123 | `result-track:afb79f5d1538f3227ea763795e5fc1edb38a337ad5fbf8fa3fc388b1a7c079f4` |
| 10 | `lemma` | [UniqueMDiffWithinAt.bundle_preimage_aux](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffwithinat-bundle-preimage-aux--325b161ec8072c4b82e8ecdd.md) | 141 | `result-track:325b161ec8072c4b82e8ecddfe8be2bacebbd4f0ed8d9b1f3d5d8f28cca5468d` |
| 11 | `theorem` | [UniqueMDiffWithinAt.bundle_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffwithinat-bundle-preimage--7a74398869661935e0f0b6bc.md) | 173 | `result-track:7a74398869661935e0f0b6bc67a37f3b125f1ddb95c9bfe7d71f19d789677f64` |
| 12 | `theorem` | [UniqueMDiffWithinAt.bundle_preimage'](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffwithinat-bundle-preimage--fb879e9aec32346f2ff930db.md) | 189 | `result-track:fb879e9aec32346f2ff930db41e48094e6b2851727b33f262a8c2ae7aeb079bd` |
| 13 | `theorem` | [UniqueMDiffOn.bundle_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/uniquemdiffon-bundle-preimage--4e836057d1a63582e52f8e72.md) | 198 | `result-track:4e836057d1a63582e52f8e727658f4e103faf531ffff7f79ef2cc709f77c0c8d` |
| 14 | `theorem` | [Trivialization.mdifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/declarations/trivialization-mdifferentiable--762071aa404b1fb59cd7238b.md) | 208 | `result-track:762071aa404b1fb59cd7238b8d556925b4ca455313c9c9e867448d4a96e288f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
