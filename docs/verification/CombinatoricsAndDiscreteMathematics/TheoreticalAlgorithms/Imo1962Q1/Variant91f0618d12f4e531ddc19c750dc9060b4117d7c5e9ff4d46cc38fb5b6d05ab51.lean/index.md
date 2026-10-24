# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Imo1962Q1.Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5222d280a93717b0f7340f50c3261afb25262f58",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5222d280a93717b0f7340f50c3261afb25262f58`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Digits` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProblemPredicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/problempredicate--698f92e38415d65996ef62cc.md) | 28 | `declaration-track:698f92e38415d65996ef62cc9f35ceb32de0c09ee83cdcf931507c9f5d08ffb6` |
| 2 | `abbrev` | [ProblemPredicate'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/problempredicate--974914cec5266ebfd48674a1.md) | 35 | `declaration-track:974914cec5266ebfd48674a12fc47ffc092c22f32b201e977a416c0f83221f0e` |
| 3 | `lemma` | [without_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/without-digits--6252b17e1d31dd24217d1f00.md) | 38 | `result-track:6252b17e1d31dd24217d1f0055440028f3ba4fda568102e2959b76117662c741` |
| 4 | `lemma` | [case_0_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/case-0-digits--806c0f916b1e1f87d872809e.md) | 53 | `result-track:806c0f916b1e1f87d872809e2751f827539b20c2647ec276430343f7660d8df7` |
| 5 | `lemma` | [case_1_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/case-1-digits--f9307add03856e931fe1dc23.md) | 58 | `result-track:f9307add03856e931fe1dc238115afe2a7b4369cb5686686c03aacdc4a72be73` |
| 6 | `lemma` | [case_2_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/case-2-digits--2a879b4929a79be77ff857e3.md) | 63 | `result-track:2a879b4929a79be77ff857e3ba681e8022badbc9f180808682ea2a04490209d4` |
| 7 | `lemma` | [case_3_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/case-3-digits--ce855df8ebdf66443c04ce38.md) | 68 | `result-track:ce855df8ebdf66443c04ce38204396d1b03465cd0c4ccacfdb033ce600f17a1d` |
| 8 | `lemma` | [case_4_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/case-4-digits--c166ebba88902734f3078c97.md) | 73 | `result-track:c166ebba88902734f3078c97c8327dd239c909afddb962ee6c1e11b72097b512` |
| 9 | `lemma` | [helper_5_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/helper-5-digits--96d8288a3dd181991d55e1b6.md) | 79 | `result-track:96d8288a3dd181991d55e1b64781499fb264aa171e5d1609c0b4ca52547494e9` |
| 10 | `lemma` | [case_5_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/case-5-digits--18d9fd0422c092878ffea59c.md) | 82 | `result-track:18d9fd0422c092878ffea59c7fefd0eb39abbc6580c66bf2f5d7d20e1ff9f236` |
| 11 | `lemma` | [case_more_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/case-more-digits--7f1e9958db288a06c81e911a.md) | 92 | `result-track:7f1e9958db288a06c81e911a4801542f6b2e929607ad5f8a139b9c892e5bfb56` |
| 12 | `lemma` | [satisfied_by_153846](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/satisfied-by-153846--edbce4dda77cbe554c461e98.md) | 108 | `result-track:edbce4dda77cbe554c461e984d6699d5db3b8ba12b386043748bad0971b74ba4` |
| 13 | `lemma` | [no_smaller_solutions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/no-smaller-solutions--c8d44a58fa0777f7d8e4ca22.md) | 112 | `result-track:c8d44a58fa0777f7d8e4ca223610f1ecca6dda97237ac5af22a9332a6e544c67` |
| 14 | `theorem` | [imo1962_q1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/declarations/imo1962-q1--5edf9d58088c3efc970e63e3.md) | 129 | `result-track:5edf9d58088c3efc970e63e33a6baa1895100b1c50804953febfabf9484a2532` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
