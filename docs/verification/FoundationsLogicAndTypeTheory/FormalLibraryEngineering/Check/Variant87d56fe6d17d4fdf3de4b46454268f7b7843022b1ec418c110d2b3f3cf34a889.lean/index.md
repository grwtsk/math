# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "139c054faa039d297522f6f79da2ea0e673560f9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `139c054faa039d297522f6f79da2ea0e673560f9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.OriginalConstKind` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ensureType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/ensuretype--0c8282f197973927105dbd2a.md) | 30 | `declaration-track:0c8282f197973927105dbd2a1e9583ae3c1c1411df697cb6e110e6336642986c` |
| 2 | `def` | [checkConstant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/checkconstant--ec1271fc24941d26a9657384.md) | 33 | `declaration-track:ec1271fc24941d26a96573845013cb001c81de71d9c50c029fe81d71677c6787` |
| 3 | `def` | [getFunctionDomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/getfunctiondomain--432a293ab450b34841567fc8.md) | 38 | `declaration-track:432a293ab450b34841567fc8532b0b8c8fcaea0932246ba0b50f44cb764b9fb9` |
| 4 | `def` | [addPPExplicitToExposeDiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/addppexplicittoexposediff--6fa836e27b7727f20152e176.md) | 81 | `declaration-track:6fa836e27b7727f20152e176082c45afc949c3ea7dec0b55ed90351a425ea768` |
| 5 | `def` | [throwLetTypeMismatchMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/throwlettypemismatchmessage--c510b1ba327ce6eb0e14baa7.md) | 196 | `declaration-track:c510b1ba327ce6eb0e14baa7a7fb5103888c7af6ac18b2ebb1c5616c09f14a79` |
| 6 | `def` | [mkUnfoldAxiomsNote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/mkunfoldaxiomsnote--05ead93ad9795ca4dc3fb705.md) | 207 | `declaration-track:05ead93ad9795ca4dc3fb70534628578f5df8b9e16ca37a6ea51e9b03037e7d2` |
| 7 | `def` | [mkHasTypeButIsExpectedMsg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/mkhastypebutisexpectedmsg--3305545412163baa548f93fb.md) | 232 | `declaration-track:3305545412163baa548f93fb9b5c5b7532db6f043f6a492f8bbf0cb1a05151ea` |
| 8 | `def` | [throwAppTypeMismatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/throwapptypemismatch--9e7aeeb2c7ddf727df4c2067.md) | 258 | `declaration-track:9e7aeeb2c7ddf727df4c2067565d722a2aeb762669ec2af9b33317cfcf9dfcfd` |
| 9 | `def` | [checkApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/checkapp--6dc2c7607e8d93b979519a6a.md) | 280 | `declaration-track:6dc2c7607e8d93b979519a6a8b36f26d12320affbc518f69dbf0f96ae8e1625e` |
| 10 | `def` | [checkProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/checkproj--a605e4ce64bd5bc22c31e240.md) | 290 | `declaration-track:a605e4ce64bd5bc22c31e24031368efb142195019b5b2395ef85df2665d03ef2` |
| 11 | `def` | [checkAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/checkaux--88a48777f7d55f9621a435e1.md) | 296 | `declaration-track:88a48777f7d55f9621a435e1c30ad301ee1fbf79526062066bd39d81c1df2006` |
| 12 | `def` | [check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/check--fea8b8a8dac97669c9758288.md) | 339 | `declaration-track:fea8b8a8dac97669c9758288b1e129b8b9feb4ed7b1754fa790474bda4f4bb11` |
| 13 | `def` | [withInstancesTypeCheckNote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/withinstancestypechecknote--48e0b8d297cfa4b5c455163f.md) | 356 | `declaration-track:48e0b8d297cfa4b5c455163f80dddf3ad7adbe56491fb8faaf2f7209fa0664e0` |
| 14 | `def` | [isTypeCorrect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/istypecorrect--68523ac2ff2b7ed78dc06c7a.md) | 373 | `declaration-track:68523ac2ff2b7ed78dc06c7a04d4b91f6ad325572d925e3bd37c6a41c3ddf117` |
| 15 | `def` | [checkWithKernel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/checkwithkernel--9e3a6e680344506063f15092.md) | 385 | `declaration-track:9e3a6e680344506063f15092e1d1581d643a46b5f9ed6c03ac68a47fe3babf0a` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/declarations/builtin-initialize--e0e80142e1f84dc4c0a9a77d.md) | 391 | `declaration-track:e0e80142e1f84dc4c0a9a77ddd537be8eea150ab066b4b9cabd14cb4af037469` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
