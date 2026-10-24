# Verification target: GRWTSK.NumberTheory.TruncatedMoebiusSeries.Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ffcc08f55d70580d8cbb58abde2c8de1a93e2f9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ffcc08f55d70580d8cbb58abde2c8de1a93e2f9`.

Source path: `GRWTSK/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.ComplexMoebiusCast`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Linearity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedMoebiusSeries](../../../../mathematics/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean/declarations/closedmoebiusseries--1a9f5d9a4546fdebb5702a6b.md) | 20 | `declaration-track:1a9f5d9a4546fdebb5702a6bf955399ccc8b31b9830616e5a4ed5e129cf4e037` |
| 2 | `def` | [highMoebiusSeries](../../../../mathematics/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean/declarations/highmoebiusseries--906d6c2de5c95c71c2c2943c.md) | 24 | `declaration-track:906d6c2de5c95c71c2c2943c80f9247d6e67ff1f4f75a31dc5f520a69ba8aa35` |
| 3 | `theorem` | [closed_moebius_summable](../../../../mathematics/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean/declarations/closed-moebius-summable--5142bc22326837eb492de652.md) | 28 | `result-track:5142bc22326837eb492de652e8fce8ad1d0d39cf53ee8e7920bfd9f867cacbbc` |
| 4 | `theorem` | [high_moebius_series_initial](../../../../mathematics/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean/declarations/high-moebius-series-initial--ef444f1ac1116ab093f16cf7.md) | 39 | `result-track:ef444f1ac1116ab093f16cf72a6c3f6321126695bdba20d45e9cd7a5e0a50546` |
| 5 | `theorem` | [high_moebius_series_reciprocal](../../../../mathematics/NumberTheory/TruncatedMoebiusSeries/Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22.lean/declarations/high-moebius-series-reciprocal--a4e3cfe84659aaca9c4c7d53.md) | 78 | `result-track:a4e3cfe84659aaca9c4c7d53e0b8fcd967f2464427c96cdc1d5e45c92d122583` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
