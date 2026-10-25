# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrM.Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cba16ab6ec6abde7049ed5a5fe79fcfbf630e6d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cba16ab6ec6abde7049ed5a5fe79fcfbf630e6d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean.json)

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
| 1 | `inductive` | [CtorInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/ctorinfo--d054a98df30684cdfe71ba7c.md) | 17 | `declaration-track:d054a98df30684cdfe71ba7cd8daa7f57cb9af73221f2e69e62e44f12283def5` |
| 2 | `def` | [CtorInfo.getName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/ctorinfo-getname--5f4bb849642a12ae23f21acc.md) | 22 | `declaration-track:5f4bb849642a12ae23f21acc2bcd92bdf7f843242e5fc4f6d15909e88e2631bc` |
| 3 | `def` | [CtorInfo.getNumParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/ctorinfo-getnumparams--b26aace6300beae4eb053b93.md) | 27 | `declaration-track:b26aace6300beae4eb053b931ea69b9d5385814f9fd14d92c421d113d41a745b` |
| 4 | `def` | [CtorInfo.getNumFields](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/ctorinfo-getnumfields--59b047458c122509bd9a7377.md) | 31 | `declaration-track:59b047458c122509bd9a73773300b9ae1b43c9d4c43a0c74a3001dc448534aeb` |
| 5 | `structure` | [DiscrM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/discrm-context--8c79937e43a0ce2a2bb2a906.md) | 36 | `declaration-track:8c79937e43a0ce2a2bb2a90632fcf413b2aa7e50ced5817b9451e1c5b1abf441` |
| 6 | `abbrev` | [DiscrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/discrm--ccf073a48bcf8a1d0738c677.md) | 50 | `declaration-track:ccf073a48bcf8a1d0738c67748b357c15e35958880ef23f335b7c1d3a3baf19c` |
| 7 | `def` | [findCtor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/findctor--e7310136ca98b571131d2ecb.md) | 57 | `declaration-track:e7310136ca98b571131d2ecb86176521ce0f6ca3b57972f1752fb5ce011a599b` |
| 8 | `def` | [findCtorName?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/findctorname--8b6f4b113bb34414311a191b.md) | 66 | `declaration-track:8b6f4b113bb34414311a191b8629e7774f438eea6cf746243eb7f95b01791729` |
| 9 | `def` | [getIndInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/getindinfo--c5f5f9a63349342152ac3769.md) | 73 | `declaration-track:c5f5f9a63349342152ac3769ab93e80c0c9a62f5226de8c4ab51239af7bba5e2` |
| 10 | `def` | [withDiscrCtorImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/withdiscrctorimp--7b7e69917b27d06aeb4d086c.md) | 88 | `declaration-track:7b7e69917b27d06aeb4d086c2bf4e1a345d17468369c98efd0c837c28f13d254` |
| 11 | `def` | [withDiscrCtor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/withdiscrctor--4ba129787e7539cb808b12b5.md) | 108 | `declaration-track:4ba129787e7539cb808b12b5acf673652804a35b7fc2f4c9704835f41f00608f` |
| 12 | `def` | [simpCtorDiscrCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant613bdfd5a54f5c6b86289421c162df121ab20757ac1c0fd5988c7038a2f61612.lean/declarations/simpctordiscrcore--0f6c93a6b8330f7e549c59fc.md) | 112 | `declaration-track:0f6c93a6b8330f7e549c59fc195bb8454a22d1129ee5781138af66a90936b4d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
