# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Says.Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "800ac2cdfa1c75d1071c4591c72daa79e95ac954",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `800ac2cdfa1c75d1071c4591c72daa79e95ac954`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Linter.UnreachableTactic` — import line 13; external provider; requires a separately pinned dependency.
- `Qq.Match` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [says.verify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/declarations/says-verify--a118ecdc1ebf75e384a2ce82.md) | 42 | `declaration-track:a118ecdc1ebf75e384a2ce82a27fc1993a7ce7a66e5e42bef44d505065bfb82d` |
| 2 | `register_option` | [says.no_verify_in_CI](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/declarations/says-no-verify-in-ci--c7b6401357734b9010b5cf75.md) | 48 | `declaration-track:c7b6401357734b9010b5cf7592a917d7084555bd9f9da548614b14afdc4aac55` |
| 3 | `def` | [parseAsTacticSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/declarations/parseastacticseq--13b61368c9d58ab102d2d098.md) | 56 | `declaration-track:13b61368c9d58ab102d2d098ca04a65b34ac6e4bfae0ecb21964a2d89874eb4f` |
| 4 | `def` | [evalTacticCapturingMessages](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/declarations/evaltacticcapturingmessages--a81e2a10be9349f13aab5b13.md) | 73 | `declaration-track:a81e2a10be9349f13aab5b13a6e8e9aa32be60d993ccfc6ebace3d10cc4aed81` |
| 5 | `def` | [evalTacticCapturingInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/declarations/evaltacticcapturinginfo--8f98774af278507a14a725a5.md) | 90 | `declaration-track:8f98774af278507a14a725a54dcfb9def57b0c283966419231362982f4ebccd5` |
| 6 | `def` | [evalTacticCapturingTryThis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/declarations/evaltacticcapturingtrythis--93b0b56f71c440900938642f.md) | 96 | `declaration-track:93b0b56f71c440900938642f5e0f4d60167197c8e6785151612302b725726ffa` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/declarations/syntax--685c9750acabcbebaae9f761.md) | 122 | `declaration-track:685c9750acabcbebaae9f761ccef8d64883762030d80a23139559c5ceae86245` |
| 8 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/declarations/elab-rules--78d117b96f1b4da1c2282210.md) | 124 | `declaration-track:78d117b96f1b4da1c22822103e2fcdcacf6b4a7b2be152f848191bdef9559e1f` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/declarations/initialize--ffc62213ac15f5f44e712b51.md) | 144 | `declaration-track:ffc62213ac15f5f44e712b517ec40e2b717acdcd387ab3602fa12ccf1ab37683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
