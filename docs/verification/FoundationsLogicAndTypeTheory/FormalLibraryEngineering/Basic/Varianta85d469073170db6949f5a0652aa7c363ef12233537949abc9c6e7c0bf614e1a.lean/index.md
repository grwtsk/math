# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7949abaf53dfe5b9fb52399ed6b046065bd921fa",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7949abaf53dfe5b9fb52399ed6b046065bd921fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean.json)

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
| 1 | `structure` | [RpcRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/rpcref--a503081d25e2b79db283b615.md) | 35 | `declaration-track:a503081d25e2b79db283b615d6f8fd03f6e036ef0d638fec1283b0f25a525f79` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/instance--a00acd62d24f47ba64136f83.md) | 39 | `declaration-track:a00acd62d24f47ba64136f83fdccd887b5f0340fe8154b2357bc526b2be598e8` |
| 3 | `inductive` | [RpcWireFormat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/rpcwireformat--18eee057c51bcffd5a19e971.md) | 43 | `declaration-track:18eee057c51bcffd5a19e97156ae6a0fb3842e881311af12892dcab52cd56f67` |
| 4 | `def` | [RpcWireFormat.refFieldName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/rpcwireformat-reffieldname--ecb3968734b11399272ff7af.md) | 56 | `declaration-track:ecb3968734b11399272ff7af0f4cbc86a1b1f77a4491e4d59d52cd18970c1cd2` |
| 5 | `structure` | [WithRpcRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/withrpcref--5dc04901bb493f5d3255f511.md) | 80 | `declaration-track:5dc04901bb493f5d3255f511786aba245bb5825f7cc9509cec654c797ffcab63` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/builtin-initialize--5815223d523cf1ac2d976f1e.md) | 86 | `declaration-track:5815223d523cf1ac2d976f1e12e1254489285c959d0a20e413146ab4e4a8ebba` |
| 7 | `def` | [WithRpcRef.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/withrpcref-mk--b739f90f0ebdc199aa4c5043.md) | 95 | `declaration-track:b739f90f0ebdc199aa4c5043b898e4e21f108d558dac530e2d0401f9fc68b46f` |
| 8 | `structure` | [ReferencedObject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/referencedobject--1a91666b18f7ec885cfe6879.md) | 99 | `declaration-track:1a91666b18f7ec885cfe68794a42115c87aebc1bcf8ab8aa98788afe1388733a` |
| 9 | `structure` | [RpcObjectStore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/rpcobjectstore--4e3616ed7aa788d5429e8a3c.md) | 104 | `declaration-track:4e3616ed7aa788d5429e8a3c13ca5fb0d2a900b8246b031a851baf38d384938f` |
| 10 | `def` | [rpcStoreRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/rpcstoreref--ab9c0dc7d2ed83b0657f5255.md) | 123 | `declaration-track:ab9c0dc7d2ed83b0657f5255b071224cd887e69e0047d406fd110e6893c15dee` |
| 11 | `def` | [rpcGetRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/rpcgetref--8e495ecafeabf697787b2808.md) | 145 | `declaration-track:8e495ecafeabf697787b2808d82b56b02ccf0cce4ad89fd56fa8de74b46be0fc` |
| 12 | `def` | [rpcReleaseRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/rpcreleaseref--286f108c1b1dc57de0bf35f6.md) | 154 | `declaration-track:286f108c1b1dc57de0bf35f64f3bc7acd91e5ef6b5fa14c50daccfcddf4841fd` |
| 13 | `class` | [RpcEncodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/rpcencodable--273d8f6b10c9c84efa8f5fa6.md) | 192 | `declaration-track:273d8f6b10c9c84efa8f5fa619630ffc18bc9a5671ac819147228bc13a1c2eb8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/instance--c3b3c59f2f369508bcc443b7.md) | 197 | `declaration-track:c3b3c59f2f369508bcc443b750bff38ae569d0b716262a5f53ec7575f78d5f9c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/instance--0ea73fd95a2b077888ec9250.md) | 200 | `declaration-track:0ea73fd95a2b077888ec9250247b2bdfd6f11d29c5f8199a0bc88a1cc396f25b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/instance--51a5b05615722cbb8ca1abdf.md) | 204 | `declaration-track:51a5b05615722cbb8ca1abdf61c1f1f14a96dd271546be7b2f4a95658f876ec9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/instance--e6cf52f820bebcba41099e86.md) | 210 | `declaration-track:e6cf52f820bebcba41099e8640786c1c1ef31e75249200c12643b8745cb12e36` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/instance--e37448133cbde813b7400ad1.md) | 214 | `declaration-track:e37448133cbde813b7400ad1c424bd612aafff59136dcb655e08f770ae5222db` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/instance--d7426d41328533f0796b0f0f.md) | 220 | `declaration-track:d7426d41328533f0796b0f0fc1141d62617608958ecee1f3b9befb2ab34b6848` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/declarations/instance--8f3bba44829f7e577f487d4d.md) | 226 | `declaration-track:8f3bba44829f7e577f487d4df72ff971c9af6bb8eabe45e01e257857dcbadebb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
