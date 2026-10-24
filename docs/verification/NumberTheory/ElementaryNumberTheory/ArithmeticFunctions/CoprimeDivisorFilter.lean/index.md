# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.CoprimeDivisorFilter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ffede07ac1caac92fff72e53dcbfcac9552009f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ffede07ac1caac92fff72e53dcbfcac9552009f`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_moebius_divisors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/declarations/sum-moebius-divisors--b4059dc76d4e6f64f6d31615.md) | 25 | `result-track:b4059dc76d4e6f64f6d31615cacca77152c6d47ea232bfa8c4f013596cb2f33e` |
| 2 | `theorem` | [sum_moebius_gcd_divisors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/declarations/sum-moebius-gcd-divisors--204727254059e03256acd32f.md) | 35 | `result-track:204727254059e03256acd32f6a82e060ac0568f94cfbae7319ab6f68c478859e` |
| 3 | `theorem` | [gcd_divisors_eq_filter_Icc](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/declarations/gcd-divisors-eq-filter-icc--cdabd956b9e84ff34725b1a4.md) | 43 | `result-track:cdabd956b9e84ff34725b1a4b7bef72022bf2747e9d6a884b7f229401f435fcd` |
| 4 | `theorem` | [sum_moebius_common_divisors_Icc](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/declarations/sum-moebius-common-divisors-icc--32d7e2343d1b3ea6310c0b3e.md) | 60 | `result-track:32d7e2343d1b3ea6310c0b3ea64edb69eb7e6c4a339aa86e6e25b10026dcadf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
