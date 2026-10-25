# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndPredBelow.Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6524946d69761b748e70697dca6f2be6ca67c50",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6524946d69761b748e70697dca6f2be6ca67c50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Constructions.CasesOn` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.Match` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/context--c02b278100dcc5590ad5521d.md) | 32 | `declaration-track:c02b278100dcc5590ad5521dffa4a06e8ca418234934400e01b914d8d8897378` |
| 2 | `def` | [isIH](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/isih--b164e89d1d4444a8b1acefac.md) | 53 | `declaration-track:b164e89d1d4444a8b1acefacda0077510e1fcf448637fd111e94171a274efaea` |
| 3 | `def` | [mkBelowAppOfIdx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/mkbelowappofidx--68262af672b4394566861b60.md) | 58 | `declaration-track:68262af672b4394566861b6098039dcdc7875641aa346210884bfcd4c6efbf7e` |
| 4 | `def` | [ihTypeToBelowType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/ihtypetobelowtype--1504b8082ed9f1a10a7e2b9d.md) | 71 | `declaration-track:1504b8082ed9f1a10a7e2b9dce370f38897a0f78daf4546924833b38d1949582` |
| 5 | `def` | [toImplicit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/toimplicit--4d74bda40d85c6dfafd73742.md) | 77 | `declaration-track:4d74bda40d85c6dfafd7374231acff66f82d7f93e1f69b4e65a553ac73daf078` |
| 6 | `def` | [mkBelowInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/mkbelowinductive--4d04396bc65e973494adb1f4.md) | 83 | `declaration-track:4d04396bc65e973494adb1f42c50f19732d7a6147b29f671ecb6cd32e31937bf` |
| 7 | `def` | [mkBelowInductives](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/mkbelowinductives--259605ce657d1a0a3f8d1f48.md) | 122 | `declaration-track:259605ce657d1a0a3f8d1f486dc39bdf9f9301b15890708b562eec55d15616cf` |
| 8 | `def` | [withBRecOnArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/withbreconargs--eda379c54e87498586a9221d.md) | 135 | `declaration-track:eda379c54e87498586a9221da2800b95ff8d61b9651932ec297dbd4ebc2d0e10` |
| 9 | `def` | [mkBRecOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/mkbrecon--bf65a70fb3163c6b7732d09c.md) | 185 | `declaration-track:bf65a70fb3163c6b7732d09c9b9b73f6fe57c157bb4cb40aad97f25660a1d06a` |
| 10 | `def` | [mkBelow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/mkbelow--bef171dd54202c33cfceb920.md) | 211 | `declaration-track:bef171dd54202c33cfceb920dee3589dfc0693f7ae669e39d4e5d9240632e593` |
| 11 | `def` | [belowRecIndices](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/belowrecindices--2aff83a274922463a3b4243a.md) | 241 | `declaration-track:2aff83a274922463a3b4243a77f6dcf7cef3a1921c6c564888af67746dee02b3` |
| 12 | `structure` | [RecursionContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/recursioncontext--a307e1af31ff8ef8b225744f.md) | 258 | `declaration-track:a307e1af31ff8ef8b225744f88eba19652a6f71b9304878a34ecef02970aa86a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/instance--0fc84fe036d22d437970be38.md) | 271 | `declaration-track:0fc84fe036d22d437970be3822299c39ebf5f7877abc6d3a7fbf4cd1e78945bc` |
| 14 | `inductive` | [NewDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/newdecl--9ee9b6089f101652a08eb333.md) | 282 | `declaration-track:9ee9b6089f101652a08eb3338221d516d799507c76a4e73012f3c8a211f28074` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/instance--2681d477e09f7823d51e3cf3.md) | 288 | `declaration-track:2681d477e09f7823d51e3cf3ed80311ba0c40b41497afb806b7feea6dca343b7` |
| 16 | `def` | [NewDecl.getDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/newdecl-getdecl--571d8edb9031ee0177fa8ef8.md) | 295 | `declaration-track:571d8edb9031ee0177fa8ef89461b84c8b20901f40d6b872ed5f81b459b15b09` |
| 17 | `def` | [collectDirectVarsInPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/collectdirectvarsinpattern--56b847afb6ef2e0a18d2e889.md) | 303 | `declaration-track:56b847afb6ef2e0a18d2e88964dca1c0784da67d528e1ffbfe674c916ace94c2` |
| 18 | `def` | [mkBelowMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/mkbelowmatcher--4e40b486af7a7cdad129fdf5.md) | 319 | `declaration-track:4e40b486af7a7cdad129fdf5a9da7c409667c90bd8d18e989bb7ffafdb1f08eb` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/declarations/builtin-initialize--2f4415d1debefe8c48b67eb2.md) | 504 | `declaration-track:2f4415d1debefe8c48b67eb24da052c29f9abba124b77b0821eeb4b75fc1d302` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
