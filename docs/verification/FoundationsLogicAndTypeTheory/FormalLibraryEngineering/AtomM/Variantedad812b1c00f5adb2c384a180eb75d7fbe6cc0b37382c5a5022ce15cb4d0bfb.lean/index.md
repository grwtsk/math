# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomM.Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6671e7a9dced578664be18508e56f979ba5b9dfd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6671e7a9dced578664be18508e56f979ba5b9dfd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AtomM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb.lean/declarations/atomm-context--7696818a442aa8a78950c23b.md) | 32 | `declaration-track:7696818a442aa8a78950c23b655f7de3f68c3a80c06d2d0dd69be169b343ca50` |
| 2 | `structure` | [AtomM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb.lean/declarations/atomm-state--a47c0871255eaa01d3bc618e.md) | 41 | `declaration-track:a47c0871255eaa01d3bc618ee41f9f46c4a9607e90fb08ce7812ef645a0a8de0` |
| 3 | `abbrev` | [AtomM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb.lean/declarations/atomm--f87854dfcc40ade7046caf3f.md) | 46 | `declaration-track:f87854dfcc40ade7046caf3fcb35666aa4eb79a0305dc69e5e8c70a48b177663` |
| 4 | `def` | [AtomM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb.lean/declarations/atomm-run--37ee98c5140dc2f132187d2a.md) | 49 | `declaration-track:37ee98c5140dc2f132187d2a129abe3c0e0cbf81fb7b5245d0c7bab41a02c6b4` |
| 5 | `def` | [AtomM.addAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb.lean/declarations/atomm-addatom--ffd2a7f487c09b9f35675b9b.md) | 56 | `declaration-track:ffd2a7f487c09b9f35675b9b748441ddea4ae1ee1bc99d995de4705c138996d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
