# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.TruncatedMoebiusCoefficients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b1bf96d4e262adadf4924734d23cc6ac4ef4ad5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b1bf96d4e262adadf4924734d23cc6ac4ef4ad5`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.MoebiusTruncation`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusTruncation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowMoebiusCoefficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/declarations/lowmoebiuscoefficient--54855fe3f73b4dedc3a1303e.md) | 19 | `declaration-track:54855fe3f73b4dedc3a1303e559ef75947fa60e9563a9f46024985f56f87110f` |
| 2 | `def` | [highMoebiusCoefficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/declarations/highmoebiuscoefficient--97fe8ecc7a1aa8bcd00a512a.md) | 23 | `declaration-track:97fe8ecc7a1aa8bcd00a512adabb526f0cb8f63cabe63eaacb0340ef24ae6ac4` |
| 3 | `theorem` | [moebius_low_high_coefficient_return](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/declarations/moebius-low-high-coefficient-return--5d21d65ec988ec70f2076179.md) | 27 | `result-track:5d21d65ec988ec70f2076179504af78f8ac56de5eb2aae85954b03584e5dcd2a` |
| 4 | `theorem` | [high_coefficient_three_thirty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/declarations/high-coefficient-three-thirty--042f6e1c7b279ccf7b802acd.md) | 42 | `result-track:042f6e1c7b279ccf7b802acd7a6c048ac8887485273def46928d365c61fad18f` |
| 5 | `theorem` | [high_coefficient_four_fortynine](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/declarations/high-coefficient-four-fortynine--3ec03a45b1bb890498b83bf1.md) | 46 | `result-track:3ec03a45b1bb890498b83bf12eb42709f4a65cbaf2b9dac9ec8f0c89b0408309` |
| 6 | `theorem` | [low_coefficient_three_thirty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/declarations/low-coefficient-three-thirty--f602afd8bc904712c57f95d9.md) | 50 | `result-track:f602afd8bc904712c57f95d979f499c4771f8c93b41cd6321025b5a2ce08e9d2` |
| 7 | `theorem` | [low_coefficient_four_fortynine](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/declarations/low-coefficient-four-fortynine--b115f6733750cd05977d46e1.md) | 54 | `result-track:b115f6733750cd05977d46e1cf95d6eb7709ef331202accc5841a9d5a3f460f3` |
| 8 | `theorem` | [high_moebius_coefficients_have_both_signs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/declarations/high-moebius-coefficients-have-both-signs--0ef174691b0c2ae0bf3ac766.md) | 57 | `result-track:0ef174691b0c2ae0bf3ac766fe72225ffce49d8613f928c578c3aa41cbdde299` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
