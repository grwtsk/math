# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a0c05bc115d8f1b87da5b9915a028a8073476d3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a0c05bc115d8f1b87da5b9915a028a8073476d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Except` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Exact` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.ForwardAttr` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.PartialOrder` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GCongrLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/gcongrlemma--142b2613061d89f95bb9703d.md) | 138 | `declaration-track:142b2613061d89f95bb9703d03f8a839d9316ef72a881ea6859eb919b75b9550` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/initialize--66cfa0bfaa70a3f09be843f0.md) | 145 | `declaration-track:66cfa0bfaa70a3f09be843f00495c5159fbf52448e61da1c72160518990fb39a` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/initialize--d3e5f8e28737e9d4e7a2bcb7.md) | 164 | `declaration-track:d3e5f8e28737e9d4e7a2bcb7f9103db2dc41c05467cdabb4fcc66a165a34f681` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/initialize--416b6608b19a7eaf6759ef2b.md) | 228 | `declaration-track:416b6608b19a7eaf6759ef2be894f16761fc5a1a27fcc09397b216ba36ede0ee` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/syntax--285a784cf987cb69fcb76e7c.md) | 230 | `declaration-track:285a784cf987cb69fcb76e7c0b9eb7e1ab61e400cc2eb9883dfa653007ae1c52` |
| 6 | `def` | [gcongrDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/gcongrdischarger--742e75f86ca166b9ac3c7f63.md) | 236 | `declaration-track:742e75f86ca166b9ac3c7f63470c5fa04c5b481f3bb912ad71589089f88292c3` |
| 7 | `def` | [exactRefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/exactrefl--e74f0f3d8c94da494ca4ca84.md) | 245 | `declaration-track:e74f0f3d8c94da494ca4ca841d6a1e2f8af477af30edf24d4c8b4ecc884b36e0` |
| 8 | `def` | [exactLeOfLt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/exactleoflt--32ffed3ed1fafc97e37e5efe.md) | 252 | `declaration-track:32ffed3ed1fafc97e37e5efe245e5631088b515df4a57132a00d6ee878fb867b` |
| 9 | `def` | [symmExact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/symmexact--5457ab979128f7c985d21584.md) | 256 | `declaration-track:5457ab979128f7c985d21584eee785b2a4a913f23c1df6b89dcf209725ec3235` |
| 10 | `def` | [exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/exact--121c18da62a48b8e1b05c0fb.md) | 259 | `declaration-track:121c18da62a48b8e1b05c0fb3dbcd68d2203ee19eaa7ac9c5c1d6774c77d2311` |
| 11 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongrLemma.Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.Lean.MVarId.gcongrForward](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-gcong--b2c61e88dc501ac72c14c3cc.md) | 265 | `declaration-track:b2c61e88dc501ac72c14c3cc31c02d079e68b905c1b172ebacd51cdeed48c42b` |
| 12 | `def` | [gcongrForwardDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/gcongrforwarddischarger--aa840b5fe8481a335f523c6d.md) | 285 | `declaration-track:aa840b5fe8481a335f523c6df6a6606009d9e369b2203ce7066b2e2bd092ee1a` |
| 13 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongrLemma.Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.Lean.MVarId.gcongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-gcong--4f442aded6a4d008058fc0c6.md) | 299 | `declaration-track:4f442aded6a4d008058fc0c658766065c2f32e86773b2894b22814bea80bd482` |
| 14 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/elab--2eca8e326a40635f62adb3e9.md) | 478 | `declaration-track:2eca8e326a40635f62adb3e9b515cba632b12b3e8afd40cc8cb13fd79f0eb152` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/syntax--352e5e6fe674baeaf88758cb.md) | 518 | `declaration-track:352e5e6fe674baeaf88758cb148d7c51351ac9581732d6c77f81f77117a8e0ec` |
| 16 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/declarations/elab-rules--22dc1d970fd0c16ff5a3e66b.md) | 520 | `declaration-track:22dc1d970fd0c16ff5a3e66b1038fcdf996ce3cd16e82470330d92b2b052716d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
