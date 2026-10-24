# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SumFourSquares.Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49873e512556cbd7faa9cde8fc26823e994d9ed5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49873e512556cbd7faa9cde8fc26823e994d9ed5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Identities` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Parity` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/declarations/macro-rules--edaaa150d9523e93ef3d2f07.md) | 38 | `declaration-track:edaaa150d9523e93ef3d2f0703bd1ea7322fe8224c9f66f74474b823b6cf8b64` |
| 2 | `theorem` | [euler_four_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/declarations/euler-four-squares--dcb372132348842e6b254d68.md) | 41 | `result-track:dcb372132348842e6b254d689d6d9ccf4b1738bd1177777d3e77ac0e6dd29818` |
| 3 | `theorem` | [Nat.euler_four_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/declarations/nat-euler-four-squares--dda0ad81b6730f79d93397fc.md) | 47 | `result-track:dda0ad81b6730f79d93397fc50393d3baeb6d8c855cc129f4c12ba971075f80d` |
| 4 | `theorem` | [sq_add_sq_of_two_mul_sq_add_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/declarations/sq-add-sq-of-two-mul-sq-add-sq--568a00cbcaaef98b2a558256.md) | 59 | `result-track:568a00cbcaaef98b2a55825684f3f9a5653863f98dd12b18a04ef4763765909b` |
| 5 | `theorem` | [lt_of_sum_four_squares_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/declarations/lt-of-sum-four-squares-eq-mul--00a5c14c19098315fd3bd476.md) | 75 | `result-track:00a5c14c19098315fd3bd476a589b72ed62e05b44bd7e88865fdca9417b95f6f` |
| 6 | `theorem` | [exists_sq_add_sq_add_one_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/declarations/exists-sq-add-sq-add-one-eq-mul--dad3ffb4074ee6b23626b386.md) | 89 | `result-track:dad3ffb4074ee6b23626b386c67e430434e3a94711032d63de4202057cb21973` |
| 7 | `theorem` | [exists_sq_add_sq_add_one_eq_k](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/declarations/exists-sq-add-sq-add-one-eq-k--12b335ea085ca077bbb6648f.md) | 111 | `result-track:12b335ea085ca077bbb6648ffdc87e4cee1209c587a0054e2e70a99f22bcf499` |
| 8 | `theorem` | [sum_four_squares_of_two_mul_sum_four_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/declarations/sum-four-squares-of-two-mul-sum-four-squares--637fd6727c2c93dfe16ddc62.md) | 125 | `result-track:637fd6727c2c93dfe16ddc62d728a11b9c59af17881a5c292382c5aa98da0de4` |
| 9 | `theorem` | [Prime.sum_four_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/declarations/prime-sum-four-squares--a4a311a636556e2340a37ff0.md) | 151 | `result-track:a4a311a636556e2340a37ff0a81108c332efd6e216faaf85fc5bf9d3885afb89` |
| 10 | `theorem` | [sum_four_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/declarations/sum-four-squares--b2bfb49bfb5f3868cdd2dd5f.md) | 234 | `result-track:b2bfb49bfb5f3868cdd2dd5ff42f48deb803d83745d2e64304fb2aabd7e2eb29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
