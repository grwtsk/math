# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AlternativeMonad.Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67b16a6c4f095f25192cf77366612d31b19ea1a4",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67b16a6c4f095f25192cf77366612d31b19ea1a4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean.json)

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
| 1 | `class` | [AlternativeMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/alternativemonad--514705cdf8dd067093d1a8b9.md) | 51 | `declaration-track:514705cdf8dd067093d1a8b99d876c95a6e7f9b8b1e49802b7eccc6f498f936c` |
| 2 | `class` | [LawfulAlternative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/lawfulalternative--350c91de06a9fe25ea5ae3f2.md) | 57 | `declaration-track:350c91de06a9fe25ea5ae3f29ab3cfa38a81294d045b9749debd0ae808a76b9f` |
| 3 | `theorem` | [mapConst_failure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/mapconst-failure--56150c7f4504b36c777bca94.md) | 78 | `result-track:56150c7f4504b36c777bca94ac0712ede1f8268dcabb74e05b2c325453707f2f` |
| 4 | `theorem` | [mapConst_orElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/mapconst-orelse--2ff96e00654460d59e7b59e2.md) | 82 | `result-track:2ff96e00654460d59e7b59e2a31e1da5cc7f50033d32dfddfc51309aa0c68128` |
| 5 | `theorem` | [failure_seqLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/failure-seqleft--8d3c8b51f107d6435bf2ca80.md) | 86 | `result-track:8d3c8b51f107d6435bf2ca80fd51129f607421999a064c0a89add42faa02fe2e` |
| 6 | `theorem` | [failure_seqRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/failure-seqright--f08a21d4c6e1e5155896524a.md) | 90 | `result-track:f08a21d4c6e1e5155896524afa73509df5e4cd16f71f1023155a26f13375966d` |
| 7 | `theorem` | [failure_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/failure-bind--489a3213d0309d13a972e794.md) | 98 | `result-track:489a3213d0309d13a972e794830551475d2e2597f154b2985d8aff5fd61dd8a3` |
| 8 | `theorem` | [seq_failure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/seq-failure--7feffa139a2e44bc766375dc.md) | 106 | `result-track:7feffa139a2e44bc766375dcb2dd48ebd029e90d68416c75b345d509458057c1` |
| 9 | `class` | [LawfulAlternativeLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/lawfulalternativelift--272aa17b573a324a2957a08e.md) | 115 | `declaration-track:272aa17b573a324a2957a08e9bb23d3fe47e505a01b5a017aeeabb345421153b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--70fc100b4f796d8813329642.md) | 127 | `declaration-track:70fc100b4f796d8813329642f41d89243b280fb10720b089c715cb89b623d925` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--afcdf803194fce1cb5a12aae.md) | 129 | `declaration-track:afcdf803194fce1cb5a12aae42d01281dacd64be30eb1fd5aac804fe44bd0391` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--24e467eb00715fc0882bcba9.md) | 141 | `declaration-track:24e467eb00715fc0882bcba9c301132144e062f41e87f5ef06ae36c9469da16a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--35790c846e76d44f3a32a1d5.md) | 143 | `declaration-track:35790c846e76d44f3a32a1d5646cc8c4d51895b06f44eff54b2f224505056f6f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--8a47a0b11b454f13e09bf081.md) | 159 | `declaration-track:8a47a0b11b454f13e09bf081bb48d0aa4bf49d3202d2be2b52650dace4c295a0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--1087aa2f56776607f479a702.md) | 161 | `declaration-track:1087aa2f56776607f479a7020a1581beff01bb1f041694ed1b3ed00e5035a633` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--900977869102814e25ba2fb7.md) | 170 | `declaration-track:900977869102814e25ba2fb7317cd83fc3e6b2ef66d1512b98f607123ecb0e3f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--4d0896837cba51d72a18fcf1.md) | 179 | `declaration-track:4d0896837cba51d72a18fcf1dbe286c9cdbf574ea2902e50c712a064704915bc` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--0404ddd72fadac3ff8d36994.md) | 181 | `declaration-track:0404ddd72fadac3ff8d36994e627d07457b4f1792518e9e45a1a7f7977d3963c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--0aa8fab7462d5a7f732fe746.md) | 189 | `declaration-track:0aa8fab7462d5a7f732fe7461d3936ca924b9b791a1e284af4b0bfc21c2e4987` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--c66311099de838d0c8e62b93.md) | 197 | `declaration-track:c66311099de838d0c8e62b937a1269117944bd7ddcf1bfac19167acd56c532b8` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--d53ac561c03a0c208d3a4d91.md) | 199 | `declaration-track:d53ac561c03a0c208d3a4d9184d04ab00a54d1fbdd62d66b28222d8a111e0dba` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--81dad0ae3141ce50a90fbcf6.md) | 203 | `declaration-track:81dad0ae3141ce50a90fbcf6b6219b758cb60103834a630dbc7e1f912115261d` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant8cd43059ee95a94d6716430d4cc1545c6942b9ee9c7ad90ab27f4f706bbb2fb6.lean/declarations/instance--0f34b665853f509eac32d2c6.md) | 208 | `declaration-track:0f34b665853f509eac32d2c6c7126fce0a8641ddfe74a25612ff05576ba451df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
