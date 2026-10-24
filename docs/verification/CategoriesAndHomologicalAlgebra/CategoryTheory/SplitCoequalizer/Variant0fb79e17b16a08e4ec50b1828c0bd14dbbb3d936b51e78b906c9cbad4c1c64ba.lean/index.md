# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitCoequalizer.Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3a445275f01a4a5f54ccc127627c84b3896bec4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3a445275f01a4a5f54ccc127627c84b3896bec4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/issplitcoequalizer--f26b5ccaa4d894f4920fd030.md) | 65 | `declaration-track:f26b5ccaa4d894f4920fd030606b47912a1dc8f17305a75d7ea711b6e3031bfd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/instance--bb37da305edb28a6955d8790.md) | 79 | `declaration-track:bb37da305edb28a6955d8790c75ffd2b5bb9857481bdc1f39754f0657e07873d` |
| 3 | `def` | [IsSplitCoequalizer.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/issplitcoequalizer-map--bd42f48340bd260af01135c5.md) | 92 | `declaration-track:bd42f48340bd260af01135c570c96f80542d6a56bb4fb5770246bef05cf2d498` |
| 4 | `def` | [IsSplitCoequalizer.asCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/issplitcoequalizer-ascofork--a1618b10911df5ba5437bc66.md) | 107 | `declaration-track:a1618b10911df5ba5437bc66513f209aa13a72cc23882e09d9cfb6708a43856c` |
| 5 | `theorem` | [IsSplitCoequalizer.asCofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/issplitcoequalizer-ascofork--635be3e022f3631e9578bc3d.md) | 111 | `result-track:635be3e022f3631e9578bc3d271e15f7d7df8c5620ff696d2e177f923dad0567` |
| 6 | `def` | [IsSplitCoequalizer.isCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/issplitcoequalizer-iscoequalizer--1f8829c228d5a049a7264f72.md) | 118 | `declaration-track:1f8829c228d5a049a7264f72acf1b36f2db1cab772ce6a074e76384e6be7e53a` |
| 7 | `class` | [HasSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/hassplitcoequalizer--58f4c00c39e655ed7187477d.md) | 134 | `declaration-track:58f4c00c39e655ed7187477d9ac19de7adaaf06659e218bc333d6fd130939c60` |
| 8 | `abbrev` | [Functor.IsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/functor-issplitpair--da95874109238260aeb010a9.md) | 142 | `declaration-track:da95874109238260aeb010a9a8ddfe80f513abe1bf607b7e87f814445b7f586e` |
| 9 | `def` | [HasSplitCoequalizer.coequalizerOfSplit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/hassplitcoequalizer-coequalizerofsplit--d52879577ea8a885353b0912.md) | 146 | `declaration-track:d52879577ea8a885353b091250f870f53728be424b5ccbe7d052dde96447f84f` |
| 10 | `def` | [HasSplitCoequalizer.coequalizerπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/hassplitcoequalizer-coequalizer--9bceee98853e00da0ab50441.md) | 150 | `declaration-track:9bceee98853e00da0ab504416bb836fef9d519462297bd257e8b4d51d1b967d8` |
| 11 | `def` | [HasSplitCoequalizer.isSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/hassplitcoequalizer-issplitcoequalizer--2b4b3af2562219b6fba083d8.md) | 155 | `declaration-track:2b4b3af2562219b6fba083d8cb9a9c345d283823bec015df29e435099589da93` |
| 12 | `instance` | [map_is_split_pair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/map-is-split-pair--a968f8b7f4def199bad503e3.md) | 160 | `declaration-track:a968f8b7f4def199bad503e3b965f05a186a7bdc02fdc07ecb52eece3d81168d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/declarations/instance--ad9c60156d339671c2028d91.md) | 167 | `declaration-track:ad9c60156d339671c2028d91cc4f6bc072bf6dc6b7bb84035c738ee03bdcb749` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
