# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchUtil.Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ba055c4033c85149561ba2deecac347e092336e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ba055c4033c85149561ba2deecac347e092336e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean.json)

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
| 1 | `def` | [testHelper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/declarations/testhelper--655e5575446736de9e913837.md) | 24 | `declaration-track:655e5575446736de9e913837deda7d21f47b956e1fab9734a6e1659cc5bbfc17` |
| 2 | `def` | [matchHelper?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/declarations/matchhelper--b18ad09b0382624c8da341cf.md) | 30 | `declaration-track:b18ad09b0382624c8da341cfbf929884eeeea0bc0ee24ed7a3e5f72d3cf1eac3` |
| 3 | `def` | [matchEq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/declarations/matcheq--eae197f6ce2b285e741ddc77.md) | 36 | `declaration-track:eae197f6ce2b285e741ddc778871ff836ff5666352a796e2f6b69912cb09d562` |
| 4 | `def` | [matchHEq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/declarations/matchheq--683ce4f6521e722ff99baece.md) | 39 | `declaration-track:683ce4f6521e722ff99baece3a450831f5168eba789ff32dc6cfb99e9b789771` |
| 5 | `def` | [matchEqHEq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/declarations/matcheqheq--b6e07761f116ac5c27f2685b.md) | 45 | `declaration-track:b6e07761f116ac5c27f2685bdb9e1d3ca89e8b115ef05f7eae3e3868878da6a6` |
| 6 | `def` | [matchEqHEqLHS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/declarations/matcheqheqlhs--26655778bfcde22f1de7df5c.md) | 58 | `declaration-track:26655778bfcde22f1de7df5c7b5537cc1b39f5e5d6e181b9173969d88e00043d` |
| 7 | `def` | [matchFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/declarations/matchfalse--ac2b25676b09d084bf038ac0.md) | 67 | `declaration-track:ac2b25676b09d084bf038ac0bacff091b691cb0e435b3e794d2677c8c9299aae` |
| 8 | `def` | [matchNot?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/declarations/matchnot--1aeeb78773013588c9010f81.md) | 70 | `declaration-track:1aeeb78773013588c9010f81d21eb8c7aa22fc469b4d3c501264b087afebfbf3` |
| 9 | `def` | [matchNe?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/declarations/matchne--fce8acebbc4aaf33663dd44d.md) | 79 | `declaration-track:fce8acebbc4aaf33663dd44de2b0e567fbe2c0f0c5868529cb1fe12755123d22` |
| 10 | `def` | [matchConstructorApp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variantd72d6a87066d9966a1e03c0e73920ced8cb136848ffc450e24a5da97f4803b7f.lean/declarations/matchconstructorapp--d1deb1460559298fb7948e9f.md) | 88 | `declaration-track:d1deb1460559298fb7948e9f8f6ea728dbd7e038e48a7257685143cb66e69f66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
