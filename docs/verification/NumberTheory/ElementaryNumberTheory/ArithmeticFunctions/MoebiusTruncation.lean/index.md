# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.MoebiusTruncation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18dc4fb21cd5fb0bcc6d2beebccc2ac422b4c6ce",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/MoebiusTruncation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusTruncation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusTruncation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18dc4fb21cd5fb0bcc6d2beebccc2ac422b4c6ce`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/MoebiusTruncation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/MoebiusTruncation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedArithmeticCutoff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusTruncation.lean/declarations/closedarithmeticcutoff--b6f9e8adad3d4d66e807093b.md) | 21 | `declaration-track:b6f9e8adad3d4d66e807093ba49675c140ea1795ffe505110e4af77374d9bcef` |
| 2 | `theorem` | [arithmetic_inverse_split](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusTruncation.lean/declarations/arithmetic-inverse-split--a914d736b21ef07f6e6d4eef.md) | 26 | `result-track:a914d736b21ef07f6e6d4eef27fcbb4de111f906e8cb356d0899a648ae6268a3` |
| 3 | `theorem` | [moebius_closed_cutoff_split](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusTruncation.lean/declarations/moebius-closed-cutoff-split--8cf5e14bc6e9d03590f55f6f.md) | 42 | `result-track:8cf5e14bc6e9d03590f55f6f8b281595f6f8b9f15a0efbbbb1483d0c606f07e5` |
| 4 | `theorem` | [moebius_above_cutoff_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusTruncation.lean/declarations/moebius-above-cutoff-zero--a7a59506155eb034f47da8b9.md) | 51 | `result-track:a7a59506155eb034f47da8b91eb6e17880c9530a1a9e0af678f50fccb3c0b079` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
