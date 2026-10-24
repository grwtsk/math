# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HeatResidualControl.Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19836f80637c0886ba7163281bb604e434595dc5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19836f80637c0886ba7163281bb604e434595dc5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Heat` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Residual` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [heatVisible](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean/declarations/heatvisible--09a9bcaa235f2738013ae5bd.md) | 27 | `declaration-track:09a9bcaa235f2738013ae5bdc9e0468038dc1ba45585925e2df0ac0cc4ce7cc3` |
| 2 | `def` | [heatFiber](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean/declarations/heatfiber--ed6604df077692af8d23126a.md) | 36 | `declaration-track:ed6604df077692af8d23126a17775f0c2f79260273358c74e557b9b6b44c3e53` |
| 3 | `theorem` | [heat_visible_plus_fiber](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean/declarations/heat-visible-plus-fiber--ef0ebab9b3b71316240ab364.md) | 45 | `result-track:ef0ebab9b3b71316240ab3641f230c8f8f27a3a8204867a73fa1146f3f062a26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
