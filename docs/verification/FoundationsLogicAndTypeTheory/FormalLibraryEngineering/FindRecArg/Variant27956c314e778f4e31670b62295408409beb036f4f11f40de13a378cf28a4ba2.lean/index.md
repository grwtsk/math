# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindRecArg.Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4e9d136e9e938c70a0f7ddb7ee2d0eb5948675f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4e9d136e9e938c70a0f7ddb7ee2d0eb5948675f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prettyParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/prettyparam--a286f4b3294b11b322a3f17b.md) | 19 | `declaration-track:a286f4b3294b11b322a3f17befd72e614cc91b85e32912d347bc8571ad98f5f3` |
| 2 | `def` | [prettyRecArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/prettyrecarg--29c93503be2c95849b662279.md) | 24 | `declaration-track:29c93503be2c95849b662279374e126bce85f758ccf50f77adc2e942b1bb5ab5` |
| 3 | `def` | [prettyParameterSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/prettyparameterset--653049af0868df21fcdc2288.md) | 28 | `declaration-track:653049af0868df21fcdc22883709cc5bef83c0955c41b24bd7f898a433dfc11d` |
| 4 | `def` | [getIndexMinPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/getindexminpos--d37c0adf892f7a31962fe802.md) | 38 | `declaration-track:d37c0adf892f7a31962fe8021571077e2f0034918aee7a75db5dd16d26bc61a6` |
| 5 | `def` | [hasBadIndexDep?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/hasbadindexdep--397d4d22be7da2f3fcab6bc3.md) | 47 | `declaration-track:397d4d22be7da2f3fcab6bc3a1806a54c6df8cf0d1724e4edaa141aaa7df1680` |
| 6 | `def` | [hasBadParamDep?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/hasbadparamdep--a692216dccb492694d31cc91.md) | 56 | `declaration-track:a692216dccb492694d31cc9161e2a998c5429fe3e4477380570f03ae4df35767` |
| 7 | `def` | [getRecArgInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/getrecarginfo--ccaefc96767ac4b2d8c780fa.md) | 67 | `declaration-track:ccaefc96767ac4b2d8c780fa3ff04603ac69ace02a99a1993c535711a59df881` |
| 8 | `def` | [getRecArgInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/getrecarginfos--f55fd73eb27f7744b10ca989.md) | 120 | `declaration-track:f55fd73eb27f7744b10ca989674bfb6fc11b728f99ad582484cc3beb17a3d298` |
| 9 | `def` | [nonIndicesFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/nonindicesfirst--70455e9529e1c2521ad323fc.md) | 152 | `declaration-track:70455e9529e1c2521ad323fce765b7d901cb4c506b04553cf70d01db41cd196e` |
| 10 | `def` | [dedup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/dedup--b228e34b7b7d9c03ec605199.md) | 160 | `declaration-track:b228e34b7b7d9c03ec6051993a73cfa2ff2e684e845e41856e6dc506f68f7dfe` |
| 11 | `def` | [inductiveGroups](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/inductivegroups--4a35a8e192bb793c6e1369a9.md) | 170 | `declaration-track:4a35a8e192bb793c6e1369a9bf8ca7fb8070191827c03f45e1b19d240ff3bd2a` |
| 12 | `def` | [argsInGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/argsingroup--caa5c50893afc9dc19d7b072.md) | 186 | `declaration-track:caa5c50893afc9dc19d7b0721825d64690e5f8dc36de5b7246855752530f59b6` |
| 13 | `def` | [maxCombinationSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/maxcombinationsize--dbef712f846cbea0c729fe33.md) | 226 | `declaration-track:dbef712f846cbea0c729fe334096e3055239cbabe8fc566545d1b4352d5f702c` |
| 14 | `def` | [allCombinations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/allcombinations--2cdecdd10ef1fe8801c1d341.md) | 228 | `declaration-track:2cdecdd10ef1fe8801c1d34163fe80dc04c5ff17706340a5486f496fd1d4f8cf` |
| 15 | `structure` | [RecArgCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/recargcandidate--40ecf3f46d6cd9bc7ada6352.md) | 241 | `declaration-track:40ecf3f46d6cd9bc7ada63527d9851c9da83017f052fea75dad54dd65fff34da` |
| 16 | `structure` | [RecArgCandidates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/recargcandidates--57cfa47b63a4a4af733e196f.md) | 246 | `declaration-track:57cfa47b63a4a4af733e196fe2d4473292ea7d616481152bb986eea3585eb888` |
| 17 | `def` | [findRecArgCandidates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/findrecargcandidates--4c3b242fefeb641b67c1f2b8.md) | 256 | `declaration-track:4c3b242fefeb641b67c1f2b8dc7ff4b3acff61becfb24d1393dbb30494a32927` |
| 18 | `def` | [tryCandidates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/declarations/trycandidates--b4fce176744fd866240bf417.md) | 296 | `declaration-track:b4fce176744fd866240bf41773e79e5288b7624ec35dd52f2a86050db1bf52a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
