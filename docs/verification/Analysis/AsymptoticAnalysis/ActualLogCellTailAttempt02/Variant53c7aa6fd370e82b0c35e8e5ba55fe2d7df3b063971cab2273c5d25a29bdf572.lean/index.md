# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellTailAttempt02.Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c83adbde5d39871338dd4dd7a127afe70f5bc04",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c83adbde5d39871338dd4dd7a127afe70f5bc04`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/declarations/celltail--3b2ef53f516c3c6d1fe417ee.md) | 22 | `declaration-track:3b2ef53f516c3c6d1fe417ee6e7660c5632407fb762eb0eb10edc6ef2fe03b5a` |
| 2 | `theorem` | [cellTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/declarations/celltail-summable--fa6aca321da516c95238acd2.md) | 24 | `result-track:fa6aca321da516c95238acd25e0c7da287e400262a12f00c376283e5b3c38ee5` |
| 3 | `theorem` | [cellTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/declarations/celltail-nonneg--1496faba89cff9a0988332d8.md) | 27 | `result-track:1496faba89cff9a0988332d8fc9819381a6fea25b2595c968ba37c36fe2956eb` |
| 4 | `theorem` | [cellTail_prefix](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/declarations/celltail-prefix--d593f5d7a058b0469ef604a9.md) | 30 | `result-track:d593f5d7a058b0469ef604a99d8bd45b8c98f62af9cc74a5bf24275b793f04c9` |
| 5 | `theorem` | [cellTail_exact](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/declarations/celltail-exact--d3a4bdd8bf0602bc1f3f48aa.md) | 35 | `result-track:d3a4bdd8bf0602bc1f3f48aac3b58242351e1c5f37ff0c684995d8074719f679` |
| 6 | `theorem` | [harmonic_error_upper](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/declarations/harmonic-error-upper--3fe441d7448d57fac962c960.md) | 42 | `result-track:3fe441d7448d57fac962c9608ad688d3b69bd8f4604e3669930f810f43cb9241` |
| 7 | `theorem` | [cellTail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/declarations/celltail-le--3a1344711f567f4714004e01.md) | 53 | `result-track:3a1344711f567f4714004e0160653df2682762fe704d44dcbff2bf3841b6e786` |
| 8 | `theorem` | [cellTail_enclosure](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/declarations/celltail-enclosure--8347cd1145eac9e2e81021ee.md) | 63 | `result-track:8347cd1145eac9e2e81021eeb79e06e39079fa9093b9c9388393e7a6b631071b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
