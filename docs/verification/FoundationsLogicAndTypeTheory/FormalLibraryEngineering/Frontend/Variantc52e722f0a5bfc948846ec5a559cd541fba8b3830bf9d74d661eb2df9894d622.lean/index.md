# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8e1bbc1e6aca213e9e055714c74ebd3b16eeea4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8e1bbc1e6aca213e9e055714c74ebd3b16eeea4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Verification` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Preprocessing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Oracle.SimplexAlgorithm` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinarithConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/linarithconfig--cd8846425c828a157f784570.md) | 158 | `declaration-track:cd8846425c828a157f784570d2b66130d174607880beb328cbe3cbf068946f07` |
| 2 | `def` | [LinarithConfig.updateReducibility](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/linarithconfig-updatereducibility--9ae4b4dadc003f3678f12e75.md) | 186 | `declaration-track:9ae4b4dadc003f3678f12e7528b369775d1dc211c0e1925c30ade132608e13a0` |
| 3 | `def` | [getContrLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/getcontrlemma--1591acc7797fd57ee7df42b8.md) | 203 | `declaration-track:1591acc7797fd57ee7df42b84c86966b02b266f7bc88d4509b7c8689728406dd` |
| 4 | `def` | [applyContrLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/applycontrlemma--e086ecc0d072b08c3c891791.md) | 218 | `declaration-track:e086ecc0d072b08c3c89179122d4a20c785a93ea858c4af78360cbd20b8dcbce` |
| 5 | `abbrev` | [ExprMultiMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/exprmultimap--f6350e7a210b7697ea6c01bb.md) | 228 | `declaration-track:f6350e7a210b7697ea6c01bb4c3d2f55c4436a86441011f7ca3bc1408e37308a` |
| 6 | `def` | [ExprMultiMap.find](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/exprmultimap-find--28a3e032378429a8a66052ea.md) | 232 | `declaration-track:28a3e032378429a8a66052eab34fb589141129727ef34fb4144ef1a95d87d15d` |
| 7 | `def` | [ExprMultiMap.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/exprmultimap-insert--199d61f2ba1dac42b7755fab.md) | 241 | `declaration-track:199d61f2ba1dac42b7755fabd806c4dc8795e9399a52e1fe6a9408ad93f42fe6` |
| 8 | `def` | [partitionByType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/partitionbytype--a1c044444aec54fc61b7b2d2.md) | 253 | `declaration-track:a1c044444aec54fc61b7b2d297284a11686619655d0ea9e970f0a1a0c05c77cf` |
| 9 | `def` | [findLinarithContradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/findlinarithcontradiction--8ba3d4a66795c757935671cd.md) | 261 | `declaration-track:8ba3d4a66795c757935671cd053933a9f92304122a075d2c3b5ac172851bcf19` |
| 10 | `def` | [runLinarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/runlinarith--5e8837af2d59d864c277936e.md) | 280 | `declaration-track:5e8837af2d59d864c277936e19321094c9d9b12b4ee319ae8509e8a9a81ea3b5` |
| 11 | `def` | [linarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/linarith--790f064e4e9fad1d96bd12e9.md) | 331 | `declaration-track:790f064e4e9fad1d96bd12e97e348671e865eaeebb8a5fb9220f41b8e8ff47ff` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/syntax--f36d059ede7a6519b4cbc4f9.md) | 377 | `declaration-track:f36d059ede7a6519b4cbc4f9ecbe2471dbc4ecbf31435cc0173b38aef2634465` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/syntax--722e7a1db3fae5eb4abce3c9.md) | 437 | `declaration-track:722e7a1db3fae5eb4abce3c9343c224cd7ddef6d1927abe6ef989c1a0d975ac5` |
| 14 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/macro--45da45b25047d1858131c499.md) | 439 | `declaration-track:45da45b25047d1858131c49948a441e1a113017546db9fdf71308ab6de626b7d` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/syntax--51e34d9419cb1b0250891cba.md) | 454 | `declaration-track:51e34d9419cb1b0250891cba82fc672151da8a28b74d8f47ea6843331e5abc4e` |
| 16 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/macro--540327f1265119d80240fb7f.md) | 455 | `declaration-track:540327f1265119d80240fb7fe176626e4c0d047aea26fc3fd059ffbd2e1a35ba` |
| 17 | `def` | [elabLinarithArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/elablinaritharg--5a9e1a94d69c16e6b0404ec1.md) | 459 | `declaration-track:5a9e1a94d69c16e6b0404ec1a97f8d96fcbd659dcc99cdcd3232ec1a4c560013` |
| 18 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/elab-rules--66d0a5426a4ac2489ee64a50.md) | 470 | `declaration-track:66d0a5426a4ac2489ee64a50f46789ce1447f37eb89732ce0aa62faacb04e2f4` |
| 19 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/declarations/elab-rules--0693f1128338c78c0cac0c52.md) | 485 | `declaration-track:0693f1128338c78c0cac0c527fdcebd18a4709fc9ea33ff65c385ef7772c8800` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
