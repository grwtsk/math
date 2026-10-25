# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proc.Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a983462c2a18a011a5b74b6c9edd29ba7dbf5ed5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a983462c2a18a011a5b74b6c9edd29ba7dbf5ed5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkCmdLog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean/declarations/mkcmdlog--86587365b2ab59ddbc0e3dcd.md) | 22 | `declaration-track:86587365b2ab59ddbc0e3dcddb7f53e4f3cf277f8c6aee76037646a3caebc960` |
| 2 | `def` | [logOutput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean/declarations/logoutput--5e0e1d647711c87e09d32cd4.md) | 29 | `declaration-track:5e0e1d647711c87e09d32cd48d555112bb40cb843841c2311bee84ae335c4ed3` |
| 3 | `def` | [rawProc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean/declarations/rawproc--2deea96b778f4dfb835e6c55.md) | 37 | `declaration-track:2deea96b778f4dfb835e6c558b5c7057429cb8781bb07647fcd51f6b1e6a100c` |
| 4 | `def` | [proc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean/declarations/proc--1a55ab6e9365207643958622.md) | 46 | `declaration-track:1a55ab6e9365207643958622defaaf2524f9a6007aab8789fc18aa08893f8eb9` |
| 5 | `def` | [captureProc'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean/declarations/captureproc--d24ee552a7e22cfe4a6e4377.md) | 57 | `declaration-track:d24ee552a7e22cfe4a6e437771b825d5af2408b4efcf0bfde27822065bd712ff` |
| 6 | `def` | [captureProc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean/declarations/captureproc--0541de41c0c7c3af45f3ac48.md) | 66 | `declaration-track:0541de41c0c7c3af45f3ac4863632862d448fa49469a9d2e98afe7a4385fbfc8` |
| 7 | `def` | [captureProc?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean/declarations/captureproc--0a5dd655ab9353c361ad3b2b.md) | 69 | `declaration-track:0a5dd655ab9353c361ad3b2b02051528a27de754fd8c106707c6e60e992be3ed` |
| 8 | `def` | [testProc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variant9a0438bb2571b368a399e045533678d0d3de2c52fead51918fd875f0eb609cb2.lean/declarations/testproc--4750858b581151e2e2aa0f58.md) | 77 | `declaration-track:4750858b581151e2e2aa0f58a32dbc820684131bd1c388b9aaa047765a753bc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
