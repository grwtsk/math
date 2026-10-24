# Verification target: GRWTSK.Geometry.DifferentialGeometry.ContMDiffMFDeriv.Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ba07e05f39d0f635cb34837afe54a28fd14fcab",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ba07e05f39d0f635cb34837afe54a28fd14fcab`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiffMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContMDiffAt.mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/contmdiffat-mfderiv--0e796b639af614688cf03c14.md) | 78 | `result-track:0e796b639af614688cf03c141f028443026f82a561cd25967449319f553093a3` |
| 2 | `theorem` | [ContMDiffAt.mfderiv_const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/contmdiffat-mfderiv-const--14cd7abff1d236e0e2273e8c.md) | 191 | `result-track:14cd7abff1d236e0e2273e8cf7cb1d605337065345ab518e4946b5eb26406d47` |
| 3 | `theorem` | [ContMDiffAt.mfderiv_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/contmdiffat-mfderiv-apply--629d574c5e162acf063f0b79.md) | 207 | `result-track:629d574c5e162acf063f0b795791414aefe807056abf54f07a4c31b81db9adfc` |
| 4 | `theorem` | [ContMDiffOn.continuousOn_tangentMapWithin_aux](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/contmdiffon-continuouson-tangentmapwithin-aux--143511eb46539826c8ae1142.md) | 227 | `result-track:143511eb46539826c8ae11429aed4663e9283d70bb17be78106482e8f8dfdb0a` |
| 5 | `theorem` | [ContMDiffOn.contMDiffOn_tangentMapWithin_aux](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/contmdiffon-contmdiffon-tangentmapwithin-aux--3ead8d137552b1b75ac15e11.md) | 287 | `result-track:3ead8d137552b1b75ac15e1153362ac83102b79ce8e386afb314f73a12dd91c1` |
| 6 | `theorem` | [ContMDiffOn.contMDiffOn_tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/contmdiffon-contmdiffon-tangentmapwithin--d45062e63c5a3247592713f8.md) | 343 | `result-track:d45062e63c5a3247592713f80946473cfd65132a7c77dc863ab5a80f7b11c6a2` |
| 7 | `theorem` | [ContMDiffOn.continuousOn_tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/contmdiffon-continuouson-tangentmapwithin--92f8d9909e5d1c95c36c6707.md) | 516 | `result-track:92f8d9909e5d1c95c36c67070d31285cf3e91545b7ce6434ed4ee12bba4353c8` |
| 8 | `theorem` | [ContMDiff.contMDiff_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/contmdiff-contmdiff-tangentmap--515ecbf94d8e483676eef6ae.md) | 526 | `result-track:515ecbf94d8e483676eef6aeb788b0e9645e6c0a57f61711a5b74cc59eb046f1` |
| 9 | `theorem` | [ContMDiff.continuous_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/contmdiff-continuous-tangentmap--18923708c55f2b669be3b850.md) | 534 | `result-track:18923708c55f2b669be3b850dd2900388374454c52c807e435e2ce4143d0a07e` |
| 10 | `theorem` | [tangentMap_tangentBundle_pure](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/tangentmap-tangentbundle-pure--b27941e5155620a52af1cb8f.md) | 564 | `result-track:b27941e5155620a52af1cb8f9e8ca97a10c10fa70cc40a2bd1c1ee7d3bdea96c` |
| 11 | `theorem` | [mdifferentiable'](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/mdifferentiable--885f5edadb602d5fd548e77e.md) | 605 | `result-track:885f5edadb602d5fd548e77ecdba4fc6c4cf08eac5a36aa9cabbf822c498b51e` |
| 12 | `theorem` | [mdifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/mdifferentiable--921200604a6de18502300e6a.md) | 609 | `result-track:921200604a6de18502300e6a1b8be0d2ea0bfce1ea0fb9a52555cb90f93ff195` |
| 13 | `theorem` | [mdifferentiableAt](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/declarations/mdifferentiableat--0cc58c99f8b3272ac3fec78f.md) | 613 | `result-track:0cc58c99f8b3272ac3fec78f733f4b44bd399e6ddf88bde503dc6e8f89a37e6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
