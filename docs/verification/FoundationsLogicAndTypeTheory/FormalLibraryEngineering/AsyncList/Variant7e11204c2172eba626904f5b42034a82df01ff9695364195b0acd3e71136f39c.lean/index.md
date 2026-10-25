# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AsyncList.Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "242d45c0a5daf3e2b7bb33ade325ee3b3ca4ede0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `242d45c0a5daf3e2b7bb33ade325ee3b3ca4ede0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean.json)

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
| 1 | `inductive` | [AsyncList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/declarations/asynclist--9745f950748cfffec80e290b.md) | 29 | `declaration-track:9745f950748cfffec80e290ba8a691200a0c31c19c132e0dac2328a23588c68d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/declarations/instance--504a8fc48d1877b7b5e6dc73.md) | 38 | `declaration-track:504a8fc48d1877b7b5e6dc731d8fa8d835e8ddad2407e08dfc941b0bb8a58908` |
| 3 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/declarations/oflist--9b86b018974a76139f5e71b2.md) | 40 | `declaration-track:9b86b018974a76139f5e71b2d2b3e4b8e7834ac5b8a600060fd2246f8a2d35dd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/declarations/instance--d1d6502c5a89f316f47467cd.md) | 43 | `declaration-track:d1d6502c5a89f316f47467cd3bda63238cd851e1276f288926fac00b12487199` |
| 5 | `def` | [waitUntil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/declarations/waituntil--8488cd17e29bf2cd0e52efa0.md) | 47 | `declaration-track:8488cd17e29bf2cd0e52efa01719b8b8cfc5c823628c482d5092908f8e609413` |
| 6 | `def` | [waitAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/declarations/waitall--c5f9d9b237684de29861c436.md) | 60 | `declaration-track:c5f9d9b237684de29861c436ac65915d098855d6de0faff3fdaad62ab5f2b175` |
| 7 | `def` | [waitFind?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/declarations/waitfind--956a1d414e9a96a7bfa0f8b9.md) | 66 | `declaration-track:956a1d414e9a96a7bfa0f8b9d5a650c1551027b282491bc564f0b076865cbf6b` |
| 8 | `def` | [getFinishedPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/declarations/getfinishedprefix--bb5a2b6792362c435693bf51.md) | 81 | `declaration-track:bb5a2b6792362c435693bf510bc7a3951ce5f83f674359550a67491e8a55500b` |
| 9 | `def` | [getFinishedPrefixWithTimeout](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/declarations/getfinishedprefixwithtimeout--1132edf746ae5c3b0437d565.md) | 93 | `declaration-track:1132edf746ae5c3b0437d5652b0166cc3b0cac68be1dabbb00439bfc2b7bc24a` |
| 10 | `def` | [getFinishedPrefixWithConsistentLatency](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/declarations/getfinishedprefixwithconsistentlatency--51b062945fd1d83ed8ea9839.md) | 125 | `declaration-track:51b062945fd1d83ed8ea98390c1845091eb5d8aa53f837714329506450404e19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
