# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.RadonNikodym.Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ed38c66297f4c38d695c17c1c931c722c5c5398",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ed38c66297f4c38d695c17c1c931c722c5c5398`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.WithDensity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.AbsolutelyContinuous` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [rnDeriv_measure_compProd_left_of_ac](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/declarations/rnderiv-measure-compprod-left-of-ac--fbf0cf764ffe2c0686ce82fd.md) | 49 | `result-track:fbf0cf764ffe2c0686ce82fd2224c4c0b1179a36b6c0d682474649ab41c96277` |
| 2 | `lemma` | [rnDeriv_compProd_withDensity_rnDeriv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/declarations/rnderiv-compprod-withdensity-rnderiv--4cea222b76039fda484c38bc.md) | 81 | `result-track:4cea222b76039fda484c38bc87c8bf439b14f2ae28f103773b4b125cb80c3ebe` |
| 3 | `lemma` | [rnDeriv_measure_compProd_left](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/declarations/rnderiv-measure-compprod-left--1e61dd8cd7960f5734943d8a.md) | 96 | `result-track:1e61dd8cd7960f5734943d8a82c766c85f56842a3d4b92dd7c42c53ca98bcb8c` |
| 4 | `lemma` | [rnDeriv_compProd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/declarations/rnderiv-compprod--0197f11dfa5b522a104c488d.md) | 115 | `result-track:0197f11dfa5b522a104c488d2c4f82ebc49507f5f5062760301bd722ec4a07be` |
| 5 | `lemma` | [rnDeriv_measure_compProd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/declarations/rnderiv-measure-compprod--cff1b37e0bc07d25fbe37e8c.md) | 129 | `result-track:cff1b37e0bc07d25fbe37e8cb8027f0a694400d9419c4bd637fc34c050624905` |
| 6 | `lemma` | [rnDeriv_measure_compProd_right](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/declarations/rnderiv-measure-compprod-right--12ec144e2be2f2315e9f7a6d.md) | 156 | `result-track:12ec144e2be2f2315e9f7a6d0571490673cdc4d431a89d2eef24f800fe63aa70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
