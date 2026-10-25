# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FFI.Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "219f0f9f3362b4b27964dd0b024b20ab285f0f62",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `219f0f9f3362b4b27964dd0b024b20ab285f0f62`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Search` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [getLeancExtraFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/getleancextraflags--99be0b5c9af8a6bcd5a63b44.md) | 19 | `declaration-track:99be0b5c9af8a6bcd5a63b4447130e6f73650fac8a9c24d9e005ae9ffb2e937f` |
| 2 | `def` | [flagsStringToArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/flagsstringtoarray--6e81ef3d2b02139edf3a3ed3.md) | 21 | `declaration-track:6e81ef3d2b02139edf3a3ed33eb3c21c4686af2a72583c90928ee618d18719d4` |
| 3 | `def` | [getCFlags'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/getcflags--9082c6b2b4b9196ee8284e30.md) | 28 | `declaration-track:9082c6b2b4b9196ee8284e306ad891e76348ee0978bf37c67147a9cdb084e32f` |
| 4 | `def` | [getCFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/getcflags--2da3b78dfa00cb1e9f1441a7.md) | 32 | `declaration-track:2da3b78dfa00cb1e9f1441a7912f8fce976685ae4f665b48bf978090178ba4c0` |
| 5 | `opaque` | [getLeancInternalFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/getleancinternalflags--d1a84a36c4d4be549e748e12.md) | 36 | `declaration-track:d1a84a36c4d4be549e748e128582d8a70c7b09231960ce6102762adc70f0f441` |
| 6 | `def` | [getInternalCFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/getinternalcflags--804306405e84ac104da11f0a.md) | 39 | `declaration-track:804306405e84ac104da11f0a548fc607f5f83aeb24a66c4307292a30b9e3ab04` |
| 7 | `opaque` | [getBuiltinLinkerFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/getbuiltinlinkerflags--52090d47b600c148017d8f4b.md) | 43 | `declaration-track:52090d47b600c148017d8f4ba1da0c67ade84a9ca496647905c4da4adb14bb84` |
| 8 | `def` | [getLinkerFlags'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/getlinkerflags--2af6d10bbef8644a466747f1.md) | 49 | `declaration-track:2af6d10bbef8644a466747f1cce593635c92010d5575565fb861b00c62fec351` |
| 9 | `def` | [getLinkerFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/getlinkerflags--e1d64a8751bdc18d8cd08d27.md) | 53 | `declaration-track:e1d64a8751bdc18d8cd08d27381577e9cadc3d1ecf87fdecafebb00a2ff3b50e` |
| 10 | `opaque` | [getBuiltinInternalLinkerFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/getbuiltininternallinkerflags--3006401b279c6182af17e123.md) | 57 | `declaration-track:3006401b279c6182af17e123b3a5a9a94071da949be7ee60d69cf8aebada82a0` |
| 11 | `def` | [getInternalLinkerFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b.lean/declarations/getinternallinkerflags--cfc526d550a2489a45907562.md) | 60 | `declaration-track:cfc526d550a2489a4590756290dcc4a0caf86a8fd7ea26cb35a4d28d55996aba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
