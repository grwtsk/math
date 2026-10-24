# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Liouville.Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "518fb60265f48a1df749c0d98cdc741e0d7a1ba6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `518fb60265f48a1df749c0d98cdc741e0d7a1ba6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liouville](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean/declarations/liouville--7ee3c76ea1434ced53743ef6.md) | 35 | `declaration-track:7ee3c76ea1434ced53743ef694d7610c64e66ae0362a7acfa04dbb653fef95b0` |
| 2 | `theorem` | [liouville_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean/declarations/liouville-apply--c0e68b0750e39bdebd08dc38.md) | 39 | `result-track:c0e68b0750e39bdebd08dc38c35646afd7237ac1c6bcb422d166464925190b08` |
| 3 | `theorem` | [liouville_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean/declarations/liouville-ne-zero--fbe2a094d1e202b247b92003.md) | 42 | `result-track:fbe2a094d1e202b247b920035097877b89953c99060a6980819277aa9016fe2c` |
| 4 | `theorem` | [liouville_apply_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean/declarations/liouville-apply-one--d68791418d55fcbda18047a0.md) | 45 | `result-track:d68791418d55fcbda18047a03068c773b54d2df83b74c1702d4dcda240848dd5` |
| 5 | `theorem` | [liouville_apply_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean/declarations/liouville-apply-mul--1cec30bdd06c7516d548a02c.md) | 48 | `result-track:1cec30bdd06c7516d548a02c3b3d017c0cf6bf9a2f33bc64975b408a7c68e822` |
| 6 | `theorem` | [isMultiplicative_liouville](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variantee66fa8bbb9f6bfe824fae33bc8655820578963d5d3223c517510619c2cf4931.lean/declarations/ismultiplicative-liouville--4830172251672591f94f3c28.md) | 55 | `result-track:4830172251672591f94f3c28aa21d21d51d01b984f39606eecea6f2b7597b840` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
