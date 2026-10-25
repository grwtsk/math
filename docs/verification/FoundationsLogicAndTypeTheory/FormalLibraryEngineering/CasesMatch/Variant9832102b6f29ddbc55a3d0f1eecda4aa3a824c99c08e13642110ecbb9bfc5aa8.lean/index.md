# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesMatch.Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a989024dd4ef62a9c0cbd23974cad4b38e8b071c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a989024dd4ef62a9c0cbd23974cad4b38e8b071c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.MatcherApp` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isMatchCondCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean/declarations/ismatchcondcandidate--685f2933e477d4f08f13e48e.md) | 46 | `declaration-track:685f2933e477d4f08f13e48e420e7c4448305a1ab070a938846d25e11247e7f7` |
| 2 | `def` | [addMatchCondsToAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean/declarations/addmatchcondstoalt--55570aeca60a982c63ad781a.md) | 62 | `declaration-track:55570aeca60a982c63ad781a83f0f1c9ddb981d6c59f231e1cd3bbb561d5a7da` |
| 3 | `def` | [addMatchCondsToSplitter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean/declarations/addmatchcondstosplitter--f4a796610cf23abf8be4f134.md) | 72 | `declaration-track:f4a796610cf23abf8be4f134fec42dd815bc0ba513a63bd63d9e9f9ee3fdb24a` |
| 4 | `def` | [casesMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean/declarations/casesmatch--d03cb9efe17d05062504d9b3.md) | 78 | `declaration-track:d03cb9efe17d05062504d9b3a8b98c67babaa8d673f1b8ccbb058339b6b5f3a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
