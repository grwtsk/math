# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CorrectionOptimization.Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37cf6a81bd196d1e6a7f91d65a8ffe629df23901",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37cf6a81bd196d1e6a7f91d65a8ffe629df23901`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inverseWeightSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/declarations/inverseweightsum--bfa66077d2e56cd12264e502.md) | 26 | `declaration-track:bfa66077d2e56cd12264e5026ae7ab5687fbc109662a3df8557a9d04ee11ad69` |
| 2 | `def` | [optimalCorrection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/declarations/optimalcorrection--2c4c2d07994779d67fab032f.md) | 34 | `declaration-track:2c4c2d07994779d67fab032f5d9b3292bd1c63122563fcf46f267c910a327656` |
| 3 | `theorem` | [correction_square_expand](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/declarations/correction-square-expand--b3d20cbfe9cfd3bfd7fef7c4.md) | 37 | `result-track:b3d20cbfe9cfd3bfd7fef7c47c16d331ef59f70f81f4ea7bed8c8f76b0aa0d30` |
| 4 | `theorem` | [optimalCorrection_moment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/declarations/optimalcorrection-moment--c54989d2f47df6bd090d3023.md) | 45 | `result-track:c54989d2f47df6bd090d3023a1b56029884cda4e7a9cd220595e156b534bc54d` |
| 5 | `theorem` | [correction_cost_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/declarations/correction-cost-identity--ea83da6083fb289c169a516d.md) | 61 | `result-track:ea83da6083fb289c169a516dfa3bb1960506fc155017c765c9a3f323d8734ecb` |
| 6 | `theorem` | [correction_cost_minimum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/declarations/correction-cost-minimum--23024fb4613fe158fa31857b.md) | 85 | `result-track:23024fb4613fe158fa31857b32e701b202fe98da76c2307eb0e9c3f165410f80` |
| 7 | `theorem` | [correction_minimum_unique](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/declarations/correction-minimum-unique--15635777cfa0f8a43a45adac.md) | 97 | `result-track:15635777cfa0f8a43a45adacf9f586dca7aac057c503e553b5329f482aa4dff1` |
| 8 | `theorem` | [two_support_jet](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/declarations/two-support-jet--c73195c2a87c56688393af91.md) | 117 | `result-track:c73195c2a87c56688393af91215121ca884581ed01457209e48cf5a9f2cc1ca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
