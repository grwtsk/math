# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToImpureType.Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86d99ec473fae2ccdd241b8d6dda301656d835b2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86d99ec473fae2ccdd241b8d6dda301656d835b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.MonoTypes` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Format.Macro` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [impureTypeForEnum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/impuretypeforenum--fc40899bd1a5423356965abd.md) | 15 | `declaration-track:fc40899bd1a5423356965abde0207598f4050ba897945dc0ef263a0878a4526c` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/builtin-initialize--c55f13d2506eae9f320968f1.md) | 34 | `declaration-track:c55f13d2506eae9f320968f13a63c6867d4c80d35a8989a15cd36a725169121f` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/builtin-initialize--a2e5c97ddb75043f8c92b232.md) | 37 | `declaration-track:a2e5c97ddb75043f8c92b2321615b97aca3d91952c81928a4334954b74053085` |
| 4 | `def` | [impureIrrelevantType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/impureirrelevanttype--6a53234d8977d4b8b35cb295.md) | 46 | `declaration-track:6a53234d8977d4b8b35cb295b6ef065b06f0c84e33634cea2a4e6ccdd4f1b349` |
| 5 | `def` | [setHasTrivialImpureStructure?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/sethastrivialimpurestructure--5d67841f44622ba883e40528.md) | 53 | `declaration-track:5d67841f44622ba883e40528203bcb3f030a8d1877758a90b1faad93d2c8b6ba` |
| 6 | `def` | [hasTrivialImpureStructure?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/hastrivialimpurestructure--bd0d612d160cacb757c8e4a6.md) | 56 | `declaration-track:bd0d612d160cacb757c8e4a68a40af3f9f4408310422f9122d83113aa6ef8cbf` |
| 7 | `def` | [builtinImpureType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/builtinimpuretype--6e4cd8d3f5d1aa01342e11fe.md) | 64 | `declaration-track:6e4cd8d3f5d1aa01342e11fe3d7cb89351ab9fc28b9282cd3c49dc4463248fd9` |
| 8 | `def` | [computeImpureType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/computeimpuretype--d66763bd95e38a502759d08b.md) | 84 | `declaration-track:d66763bd95e38a502759d08bbd100035a6a4cbcda7c09bc749f38013ee2932c7` |
| 9 | `def` | [setImpureType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/setimpuretype--2fc9d2071a000ad2f02d78eb.md) | 111 | `declaration-track:2fc9d2071a000ad2f02d78ebcb7753475ca0c212d56ce0b0e57cbcf52191c5cd` |
| 10 | `def` | [nameToImpureType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/nametoimpuretype--13d6ef46c2afa19828d6c8ec.md) | 120 | `declaration-track:13d6ef46c2afa19828d6c8ec093c546a3b60316a0c8ce8108b7c428f2bbb9893` |
| 11 | `def` | [isAnyProducingType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/isanyproducingtype--ed28139484a79520c4aa7332.md) | 127 | `declaration-track:ed28139484a79520c4aa7332e0509cffceeaa69cf59b4fad913ad94b10d8967e` |
| 12 | `def` | [toImpureType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/toimpuretype--aa25f503d2b3fbb043029929.md) | 133 | `declaration-track:aa25f503d2b3fbb043029929d91a378f941714aa3291e5fc807979deac412c63` |
| 13 | `inductive` | [CtorFieldInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/ctorfieldinfo--f215fa9f648b6fae911b2162.md) | 160 | `declaration-track:f215fa9f648b6fae911b21628a6559685fbd7092a942e465aef83d539579cfc0` |
| 14 | `def` | [format](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/format--6148679f3f91eded8ea1883e.md) | 170 | `declaration-track:6148679f3f91eded8ea1883e6793db52d7fbebe3010a1e0ecbe5f75b6abc90ad` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/instance--c91ebbb05f6d15c49841d17e.md) | 177 | `declaration-track:c91ebbb05f6d15c49841d17ed55ab59edc6fa94f5261f0ffa13a40f931eb5976` |
| 16 | `structure` | [CtorLayout](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/ctorlayout--5f7aca92e2d601931edddce9.md) | 181 | `declaration-track:5f7aca92e2d601931edddce988b4e14703b6c6c73d00c2956c0f7d1abf07629e` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/builtin-initialize--1716b58f4f47f2205a2ae1a1.md) | 186 | `declaration-track:1716b58f4f47f2205a2ae1a1d9acc72451d29a9dbbd52bbd9c08df8fcc2385bb` |
| 18 | `def` | [setCtorLayout](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/setctorlayout--e7e1735c14c10adae54aff15.md) | 190 | `declaration-track:e7e1735c14c10adae54aff15ab86ebb8832aeb85ac3b7d934e657d33fb0d1af7` |
| 19 | `def` | [getCtorLayout](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/getctorlayout--d1b0f986d084732fa5c99fd4.md) | 278 | `declaration-track:d1b0f986d084732fa5c99fd46116fe732886d3d965797f05343f9210496232f3` |
| 20 | `def` | [compileInductives](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/declarations/compileinductives--2385684312d6a1be5b96a5d8.md) | 287 | `declaration-track:2385684312d6a1be5b96a5d8dec62aa48c1e7e537ee52511b860dcf95c102561` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
