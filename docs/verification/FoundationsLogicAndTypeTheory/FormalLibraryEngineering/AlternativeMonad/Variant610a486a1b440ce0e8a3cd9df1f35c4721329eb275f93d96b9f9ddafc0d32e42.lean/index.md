# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AlternativeMonad.Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2758b3ba077951827d87394be3edf7e3a668ae53",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2758b3ba077951827d87394be3edf7e3a668ae53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Control.OptionT` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AlternativeMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/alternativemonad--798da321685d1d9b4d84152f.md) | 41 | `declaration-track:798da321685d1d9b4d84152fa2a71aad7ffdfe1e9d432c682df5e3087a1e6c49` |
| 2 | `class` | [LawfulAlternative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/lawfulalternative--e30680bf3a683eba0dd503d8.md) | 47 | `declaration-track:e30680bf3a683eba0dd503d828c1c0b7986e1ee72074655a3271f1e624a12e7e` |
| 3 | `theorem` | [mapConst_failure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/mapconst-failure--c395981a061d33e05abf26b4.md) | 68 | `result-track:c395981a061d33e05abf26b4399ba82194b65d97d90e2ea3f3285d7f9d823e4b` |
| 4 | `theorem` | [mapConst_orElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/mapconst-orelse--84b2b7eab3cca84ba7e3a971.md) | 72 | `result-track:84b2b7eab3cca84ba7e3a9714059ffbb564704169000c4b8c55d082df80dce45` |
| 5 | `theorem` | [failure_seqLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/failure-seqleft--946d4f7781fd66a154734994.md) | 76 | `result-track:946d4f7781fd66a154734994532e4e92922852dea90c0ed82a1f5bfd663cd54d` |
| 6 | `theorem` | [failure_seqRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/failure-seqright--600a20bd2490f3bf7c50ad3f.md) | 80 | `result-track:600a20bd2490f3bf7c50ad3f619c64faff28c279a7e865cb4d9574631ba59c46` |
| 7 | `theorem` | [failure_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/failure-bind--c6bb1e6a6e41f48ca63273a8.md) | 88 | `result-track:c6bb1e6a6e41f48ca63273a8b97cc9c7e59b23ac38ecf94482be3be6ea47eb55` |
| 8 | `theorem` | [seq_failure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/seq-failure--9fa1702c0789ae4f7d373028.md) | 96 | `result-track:9fa1702c0789ae4f7d373028a972d1ce0f34f5d948eebbb2e3b1547e3f33c6da` |
| 9 | `class` | [LawfulAlternativeLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/lawfulalternativelift--e78c28249b43e59b7d95ea90.md) | 105 | `declaration-track:e78c28249b43e59b7d95ea900cb769c21ce00a6894da574c8bdbf72bb8ed2ad3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--b569ae671350599482906314.md) | 117 | `declaration-track:b569ae67135059948290631477d5c9a97e851d1335bea205427960a66ec90f03` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--3dc78a58b47af0722ee4570e.md) | 119 | `declaration-track:3dc78a58b47af0722ee4570ecdd9574cbb40e061e4a84ceeb622f0a670b64490` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--6f3a8424b24fec697129b215.md) | 131 | `declaration-track:6f3a8424b24fec697129b21502a88e61ddf47b8311ebd4fd6c153e097781b25c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--1be786d5bf517a6a296837a7.md) | 133 | `declaration-track:1be786d5bf517a6a296837a7ce2649e9f6b00505aa6c5ea9f2a0a401ded22905` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--6d542902f0ecd92ccb76d156.md) | 149 | `declaration-track:6d542902f0ecd92ccb76d156afe726766500a6c938ceb5b42198d84d47333663` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--7c2e073e3f4004265c960a00.md) | 151 | `declaration-track:7c2e073e3f4004265c960a001d5eb119708068dc2502218df4cce65e82e40871` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--871e9f1e0d1ed681788f5749.md) | 160 | `declaration-track:871e9f1e0d1ed681788f574921e1de3435a9d20701d73cfa07279cc757223ff1` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--8c65eb61764611b03acda6f8.md) | 169 | `declaration-track:8c65eb61764611b03acda6f8b6d90ddcb6a56f077e47fd18386884b67183127d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--34c90458427403cc4a60b905.md) | 171 | `declaration-track:34c90458427403cc4a60b90525c742ebacde1e196124bdb2ecc88b3dc1005991` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--cf83d9c55a15157310b721f6.md) | 179 | `declaration-track:cf83d9c55a15157310b721f6554102ac00984875a8d8990f120711cc387269b9` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--7b075db6195ab505ad05b731.md) | 187 | `declaration-track:7b075db6195ab505ad05b731f50dc76ae12747fe90c9b11803d589615c832c8a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--b3e6ef56d1bf35be9461004c.md) | 189 | `declaration-track:b3e6ef56d1bf35be9461004c549c565aaf92071cd897ae94f89f82e0e149d3ae` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/declarations/instance--2f59a18895c7316e7dd46061.md) | 193 | `declaration-track:2f59a18895c7316e7dd46061426374efa0617165f6f859daea24f65d712a8c38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
