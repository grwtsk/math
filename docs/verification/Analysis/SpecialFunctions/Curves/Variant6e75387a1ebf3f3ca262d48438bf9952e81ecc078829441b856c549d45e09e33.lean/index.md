# Verification target: GRWTSK.Analysis.SpecialFunctions.Curves.Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43dbf19902f2b1c05ac79b1ddaaa78c24c25bf9a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43dbf19902f2b1c05ac79b1ddaaa78c24c25bf9a`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Analysis.Decoupling.WeightedLp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modelCurvePhi](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean/declarations/modelcurvephi--7e59294f64ea03858b2829ee.md) | 10 | `declaration-track:7e59294f64ea03858b2829ee19712fdf1b57e7aa03f491acbdb0bb12027f5a4d` |
| 2 | `structure` | [GraphCurve](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean/declarations/graphcurve--9ea02dd3c9f8d96f148adf60.md) | 13 | `declaration-track:9ea02dd3c9f8d96f148adf604b3d0bb1b97ba63a2e62b14eda3ffce24a56fb5d` |
| 3 | `structure` | [PlaneCurve](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean/declarations/planecurve--a407057bbbc6763a3a668b64.md) | 17 | `declaration-track:a407057bbbc6763a3a668b640ddcce96af9f60d05b9526f47ac94473091f5545` |
| 4 | `def` | [modelGraphCurve](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean/declarations/modelgraphcurve--f654f3fcca5f81f2e06355bf.md) | 22 | `declaration-track:f654f3fcca5f81f2e06355bf940c5377cad42f12fa9462ecb822facefcb818b4` |
| 5 | `def` | [CurvatureIdenticallyZero](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean/declarations/curvatureidenticallyzero--8f3c0a61ef967f9fd84e85c2.md) | 26 | `declaration-track:8f3c0a61ef967f9fd84e85c25602e6d73bb01eff5722f44b3689bc92ca6269f7` |
| 6 | `def` | [RegularPlaneCurve](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean/declarations/regularplanecurve--4d6981355fc0ed4c8e864e25.md) | 29 | `declaration-track:4d6981355fc0ed4c8e864e25ad9f8bcdffae2f0c7bec7a458ac53dfa7c89be19` |
| 7 | `def` | [WronskianVanishesOnlyFinitelyToFiniteOrder](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean/declarations/wronskianvanishesonlyfinitelytofiniteorder--6550a9705267aa33c6cd42b0.md) | 32 | `declaration-track:6550a9705267aa33c6cd42b0a8a09ec17cccfe9e168bd46a70b501d5948a731b` |
| 8 | `theorem` | [model_curve_domain_recorded](../../../../../mathematics/Analysis/SpecialFunctions/Curves/Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33.lean/declarations/model-curve-domain-recorded--a6c29e229c4478ae9584a19f.md) | 35 | `result-track:a6c29e229c4478ae9584a19fe67b6423e095e2157b9234757e6c2aae7b279487` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
