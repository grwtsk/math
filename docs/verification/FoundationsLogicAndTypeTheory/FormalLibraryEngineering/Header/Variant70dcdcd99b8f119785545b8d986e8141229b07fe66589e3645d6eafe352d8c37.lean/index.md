# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Header.Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01ad90dea8e75b614ed32388d6964b7620163a27",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01ad90dea8e75b614ed32388d6964b7620163a27`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.DirectoryDependency` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstNonImport?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/firstnonimport--3f2797c0d499fb6aad82d767.md) | 72 | `declaration-track:3f2797c0d499fb6aad82d76735798ed52b1bb0535f48876bf5b236c4d99bedce` |
| 2 | `def` | [getImportIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/getimportids--4753209972a162748277fe0e.md) | 84 | `declaration-track:4753209972a162748277fe0e5b498bc6efb4b55bbfaee0452fb70829d8cc427f` |
| 3 | `def` | [parseUpToHere](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/parseuptohere--2210314ccb92bf2fffbeacf6.md) | 107 | `declaration-track:2210314ccb92bf2fffbeacf66e0d0761f1c647aed13dffa75ed0efebc217efb8` |
| 4 | `def` | [toSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/tosyntax--63cd69160fb75a2657d8273d.md) | 115 | `declaration-track:63cd69160fb75a2657d8273da3e56dcdd2a65236b8cdafd8f4e0e460c69cbf72` |
| 5 | `def` | [authorsLineChecks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/authorslinechecks--31824ee1d6de007955a8ea35.md) | 127 | `declaration-track:31824ee1d6de007955a8ea3501d7405d35672f52024738ae531aa235524c7275` |
| 6 | `def` | [copyrightHeaderChecks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/copyrightheaderchecks--cf51452d9033cbf61e5b1e9c.md) | 160 | `declaration-track:cf51452d9033cbf61e5b1e9c061226c7d9562ef97a494329bb16b185abdb80f3` |
| 7 | `def` | [isInMathlib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/isinmathlib--f2f388680ffd6fe0e35548ac.md) | 223 | `declaration-track:f2f388680ffd6fe0e35548ac0c7737f4eb23bb19c14fd34013fbda735a2ca1d1` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/initialize--8e430090b793b99eb66c49fa.md) | 237 | `declaration-track:8e430090b793b99eb66c49fa2369bdeadcb882484900c8317577fe0231bfd177` |
| 9 | `register_option` | [linter.style.header](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/linter-style-header--f34115a6fbf42b79d76e9578.md) | 260 | `declaration-track:f34115a6fbf42b79d76e957808af482a1ed6839b17300b79c9e39eaf25c9d023` |
| 10 | `def` | [broadImportsCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/broadimportscheck--6729c5c321c897281fb25e52.md) | 269 | `declaration-track:6729c5c321c897281fb25e52760099337c016c2211da5040d478612495acd02c` |
| 11 | `def` | [duplicateImportsCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/duplicateimportscheck--455a8f6a38cc62d0829ed717.md) | 295 | `declaration-track:455a8f6a38cc62d0829ed71737b6298fb12aed17f13df197455d4cd0fbef80e6` |
| 12 | `def` | [headerLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/headerlinter--ebab0df7cc016e899e53f0a5.md) | 303 | `declaration-track:ebab0df7cc016e899e53f0a51d3612d11782d7c1b6fba917e60a1a3bedec11c2` |
| 13 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/declarations/initialize--29ea3ff79fda47752a7f8c67.md) | 364 | `declaration-track:29ea3ff79fda47752a7f8c674a3c4fc15b08d8818775021cafa5d3fa6cc01781` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
