# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repr.Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb9d3b1ff2e5d5c254e58c64ef2ff6897186ef5e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb9d3b1ff2e5d5c254e58c64ef2ff6897186ef5e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean.json)

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
| 1 | `def` | [mkReprHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/declarations/mkreprheader--e71c149c440444a3ed0218b4.md) | 28 | `declaration-track:e71c149c440444a3ed0218b4a751405f96a2741a99e00a9e14ef200349994343` |
| 2 | `def` | [mkBodyForStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/declarations/mkbodyforstruct--434add1e23ab0fe1964ee552.md) | 34 | `declaration-track:434add1e23ab0fe1964ee552d96bf021ee421bc474557db7e51f887349a2c0bc` |
| 3 | `def` | [mkBodyForInduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/declarations/mkbodyforinduct--054ee1ee8ecbad2ff7eb35f5.md) | 56 | `declaration-track:054ee1ee8ecbad2ff7eb35f5c5f8fd6f795e3f8c4bbb8553ada67d54c398b827` |
| 4 | `def` | [mkBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/declarations/mkbody--3854c762bdd41f716afdfe43.md) | 95 | `declaration-track:3854c762bdd41f716afdfe4382c7f5927a746f8aba018ee6bc9df38b5c27d197` |
| 5 | `def` | [mkAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/declarations/mkauxfunction--21da79df72e3e74a8feaf6aa.md) | 101 | `declaration-track:21da79df72e3e74a8feaf6aa71efc6fe8465799917a982f475e50e074b36b6c6` |
| 6 | `def` | [mkMutualBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/declarations/mkmutualblock--7a2f4a41016fbe20d4fecf21.md) | 115 | `declaration-track:7a2f4a41016fbe20d4fecf218782df87bfb0cee1298d3bfb95cedb447c40b9da` |
| 7 | `def` | [mkReprInstanceCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/declarations/mkreprinstancecmd--b83f9db86907601c308aecde.md) | 123 | `declaration-track:b83f9db86907601c308aecde9b79931a044621017f21946e7baf1f5b46071c04` |
| 8 | `def` | [mkReprInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/declarations/mkreprinstancehandler--3008206aaac2199387c0097b.md) | 131 | `declaration-track:3008206aaac2199387c0097bc4d5fcce5a7b888d6690c4b6c00d3605366429c6` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/declarations/builtin-initialize--b49670603112768a2c2e50e6.md) | 141 | `declaration-track:b49670603112768a2c2e50e6e00d51a87459bf98bb2501adac10dbfb783de285` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
