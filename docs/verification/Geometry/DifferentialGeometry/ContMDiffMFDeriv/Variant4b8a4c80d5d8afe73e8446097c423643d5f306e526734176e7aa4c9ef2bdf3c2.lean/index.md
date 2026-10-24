# Verification target: GRWTSK.Geometry.DifferentialGeometry.ContMDiffMFDeriv.Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7528b846e9af74f060fc79ad358e0664528195cd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7528b846e9af74f060fc79ad358e0664528195cd`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiffMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContMDiffAt.mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/contmdiffat-mfderiv--aee52821a62b271aca408edb.md) | 86 | `result-track:aee52821a62b271aca408edbb78cd1842144454dbde943d835e2e65d965d35d0` |
| 2 | `theorem` | [ContMDiffAt.mfderiv_const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/contmdiffat-mfderiv-const--8bfe702175056644715ed55c.md) | 199 | `result-track:8bfe702175056644715ed55c4cd75723e6995b8fd871662677bd6dc220cff91f` |
| 3 | `theorem` | [ContMDiffAt.mfderiv_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/contmdiffat-mfderiv-apply--63e3555da1596314b8312cb7.md) | 215 | `result-track:63e3555da1596314b8312cb7db097b49be349983ef6039d31219b4b94c314f04` |
| 4 | `theorem` | [ContMDiffOn.continuousOn_tangentMapWithin_aux](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/contmdiffon-continuouson-tangentmapwithin-aux--77dfb06b0bb3d9f3665f1ddd.md) | 235 | `result-track:77dfb06b0bb3d9f3665f1ddd470fe10da73d0dd36cfee2f6dd4c4eb6bd157336` |
| 5 | `theorem` | [ContMDiffOn.contMDiffOn_tangentMapWithin_aux](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/contmdiffon-contmdiffon-tangentmapwithin-aux--23b661783ce6475fe5565dbb.md) | 295 | `result-track:23b661783ce6475fe5565dbb44e4878ccbd075c8c2db8509a21ce2b24ca9108a` |
| 6 | `theorem` | [ContMDiffOn.contMDiffOn_tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/contmdiffon-contmdiffon-tangentmapwithin--44ad71f1b6c8df980fd80b11.md) | 351 | `result-track:44ad71f1b6c8df980fd80b112862316dbf2823f8e9e9d350fac8f9baee1113b9` |
| 7 | `theorem` | [ContMDiffOn.continuousOn_tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/contmdiffon-continuouson-tangentmapwithin--c9ace886cb5c77478ebb44b3.md) | 524 | `result-track:c9ace886cb5c77478ebb44b3bdafe6ddbadd2f12f563887979c59e7e2e0c7310` |
| 8 | `theorem` | [ContMDiff.contMDiff_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/contmdiff-contmdiff-tangentmap--07ab2cf64a3f5dbd8501ee49.md) | 534 | `result-track:07ab2cf64a3f5dbd8501ee49ff4ebf2d7cb089f5867cb598031c88aaafbd7fcd` |
| 9 | `theorem` | [ContMDiff.continuous_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/contmdiff-continuous-tangentmap--f3239519e16f12a6f721179c.md) | 542 | `result-track:f3239519e16f12a6f721179c23b0d7b0a84b5d7c3120c9c67c3198cb0834f727` |
| 10 | `theorem` | [tangentMap_tangentBundle_pure](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/tangentmap-tangentbundle-pure--5d087eb8a5a54005f73f7ad9.md) | 572 | `result-track:5d087eb8a5a54005f73f7ad9a1314db76b66cdbbd7853c8e109216f9ca02f4a4` |
| 11 | `theorem` | [mdifferentiable'](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/mdifferentiable--a4e09c42a087712829ea238e.md) | 613 | `result-track:a4e09c42a087712829ea238e3c39eaac8b07d02329af0985209915cebe07a3b7` |
| 12 | `theorem` | [mdifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/mdifferentiable--3f9b0e634c88e2739e9c7284.md) | 617 | `result-track:3f9b0e634c88e2739e9c7284f9685cc31bc3d9c79d2ba2896211222255306583` |
| 13 | `theorem` | [mdifferentiableAt](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/declarations/mdifferentiableat--66b9d1758f9ffb4357f9ee12.md) | 621 | `result-track:66b9d1758f9ffb4357f9ee12a9d2b8332e00e4e9754ac04f0b47034f8d4401dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
