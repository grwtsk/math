# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.AlgebraicCard.Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b88d2f5ba8ed1a81fa88aba2e1fd16d948b4edd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b88d2f5ba8ed1a81fa88aba2e1fd16d948b4edd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Cardinal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_of_charZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/declarations/infinite-of-charzero--3fa87c9f2e0877db47aeebb1.md) | 38 | `result-track:3fa87c9f2e0877db47aeebb1901681083e54371a215d6246f3aa90a113b6bd3c` |
| 2 | `theorem` | [aleph0_le_cardinal_mk_of_charZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/declarations/aleph0-le-cardinal-mk-of-charzero--fcb1615f5fb9a6ca48fb21bc.md) | 43 | `result-track:fcb1615f5fb9a6ca48fb21bc77e403042f16f8bfae00c1d8fac842161d258fd4` |
| 3 | `theorem` | [cardinal_mk_lift_le_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/declarations/cardinal-mk-lift-le-mul--ae68dfd18c1258336069a1a2.md) | 53 | `result-track:ae68dfd18c1258336069a1a27646ec204f4d448d0e5d21835b3514fe1261b544` |
| 4 | `theorem` | [cardinal_mk_lift_le_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/declarations/cardinal-mk-lift-le-max--84cdbbad7ac497dd63610007.md) | 65 | `result-track:84cdbbad7ac497dd636100070daacc573911bac8c3cfb707df1e1a3716748384` |
| 5 | `theorem` | [cardinal_mk_lift_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/declarations/cardinal-mk-lift-of-infinite--28a8d5885eb24957c42a50e4.md) | 72 | `result-track:28a8d5885eb24957c42a50e4088e5dbafdf05dc999ad57107637b5a016462d07` |
| 6 | `theorem` | [countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/declarations/countable--4d6cfc2b7ddfcdcafec26f5c.md) | 82 | `result-track:4d6cfc2b7ddfcdcafec26f5cf2695fea8011c28ee766534ebe8bbcbafd5d5667` |
| 7 | `theorem` | [cardinal_mk_of_countable_of_charZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/declarations/cardinal-mk-of-countable-of-charzero--cc4c25fc5194cfa0c779a0ca.md) | 89 | `result-track:cc4c25fc5194cfa0c779a0cabc4881bc0dc80a07936a71f8f143cb00710de2f5` |
| 8 | `theorem` | [cardinal_mk_le_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/declarations/cardinal-mk-le-mul--4617cbc723313cc306bcc7c7.md) | 101 | `result-track:4617cbc723313cc306bcc7c7578fde2500787ea22e41bd69d5d9d19677806451` |
| 9 | `theorem` | [cardinal_mk_le_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/declarations/cardinal-mk-le-max--103502aaf65360077ebdb492.md) | 106 | `result-track:103502aaf65360077ebdb492d2018fdde479adffa39dfcb78d1c9d6297f17bb8` |
| 10 | `theorem` | [cardinal_mk_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/declarations/cardinal-mk-of-infinite--eb39910fbca99e1b735f384c.md) | 112 | `result-track:eb39910fbca99e1b735f384cc5ce4f7158ee46180c7c0cd32563b0646b99255d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
