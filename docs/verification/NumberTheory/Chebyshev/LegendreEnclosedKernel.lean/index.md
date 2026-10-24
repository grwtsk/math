# Verification target: GRWTSK.NumberTheory.Chebyshev.LegendreEnclosedKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37791a0fffb75ba9d925874de1e67d613344a8b4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37791a0fffb75ba9d925874de1e67d613344a8b4`.

Source path: `GRWTSK/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.ComplexSourceBudget`](../../../../mathematics/Analysis/ErrorBounds/ComplexSourceBudget.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalKernel`](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget`](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareFiniteSum](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/declarations/squarefinitesum--db8ed0cf0a96988666603885.md) | 49 | `declaration-track:db8ed0cf0a9698866660388529d0d9091cfad359d0b961b337cab7b3ca6d3a3a` |
| 2 | `def` | [squareEnclosureBudget](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/declarations/squareenclosurebudget--fcb10f60d6ac5ec95e4f92c6.md) | 53 | `declaration-track:fcb10f60d6ac5ec95e4f92c68ae20f46126e6c63b10ae717ad6bb54e42e92771` |
| 3 | `theorem` | [squareFiniteSum_enclosure_error](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/declarations/squarefinitesum-enclosure-error--46eea29cee69f47218af5dc0.md) | 58 | `result-track:46eea29cee69f47218af5dc07c5232d3accb85407839188c7cafebf4865edc87` |
| 4 | `theorem` | [squareFiniteSum_evaluation_error](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/declarations/squarefinitesum-evaluation-error--28bea4a323838266d38d8df4.md) | 67 | `result-track:28bea4a323838266d38d8df41dee9e29c1e0244ab7a0cbc4d3dd4d8864893119` |
| 5 | `theorem` | [squareCount_pos_of_source_lower](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/declarations/squarecount-pos-of-source-lower--b9d3bf5f92869824987451df.md) | 84 | `result-track:b9d3bf5f92869824987451dfb311fb34c561768d2f9f53a988049e6fef5328e5` |
| 6 | `theorem` | [squareIncrement_lower_of_enclosures](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/declarations/squareincrement-lower-of-enclosures--691f941f629afb6d8e4cb740.md) | 94 | `result-track:691f941f629afb6d8e4cb7407a3ef701426707dbb6616c7efd318259f254cb6e` |
| 7 | `theorem` | [prime_in_square_of_enclosed_kernel](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/declarations/prime-in-square-of-enclosed-kernel--acdc7cdbd09da40dd5eb9ca8.md) | 114 | `result-track:acdc7cdbd09da40dd5eb9ca8cb08401161ad4f32548bf1c6258c71670167128e` |
| 8 | `theorem` | [squareIncrement_error_of_enclosures](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/declarations/squareincrement-error-of-enclosures--1a739a6b6a391c17dd40def9.md) | 136 | `result-track:1a739a6b6a391c17dd40def942787d606acfecc4332d79435939dd307b713ea5` |
| 9 | `theorem` | [legendre_of_prefix_and_source_lower](../../../../mathematics/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/declarations/legendre-of-prefix-and-source-lower--65ef2296daef0cb60257ab17.md) | 156 | `result-track:65ef2296daef0cb60257ab17b52e35cbe2dd86149dcbe61e8390eb1146401496` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
