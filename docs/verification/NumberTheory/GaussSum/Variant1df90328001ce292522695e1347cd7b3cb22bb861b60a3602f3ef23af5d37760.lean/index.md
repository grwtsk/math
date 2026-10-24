# Verification target: GRWTSK.NumberTheory.GaussSum.Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e562ec12f3b7ee7cae7c24d0b5fda2ca8002bc73",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e562ec12f3b7ee7cae7c24d0b5fda2ca8002bc73`.

Source path: `GRWTSK/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.GaussSum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadraticChar_two](../../../../mathematics/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/declarations/quadraticchar-two--e9f472d01284b5ab1a1276e1.md) | 43 | `result-track:e9f472d01284b5ab1a1276e15725424acc8b9a968d54c873ca854ed7e256d598` |
| 2 | `theorem` | [FiniteField.isSquare_two_iff](../../../../mathematics/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/declarations/finitefield-issquare-two-iff--00066530fb2c1fcb746fd36f.md) | 50 | `result-track:00066530fb2c1fcb746fd36f165b0553389c82d2cf5fc584607e121894f21d87` |
| 3 | `theorem` | [quadraticChar_neg_two](../../../../mathematics/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/declarations/quadraticchar-neg-two--b9787d36dac4f9bafaf6f7ce.md) | 73 | `result-track:b9787d36dac4f9bafaf6f7ce8c5f8af96ea96c74e13e0314de14bdf49cf61d54` |
| 4 | `theorem` | [FiniteField.isSquare_neg_two_iff](../../../../mathematics/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/declarations/finitefield-issquare-neg-two-iff--efbefaf6b84583581fda37e5.md) | 80 | `result-track:efbefaf6b84583581fda37e55a24862b47fbb1e312adafdf1d94c4f5508bc75a` |
| 5 | `theorem` | [quadraticChar_card_card](../../../../mathematics/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/declarations/quadraticchar-card-card--c4c5330f73b73d517bb15fea.md) | 105 | `result-track:c4c5330f73b73d517bb15feac99da1d2230d4ba331c145b57adec3cf2cd10fc6` |
| 6 | `theorem` | [quadraticChar_odd_prime](../../../../mathematics/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/declarations/quadraticchar-odd-prime--ea5eee3cbdf7ae009f4ff3c6.md) | 127 | `result-track:ea5eee3cbdf7ae009f4ff3c622e79a325bfb153009d494683da90f38abdf563c` |
| 7 | `theorem` | [FiniteField.isSquare_odd_prime_iff](../../../../mathematics/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/declarations/finitefield-issquare-odd-prime-iff--639de4912a8b784eefc88bb4.md) | 138 | `result-track:639de4912a8b784eefc88bb4ed2fbe80b355d77bc4e1af2726009511baf51636` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
