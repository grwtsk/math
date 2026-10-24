# Verification target: GRWTSK.Algebra.LinearAlgebra.Complex.Variant86187aa007c8ced8aced753fb9bceec8b88b7aa77c30f21e50d37e4525b122cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e47ca4cebbf1cf56839506e36b9124dc08c4c79",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Complex/Variant86187aa007c8ced8aced753fb9bceec8b88b7aa77c30f21e50d37e4525b122cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant86187aa007c8ced8aced753fb9bceec8b88b7aa77c30f21e50d37e4525b122cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant86187aa007c8ced8aced753fb9bceec8b88b7aa77c30f21e50d37e4525b122cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e47ca4cebbf1cf56839506e36b9124dc08c4c79`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Complex/Variant86187aa007c8ced8aced753fb9bceec8b88b7aa77c30f21e50d37e4525b122cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Complex/Variant86187aa007c8ced8aced753fb9bceec8b88b7aa77c30f21e50d37e4525b122cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isometryEquivSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant86187aa007c8ced8aced753fb9bceec8b88b7aa77c30f21e50d37e4525b122cf.lean/declarations/isometryequivsumsquares--b0726beb2845fc1148cd5781.md) | 38 | `declaration-track:b0726beb2845fc1148cd578116c3641eaf5717318b08af0e48ad1704fdbd4efd` |
| 2 | `def` | [isometryEquivSumSquaresUnits](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant86187aa007c8ced8aced753fb9bceec8b88b7aa77c30f21e50d37e4525b122cf.lean/declarations/isometryequivsumsquaresunits--33b1e97f5859a164811df402.md) | 75 | `declaration-track:33b1e97f5859a164811df4029b1d7a33f65e64d5e4d37a65004ffa59ee15d97e` |
| 3 | `theorem` | [equivalent_sum_squares](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant86187aa007c8ced8aced753fb9bceec8b88b7aa77c30f21e50d37e4525b122cf.lean/declarations/equivalent-sum-squares--8d87021020554660ab44897f.md) | 82 | `result-track:8d87021020554660ab44897f1970d03cbf2bc463e500354d6a3927af5fccae12` |
| 4 | `theorem` | [complex_equivalent](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant86187aa007c8ced8aced753fb9bceec8b88b7aa77c30f21e50d37e4525b122cf.lean/declarations/complex-equivalent--94e33f63b5bcc87a30658254.md) | 90 | `result-track:94e33f63b5bcc87a306582544ae98e11353184d83d694fa77d49120a3d246243` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
