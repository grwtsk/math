# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07352728d5152195eb2383dd23163777f053ee9c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07352728d5152195eb2383dd23163777f053ee9c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean.json)

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
| 1 | `def` | [revisionModulus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/revisionmodulus--4c43b5f06ab640fb6c712e53.md) | 17 | `declaration-track:4c43b5f06ab640fb6c712e53771014fc556e579132cf2115c7a49cc3dd1612b1` |
| 2 | `abbrev` | [Revision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/revision--4064f9d289669249efd58d04.md) | 19 | `declaration-track:4064f9d289669249efd58d0480912b879dc2f39412aba4d1a268e82be8474c95` |
| 3 | `def` | [next?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/next--7282b9390d1d58c62ee5d648.md) | 23 | `declaration-track:7282b9390d1d58c62ee5d648ef88b4a6cef31ff49d658815d5564c7a257f386b` |
| 4 | `theorem` | [next?_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/next-sound--2e9b582f14dac2cca0bcdbc6.md) | 30 | `result-track:2e9b582f14dac2cca0bcdbc6717b35a7d712337221d6022be7edecba8873a00a` |
| 5 | `theorem` | [next?_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/next-strict--65078b7ab4117c8af275a6dd.md) | 39 | `result-track:65078b7ab4117c8af275a6dd896469b442f748e2345b2d9372cb634b98ac35a2` |
| 6 | `theorem` | [next?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/next-eq-none-iff--576563f331311b77754e77ba.md) | 47 | `result-track:576563f331311b77754e77bafb1d419d4ec0ecb4b94f2ef03d3d274b9191912e` |
| 7 | `structure` | [Revisioned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/revisioned--15c64ab52d8043a6ebbf6cbe.md) | 54 | `declaration-track:15c64ab52d8043a6ebbf6cbe05264b639f4df65600a09f70886943d70be61eeb` |
| 8 | `structure` | [LwwRegister](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/lwwregister--e9f0ea6e33513515b7b78a41.md) | 60 | `declaration-track:e9f0ea6e33513515b7b78a419d7c993a3d0b09518dcf5a14273e07e92aa218e6` |
| 9 | `inductive` | [MergeDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/mergedecision--d9d12a3ce5106115057ea29f.md) | 65 | `declaration-track:d9d12a3ce5106115057ea29fb8e3e9b5b08c1c43d37909045dfe8679e23e8df9` |
| 10 | `def` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/merge--e5e76fb9418260c06e328f09.md) | 72 | `declaration-track:e5e76fb9418260c06e328f09cc3ee29a6fb3ce8da7fbed8b3fb0fddf680aba02` |
| 11 | `def` | [MergeDecision.result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/mergedecision-result--17dc0850891b6043c96110f4.md) | 88 | `declaration-track:17dc0850891b6043c96110f48f9e15f15f97ddff3e15f2e726c1c18e921c3992` |
| 12 | `def` | [LwwRegister.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/lwwregister-apply--aec8533ac1ca8c033df1d61a.md) | 95 | `declaration-track:aec8533ac1ca8c033df1d61a502f03671bea420a3674878c7a32fa11c53c15fa` |
| 13 | `theorem` | [merge_deterministic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/merge-deterministic--ce94234e481ecb29734412d1.md) | 101 | `result-track:ce94234e481ecb29734412d1490b736e2357461104a9f8fa95b1ad9d5e448081` |
| 14 | `theorem` | [staleRevision_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/stalerevision-rejected--7bbd0a993349efdf0ff7ba2a.md) | 110 | `result-track:7bbd0a993349efdf0ff7ba2a17730dcc17bcc3d5308bc1a6dff2aa6bdd790b3b` |
| 15 | `theorem` | [equalRevision_conflict_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/equalrevision-conflict-rejected--36c6230d10c9a87542cc1e15.md) | 117 | `result-track:36c6230d10c9a87542cc1e15f1a66a165971cf9afdfc2ed7506d7475c30205d4` |
| 16 | `theorem` | [equalRevision_identical_replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/equalrevision-identical-replay--0384c80b65e05a0eb8d8e191.md) | 126 | `result-track:0384c80b65e05a0eb8d8e191575bcc9ffd845b8e9c5d78102e3399ab57d03714` |
| 17 | `theorem` | [acceptedRevision_not_stale](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/acceptedrevision-not-stale--690c86ad0a3d6d9c307ddf55.md) | 135 | `result-track:690c86ad0a3d6d9c307ddf55cae0373f4d75831bc5961d3e9fbdd2f975f42d58` |
| 18 | `theorem` | [merge_revision_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/merge-revision-monotone--fdffe3ffb58d6f5915314c6f.md) | 144 | `result-track:fdffe3ffb58d6f5915314c6f94e3bda645b589cb4117968677fa4f8c1b643e0a` |
| 19 | `theorem` | [replay_apply_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/declarations/replay-apply-idempotent--f44a5474b62aeb4e5fc9a3ec.md) | 158 | `result-track:f44a5474b62aeb4e5fc9a3ecc1af98f222459a16bd4f0ff65ebc6b9127fb0435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
