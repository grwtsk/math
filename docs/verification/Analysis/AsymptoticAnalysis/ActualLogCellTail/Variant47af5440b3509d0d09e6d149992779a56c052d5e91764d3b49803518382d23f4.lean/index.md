# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellTail.Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3245184956f5293ca79f2b79112b3a7ac39dfb2d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3245184956f5293ca79f2b79112b3a7ac39dfb2d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/declarations/celltail--2034cef57b16220bfcccb1c4.md) | 14 | `declaration-track:2034cef57b16220bfcccb1c4e27bb6bc0fa0ff4b9e3df357e5e258416137b366` |
| 2 | `theorem` | [cellTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/declarations/celltail-summable--9d21159c9495d1fdcdbe7af1.md) | 16 | `result-track:9d21159c9495d1fdcdbe7af1e5375408b2303f51c6429a5fd18ea4a8c188631f` |
| 3 | `theorem` | [cellTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/declarations/celltail-nonneg--b33fd5f33e544827fb44fd68.md) | 19 | `result-track:b33fd5f33e544827fb44fd68da40a32d024ed15642e26e17f0a19c3c7d178a66` |
| 4 | `theorem` | [cellTail_prefix](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/declarations/celltail-prefix--8d004d99a09b596f3e88cda5.md) | 22 | `result-track:8d004d99a09b596f3e88cda57b57f6b00589f74eaba3cd971892b8ab8fd2969e` |
| 5 | `theorem` | [cellTail_exact](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/declarations/celltail-exact--bf084ca7db12457768be1aa2.md) | 27 | `result-track:bf084ca7db12457768be1aa2b31bfbfdc95d3086f03e956e9c7736f5587165bd` |
| 6 | `theorem` | [harmonic_error_upper](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/declarations/harmonic-error-upper--34f532f01bd70b6de27491d3.md) | 34 | `result-track:34f532f01bd70b6de27491d354d80d4b464cbed509a8da2c0acdde08ede5b1a4` |
| 7 | `theorem` | [cellTail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/declarations/celltail-le--6890d5540fe6ac98a10f7d47.md) | 45 | `result-track:6890d5540fe6ac98a10f7d47b298d7a849dd377a03b789ae057e5b7b81c391bf` |
| 8 | `theorem` | [cellTail_enclosure](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/declarations/celltail-enclosure--7a1ac7b555dade1e61d7a273.md) | 55 | `result-track:7a1ac7b555dade1e61d7a2737bc0f4ca73f492f792459b0a713c5898a9d11ef2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
