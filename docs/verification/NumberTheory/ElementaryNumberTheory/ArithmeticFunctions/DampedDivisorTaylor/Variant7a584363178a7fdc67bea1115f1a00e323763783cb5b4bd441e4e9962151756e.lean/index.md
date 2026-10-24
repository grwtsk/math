# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorTaylor.Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9725180b7b095218f1b503b2d6248d53fa50ee57",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9725180b7b095218f1b503b2d6248d53fa50ee57`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorPrimePower` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_negative_remainder](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/declarations/exp-negative-remainder--8ee1ba45e99f06be78050294.md) | 22 | `result-track:8ee1ba45e99f06be78050294e8227836459896740bc6e1e358277d4b408ca37d` |
| 2 | `theorem` | [dampedDivisorCoefficient_first_order](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/declarations/dampeddivisorcoefficient-first-order--c0263fdeb63b506ebc2e6c9a.md) | 38 | `result-track:c0263fdeb63b506ebc2e6c9afaa609259db2307ccbcaf441bbc55b0f223e1564` |
| 3 | `theorem` | [dampedDivisorCoefficient_prefix_first_order](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/declarations/dampeddivisorcoefficient-prefix-first-order--78e2e6c99a8ab0b642053cff.md) | 67 | `result-track:78e2e6c99a8ab0b642053cfffe6d97f448cf50ab4bd0ac9bee04926c9dbe6c4d` |
| 4 | `theorem` | [dampedDivisorCoefficient_real_prefix_first_order](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/declarations/dampeddivisorcoefficient-real-prefix-first-order--932e94554a0da17aa26947a1.md) | 97 | `result-track:932e94554a0da17aa26947a136473e32436cb80b06cb7c1723722cfd9cc7d69e` |
| 5 | `theorem` | [arithmeticResidual_prime_prefix_error](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/declarations/arithmeticresidual-prime-prefix-error--a44c73244d99b48887c2f489.md) | 113 | `result-track:a44c73244d99b48887c2f48921011965fd9c5c1ac89c624c4cf13b64c9179690` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
