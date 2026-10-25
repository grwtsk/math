# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c1f19123351bc001d327711b1c430ec37e0debd",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c1f19123351bc001d327711b1c430ec37e0debd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Function` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinterSets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/lintersets--9036c5077aef9451ec6893ad.md) | 20 | `declaration-track:9036c5077aef9451ec6893ad59db5166e1ee5adac670cc9c175590765607e2f8` |
| 2 | `def` | [insertLinterSetEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/insertlintersetentry--623c0c3bfe22e35c6c02b6a5.md) | 28 | `declaration-track:623c0c3bfe22e35c6c02b6a5cb3ab9834a0d958c071cf3cf082c91603f9fe603` |
| 3 | `structure` | [LinterSetsState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/lintersetsstate--f75afefd5fc75e535d589088.md) | 38 | `declaration-track:f75afefd5fc75e535d589088b742fefab9ac3c484c5815eb6ee0ed94a26ada8a` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/builtin-initialize--8c7e5d70c0f1b0d984e47d64.md) | 48 | `declaration-track:8c7e5d70c0f1b0d984e47d6465849131c18c6367d27de4be2082d648fb4f922b` |
| 5 | `def` | [addBuiltinLinterSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/addbuiltinlinterset--3eea1cb659dc68e4019b75ac.md) | 52 | `declaration-track:3eea1cb659dc68e4019b75ac42732f9ac01fe98cd79e512ffd225df7230c2019` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/builtin-initialize--472217bcf549af566fe8b25e.md) | 55 | `declaration-track:472217bcf549af566fe8b25e61a782de99dd3db3442e687004a7d733a8b4db5c` |
| 7 | `structure` | [LinterOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/linteroptions--c9d5edee9a1eca1c92a0e239.md) | 81 | `declaration-track:c9d5edee9a1eca1c92a0e239bcf154a6b6ec4cc1b0ed14609a0543ae4a7c1491` |
| 8 | `def` | [LinterOptions.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/linteroptions-get--a8eb9dd0ddef6943dbaf56e3.md) | 85 | `declaration-track:a8eb9dd0ddef6943dbaf56e3d01ec249ada4f96a69738816f0c7260230801b01` |
| 9 | `def` | [LinterOptions.get?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/linteroptions-get--440b3238e77a42664876d442.md) | 86 | `declaration-track:440b3238e77a42664876d442b33aa9e79c1876705d3fa4b01406ad90dc21a40c` |
| 10 | `def` | [_root_.Lean.Options.toLinterOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/root-lean-options-tolinteroptions--e854433e8f000b0cc6921f3b.md) | 88 | `declaration-track:e854433e8f000b0cc6921f3b90dd652b3c1292e5cf6cb29f3f2f3df325d4ab17` |
| 11 | `def` | [LinterOptions.getSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/linteroptions-getset--8c562c3ce5f579612c681e04.md) | 93 | `declaration-track:8c562c3ce5f579612c681e0420bc5d6ffbd5b2445659df03d4c974871b434a58` |
| 12 | `def` | [getLinterOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/getlinteroptions--ee545e16bf84f11bcae6bdae.md) | 96 | `declaration-track:ee545e16bf84f11bcae6bdaeccc70c4591bfc772b75ccbfa290c0e7e3be0628c` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/builtin-initialize--c8378172c8e38edf82f04014.md) | 114 | `declaration-track:c8378172c8e38edf82f040140bf9b2e7125c641a5acdbcb991828d571f63cbfb` |
| 14 | `def` | [addEnvLinterOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/addenvlinteroption--08625187dca5f2d1da4b63e1.md) | 116 | `declaration-track:08625187dca5f2d1da4b63e15a0b5097ba3be8e3cb9bb275c12b1d81ba9f42a9` |
| 15 | `def` | [getLinterAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/getlinterall--414153d699bc500a797ea104.md) | 119 | `declaration-track:414153d699bc500a797ea10495f80ca81f3f99d12f19456de576804d170e35e4` |
| 16 | `def` | [getLinterValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/getlintervalue--f436b4bb4edd5eaed7efde9f.md) | 122 | `declaration-track:f436b4bb4edd5eaed7efde9fe553106addadbd18e420a03b1fb4854ad877ce3e` |
| 17 | `def` | [isLinterEnabledByOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/islinterenabledbyoptions--2313346423cde5eba682d75c.md) | 125 | `declaration-track:2313346423cde5eba682d75c6cb8ae95c8bc30cd97b24b4e2bd738867d0a0705` |
| 18 | `def` | [linterMessageTag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/lintermessagetag--bb89b4395a02d3b4787a5da9.md) | 133 | `declaration-track:bb89b4395a02d3b4787a5da99fa86d64d3723774d307c9621eb326d89cb90dbc` |
| 19 | `def` | [logLint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/loglint--509a595086e84b95a52b3e24.md) | 135 | `declaration-track:509a595086e84b95a52b3e24a71c61cbe568fe123adb2dc3da170f39f9b5fe1e` |
| 20 | `def` | [_root_.Lean.MessageData.isLinterMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/root-lean-messagedata-islintermessage--65790c6978f9b29331d6d8fe.md) | 144 | `declaration-track:65790c6978f9b29331d6d8fe697358e09fe6296d23a32d82fb407c4199b61407` |
| 21 | `def` | [logLintIf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/loglintif--4ed614367e0c9f4f46ab6577.md) | 158 | `declaration-track:4ed614367e0c9f4f46ab6577fe059bd232f36fbe5d977d51a40d29444f3dd19c` |
| 22 | `abbrev` | [EnvLinterSnapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/envlintersnapshot--cf0894c6cf212cf4a15112f4.md) | 162 | `declaration-track:cf0894c6cf212cf4a15112f46978c71cef1b1ab70e9cc82d1eb39b17bbfa69e6` |
| 23 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/builtin-initialize--6a919972e2f4c0cb3355742d.md) | 168 | `declaration-track:6a919972e2f4c0cb3355742dcd13470b6b2dcc608828b35286ceafbeb410cf45` |
| 24 | `def` | [getEnvLinterSnapshotEntry?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/declarations/getenvlintersnapshotentry--21d83c756ccf5dde9f0443d0.md) | 173 | `declaration-track:21d83c756ccf5dde9f0443d0fb4d2ac83d5699f4a1e69d55d333b802ace9efab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
