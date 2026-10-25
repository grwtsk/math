# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FFI.Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90b7d3d78d51eb0376ea23211205a3ae940a42fe",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90b7d3d78d51eb0376ea23211205a3ae940a42fe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Search` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [getLeancExtraFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/getleancextraflags--7303cdc1614fcd27305effcf.md) | 27 | `declaration-track:7303cdc1614fcd27305effcf19d84eb9fb728c76ea7f81d09e3d0d75397b977b` |
| 2 | `def` | [flagsStringToArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/flagsstringtoarray--c84e2daaaae6ea8173cd0b8d.md) | 29 | `declaration-track:c84e2daaaae6ea8173cd0b8df8a74016fd49e1523b5789a647c742a684c5c4f1` |
| 3 | `def` | [getCFlags'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/getcflags--d5390af4514f743dac6f292a.md) | 36 | `declaration-track:d5390af4514f743dac6f292a22c0999a7e955ca8ba7d0c83708b44a6cdd3eed9` |
| 4 | `def` | [getCFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/getcflags--37f166bd7d481d017b584336.md) | 40 | `declaration-track:37f166bd7d481d017b584336c71d2f596aa53647a56575a0c3ed1aaea05e30af` |
| 5 | `opaque` | [getLeancInternalFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/getleancinternalflags--6a3d3809f4fd792af7d4fa5e.md) | 44 | `declaration-track:6a3d3809f4fd792af7d4fa5ec587142009e6c4243a3e2b28e50d91c26cc557ea` |
| 6 | `def` | [getInternalCFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/getinternalcflags--87237519500430fe9b029678.md) | 47 | `declaration-track:87237519500430fe9b029678f6cf5988dc7a8d35177e82cea837359a5a6cd55e` |
| 7 | `opaque` | [getBuiltinLinkerFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/getbuiltinlinkerflags--b1373b4d99d647b141c648ed.md) | 51 | `declaration-track:b1373b4d99d647b141c648ed0866f3046e11a00e6546d100cf63b7c8518cbde2` |
| 8 | `def` | [getLinkerFlags'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/getlinkerflags--f1c721cf28501013cc427788.md) | 57 | `declaration-track:f1c721cf28501013cc427788710b8cdab7f8e22968c921828e5c65c318aab466` |
| 9 | `def` | [getLinkerFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/getlinkerflags--8c5fefd4c79c242a45fc2f36.md) | 61 | `declaration-track:8c5fefd4c79c242a45fc2f36ce2f7414f390d9c3bf1eff2612a14ce2569a6f35` |
| 10 | `opaque` | [getBuiltinInternalLinkerFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/getbuiltininternallinkerflags--7f0e42225812e65ee4b6e7e0.md) | 65 | `declaration-track:7f0e42225812e65ee4b6e7e098c4e24ec6a786e65723bffcaf04d1b96ad4b715` |
| 11 | `def` | [getInternalLinkerFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FFI/Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7.lean/declarations/getinternallinkerflags--6b211bc037ccec70f96e3eaf.md) | 68 | `declaration-track:6b211bc037ccec70f96e3eafedcd093e4f6c5bbc346b882b5ff50d780f595202` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
