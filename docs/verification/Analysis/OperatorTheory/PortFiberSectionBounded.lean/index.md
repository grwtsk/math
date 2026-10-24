# Verification target: GRWTSK.Interfaces.PortFiberSectionBounded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71edc19bb2ed0eb44329f378f21587feb21fc061",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberSectionBounded.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71edc19bb2ed0eb44329f378f21587feb21fc061`.

Source path: `GRWTSK/Interfaces/PortFiberSectionBounded.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberSectionBounded.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberSectionCompletion`](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/schemaversion--2528f46db7694590c4fb2e8f.md) | 29 | `declaration-track:2528f46db7694590c4fb2e8f6f18d930e8659423f5b1cbd6ea50a097c83029a9` |
| 2 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/addedindex--21181809e46e2f9be2291e82.md) | 31 | `declaration-track:21181809e46e2f9be2291e82c5f5fa75fad56c4da240723e815a0582c2c76a7c` |
| 3 | `def` | [AddedClaim](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/addedclaim--3326ffb7e520928dd8989d3f.md) | 42 | `declaration-track:3326ffb7e520928dd8989d3f0e319ea2a3a55e802791e5290f37d27922836ebc` |
| 4 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/addedclaim-proof--9326fba62deb1b07f2874dfa.md) | 120 | `result-track:9326fba62deb1b07f2874dfad6d8b980cbeaa09744dfb120108845ab17ef45f8` |
| 5 | `def` | [portfolio](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/portfolio--aadb6d3277f704d3fb3be5dc.md) | 152 | `declaration-track:aadb6d3277f704d3fb3be5dcc6afbdee21443421c5bd407b08c7644241a2b305` |
| 6 | `def` | [architecture](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/architecture--ee0c9653e4b1f33e4583d112.md) | 155 | `declaration-track:ee0c9653e4b1f33e4583d112038fe7f1d4d6093e8d5223f56ce3d81b761d6f14` |
| 7 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/previousindex--7e9fe93f593c7d222751a571.md) | 159 | `declaration-track:7e9fe93f593c7d222751a571572803d9e2e2dc4be0ced9946a0d48fd1044b424` |
| 8 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/original-branch-unchanged--22b8652bc7afa2be8a505ab6.md) | 163 | `result-track:22b8652bc7afa2be8a505ab6bca3ca594aead943bbc3c94fb60ce0b38a274ecd` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/new-branch-proved--1f295df6c31942839c3fe63a.md) | 169 | `result-track:1f295df6c31942839c3fe63a9d2364dd8a6c5414c1925e55689f2bafbe5d6b72` |
| 10 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/target-unchanged--b214c9ff871ec36b50dc8759.md) | 174 | `result-track:b214c9ff871ec36b50dc8759cb25fefb11f4d94652f5847ecf6a2b16a6324d74` |
| 11 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/declarations/retarget-preserves-new--1f5fd38c6e53f32ca79fa833.md) | 179 | `result-track:1f5fd38c6e53f32ca79fa833d9e8c9e1acbc39a8eef4538237bd90c5452e1c7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
