# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorTaylor.Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f81e7dc93c95fe16846b62667aab98679c48a0a2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f81e7dc93c95fe16846b62667aab98679c48a0a2`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorPrimePower` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_negative_remainder](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean/declarations/exp-negative-remainder--bf5b926f694f0211aa9d2a77.md) | 14 | `result-track:bf5b926f694f0211aa9d2a772126679d555a2fa4140e14238231c4b32ec534d1` |
| 2 | `theorem` | [dampedDivisorCoefficient_first_order](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean/declarations/dampeddivisorcoefficient-first-order--395571dfe9d86ae6ea42cc70.md) | 30 | `result-track:395571dfe9d86ae6ea42cc708ab7056b3506c82854b60c178ef1eb54aafce37f` |
| 3 | `theorem` | [dampedDivisorCoefficient_prefix_first_order](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean/declarations/dampeddivisorcoefficient-prefix-first-order--b9a5ebd0c45fd54aaac956c7.md) | 59 | `result-track:b9a5ebd0c45fd54aaac956c7f42c2433bde4e2f89489360ed07912c9e38d604d` |
| 4 | `theorem` | [dampedDivisorCoefficient_real_prefix_first_order](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean/declarations/dampeddivisorcoefficient-real-prefix-first-order--c56c61645b4ecb6b6174885c.md) | 89 | `result-track:c56c61645b4ecb6b6174885ca34299a7929a8d65396db098bdca3e9222774a39` |
| 5 | `theorem` | [arithmeticResidual_prime_prefix_error](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean/declarations/arithmeticresidual-prime-prefix-error--9c3512545bcb99202d52d1ca.md) | 105 | `result-track:9c3512545bcb99202d52d1cab790db1c2f76fea4be81ef006f83c8dc1e4e2729` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
