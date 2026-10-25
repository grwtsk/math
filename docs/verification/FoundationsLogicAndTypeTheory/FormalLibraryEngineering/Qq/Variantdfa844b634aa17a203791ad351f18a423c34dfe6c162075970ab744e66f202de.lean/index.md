# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qq.Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c478c64c22a0fb39fdea9d45c27cb819b53374ea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c478c64c22a0fb39fdea9d45c27cb819b53374ea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Qq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inferTypeQ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de.lean/declarations/infertypeq--abad3a3782eb88f57b780295.md) | 31 | `declaration-track:abad3a3782eb88f57b780295eb464c7ad4b68024a2bebd6af0f7bccad1f56a1e` |
| 2 | `theorem` | [QuotedDefEq.rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de.lean/declarations/quoteddefeq-rfl--ac554dff9e70d64b33878326.md) | 37 | `result-track:ac554dff9e70d64b33878326b45ca7ddba08ffe18c3e83ad89062da5cf28b956` |
| 3 | `def` | [findLocalDeclWithTypeQ?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de.lean/declarations/findlocaldeclwithtypeq--ce9fee722bc4600608848092.md) | 42 | `declaration-track:ce9fee722bc4600608848092aa55f44722c0c5404eacbb46db809e918dfa32af` |
| 4 | `def` | [mkDecideProofQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de.lean/declarations/mkdecideproofq--b7ebe645f224baff577fb471.md) | 49 | `declaration-track:b7ebe645f224baff577fb471906dc1d60b18531377e6d8877bdffd02d6457260` |
| 5 | `def` | [mkSetLiteralQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variantdfa844b634aa17a203791ad351f18a423c34dfe6c162075970ab744e66f202de.lean/declarations/mksetliteralq--d7aceffcc2adac7df87e3c32.md) | 61 | `declaration-track:d7aceffcc2adac7df87e3c32a5db000d4263da7c39a73f0ff12e5665b5ce8745` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
