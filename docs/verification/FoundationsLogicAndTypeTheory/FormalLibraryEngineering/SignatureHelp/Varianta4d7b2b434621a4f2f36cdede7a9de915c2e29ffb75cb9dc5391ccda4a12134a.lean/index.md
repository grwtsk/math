# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SignatureHelp.Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fac5c6ba9ebc6409b5a481b9f75eb5a71778de6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fac5c6ba9ebc6409b5a481b9f75eb5a71778de6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.PrettyPrinter.Delaborator` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [determineSignatureHelp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/declarations/determinesignaturehelp--a370c6cb29711e31bf9d0a68.md) | 20 | `declaration-track:a370c6cb29711e31bf9d0a6885f0f6817dc57077635659e45362e1916ca44ea2` |
| 2 | `inductive` | [CandidateKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/declarations/candidatekind--dfaeacad5e911c3a656b0666.md) | 54 | `declaration-track:dfaeacad5e911c3a656b06661029eea28dc35170060441b4427c97cfcea24551` |
| 3 | `def` | [CandidateKind.prio](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/declarations/candidatekind-prio--b33bee81a7d7a0750e51f4d4.md) | 71 | `declaration-track:b33bee81a7d7a0750e51f4d411c56aa61f1b3b692571782d69d70e0da690d7c7` |
| 4 | `structure` | [Candidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/declarations/candidate--cca80ee8379004731bfa55ed.md) | 76 | `declaration-track:cca80ee8379004731bfa55ed66d892a2e878654e514b4f0ff2ca76d3c14bcf19` |
| 5 | `inductive` | [SearchControl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/declarations/searchcontrol--a2c19c4d3581ba0fa042594e.md) | 80 | `declaration-track:a2c19c4d3581ba0fa042594e0e673a6b5c5380b29a2bf7a6187ab64dd6e047ff` |
| 6 | `def` | [lineCommentPosition?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/declarations/linecommentposition--93f362e96f68ffc7cc7fbaf9.md) | 86 | `declaration-track:93f362e96f68ffc7cc7fbaf9c2f201c17c5ac148ad92de1e1a0e504bd91733e1` |
| 7 | `def` | [isPositionInLineComment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/declarations/ispositioninlinecomment--c60c53aac5405951b175abfe.md) | 89 | `declaration-track:c60c53aac5405951b175abfede753a2f1ace2c4bc0390c5bca95d77bef12f46f` |
| 8 | `def` | [findSignatureHelp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/declarations/findsignaturehelp--8585d88cea75bc24d60245a6.md) | 99 | `declaration-track:8585d88cea75bc24d60245a640fda7aeabffa356bbf26a13e8c6163af1fbb466` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
