# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellTail.Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93a5f119dfcfa8fb440286ae5136717fb856a5ee",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93a5f119dfcfa8fb440286ae5136717fb856a5ee`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean.json)

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
| 1 | `def` | [cellTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean/declarations/celltail--56be05f73f6a1916a0792e63.md) | 22 | `declaration-track:56be05f73f6a1916a0792e63c2f5d8c5a5fe898a8b41cb9f02cb91f4abecc9d4` |
| 2 | `theorem` | [cellTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean/declarations/celltail-summable--76c59437101d7d4f1e43684b.md) | 24 | `result-track:76c59437101d7d4f1e43684be3c225185aee43608f0621a6e67b10e8e4578546` |
| 3 | `theorem` | [cellTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean/declarations/celltail-nonneg--0cb684248aee693a8cf5ad7d.md) | 27 | `result-track:0cb684248aee693a8cf5ad7d805fe0040cfd35185a187364e0d888ebd076306a` |
| 4 | `theorem` | [cellTail_prefix](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean/declarations/celltail-prefix--6437eaaa4cb16bdc53ba527d.md) | 30 | `result-track:6437eaaa4cb16bdc53ba527d8c468d2b4934370b684e887cb3eed9aec4d63509` |
| 5 | `theorem` | [cellTail_exact](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean/declarations/celltail-exact--1be05c982cf199eff974b7f3.md) | 35 | `result-track:1be05c982cf199eff974b7f3661d2b541debbdc63b3d0a88cfeb7f4c9bc949e3` |
| 6 | `theorem` | [harmonic_error_upper](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean/declarations/harmonic-error-upper--2441ec4e79faf544728e3729.md) | 42 | `result-track:2441ec4e79faf544728e3729114a9574e3deebe843160720db1e386af4164e52` |
| 7 | `theorem` | [cellTail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean/declarations/celltail-le--c0c09b13afce280b56fbadd3.md) | 53 | `result-track:c0c09b13afce280b56fbadd320db8c5708f776158a63bf01c1e01335ac1dce1f` |
| 8 | `theorem` | [cellTail_enclosure](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant966bccd8db0d47963ab2b45aca23608ed4a7c28aec9fe2a366ccdcc69a322172.lean/declarations/celltail-enclosure--61e5706b9c8ec2151c25f1ef.md) | 63 | `result-track:61e5706b9c8ec2151c25f1ef96ba197d890de7971ae0a9ca092d3f465051cbf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
