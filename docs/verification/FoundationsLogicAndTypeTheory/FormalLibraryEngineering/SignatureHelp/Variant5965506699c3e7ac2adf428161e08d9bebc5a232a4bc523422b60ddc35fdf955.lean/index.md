# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SignatureHelp.Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d494fd8f74af1d64052c7cbddfef48d85eeb215d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d494fd8f74af1d64052c7cbddfef48d85eeb215d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.PrettyPrinter.Delaborator` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [determineSignatureHelp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/declarations/determinesignaturehelp--5078a8fd7a3cdc2f064aa5f5.md) | 28 | `declaration-track:5078a8fd7a3cdc2f064aa5f500f1765fea97ce992611de35a80047e1f18aa51a` |
| 2 | `inductive` | [CandidateKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/declarations/candidatekind--e80e053821975857deb9b312.md) | 62 | `declaration-track:e80e053821975857deb9b312ce7c3ee9259961fdc8f6fd7b955131b94dde6cc8` |
| 3 | `def` | [CandidateKind.prio](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/declarations/candidatekind-prio--92910698e1b3a7760e9a4019.md) | 79 | `declaration-track:92910698e1b3a7760e9a4019578158aa1a950bb40f58990e6f0e44a943588692` |
| 4 | `structure` | [Candidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/declarations/candidate--3cf0b837eae40efd208bcb97.md) | 84 | `declaration-track:3cf0b837eae40efd208bcb970270d5196a450655e581412a0f2a49261da6a5e5` |
| 5 | `inductive` | [SearchControl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/declarations/searchcontrol--1034a7be3b2951dbca6e118c.md) | 88 | `declaration-track:1034a7be3b2951dbca6e118c40343d24b7945e2b20b310d315a5b7b792a99692` |
| 6 | `def` | [lineCommentPosition?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/declarations/linecommentposition--2b7c8cc3650b3b01778359e2.md) | 94 | `declaration-track:2b7c8cc3650b3b01778359e228688629371d1397239c4623c2c1cb3143bd168f` |
| 7 | `def` | [isPositionInLineComment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/declarations/ispositioninlinecomment--9b50092acc09a39c6ee9f7a9.md) | 97 | `declaration-track:9b50092acc09a39c6ee9f7a936998c45afbdde90a0d1f59cc2297c2a7513acdd` |
| 8 | `def` | [findSignatureHelp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/declarations/findsignaturehelp--2c4b7c22f41dd37a0c8498bc.md) | 107 | `declaration-track:2c4b7c22f41dd37a0c8498bc0aaa896133cf40822a7b774721e038df7eb02771` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
