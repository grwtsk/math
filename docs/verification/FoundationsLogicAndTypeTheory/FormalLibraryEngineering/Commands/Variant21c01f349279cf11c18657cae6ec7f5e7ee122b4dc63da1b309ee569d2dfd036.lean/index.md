# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Commands.Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ed0e55669afd09c6c89af2b58a88c6b3ca2b29e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ed0e55669afd09c6c89af2b58a88c6b3ca2b29e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Discovery.Find` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveSupported` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/lexpr--b94854491d0a155e213bfe83.md) | 63 | `declaration-track:b94854491d0a155e213bfe83b3e66566d9f9097904fbe13d396d05ab09a24329` |
| 2 | `def` | [parseRatUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/parseratunsafe--9f356b146c748db3f1000798.md) | 68 | `declaration-track:9f356b146c748db3f10007982a4b7d921c9017ac2643cf01f7605c705d45320e` |
| 3 | `def` | [parseRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/parserat--bb222f394424d557313e38aa.md) | 93 | `declaration-track:bb222f394424d557313e38aa3b15ca4faec837671f41e68d0b10a2f3ea4a2112` |
| 4 | `def` | [parseIntFromExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/parseintfromexpr--608eff7f44e94814a996b078.md) | 118 | `declaration-track:608eff7f44e94814a996b078433b76ce7f01b5de03a108a09b6b034947ce91e8` |
| 5 | `def` | [parseIntFromSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/parseintfromsyntax--7190fd0c46813c538f15eee6.md) | 160 | `declaration-track:7190fd0c46813c538f15eee671ba52bf4dd64cec3b14aa4c203a045da8d477ef` |
| 6 | `def` | [parseInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/parseinterval--8c7d07444210f5a14ae35b58.md) | 171 | `declaration-track:8c7d07444210f5a14ae35b58f66d45e679e9c1cb492114bad16ac8516182cbec` |
| 7 | `def` | [parseBox](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/parsebox--c48d747dd35af999c8bffd87.md) | 186 | `declaration-track:c48d747dd35af999c8bffd87d49dc7086b164b3f50aea12fd4ab5dc764cdebbd` |
| 8 | `def` | [formatRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/formatrat--583e0be5d5eeab56566a7ecd.md) | 202 | `declaration-track:583e0be5d5eeab56566a7ecd0580a86b6428e3b5e2b847bf81150af49524e313` |
| 9 | `def` | [formatInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/formatinterval--cca650caf7e007639f2d3751.md) | 221 | `declaration-track:cca650caf7e007639f2d3751575f44dfb6324618c3def2f1bf7916ae0f050898` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/syntax--70d5d33c90640290c2b2e141.md) | 227 | `declaration-track:70d5d33c90640290c2b2e141f2f75b366fed55d91bd37390132529816a83a8a9` |
| 11 | `def` | [elabFindMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/elabfindmin--d3ba1e252030d05634b14778.md) | 231 | `declaration-track:d3ba1e252030d05634b147784c26c25e0febe1c4517e5503d73b32a316bffec2` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/syntax--dfc36b24ae88c65039709aaf.md) | 273 | `declaration-track:dfc36b24ae88c65039709aaf17121ead7cf3fae1eb6f230f6e24e84fc9054bbb` |
| 13 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/macro-rules--bed577c3440c3a41b8d64638.md) | 274 | `declaration-track:bed577c3440c3a41b8d6463857c0ef4082cc5fe06d22a61b464ad023badbf1a9` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/syntax--7bc8458250d84b54d167088a.md) | 281 | `declaration-track:7bc8458250d84b54d167088adbf4d9ad62ad98d5582b2bbf0fe115723c3a0549` |
| 15 | `def` | [elabFindMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/elabfindmax--e2f665e67d8e72f62645ec93.md) | 285 | `declaration-track:e2f665e67d8e72f62645ec938770162d79e350b6ae0115533a40477d9ac29838` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/syntax--79120e929df4c434c12288d5.md) | 318 | `declaration-track:79120e929df4c434c12288d587b3038246080f6629648760724b97fdad530998` |
| 17 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/macro-rules--db6322d4372ee1e010c4695a.md) | 319 | `declaration-track:db6322d4372ee1e010c4695a222d975b0714210859a58da51bb20ddb87e76260` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/syntax--4e31c38f9e616479ff959a9f.md) | 326 | `declaration-track:4e31c38f9e616479ff959a9f8538fd480fb4956b1bdd6a71257dda1dac88b805` |
| 19 | `def` | [elabBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/elabbounds--86ad30668eb3744cf6fdb810.md) | 330 | `declaration-track:86ad30668eb3744cf6fdb810a4a1aaa0b0082480eb7841adca34b4d5248ace85` |
| 20 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/syntax--bb502f46dfd896d68d210d1f.md) | 369 | `declaration-track:bb502f46dfd896d68d210d1fb02dbecae7e55cf54bf10110f24b381402bc3aef` |
| 21 | `def` | [elabEvalInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/declarations/elabevalinterval--2ea256f234678a92b408cfc3.md) | 373 | `declaration-track:2ea256f234678a92b408cfc34fd72147bc50ef8a68fa7e662528538cc794211f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
