# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomM.Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf8a3d9d66a5522a0fd5dee06f32a0cdf3ec26c5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf8a3d9d66a5522a0fd5dee06f32a0cdf3ec26c5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AtomM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29.lean/declarations/atomm-context--f684ab4b0d918f0d73f033b1.md) | 24 | `declaration-track:f684ab4b0d918f0d73f033b122b5205b2569dda5de4430279c017a6d0fd0ccb2` |
| 2 | `structure` | [AtomM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29.lean/declarations/atomm-state--fa31c84cb0a6c0f7e7cf2aa7.md) | 33 | `declaration-track:fa31c84cb0a6c0f7e7cf2aa74fff2b51b41c8f4fb47a321712cd20778f750088` |
| 3 | `abbrev` | [AtomM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29.lean/declarations/atomm--91ac9ef7681347eb58bf4721.md) | 38 | `declaration-track:91ac9ef7681347eb58bf4721b34949455799390f39b14d9887135ca5c9a5bc00` |
| 4 | `def` | [AtomM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29.lean/declarations/atomm-run--20f5e1417d957535f5fd42e0.md) | 41 | `declaration-track:20f5e1417d957535f5fd42e070f4f001c5cccfe2413c3672ad31a562fa206f27` |
| 5 | `def` | [AtomM.addAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29.lean/declarations/atomm-addatom--2f9046685e8a7b1b067e1b64.md) | 48 | `declaration-track:2f9046685e8a7b1b067e1b64f9ee15d0a82a7f7b518f3d78176166e44ac91fe2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
