# Verification target: GRWTSK.Analysis.SpecialFunctions.Curves.Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da94a1e50295513585f7c3585b38709160c153a7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da94a1e50295513585f7c3585b38709160c153a7`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Analysis.Decoupling.WeightedLp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modelCurvePhi](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean/declarations/modelcurvephi--960ceb727256905dbee2d26e.md) | 18 | `declaration-track:960ceb727256905dbee2d26e0b18410e346f883f0f058a5fbb5934027b198961` |
| 2 | `structure` | [GraphCurve](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean/declarations/graphcurve--6a96556d4447de3f1bcf99bf.md) | 21 | `declaration-track:6a96556d4447de3f1bcf99bf6e5bbdd661df04778f53014edc5c1bc895a4bb71` |
| 3 | `structure` | [PlaneCurve](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean/declarations/planecurve--69c86d80af29eccda56a50b0.md) | 25 | `declaration-track:69c86d80af29eccda56a50b002455b07d31fb493b3c1b7b6eef90cfdb8b83474` |
| 4 | `def` | [modelGraphCurve](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean/declarations/modelgraphcurve--885f03b57be849922f437076.md) | 30 | `declaration-track:885f03b57be849922f43707625b94f849acf392cab60965f80b21d3bfe009d5d` |
| 5 | `def` | [CurvatureIdenticallyZero](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean/declarations/curvatureidenticallyzero--47c5254476d456bfc16e4f7c.md) | 34 | `declaration-track:47c5254476d456bfc16e4f7c0a43bf26208c4a3d5bbefc84abf6055749d76754` |
| 6 | `def` | [RegularPlaneCurve](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean/declarations/regularplanecurve--52fdac3b0101db1aba74d5a4.md) | 37 | `declaration-track:52fdac3b0101db1aba74d5a4fe777dc29943d1a41ab427600456b6a28c1896cb` |
| 7 | `def` | [WronskianVanishesOnlyFinitelyToFiniteOrder](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean/declarations/wronskianvanishesonlyfinitelytofiniteorder--294db65ba1a12f5d15d6ed4a.md) | 40 | `declaration-track:294db65ba1a12f5d15d6ed4aa57550978e073f5c02852c900fbc19ddab11321c` |
| 8 | `theorem` | [model_curve_domain_recorded](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f.lean/declarations/model-curve-domain-recorded--2bc13e4a6bbd336f1dfe2369.md) | 43 | `result-track:2bc13e4a6bbd336f1dfe236986b4dff520dccca1e8fdf78b539ab850e8da7ad8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
