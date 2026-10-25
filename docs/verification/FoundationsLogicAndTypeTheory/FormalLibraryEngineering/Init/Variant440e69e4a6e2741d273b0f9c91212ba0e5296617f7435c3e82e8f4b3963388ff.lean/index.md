# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcb55b4a76dfc900dbe83431c9a65b0528e57d35",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcb55b4a76dfc900dbe83431c9a65b0528e57d35`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Function` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinterSets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/lintersets--d1953af90d77142ddef24b26.md) | 28 | `declaration-track:d1953af90d77142ddef24b26d42505935875d6c551f8491b774a38e24ed35fe8` |
| 2 | `def` | [insertLinterSetEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/insertlintersetentry--a685738ad5ca4c0325ac377a.md) | 36 | `declaration-track:a685738ad5ca4c0325ac377ae8bdee6030ca93565fb7d216df78efe06fa2f344` |
| 3 | `structure` | [LinterSetsState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/lintersetsstate--429d8069d9f6fc95c91098dc.md) | 46 | `declaration-track:429d8069d9f6fc95c91098dc35dd19e4c51a8deeed6bd39df2b5e8f86778384c` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/builtin-initialize--4c2482e8f768ee387c7f1d05.md) | 56 | `declaration-track:4c2482e8f768ee387c7f1d05fd9d8b49ee194d10c3f809fece7fb14ee4853f94` |
| 5 | `def` | [addBuiltinLinterSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/addbuiltinlinterset--fc9b08cb638cd0ce43621c22.md) | 60 | `declaration-track:fc9b08cb638cd0ce43621c22200003598b27f8d6c41c1644f0c05205e2122386` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/builtin-initialize--34c3c190a5bc74202afed009.md) | 63 | `declaration-track:34c3c190a5bc74202afed0098ccf527eea117c79b0e312202e0a547b2956bb81` |
| 7 | `structure` | [LinterOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/linteroptions--19dac0ac53e15f8120ade8cb.md) | 89 | `declaration-track:19dac0ac53e15f8120ade8cbec081a22b8964f339d14b00b652797dfdea0000b` |
| 8 | `def` | [LinterOptions.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/linteroptions-get--6fdd7e6abc405bba8d34fcea.md) | 93 | `declaration-track:6fdd7e6abc405bba8d34fceaef6de1bf0a05e38114e8955d9e5653e85611e2de` |
| 9 | `def` | [LinterOptions.get?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/linteroptions-get--7cf0636f7508674850217c8a.md) | 94 | `declaration-track:7cf0636f7508674850217c8a80ac6b4125e110a7db1a746730ed26c04bda2451` |
| 10 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinterSetsState.Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.Lean.Options.toLinterOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-linte--0c9f7a7d940c79d85a337edf.md) | 96 | `declaration-track:0c9f7a7d940c79d85a337edff0146dbe3c5164180481016baddacec923ff6a66` |
| 11 | `def` | [LinterOptions.getSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/linteroptions-getset--83c8d89376518121e8f6ac11.md) | 101 | `declaration-track:83c8d89376518121e8f6ac11e5007d928382905a42457a74ff83e67b5cf975b2` |
| 12 | `def` | [getLinterOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/getlinteroptions--08df748e9c132b266eb60ecd.md) | 104 | `declaration-track:08df748e9c132b266eb60ecda5e77281ab476c70a4023d160f5d30d97feabdff` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/builtin-initialize--0d74cd5e4f9fdcc8d78da74b.md) | 122 | `declaration-track:0d74cd5e4f9fdcc8d78da74b619f15666bbd99ff007fd190c387abd202142e84` |
| 14 | `def` | [addEnvLinterOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/addenvlinteroption--3b283f520ef4be01491ba048.md) | 124 | `declaration-track:3b283f520ef4be01491ba048f851e220b335eb190f386d1178c16611e99c88c7` |
| 15 | `def` | [getLinterAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/getlinterall--dc8571282d1da2af452e69d6.md) | 127 | `declaration-track:dc8571282d1da2af452e69d6257184431fffa011f4b6109a91025d72b553bd21` |
| 16 | `def` | [getLinterValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/getlintervalue--597740f2982ae77e29dd214b.md) | 130 | `declaration-track:597740f2982ae77e29dd214bbd06cbe7a7dfb975b9ef4f553c6528bba2a5bb7e` |
| 17 | `def` | [isLinterEnabledByOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/islinterenabledbyoptions--494527d4b8198a15411e5dc0.md) | 133 | `declaration-track:494527d4b8198a15411e5dc04f5cd701e133a84d8f55bbca6ed24b476a9bf1cb` |
| 18 | `def` | [linterMessageTag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/lintermessagetag--2edf2e76ae8e7a1c61d2f9c2.md) | 141 | `declaration-track:2edf2e76ae8e7a1c61d2f9c2fb49a488f7ae6c39bd308c447a3bb8a9d29ea04e` |
| 19 | `def` | [logLint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/loglint--80a1c60e0a072678b21c7c9e.md) | 143 | `declaration-track:80a1c60e0a072678b21c7c9ed33a9ce1fbafef8338fbf188e8299a2dce7a9fa6` |
| 20 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinterSetsState.Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.Lean.MessageData.isLinterMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-linte--8395234fcaebba69d5392dce.md) | 152 | `declaration-track:8395234fcaebba69d5392dce5da5a1ec5e33c322eb1472f1099ae50b6fdfaabc` |
| 21 | `def` | [logLintIf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/loglintif--b905a4837f4b7322f6a7c05b.md) | 166 | `declaration-track:b905a4837f4b7322f6a7c05b99765e7532ff8985e3b907f2cc3fe3d05667e70a` |
| 22 | `abbrev` | [EnvLinterSnapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/envlintersnapshot--46a87d4e7fad0561cfd99006.md) | 170 | `declaration-track:46a87d4e7fad0561cfd99006db7f4e27d897fdbecd1b097e519ec0c16776d791` |
| 23 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/builtin-initialize--34144a5e5834b89784df4b1e.md) | 176 | `declaration-track:34144a5e5834b89784df4b1e57d75de9f8bacb6108feb50d6eb52ff9844b6733` |
| 24 | `def` | [getEnvLinterSnapshotEntry?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/declarations/getenvlintersnapshotentry--1f4adf3a5c746762502f4285.md) | 181 | `declaration-track:1f4adf3a5c746762502f42853d59e5c24215380cf5a9edd83acb6d312afc9326` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
