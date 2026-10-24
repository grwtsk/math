# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.Centering.Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7274e7cc878a1a12809d12715e366b0c8e55a53",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7274e7cc878a1a12809d12715e366b0c8e55a53`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [predictablePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/predictablepart--795604484a041dc927176d65.md) | 45 | `declaration-track:795604484a041dc927176d65791d96af527600c2d99b2d3c3f616e35e754cac1` |
| 2 | `theorem` | [predictablePart_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/predictablepart-zero--d6e5bfb299a44a90858fef22.md) | 50 | `result-track:d6e5bfb299a44a90858fef22831a0dbb46c8827c23635aa8fd7539e0e0d4b433` |
| 3 | `theorem` | [adapted_predictablePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/adapted-predictablepart--fc808f23dbe2114e468badba.md) | 54 | `result-track:fc808f23dbe2114e468badbabf4a641d0a1eccea2deee67a5662bb20e07e248f` |
| 4 | `theorem` | [adapted_predictablePart'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/adapted-predictablepart--07f50144d95b6b2c5931c23b.md) | 59 | `result-track:07f50144d95b6b2c5931c23b408dc8cd38c8aa2996e1a8bf728900127c4617e6` |
| 5 | `def` | [martingalePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/martingalepart--dd4cc735820eae3c281b2420.md) | 66 | `declaration-track:dd4cc735820eae3c281b2420423130f6cbfacd6a8e953f6d9bed38e895e9bb9e` |
| 6 | `theorem` | [martingalePart_add_predictablePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/martingalepart-add-predictablepart--c15b28aab41f9b3b5de8ff82.md) | 70 | `result-track:c15b28aab41f9b3b5de8ff82436ec12edcf7ae61284bd1cd958e5b35a2fd618a` |
| 7 | `theorem` | [martingalePart_eq_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/martingalepart-eq-sum--45e77e51a9943d439243ec56.md) | 75 | `result-track:45e77e51a9943d439243ec5649619c99fc4ad3cfa79fd3475121508a371b3b06` |
| 8 | `theorem` | [adapted_martingalePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/adapted-martingalepart--65a6f89e78a685b160ca5cc4.md) | 82 | `result-track:65a6f89e78a685b160ca5cc4290e65e7d72bdac519b50bada1f0db11ac7c863e` |
| 9 | `theorem` | [integrable_martingalePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/integrable-martingalepart--39689545fbef5ff224740ea0.md) | 86 | `result-track:39689545fbef5ff224740ea0200bcd78e700aa364734ee2b8c6934978644bff3` |
| 10 | `theorem` | [martingale_martingalePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/martingale-martingalepart--75f078d6467b34419505d03c.md) | 93 | `result-track:75f078d6467b34419505d03c0aae16698dce7370b34af767957d405d15370322` |
| 11 | `theorem` | [martingalePart_add_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/martingalepart-add-ae-eq--a1079dd323f77f05547701d0.md) | 135 | `result-track:a1079dd323f77f05547701d0ee2216a6d957400680af08a0262899dfd66c5f36` |
| 12 | `theorem` | [predictablePart_add_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/predictablepart-add-ae-eq--d1df86feb97f0fd1876bece6.md) | 155 | `result-track:d1df86feb97f0fd1876bece605f0ee810e47c039af52d74346d383be6cb2edb5` |
| 13 | `theorem` | [predictablePart_bdd_difference](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/predictablepart-bdd-difference--a6591cb3b206a44e3c8bf895.md) | 166 | `result-track:a6591cb3b206a44e3c8bf895a8114ec1d17125fe7b1cc1fdfeac7f6612405aef` |
| 14 | `theorem` | [martingalePart_bdd_difference](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean/declarations/martingalepart-bdd-difference--cf0711b4bb304e83644a896d.md) | 173 | `result-track:cf0711b4bb304e83644a896dad741434c19a5c90736c53f4d941319372a144cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
