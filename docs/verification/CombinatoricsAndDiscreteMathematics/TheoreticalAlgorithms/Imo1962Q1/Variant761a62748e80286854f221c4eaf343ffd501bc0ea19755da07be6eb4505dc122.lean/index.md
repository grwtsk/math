# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Imo1962Q1.Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2dbca393a996725d763da1383081560ab49a959",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2dbca393a996725d763da1383081560ab49a959`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Digits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProblemPredicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/problempredicate--0dba5393cc3de29c3465a218.md) | 36 | `declaration-track:0dba5393cc3de29c3465a218555d7b5cfbeb22d106c2506f39a54fce006db35c` |
| 2 | `abbrev` | [ProblemPredicate'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/problempredicate--d127ba1c7735c411db2ce538.md) | 43 | `declaration-track:d127ba1c7735c411db2ce5384e8544bbeea34fd9aa700795b87527d82899a3ff` |
| 3 | `lemma` | [without_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/without-digits--42fc60b45e64bad1e6da0f8a.md) | 46 | `result-track:42fc60b45e64bad1e6da0f8a2721757b830332989f9fee82ff41536c8424ddcc` |
| 4 | `lemma` | [case_0_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/case-0-digits--54306316d2b832cee22c6fa9.md) | 61 | `result-track:54306316d2b832cee22c6fa9a90c7fb548bdd703305d2b4e52159e2e0aa3c403` |
| 5 | `lemma` | [case_1_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/case-1-digits--b6ee4cb8d5939fbd4a4ed6e4.md) | 66 | `result-track:b6ee4cb8d5939fbd4a4ed6e457dab82bf2b09222f69672a86ae9f5119557bf7e` |
| 6 | `lemma` | [case_2_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/case-2-digits--fce66e583afcb277757ab8fe.md) | 71 | `result-track:fce66e583afcb277757ab8fe128b16bb22a096d9b3ce22db13d36a5ba603299b` |
| 7 | `lemma` | [case_3_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/case-3-digits--e337cd8ef72064dc8e6ba55c.md) | 76 | `result-track:e337cd8ef72064dc8e6ba55c419806f50be6d5dda92c30eb28474bc336e3ac38` |
| 8 | `lemma` | [case_4_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/case-4-digits--322019bddf19b96770e8993e.md) | 81 | `result-track:322019bddf19b96770e8993e27b57fb8a1eb1089092d9da8cb3a01b375d1ae8f` |
| 9 | `lemma` | [helper_5_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/helper-5-digits--71478dd0af4ece9fbf24aa4a.md) | 87 | `result-track:71478dd0af4ece9fbf24aa4aa68e310197dd6c010180c8c6a5018af41d259489` |
| 10 | `lemma` | [case_5_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/case-5-digits--371d7911cb933a16b0ffb215.md) | 90 | `result-track:371d7911cb933a16b0ffb21500d7ef6d7629d7289712340879d01dc1789ff973` |
| 11 | `lemma` | [case_more_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/case-more-digits--d7a0c29b8d4bd59993a318fd.md) | 100 | `result-track:d7a0c29b8d4bd59993a318fd1c0d8861c10249c4b23f433ffed98247c0333762` |
| 12 | `lemma` | [satisfied_by_153846](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/satisfied-by-153846--84f1be1b212b328573416d9b.md) | 116 | `result-track:84f1be1b212b328573416d9bd4bc03ecb39e55ca6b30896c0c237a792203e293` |
| 13 | `lemma` | [no_smaller_solutions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/no-smaller-solutions--4dbb108ab6fd0c29cb2c3e69.md) | 120 | `result-track:4dbb108ab6fd0c29cb2c3e698889016c561ae105ba89e5ff2b4db38b2286474e` |
| 14 | `theorem` | [imo1962_q1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant761a62748e80286854f221c4eaf343ffd501bc0ea19755da07be6eb4505dc122.lean/declarations/imo1962-q1--9adbbc1487d2b7a98d3949e1.md) | 137 | `result-track:9adbbc1487d2b7a98d3949e17a1cd62b58592048a25a22d2bd972121268dc81f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
