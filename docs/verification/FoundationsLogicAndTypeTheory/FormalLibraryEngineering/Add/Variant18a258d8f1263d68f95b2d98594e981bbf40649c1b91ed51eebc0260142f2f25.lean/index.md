# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Add.Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82eb3405a1d5338b927f8d59030245e047e9fe7f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82eb3405a1d5338b927f8d59030245e047e9fe7f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.DocString` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [validateDocComment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/validatedoccomment--b617b512acc4686c49e9bb3f.md) | 29 | `declaration-track:b617b512acc4686c49e9bb3fd23266fd8385ef899cbedded1f412dbe65a56026` |
| 2 | `def` | [parseVersoDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/parseversodocstring--3c7b8cc5a43de8812a3d5165.md) | 52 | `declaration-track:3c7b8cc5a43de8812a3d5165bb8977db729cb82713c8bf298cd6980ea8c6a0d6` |
| 3 | `def` | [reportVersoParseFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/reportversoparsefailure--4b33b6d8434898c7c49762c8.md) | 124 | `declaration-track:4b33b6d8434898c7c49762c8f41634f023c2e24407664c49e87e9bff90f4b823` |
| 4 | `structure` | [VersoDocResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/versodocresult--5465d6d3489f1ec2c7a18d69.md) | 181 | `declaration-track:5465d6d3489f1ec2c7a18d690636152087427450778bdb075ecff9c09083f4f3` |
| 5 | `def` | [execVersoBlocks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/execversoblocks--16d000a59618d0a9cea286ef.md) | 195 | `declaration-track:16d000a59618d0a9cea286ef444266b39432088f25856734650d4ae0247eb6a4` |
| 6 | `def` | [versoDocStringOfText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/versodocstringoftext--7154bb74ed96a41750174f66.md) | 225 | `declaration-track:7154bb74ed96a41750174f6652235749137c71fed270080f9ac25fa4f24b62e1` |
| 7 | `def` | [versoDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/versodocstring--c3a5496a92e743b892960128.md) | 260 | `declaration-track:c3a5496a92e743b8929601280acecaaec6e03c2d269eaacf515484c747920598` |
| 8 | `def` | [versoModDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/versomoddocstring--1e13296841777673147f7741.md) | 288 | `declaration-track:1e13296841777673147f77418a710bea950601fa86ccfc5b44db3a9b615254a2` |
| 9 | `def` | [versoDocStringFromString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/versodocstringfromstring--1f0ee08e5f032e120b3cc3ce.md) | 301 | `declaration-track:1f0ee08e5f032e120b3cc3ce5da869ca8c01c7c3f61489964d7ee89532ed6f71` |
| 10 | `def` | [addMarkdownDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/addmarkdowndocstring--0a8efa0f4b368f88b0073f2c.md) | 309 | `declaration-track:0a8efa0f4b368f88b0073f2c71fd741d3c7d7a4f5e762959ca4ba59cc97f9c3d` |
| 11 | `def` | [addVersoDocStringCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/addversodocstringcore--75868780be67a12240e2e530.md) | 327 | `declaration-track:75868780be67a12240e2e530878509fd01cbaf20a45e5db504d8591ff72701c4` |
| 12 | `def` | [addVersoModDocStringCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/addversomoddocstringcore--754f4f6a3eb85ad9cf2193fb.md) | 343 | `declaration-track:754f4f6a3eb85ad9cf2193fb53197f403ba29d5177024ca6672c8c8cb106cdaa` |
| 13 | `def` | [addVersoDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/addversodocstring--b21b59bd779e01aee5e44ad2.md) | 365 | `declaration-track:b21b59bd779e01aee5e44ad252f4836f07c069b59a569aba88b471745a8ed893` |
| 14 | `def` | [addVersoDocStringFromString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/addversodocstringfromstring--6542fd3161de4011f13ca129.md) | 377 | `declaration-track:6542fd3161de4011f13ca12966e2f21dac77768e5a4836cebfc4ca297186fc2c` |
| 15 | `def` | [addDocStringOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/adddocstringof--13231db242b5a02316d7f88d.md) | 389 | `declaration-track:13231db242b5a02316d7f88dbd79af7bc9e1927f08e28611e720ecb92e822799` |
| 16 | `def` | [makeDocStringVerso](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/makedocstringverso--a1cb79fa018c3616e36dc685.md) | 402 | `declaration-track:a1cb79fa018c3616e36dc685cf84152869ad8133882c1b659e6eedcbcbfe15c8` |
| 17 | `def` | [addDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/adddocstring--557534259d2c939dd3a6b6b5.md) | 425 | `declaration-track:557534259d2c939dd3a6b6b5b39d2d16c000b0547f54f27af4f882e4d0cca0ce` |
| 18 | `def` | [addDocString'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/adddocstring--79993dd266290c138ec67564.md) | 447 | `declaration-track:79993dd266290c138ec67564e73fd4b2f8ab9d9942f71c0c265c3dfb1181168a` |
| 19 | `def` | [addVersoModDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/declarations/addversomoddocstring--92c0f2cc338d100ad1a64a9c.md) | 465 | `declaration-track:92c0f2cc338d100ad1a64a9c2b1f80e39fb8223a11c1300469b1445e24364aab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
