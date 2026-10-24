# Verification target: GRWTSK.Analysis.FunctionalAnalysis.QuantitativeGap.Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01c282880608ba60515d25a5ff528df2dfc02653",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01c282880608ba60515d25a5ff528df2dfc02653`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProtectedProjector](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean/declarations/protectedprojector--3bda90f3c95bb2465d7b433f.md) | 27 | `declaration-track:3bda90f3c95bb2465d7b433f5255c2e6ef26e90b73766be144f05757c0fbba7e` |
| 2 | `def` | [ProtectedProjector.complement](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean/declarations/protectedprojector-complement--b5ebf113f1f063ac8122f7c2.md) | 34 | `declaration-track:b5ebf113f1f063ac8122f7c25e4d98ae16f80809a68f260e48c285b6c841e68b` |
| 3 | `def` | [CoerciveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean/declarations/coerciveon--8672296c105f646c58f81640.md) | 38 | `declaration-track:8672296c105f646c58f816403d2ede38015fc48b83dddc57436ae955309be000` |
| 4 | `theorem` | [coerciveOn_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean/declarations/coerciveon-mono--e3d53b70e8147a4817d29048.md) | 43 | `result-track:e3d53b70e8147a4817d29048b4644bd8249c483e47cd99eba8307e918c0af562` |
| 5 | `theorem` | [pullback_coerciveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean/declarations/pullback-coerciveon--dac86a7c4a30c195d88fa8d0.md) | 51 | `result-track:dac86a7c4a30c195d88fa8d0e33add1732e4c1a9260a6375ca3af2cecf096d0c` |
| 6 | `theorem` | [kernel_eq_protected_range](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean/declarations/kernel-eq-protected-range--c72dac267ebb798e1ddb8a44.md) | 78 | `result-track:c72dac267ebb798e1ddb8a44e3078ca413dbb0dfc476b84e3f4d69687452e9e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
