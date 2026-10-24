# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectionGroupoid.Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1383d9b387c1c1494ffaecab79adc57132ec840c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1383d9b387c1c1494ffaecab79adc57132ec840c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.IntrinsicScalar` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.MonoHierarchy` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectionProfile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/declarations/projectionprofile--c05e82fd6eb6ca9cdb7d5346.md) | 21 | `declaration-track:c05e82fd6eb6ca9cdb7d5346dc4baed283644871e691af4b04110bbadc719758` |
| 2 | `def` | [Admissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/declarations/admissible--1bda40deaf3a83bc16ce9b06.md) | 34 | `declaration-track:1bda40deaf3a83bc16ce9b0605c4324bd4e61ba0ddf8bab000a32925d7ee7fe3` |
| 3 | `structure` | [ProjectionMorphism](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/declarations/projectionmorphism--78412155a61d22b9b9712b9a.md) | 40 | `declaration-track:78412155a61d22b9b9712b9a946305adbd14caf9a29e398460157488f2ebea62` |
| 4 | `structure` | [ProjectionGroupoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/declarations/projectiongroupoid--44a78f6d8b6f25f5ccd37a25.md) | 50 | `declaration-track:44a78f6d8b6f25f5ccd37a25dd3d81e111707dab4448bef61c2b18618ad2d082` |
| 5 | `def` | [projectionOrbit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/declarations/projectionorbit--fa01de959174669722029641.md) | 62 | `declaration-track:fa01de959174669722029641c0a2394f3aa20bcd8c3248209f41249c645ce512` |
| 6 | `theorem` | [projection_mem_orbit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/declarations/projection-mem-orbit--344a18401cb5a923677f57ff.md) | 69 | `result-track:344a18401cb5a923677f57ff8ed1fc68afb809b40041165bbccb82dfc07e29d2` |
| 7 | `def` | [IsIntrinsicRepresentative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/declarations/isintrinsicrepresentative--e47ca733efde6f9a218c4a98.md) | 79 | `declaration-track:e47ca733efde6f9a218c4a98dea7c94e196cb9febd99ec14d9410e7b9c59f38f` |
| 8 | `structure` | [IntrinsicProjectionLaw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/declarations/intrinsicprojectionlaw--f0f4293df6745f595d4dc79c.md) | 91 | `declaration-track:f0f4293df6745f595d4dc79cac373701c9e98799e6dab265f9b59c9242cfb76f` |
| 9 | `def` | [admissibleProjectionEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/declarations/admissibleprojectionequiv--05e666102276e2adb4b179a0.md) | 105 | `declaration-track:05e666102276e2adb4b179a005f12f694ba400b3b8b40945a9a107f2bafbd434` |
| 10 | `theorem` | [projectionGroupoid_determined](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1.lean/declarations/projectiongroupoid-determined--4857d941ecef874d01320393.md) | 138 | `result-track:4857d941ecef874d0132039335dd100526991269148777b3caa6627ee8c84857` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
