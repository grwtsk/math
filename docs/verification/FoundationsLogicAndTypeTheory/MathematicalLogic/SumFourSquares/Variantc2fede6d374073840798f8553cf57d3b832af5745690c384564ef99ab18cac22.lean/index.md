# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SumFourSquares.Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcfb3a66d7b09739275228c410ce999097002ea3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcfb3a66d7b09739275228c410ce999097002ea3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [euler_four_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/declarations/euler-four-squares--9bc420caf939692a62aa848e.md) | 23 | `result-track:9bc420caf939692a62aa848e7ee8e297e265851f17803e85789d250fe3669fad` |
| 2 | `theorem` | [Nat.euler_four_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/declarations/nat-euler-four-squares--c6a41585ecec255878c55f43.md) | 29 | `result-track:c6a41585ecec255878c55f43117865ff68cc30940ea5fa2e96c162500d723971` |
| 3 | `theorem` | [sq_add_sq_of_two_mul_sq_add_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/declarations/sq-add-sq-of-two-mul-sq-add-sq--4b500af24703caf4c36a98ac.md) | 41 | `result-track:4b500af24703caf4c36a98acca7be315c4cbc5ef9e2e250bf4af6971b3fec83b` |
| 4 | `theorem` | [lt_of_sum_four_squares_eq_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/declarations/lt-of-sum-four-squares-eq-mul--39116b6e2a86b222d137d835.md) | 52 | `result-track:39116b6e2a86b222d137d835897ca90f1e448e23810390eada00f4c9dc3a5702` |
| 5 | `theorem` | [exists_sq_add_sq_add_one_eq_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/declarations/exists-sq-add-sq-add-one-eq-mul--29eec9c940f0f5c011c6e2e6.md) | 57 | `result-track:29eec9c940f0f5c011c6e2e6f50fd934d2128c58c83cfb9f8f4906047cff6430` |
| 6 | `theorem` | [sum_four_squares_of_two_mul_sum_four_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/declarations/sum-four-squares-of-two-mul-sum-four-squares--16859c3c5dc1e4ee6a1ce8bc.md) | 83 | `result-track:16859c3c5dc1e4ee6a1ce8bc9ef7f1aa045cdc6685853bc92f47ef9686a10218` |
| 7 | `theorem` | [Prime.sum_four_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/declarations/prime-sum-four-squares--5995d27fe2a5121bc2630814.md) | 109 | `result-track:5995d27fe2a5121bc263081424e8927586ac67ed03e0e8fed12e3a49e68c4454` |
| 8 | `theorem` | [sum_four_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/declarations/sum-four-squares--25b75f72e9a7a070321daad9.md) | 195 | `result-track:25b75f72e9a7a070321daad9a328e58d1f61af02ac6e0979b90687e270a871f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
