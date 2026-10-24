# Verification target: GRWTSK.Interfaces.PortFiberSectionMultiplier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8648c218d103f7ed154f2bed81a752b05015ec9e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberSectionMultiplier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8648c218d103f7ed154f2bed81a752b05015ec9e`.

Source path: `GRWTSK/Interfaces/PortFiberSectionMultiplier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberSectionMultiplier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberSectionBounded`](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionBounded.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/schemaversion--81f57c49f0ce4cf94ed9e6e8.md) | 31 | `declaration-track:81f57c49f0ce4cf94ed9e6e829d8650f7cb93cf4f431fe20098c080b0db27de0` |
| 2 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/addedindex--4fcf1c1830596e724c054934.md) | 33 | `declaration-track:4fcf1c1830596e724c0549343f8d6a50d8e388cbf0ce5d44b1c213c63e88139e` |
| 3 | `def` | [AddedClaim](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/addedclaim--5eaac98942293083aacbdd0a.md) | 44 | `declaration-track:5eaac98942293083aacbdd0ab7ef18bf4a3abec051eb15f92d2559e53a3a8776` |
| 4 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/addedclaim-proof--a5a14c759760647431b34a3a.md) | 102 | `result-track:a5a14c759760647431b34a3a3d2d42fc0095c0d57d5a245ed1df83d33c58baa1` |
| 5 | `def` | [portfolio](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/portfolio--36daaa5ab60bb05cdf035533.md) | 130 | `declaration-track:36daaa5ab60bb05cdf0355337d0faa388664c9f4da279a13905ddb5f242a289c` |
| 6 | `def` | [architecture](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/architecture--08373d921c63330970635514.md) | 133 | `declaration-track:08373d921c633309706355142555e87b113752a78cba1b446d25b3293a3863a0` |
| 7 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/previousindex--5968ae7d25c04b05ff11d85e.md) | 137 | `declaration-track:5968ae7d25c04b05ff11d85ea7955d5616f756faa70b6aed8370a44566652e93` |
| 8 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/original-branch-unchanged--2619035f8530fa20e60300f2.md) | 141 | `result-track:2619035f8530fa20e60300f2960b54bfd0c2c56d105cb4c78bfd6c4836861eae` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/new-branch-proved--9ae034627444669807bcc08e.md) | 147 | `result-track:9ae034627444669807bcc08eabb1ac2be75f174e4115bda0393ed4c2d0cdf297` |
| 10 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/target-unchanged--ab3ca42bdaf6baef54efa12a.md) | 152 | `result-track:ab3ca42bdaf6baef54efa12a76688e8440002aade3d7d2aeefef976dcdf46c7f` |
| 11 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/declarations/retarget-preserves-new--5ea3b07984f33a0625aa6dfe.md) | 157 | `result-track:5ea3b07984f33a0625aa6dfe67a0fdc3dcc23dd269656a14439e7637619efa03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
