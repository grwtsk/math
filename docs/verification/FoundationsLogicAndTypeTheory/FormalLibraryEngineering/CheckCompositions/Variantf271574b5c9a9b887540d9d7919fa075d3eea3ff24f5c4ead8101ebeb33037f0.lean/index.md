# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckCompositions.Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbcd4cddd36002ad45f83cf34747826eb24aca60",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbcd4cddd36002ad45f83cf34747826eb24aca60`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forEachComposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean/declarations/foreachcomposition--89ed62f6f45c36c7fad13fcc.md) | 26 | `declaration-track:89ed62f6f45c36c7fad13fcc2e756548b7b36f1340a56cc6795c400e5c8e3a3e` |
| 2 | `def` | [checkComposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean/declarations/checkcomposition--4d18298193e22ae0eea28361.md) | 33 | `declaration-track:4d18298193e22ae0eea2836104d1a58fb0a5c3c08967d260b920cd6f475c6e44` |
| 3 | `def` | [checkCompositions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean/declarations/checkcompositions--6871866b058a37dcd58f961b.md) | 55 | `declaration-track:6871866b058a37dcd58f961b1552c59f14e4d86397c7a1bdc921259e48ad961c` |
| 4 | `def` | [checkCompositionsTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean/declarations/checkcompositionstac--bf1b7daa06ba8e2c80f1038d.md) | 59 | `declaration-track:bf1b7daa06ba8e2c80f1038dbab83a0f1dd6a5c041ff69574c80c31bcc7c56c6` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean/declarations/elab--caad1a9fa5f61b2e962959f0.md) | 112 | `declaration-track:caad1a9fa5f61b2e962959f0b85af0271aa44fd077e8636ef94ae0e551c161e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
