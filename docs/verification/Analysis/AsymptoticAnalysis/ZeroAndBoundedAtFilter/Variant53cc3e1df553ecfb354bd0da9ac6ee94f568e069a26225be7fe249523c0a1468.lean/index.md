# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZeroAndBoundedAtFilter.Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "482e969672dbe20125d0d151f414ac6b63d9a7f7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `482e969672dbe20125d0d151f414ac6b63d9a7f7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean.json)

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
| 1 | `def` | [ZeroAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/zeroatfilter--872bc1e60d1cb6ad7e67da22.md) | 33 | `declaration-track:872bc1e60d1cb6ad7e67da2272eea41e2095d9f02bb26a1b60a51f0979be3c63` |
| 2 | `theorem` | [zero_zeroAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/zero-zeroatfilter--348672fc86065228a290c8e1.md) | 36 | `result-track:348672fc86065228a290c8e1556ae81fcdb04405c7a6faa7b81069b82065042b` |
| 3 | `theorem` | [ZeroAtFilter.add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/zeroatfilter-add--742ea3ae005197aad66b0875.md) | 40 | `result-track:742ea3ae005197aad66b0875269ea4ef3ca97961fcbbec75b4fb09230875b80b` |
| 4 | `theorem` | [ZeroAtFilter.neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/zeroatfilter-neg--7983e0c055f7b301686ed6ff.md) | 45 | `result-track:7983e0c055f7b301686ed6ff5086f124863763a17fe8c9160a417e56b0069202` |
| 5 | `theorem` | [ZeroAtFilter.smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/zeroatfilter-smul--6cf0aa1dd050d666a03f177a.md) | 49 | `result-track:6cf0aa1dd050d666a03f177a01f76235c2541d94b418cd8117016c84e8de5a6f` |
| 6 | `def` | [zeroAtFilterSubmodule](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/zeroatfiltersubmodule--7f2d7c64d005f707adc5a863.md) | 56 | `declaration-track:7f2d7c64d005f707adc5a863b9f5e5ff0f4d97ffa4c70747d73bba813268c959` |
| 7 | `def` | [zeroAtFilterAddSubmonoid](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/zeroatfilteraddsubmonoid--34b617ccf31e9c489d33bf6b.md) | 67 | `declaration-track:34b617ccf31e9c489d33bf6b0a8d7ab823ba784cd0cf44d99f8c7599e2f61076` |
| 8 | `def` | [BoundedAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/boundedatfilter--7615b2750454bfa7f9e01dc8.md) | 75 | `declaration-track:7615b2750454bfa7f9e01dc8a977f3c9ebd23914985fa75be09736cfe590d8f9` |
| 9 | `theorem` | [ZeroAtFilter.boundedAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/zeroatfilter-boundedatfilter--1399a18ab1bf72d3968bc200.md) | 78 | `result-track:1399a18ab1bf72d3968bc20073147a642394e8efa4edb0fc5568a46d8e34804e` |
| 10 | `theorem` | [const_boundedAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/const-boundedatfilter--a5b6a8358f8246e5c243bc36.md) | 82 | `result-track:a5b6a8358f8246e5c243bc36538e0c636a87d8f2bb83a1ac33eb7557801156ff` |
| 11 | `theorem` | [BoundedAtFilter.add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/boundedatfilter-add--4c5513f82056ec687b1f9b7e.md) | 88 | `result-track:4c5513f82056ec687b1f9b7ec278c0db7f7318f22f84d72ef9ca322de1722c61` |
| 12 | `theorem` | [BoundedAtFilter.neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/boundedatfilter-neg--dfeec7f27dfd713465e04cce.md) | 92 | `result-track:dfeec7f27dfd713465e04cce93119967018ecb28e01c68f7811803e3c0d2e773` |
| 13 | `theorem` | [BoundedAtFilter.smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/boundedatfilter-smul--be28bb9aad2133f669daa996.md) | 96 | `result-track:be28bb9aad2133f669daa9962f4e1fd3542be60e43f259bd748e75c508426df4` |
| 14 | `theorem` | [BoundedAtFilter.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/boundedatfilter-mul--50b6ffc94cce2a2892a3be53.md) | 101 | `result-track:50b6ffc94cce2a2892a3be533f6b9ba66ed7c7f44af02277ff50655d575fcfd0` |
| 15 | `theorem` | [ZeroAtFilter.mul_boundedAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/zeroatfilter-mul-boundedatfilter--37f829116a18d4526a185c7e.md) | 107 | `result-track:37f829116a18d4526a185c7e78175683b67b01de7168071f0327bcc82f1f93eb` |
| 16 | `theorem` | [BoundedAtFilter.mul_zeroAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/boundedatfilter-mul-zeroatfilter--22136f0cb9e4755a4dfcabb2.md) | 112 | `result-track:22136f0cb9e4755a4dfcabb215c36fd7e14055c654da8405ddd3ee36757d2389` |
| 17 | `def` | [boundedFilterSubmodule](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/boundedfiltersubmodule--101a92b3d3eaa52efe4979a2.md) | 119 | `declaration-track:101a92b3d3eaa52efe4979a2b5db5ddcad7afcf654a6b013348c187469e569ad` |
| 18 | `def` | [boundedFilterSubalgebra](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/boundedfiltersubalgebra--08ab7330af9552d0fc913970.md) | 129 | `declaration-track:08ab7330af9552d0fc91397036380146f8cf956b75eac6b7ce60e76ed7892c00` |
| 19 | `theorem` | [BoundedAtFilter.prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/declarations/boundedatfilter-prod--af901bb4abbf71147258ed95.md) | 137 | `result-track:af901bb4abbf71147258ed951522a9ef6895a7323b744e2017d3b52fd22a39c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
