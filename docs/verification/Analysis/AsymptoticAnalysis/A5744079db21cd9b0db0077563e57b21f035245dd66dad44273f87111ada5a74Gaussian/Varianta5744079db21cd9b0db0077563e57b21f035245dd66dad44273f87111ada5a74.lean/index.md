# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian.Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4016104ee90843c5c9cfcebc5e615134c6a50a13",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4016104ee90843c5c9cfcebc5e615134c6a50a13`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianMode](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussianmode--d8a31ef9f982aae71e60402d.md) | 8 | `declaration-track:d8a31ef9f982aae71e60402d1ed3b6118ae512cb43f478fa67f4ea25acbbda6c` |
| 2 | `theorem` | [exp_three_gt_sixteen](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/exp-three-gt-sixteen--574d5baa2fee30e072b2bb3d.md) | 11 | `result-track:574d5baa2fee30e072b2bb3d5fc347b394ef74eddfdd9201c282ce4de020b00b` |
| 3 | `theorem` | [gaussian_zero_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussian-zero-lt--6ff2d63387cb3c99aa188bb3.md) | 16 | `result-track:6ff2d63387cb3c99aa188bb35f826ea6cbdeb6879d94b090d2985ae32cf57b0f` |
| 4 | `theorem` | [gaussian_ratio_small](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussian-ratio-small--39677c65ea33c2c2855d296a.md) | 27 | `result-track:39677c65ea33c2c2855d296a66d6c628cfedea273d772f7fdc3534780a73316f` |
| 5 | `theorem` | [gaussian_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussian-succ-le--54186c152ce5f976a9ce72ac.md) | 38 | `result-track:54186c152ce5f976a9ce72ace3ccb501da7baa236aca260455f2e1e59c3e152a` |
| 6 | `theorem` | [gaussian_geometric_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussian-geometric-le--df12885147d08923c7ac0d02.md) | 60 | `result-track:df12885147d08923c7ac0d020fd9c1f9f6892eaaa21790ae3ee7250a7f38bcc5` |
| 7 | `theorem` | [gaussian_three_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussian-three-summable--7217095f438ea61fbd4ce38c.md) | 71 | `result-track:7217095f438ea61fbd4ce38c206de6b260dabc92ab5b9aa8daeb145f746e7abb` |
| 8 | `theorem` | [gaussian_three_tsum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussian-three-tsum-lt--60d25cb7b1d231549ff7fe93.md) | 79 | `result-track:60d25cb7b1d231549ff7fe93eaf2541cb27bd2e520a9357dc95a9eb52c84b01a` |
| 9 | `theorem` | [gaussian_le_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussian-le-three--613754fd0ba81dab3b579ef0.md) | 88 | `result-track:613754fd0ba81dab3b579ef0a16e9b683fb71ce49027e19f7ae0ea9077ccd28d` |
| 10 | `theorem` | [gaussian_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussian-summable--b1ce86766a29d70058f320f8.md) | 97 | `result-track:b1ce86766a29d70058f320f8861fb01bf8e5ba0b2bd976aa3165efbd3ec79cd0` |
| 11 | `theorem` | [gaussian_mul_le_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussian-mul-le-three--20dbcee428ebbfade09908a4.md) | 101 | `result-track:20dbcee428ebbfade09908a4d7bbcb3106eee3b6bd1a38871da7896394c0c4b1` |
| 12 | `theorem` | [gaussian_tail_sum_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/declarations/gaussian-tail-sum-bound--5efdd54c3fec2bcb1c2eda1d.md) | 119 | `result-track:5efdd54c3fec2bcb1c2eda1db401d7a653647790b2475dafa98029e7d76b87fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
