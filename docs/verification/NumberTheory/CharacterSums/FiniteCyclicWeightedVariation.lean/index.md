# Verification target: GRWTSK.NumberTheory.CharacterSums.FiniteCyclicWeightedVariation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04d0569a302350bf6597cc870fcf957e0be61200",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04d0569a302350bf6597cc870fcf957e0be61200`.

Source path: `GRWTSK/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.CharacterSums.FiniteCyclicIntervalDistance`](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Module` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteCyclicCoefficientVariation](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/declarations/finitecycliccoefficientvariation--876eb733c187b6206d9b3d4e.md) | 36 | `declaration-track:876eb733c187b6206d9b3d4e6025bbdc1433abf4a99c3ebb467d32a37d47eaf5` |
| 2 | `theorem` | [finiteCyclicCoefficientVariation_nonneg](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/declarations/finitecycliccoefficientvariation-nonneg--c9f2c8d74cad009d970f8dae.md) | 44 | `result-track:c9f2c8d74cad009d970f8dae4c1a16c76963e702aab405d1fb6b028a51165c26` |
| 3 | `theorem` | [sum_mul_stdAddChar_neg_Ico_eq_terminal_add_variation](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/declarations/sum-mul-stdaddchar-neg-ico-eq-terminal-add-variation--2052017172e0470278b10058.md) | 54 | `result-track:2052017172e0470278b10058d7dc2899aa040557d4d224d8978f9029dbee5007` |
| 4 | `theorem` | [norm_sum_mul_stdAddChar_neg_Ico_le_coefficientVariation](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/declarations/norm-sum-mul-stdaddchar-neg-ico-le-coefficientvariation--56d2a6caff196076ffa919b9.md) | 107 | `result-track:56d2a6caff196076ffa919b9d9b4a15d3f24e97d509f9022d380ef108b7e8fd9` |
| 5 | `def` | [finiteCyclicReciprocalCoefficientVariation](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/declarations/finitecyclicreciprocalcoefficientvariation--19feb4bb3ab05d6c426bbb2e.md) | 194 | `declaration-track:19feb4bb3ab05d6c426bbb2ef43c13e1c7fa6aa847d59d6902ddd8830bd0f877` |
| 6 | `theorem` | [norm_sum_mul_stdAddChar_neg_div_nat_add_Ico_le_variation](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/declarations/norm-sum-mul-stdaddchar-neg-div-nat-add-ico-le-variation--6ae57c07b86701f01d7314d7.md) | 201 | `result-track:6ae57c07b86701f01d7314d7e7a7b15cdc673433e4856e8a7c472660c5f30005` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
