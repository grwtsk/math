# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8075f69734b6fd0a67d8744f85d5e934bd0ddc2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8075f69734b6fd0a67d8744f85d5e934bd0ddc2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [revisionModulus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/revisionmodulus--f965d5f0c385be515c64c9a1.md) | 21 | `declaration-track:f965d5f0c385be515c64c9a1b20f308dd52a6d8649e66edc67a87bf617e7984f` |
| 2 | `abbrev` | [Revision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/revision--d2078ab4d95427f8bd18b82a.md) | 24 | `declaration-track:d2078ab4d95427f8bd18b82a012e983b3f8736ba4c56f4982897cd8b8df35df1` |
| 3 | `def` | [next?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/next--1e12e6ed76c485bcf9d59150.md) | 29 | `declaration-track:1e12e6ed76c485bcf9d59150cfc0ff90d272b1fc10be63f865599095e4ef2d59` |
| 4 | `theorem` | [next?_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/next-sound--006f2ce08f439e91a7ab41a2.md) | 37 | `result-track:006f2ce08f439e91a7ab41a23c8db5435b69b63371440e2f4432d896590a5dab` |
| 5 | `theorem` | [next?_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/next-strict--e61d320f74b7fcb2f0683212.md) | 47 | `result-track:e61d320f74b7fcb2f0683212d619e91725047ffab613fdbcff5edd74fd1aed72` |
| 6 | `theorem` | [next?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/next-eq-none-iff--8c0b47fbfc0f8254ef8a2023.md) | 56 | `result-track:8c0b47fbfc0f8254ef8a2023c8a80713921cc54140fd9b5e9fd7a44c808bd976` |
| 7 | `structure` | [RevisionedXYZ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/revisionedxyz--19bde54a67ba897dedb8450a.md) | 64 | `declaration-track:19bde54a67ba897dedb8450a2c5aaa7e6b8fcfad071ca2ed6c37408c6e11f4a4` |
| 8 | `structure` | [LwwRegister](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/lwwregister--062133b398afd686ae4b1ced.md) | 71 | `declaration-track:062133b398afd686ae4b1cedc9260d974b97db2be21cad4b6a8f0510e50610eb` |
| 9 | `inductive` | [MergeDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/mergedecision--8c5c734ff16b012df251603b.md) | 77 | `declaration-track:8c5c734ff16b012df251603bed7b685d52b42909cfdcb9f2ba49333761fdefe6` |
| 10 | `def` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/merge--33af43448ac134711f196728.md) | 85 | `declaration-track:33af43448ac134711f196728e62698d690e16ad0a588f41da22c3dfedd3b7935` |
| 11 | `def` | [MergeDecision.result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/mergedecision-result--058c7867a8721968d795b8e0.md) | 102 | `declaration-track:058c7867a8721968d795b8e0ef2e483ef6435506674376312ea1d47f73164e33` |
| 12 | `def` | [LwwRegister.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/lwwregister-apply--372a3b700bf35cbc3dc4ffe5.md) | 111 | `declaration-track:372a3b700bf35cbc3dc4ffe5742f39660660591e38adbe8e0fc1fff93d2394b1` |
| 13 | `theorem` | [merge_deterministic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/merge-deterministic--a84019d576be62a35489a6a3.md) | 118 | `result-track:a84019d576be62a35489a6a349bdc1f10e8da88267e00bcaf8fc2d3ad0f10fac` |
| 14 | `theorem` | [staleRevision_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/stalerevision-rejected--dd11457a353d1f8f69574afd.md) | 128 | `result-track:dd11457a353d1f8f69574afddf13667ebab7c0f48ae33b65f87928a9312ec205` |
| 15 | `theorem` | [equalRevision_conflict_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/equalrevision-conflict-rejected--1c0c857426a0759ea62c5862.md) | 136 | `result-track:1c0c857426a0759ea62c586268027e4acfc148dddda57e366bb92e7676811901` |
| 16 | `theorem` | [equalRevision_identical_replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/equalrevision-identical-replay--f8099cf1d0d72061a31aef00.md) | 145 | `result-track:f8099cf1d0d72061a31aef00cbbf1bf6d36a11a8df85182b5ac5207208e1cc0e` |
| 17 | `theorem` | [acceptedRevision_not_stale](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/acceptedrevision-not-stale--25f5eaad82c12e0a9ae6df36.md) | 155 | `result-track:25f5eaad82c12e0a9ae6df362cab39ddcd4adb142ab84ad7a54487d8551e8a43` |
| 18 | `theorem` | [merge_revision_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743.lean/declarations/merge-revision-monotone--bc6cf1d650eec66caa2a1361.md) | 164 | `result-track:bc6cf1d650eec66caa2a1361a7c9cd319c7a12280df3ff114d672c5c57c1c851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
