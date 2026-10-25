# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequestHandling.Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1afc0f3e0ceddc49fd8ee5ac47e94fb27499f2d6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1afc0f3e0ceddc49fd8ee5ac47e94fb27499f2d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean.json)

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
| 1 | `structure` | [RpcProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/rpcprocedure--6659865f26853655017bc40f.md) | 17 | `declaration-track:6659865f26853655017bc40f90a518a37191c25a38c1f200d3685181030a91bc` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/builtin-initialize--5204bb0bd5cc9cebbc483ac4.md) | 24 | `declaration-track:5204bb0bd5cc9cebbc483ac40ea70604fb0dfa8905cce146a342f0d7a42d49b0` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/builtin-initialize--18e9e6e1d2b410d5889a97f5.md) | 26 | `declaration-track:18e9e6e1d2b410d5889a97f5c91650edd4534bc24acfe6edd518d2a4b37febb5` |
| 4 | `def` | [evalRpcProcedureUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/evalrpcprocedureunsafe--66a08ad4e4f609320127eff2.md) | 29 | `declaration-track:66a08ad4e4f609320127eff223e9b43f30cf4fc3c1c457a82e8062806e0906b1` |
| 5 | `opaque` | [evalRpcProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/evalrpcprocedure--fe44216ce3c686d67c364360.md) | 34 | `declaration-track:fe44216ce3c686d67c3643604d3a98226439e28c068b782f9ad853e83bde1d5c` |
| 6 | `def` | [existsBuiltinRpcProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/existsbuiltinrpcprocedure--15c48b6c77b247783fd994ec.md) | 38 | `declaration-track:15c48b6c77b247783fd994ecefba58f7b50c9977d10f1c0d396f7cae03153f3f` |
| 7 | `def` | [handleRpcCall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/handlerpccall--b666a8c90ceb678dbd8f9ad8.md) | 42 | `declaration-track:b666a8c90ceb678dbd8f9ad8b8ce0d0e0d0dc60124736db80deb09dcf34f58e5` |
| 8 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/builtin-initialize--f284bceadc25205531aa77bb.md) | 73 | `declaration-track:f284bceadc25205531aa77bbad1c1904f8c1ac7ff79de60c1c258a4da0b54802` |
| 9 | `def` | [wrapRpcProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/wraprpcprocedure--cd40cc179c162fd4b78242ef.md) | 76 | `declaration-track:cd40cc179c162fd4b78242ef4a906bd59bca9794d34eedf26f54ae8db6f9a72b` |
| 10 | `def` | [registerBuiltinRpcProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/registerbuiltinrpcprocedure--3ed121b903d9adc596d1af30.md) | 102 | `declaration-track:3ed121b903d9adc596d1af302dbdf5a61acbe4b7951f847dd5d5e635dfa973ba` |
| 11 | `def` | [registerRpcProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/registerrpcprocedure--54494a1d33df37b77f790257.md) | 115 | `declaration-track:54494a1d33df37b77f790257084067529671a296ae35b99d2a419dcb838e29f8` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/declarations/builtin-initialize--1e27e41099bcc899674b9293.md) | 141 | `declaration-track:1e27e41099bcc899674b9293c56a040a600eda26e2a720567cba5922ead6d6ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
