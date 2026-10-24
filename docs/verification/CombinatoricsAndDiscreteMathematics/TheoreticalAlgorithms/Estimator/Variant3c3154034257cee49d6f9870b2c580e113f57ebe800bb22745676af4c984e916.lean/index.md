# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Estimator.Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c725744c2fa6ded06c6f02cd903687a0dd56185",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c725744c2fa6ded06c6f02cd903687a0dd56185`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.EditDistance.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Estimator` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LevenshteinEstimator'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/declarations/levenshteinestimator--56c26428677b382a78221597.md) | 43 | `declaration-track:56c26428677b382a782215973db484d41ebe31ca6787ab619f64435e662771a0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/declarations/instance--038ecd7a370061ea2394eead.md) | 62 | `declaration-track:038ecd7a370061ea2394eeadc08443d57f321b9b644e00da638ce4b7d2ae8266` |
| 3 | `instance` | [estimator'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/declarations/estimator--938be4fe4a1b72ae4c1c1657.md) | 76 | `declaration-track:938be4fe4a1b72ae4c1c165725b4033d865a50ca67e5a96df4e5f57a992c6602` |
| 4 | `def` | [LevenshteinEstimator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/declarations/levenshteinestimator--bedf09d1bd63db621c85edf6.md) | 128 | `declaration-track:bedf09d1bd63db621c85edf68c7da76e7621ba7c05698e7531b4f7740686bdc8` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/declarations/instance--b924672677d152495a7be613.md) | 131 | `declaration-track:b924672677d152495a7be6132e39d8ec70013ba40366a34d693445c945321431` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/declarations/instance--f357ed07b98d2ceee401e2c9.md) | 136 | `declaration-track:f357ed07b98d2ceee401e2c9af6178cdac2c440ac4f4cd279312072d2f48a49c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
