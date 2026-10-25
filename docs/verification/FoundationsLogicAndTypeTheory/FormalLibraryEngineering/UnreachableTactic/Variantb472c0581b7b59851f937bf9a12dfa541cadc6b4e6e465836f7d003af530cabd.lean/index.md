# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnreachableTactic.Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76ea84d2e38b2489e5bf17a411f724bbfb5b0f34",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76ea84d2e38b2489e5bf17a411f724bbfb5b0f34`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Linter.Util` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Lean.Command` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Tactic.Unreachable` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.unreachableTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/linter-unreachabletactic--a92896a4403afc1a435f7bd2.md) | 31 | `declaration-track:a92896a4403afc1a435f7bd2dc96e1ad6f2943bb9bc400a4d866a0664f2cd4ca` |
| 2 | `def` | [getLinterUnreachableTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/getlinterunreachabletactic--2bc72ac58cb6f13b3f5f727c.md) | 38 | `declaration-track:2bc72ac58cb6f13b3f5f727c7a68d53f9c02319591421d9fbf84fbba90863874` |
| 3 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/m--76fb0b63678a8ed9b87315c0.md) | 41 | `declaration-track:76fb0b63678a8ed9b87315c0c5fb7aa24410f6b4a9b6167c2f974f4f66dee507` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/initialize--4773af28aa445a40d5aeb23c.md) | 47 | `declaration-track:4773af28aa445a40d5aeb23c0fcbb11c350c1c9391a6713fb8664e224aca238f` |
| 5 | `def` | [isIgnoreTacticKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/isignoretactickind--210ba832ef9fbdb48213be10.md) | 58 | `declaration-track:210ba832ef9fbdb48213be101534d2ed09a658971fee277705407e894127b667` |
| 6 | `def` | [addIgnoreTacticKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/addignoretactickind--1bb6e5564490d40a67546418.md) | 67 | `declaration-track:1bb6e5564490d40a67546418329439b270d5dd0e11fc5df2b8c21dc59f43996b` |
| 7 | `def` | [getTactics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/gettactics--9e693ef0a58adb4bf4c291fc.md) | 72 | `declaration-track:9e693ef0a58adb4bf4c291fc0f6d21430cea05433b564f209c28bfee6913c174` |
| 8 | `def` | [eraseUsedTacticsList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/eraseusedtacticslist--9980e99f08e9f26ce94941f3.md) | 83 | `declaration-track:9980e99f08e9f26ce94941f39146c24d71c6d4c18933fbf1b27dd7d0e8360bf3` |
| 9 | `def` | [eraseUsedTactics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/eraseusedtactics--95d4e8bf9986663e26d52ace.md) | 87 | `declaration-track:95d4e8bf9986663e26d52ace9504017320be55bdcc6998c8ac734d2e1fee74e4` |
| 10 | `def` | [unreachableTacticLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/unreachabletacticlinter--0a68a1690a33bb28dd83c0a5.md) | 99 | `declaration-track:0a68a1690a33bb28dd83c0a5c79b962388b431c0df81e16c4be3fc132de79b70` |
| 11 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantb472c0581b7b59851f937bf9a12dfa541cadc6b4e6e465836f7d003af530cabd.lean/declarations/initialize--8b0a8ac086a0677b9206b269.md) | 121 | `declaration-track:8b0a8ac086a0677b9206b2698e28b0a36bcda016768badda042866a657af7767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
