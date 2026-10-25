# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Header.Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a86b3801096f9e9e4ccbc14812656a5ab5953baf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a86b3801096f9e9e4ccbc14812656a5ab5953baf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.DirectoryDependency` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstNonImport?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/firstnonimport--0dae18bbee27db3e7058fbdd.md) | 64 | `declaration-track:0dae18bbee27db3e7058fbdd0e3957a7a87040801dc97f172ab219969deb4814` |
| 2 | `def` | [getImportIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/getimportids--c6e7c66a106d92d2b2d7de14.md) | 76 | `declaration-track:c6e7c66a106d92d2b2d7de14a7b04181324caae7cc2805a9dd55ac5c352bb8f8` |
| 3 | `def` | [parseUpToHere](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/parseuptohere--e856faf887919ebc0f4d20df.md) | 99 | `declaration-track:e856faf887919ebc0f4d20df5cbcfb2998c7ebf543c8cef9aad8e6ee34ddd3a7` |
| 4 | `def` | [toSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/tosyntax--326eafe167e4071f5a93e0e7.md) | 107 | `declaration-track:326eafe167e4071f5a93e0e737f3262e3350e649721771bdf168ba8cf1d946aa` |
| 5 | `def` | [authorsLineChecks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/authorslinechecks--81293ecc4cfc56da626e889a.md) | 119 | `declaration-track:81293ecc4cfc56da626e889a5c0e4324ec342a732334554eb13931b282f6d414` |
| 6 | `def` | [copyrightHeaderChecks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/copyrightheaderchecks--b89df62b0f549ee3bf9056c6.md) | 152 | `declaration-track:b89df62b0f549ee3bf9056c6695339f09d9aaa09773af8af2250cde9dc340980` |
| 7 | `def` | [isInMathlib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/isinmathlib--6c3656432ee558cde41decf2.md) | 215 | `declaration-track:6c3656432ee558cde41decf2fdd618c1fc3043a1b284bf65bab17cab819d6a0e` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/initialize--feb197c8996f21879e80f356.md) | 229 | `declaration-track:feb197c8996f21879e80f35603d21233bd3d127cf9fa454f2f65a4c19c9d8b9f` |
| 9 | `register_option` | [linter.style.header](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/linter-style-header--a648d4a8af2fb028252c58d1.md) | 252 | `declaration-track:a648d4a8af2fb028252c58d128242e8a721be10373246e0d339edf7cb8628698` |
| 10 | `def` | [broadImportsCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/broadimportscheck--d29cfce93828fab28e45e218.md) | 261 | `declaration-track:d29cfce93828fab28e45e218b37b762f230ee64dea761911607e229bd037459c` |
| 11 | `def` | [duplicateImportsCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/duplicateimportscheck--28f8c7ca6f157ea0abcea7c6.md) | 287 | `declaration-track:28f8c7ca6f157ea0abcea7c65a5a867a9bba286470beccf5e8514efb3316f08c` |
| 12 | `def` | [headerLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/headerlinter--36547ccd6e6f9f6aa31aaea4.md) | 295 | `declaration-track:36547ccd6e6f9f6aa31aaea4022004e2959f3a36914bf39a288226c77f76656a` |
| 13 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/declarations/initialize--df061d8eedc6d398eff863ac.md) | 356 | `declaration-track:df061d8eedc6d398eff863ac9cd8aabe08c18ee2179d8129e6b9fd2de265f375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
