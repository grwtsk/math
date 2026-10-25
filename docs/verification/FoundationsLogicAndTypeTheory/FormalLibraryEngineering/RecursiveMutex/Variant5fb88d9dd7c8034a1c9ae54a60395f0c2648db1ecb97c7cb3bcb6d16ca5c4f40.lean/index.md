# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecursiveMutex.Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e4ea284dc57ed1781e00e149579d2032f1d81a8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e4ea284dc57ed1781e00e149579d2032f1d81a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [RecursiveMutexImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/recursivemuteximpl--94e29280049f034dd1d0888b.md) | 15 | `declaration-track:94e29280049f034dd1d0888bc49cc0ba8fc5eae724f75464abb6d63d31dcd832` |
| 2 | `def` | [BaseRecursiveMutex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/baserecursivemutex--117031d21fac6269a794a9bb.md) | 22 | `declaration-track:117031d21fac6269a794a9bb7939ff35e01458b5e1033947c38d63fafacbaca0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/instance--e000e70b6e9a7e35048ec15d.md) | 24 | `declaration-track:e000e70b6e9a7e35048ec15de04caa2c06982c51d3f3c6e77d33471087754fc6` |
| 4 | `opaque` | [BaseRecursiveMutex.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/baserecursivemutex-new--053821e17e52d93e12f46945.md) | 28 | `declaration-track:053821e17e52d93e12f46945a7ceb95533f26e7d01cdc4e728eafae6e91bd595` |
| 5 | `opaque` | [BaseRecursiveMutex.lock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/baserecursivemutex-lock--1fc2fd99a3b872d466a5afea.md) | 35 | `declaration-track:1fc2fd99a3b872d466a5afea2d4c6552fc3666000849e040076ebb852fa5ca91` |
| 6 | `opaque` | [BaseRecursiveMutex.tryLock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/baserecursivemutex-trylock--d0bece1df6716a940448f9ab.md) | 45 | `declaration-track:d0bece1df6716a940448f9ab4d21ce96664fc1764c9f227240d67f66a37e00d6` |
| 7 | `opaque` | [BaseRecursiveMutex.unlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/baserecursivemutex-unlock--f81f2a2ce5e58948f76d6a6f.md) | 55 | `declaration-track:f81f2a2ce5e58948f76d6a6fcb9b3db977ae597bb42f68e11112401bcbd5ff79` |
| 8 | `structure` | [RecursiveMutex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/recursivemutex--68a2397df0c0d7f0c15a1146.md) | 64 | `declaration-track:68a2397df0c0d7f0c15a11460b794e2cc98e9c22b6d278cee2f8a8aae6e55e49` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/instance--cb2a20b36d4506164b3d0499.md) | 69 | `declaration-track:cb2a20b36d4506164b3d0499a9b080f4b16678b32ed8da55d2d2416bcd906a77` |
| 10 | `def` | [RecursiveMutex.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/recursivemutex-new--8c5be2995d0a58c3fcd03997.md) | 72 | `declaration-track:8c5be2995d0a58c3fcd039974a115091895ca13aeea25f50431b959db57f3c9e` |
| 11 | `def` | [RecursiveMutex.atomically](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/recursivemutex-atomically--449a97a325b7f75cf96cc798.md) | 81 | `declaration-track:449a97a325b7f75cf96cc798490dff067c7809af184c10c061d42671fa47831e` |
| 12 | `def` | [RecursiveMutex.tryAtomically](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/declarations/recursivemutex-tryatomically--4040420a97b76ac28ee95f1b.md) | 96 | `declaration-track:4040420a97b76ac28ee95f1bb844dde77daabefe0e056a74a2f24f8fa07eae6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
