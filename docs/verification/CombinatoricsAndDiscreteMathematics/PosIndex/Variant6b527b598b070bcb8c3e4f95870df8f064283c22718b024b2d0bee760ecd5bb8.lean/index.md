# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PosIndex.Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69b4f5feca34fa33e5a689320390f72b87d984b5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69b4f5feca34fa33e5a689320390f72b87d984b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/posindex--4d36680474a9acb8c0810f14.md) | 49 | `declaration-track:4d36680474a9acb8c0810f149c5bbe78dc3cdd572b92a28d738d45e1693e487c` |
| 2 | `def` | [negIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/negindex--7aacfa242ff11110f452bd45.md) | 53 | `declaration-track:7aacfa242ff11110f452bd45f43cce0b5030ceb1d17957165e3fc7023bf89766` |
| 3 | `def` | [posIndexAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/posindexabove--ce090d6bf26dc94e003fb984.md) | 58 | `declaration-track:ce090d6bf26dc94e003fb9841fb39ebf8ebe7ce4543500968555a60ca675a641` |
| 4 | `lemma` | [posIndex_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/posindex-le-card--4790a7c8b6aac55ef638d925.md) | 61 | `result-track:4790a7c8b6aac55ef638d9250179a59899e7771920808afedb0cc3b2736b747a` |
| 5 | `lemma` | [posIndex_eq_rank_of_posSemidef](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/posindex-eq-rank-of-possemidef--65b446b9c54c74bf803eeea0.md) | 67 | `result-track:65b446b9c54c74bf803eeea065bc3d6082d6666a7dd345ba42628a74d62d1170` |
| 6 | `def` | [rtrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/rtrace--6822f0dc56aefde02a5d592d.md) | 78 | `declaration-track:6822f0dc56aefde02a5d592d74d1507dc6965a0de577991d6b999759cdb97aa1` |
| 7 | `def` | [frobSq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/frobsq--33239f45a8558eefcd4322a4.md) | 81 | `declaration-track:33239f45a8558eefcd4322a485d31955a35345293a788353cedb8e0cc05a6cd1` |
| 8 | `lemma` | [rtrace_eq_sum_eigenvalues](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/rtrace-eq-sum-eigenvalues--e26f0d8693f8a88b7baf23a8.md) | 83 | `result-track:e26f0d8693f8a88b7baf23a8c264b8ec55a57c6876adb7afb751a0c8e4a143b1` |
| 9 | `def` | [eigEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/eigequiv--87012ce9ddca88899cbdb03b.md) | 95 | `declaration-track:87012ce9ddca88899cbdb03bb60f905af5318c2c3b3eb1f82249eb975ffdfac2` |
| 10 | `lemma` | [eigenvalues_eigEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/eigenvalues-eigequiv--fe874c7a8fe026762fe4ab15.md) | 98 | `result-track:fe874c7a8fe026762fe4ab15b89d7b6b16840702957b183f82e1c8e60b496dc7` |
| 11 | `lemma` | [sum_eigenvalues_reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/sum-eigenvalues-reindex--502eefefce1e0ebe930d0f33.md) | 104 | `result-track:502eefefce1e0ebe930d0f33d0f809c9bb9a5143c19a8226534b74b6ae426177` |
| 12 | `lemma` | [card_eigenvalues_reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/card-eigenvalues-reindex--b6ceed796522fff588d44787.md) | 109 | `result-track:b6ceed796522fff588d44787bb389f33dba9b294bc6bddd3f3dd3672b66f8df2` |
| 13 | `lemma` | [frobSq_hermitian_eq_sum_sq_eigenvalues](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/declarations/frobsq-hermitian-eq-sum-sq-eigenvalues--f609d6326479a77d36945508.md) | 125 | `result-track:f609d6326479a77d369455085952ceeedf9ee52b5ac7b0b5807fbc7bffba52c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
