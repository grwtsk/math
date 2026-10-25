# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Language.Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fb0e1ea0ccf8341a77792fde5cad2680164b448",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fb0e1ea0ccf8341a77792fde5cad2680164b448`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean.json)

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
| 1 | `inductive` | [LanguageId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/languageid--364efefcf96bea12b21e48dd.md) | 20 | `declaration-track:364efefcf96bea12b21e48dd5902294bf1ed424f8f006e0fe9c0ea2ba6cb38de` |
| 2 | `def` | [LanguageId.code](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/languageid-code--2551cb98210af7d5c73593e6.md) | 27 | `declaration-track:2551cb98210af7d5c73593e68c9a842189b715bbadc7388a34123f4f75f5d52b` |
| 3 | `def` | [LanguageId.ofCode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/languageid-ofcode--3b372b09d043587546defc11.md) | 33 | `declaration-track:3b372b09d043587546defc11e5b499bdb2757549548aa4280418dee81a17682b` |
| 4 | `theorem` | [languageCode_roundtrip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/languagecode-roundtrip--5379fa8f04153807642487f2.md) | 41 | `result-track:5379fa8f04153807642487f259faf20551a0b7b27519f2cb1ec08409480e2dcc` |
| 5 | `theorem` | [unknown_language_code_fails_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/unknown-language-code-fails-closed--e064107daca5699f32dd8aed.md) | 46 | `result-track:e064107daca5699f32dd8aed3c460f210b58e91bfbb133c07e2c1bd27ddacfb7` |
| 6 | `structure` | [ParserFingerprint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/parserfingerprint--3fa6dbfcb7f95e1fc4ef2193.md) | 53 | `declaration-track:3fa6dbfcb7f95e1fc4ef21936de1dfd56e3687ecd8f341519f63710d25ed151b` |
| 7 | `def` | [ParserFingerprint.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/parserfingerprint-valid--72638f80ad48d6d479a43fd1.md) | 62 | `declaration-track:72638f80ad48d6d479a43fd16388ce82afdf3eb841431adef0863afc48bf6abb` |
| 8 | `inductive` | [ParserAuthority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/parserauthority--7932be98771034f96629c939.md) | 70 | `declaration-track:7932be98771034f96629c93980240cb36657cbdad1610f9d3058d5ce48112e4e` |
| 9 | `def` | [ParserAuthority.isCanonicalCompilerObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/parserauthority-iscanonicalcompilerobservation--01e6ab1b0056da8642e633bb.md) | 77 | `declaration-track:01e6ab1b0056da8642e633bbfdc770cbf78abdf41f9267b9766b68ba45a15408` |
| 10 | `theorem` | [recoveredPreview_is_not_canonical](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/recoveredpreview-is-not-canonical--95878cbf29a2e3b45cb3d7c4.md) | 82 | `result-track:95878cbf29a2e3b45cb3d7c48d4b4af3c40d122fadf5d17666ff13b24dc89356` |
| 11 | `theorem` | [structuralParserObservation_is_not_canonical](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/structuralparserobservation-is-not-canonical--a9b4695518c4de301ec5342c.md) | 87 | `result-track:a9b4695518c4de301ec5342c2317b160b7bcaf7abefaec371ff2c01e6f211b0d` |
| 12 | `structure` | [SourceFileIdentity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/sourcefileidentity--d4c0e2b95f8b0f3747e5914d.md) | 92 | `declaration-track:d4c0e2b95f8b0f3747e5914dfc9b1a6824c57e054cb8d3372e4cafe596d02434` |
| 13 | `structure` | [SourceSnapshotId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/sourcesnapshotid--e1eb16adf0cefb48f0abf737.md) | 99 | `declaration-track:e1eb16adf0cefb48f0abf737b00c08e472f93e7cf832357b64462ece888e3774` |
| 14 | `structure` | [BuildTargetIdentity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea.lean/declarations/buildtargetidentity--829678dd7f98011011085aaf.md) | 105 | `declaration-track:829678dd7f98011011085aaf177c370ca040e426f59af5f1a2f40b0999924078` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
