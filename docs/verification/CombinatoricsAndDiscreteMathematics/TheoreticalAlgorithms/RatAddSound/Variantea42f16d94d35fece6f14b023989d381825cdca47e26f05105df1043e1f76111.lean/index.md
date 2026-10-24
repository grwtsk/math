# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RatAddSound.Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38b719eb9cd21611662027394368a5f88b6d088b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38b719eb9cd21611662027394368a5f88b6d088b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Range` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_of_necessary_assignment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/mem-of-necessary-assignment--57aefe941df0bc88c8619b5b.md) | 31 | `result-track:57aefe941df0bc88c8619b5bc65a2a0dc410f5cb51304e9548b0badf748cfc23` |
| 2 | `theorem` | [entails_of_irrelevant_assignment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/entails-of-irrelevant-assignment--9fac2b0f7e5c30ffc57adf86.md) | 50 | `result-track:9fac2b0f7e5c30ffc57adf86393bb7874fff07455015184c68b631ae36a4c6e4` |
| 3 | `theorem` | [assignmentsInvariant_insertRatUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/assignmentsinvariant-insertratunits--ecfbbc5ab71b101b3d22ac72.md) | 69 | `result-track:ecfbbc5ab71b101b3d22ac727ff2f41b0c801084bc584123a57c4f60539fc3b4` |
| 4 | `theorem` | [sat_of_confirmRupHint_of_insertRat_fold](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/sat-of-confirmruphint-of-insertrat-fold--ea158144a7ddd62746a9c688.md) | 186 | `result-track:ea158144a7ddd62746a9c688a9a2ea8a2f3d87bde05f0f80e929bbb1f9314dbd` |
| 5 | `theorem` | [sat_of_insertRat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/sat-of-insertrat--552a9b8fe7608c1f8d0e1056.md) | 242 | `result-track:552a9b8fe7608c1f8d0e1056c82487f9be880f93b8a9277f26356d768741f7aa` |
| 6 | `theorem` | [safe_insert_of_performRupCheck_insertRat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/safe-insert-of-performrupcheck-insertrat--99a7ef4dd420a5a37dc74fce.md) | 339 | `result-track:99a7ef4dd420a5a37dc74fce012476e3dfe8511086dc7b435bdac2dbf467a3ad` |
| 7 | `theorem` | [assignmentsInvariant_performRupCheck_of_assignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/assignmentsinvariant-performrupcheck-of-assignmentsinvariant--f8f1184b409668ed2f7c6fca.md) | 355 | `result-track:f8f1184b409668ed2f7c6fcaf5a31e7332e79ad07174275628cde4e616e0c91c` |
| 8 | `theorem` | [c_without_negPivot_of_performRatCheck_success](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/c-without-negpivot-of-performratcheck-success--41deafee481bac2f563ca45e.md) | 386 | `result-track:41deafee481bac2f563ca45e1a045c865655a29a495df771b4a3f89e80d22922` |
| 9 | `theorem` | [existsRatHint_of_ratHintsExhaustive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/existsrathint-of-rathintsexhaustive--52372e28f28d94f6c6cb00b9.md) | 405 | `result-track:52372e28f28d94f6c6cb00b946dcff037de9787c8db9b768e45edcf1c2795329` |
| 10 | `theorem` | [performRatCheck_success_of_performRatCheck_fold_success](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/performratcheck-success-of-performratcheck-fold-success--fdeb5cea97619123631ad287.md) | 437 | `result-track:fdeb5cea97619123631ad2874f05183a2dc494a23d1a0285be6eb8fa54740251` |
| 11 | `theorem` | [safe_insert_of_performRatCheck_fold_success](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/safe-insert-of-performratcheck-fold-success--1f98eb51275620e17119198a.md) | 476 | `result-track:1f98eb51275620e17119198a34aa96e5c9d341547c3b0068733f6e80d0288fc2` |
| 12 | `theorem` | [ratAdd_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/declarations/ratadd-sound--c93f87a6704cc7e33c13b800.md) | 578 | `result-track:c93f87a6704cc7e33c13b80031364bc858cec6b4a51733f968d015600e9e3916` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
