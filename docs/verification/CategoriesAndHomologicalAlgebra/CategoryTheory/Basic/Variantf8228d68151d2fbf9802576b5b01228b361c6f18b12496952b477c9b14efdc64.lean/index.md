# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c3af3824bb7ad436c547f2696529f9933e3e40d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c3af3824bb7ad436c547f2696529f9933e3e40d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.Shift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Pretriangulated` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/declarations/tstructure--4a2ebce77fab482ebb4b507a.md) | 55 | `declaration-track:4a2ebce77fab482ebb4b507a44bc7e7f88f0b35704cf9b0112321d330b494b1f` |
| 2 | `lemma` | [exists_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/declarations/exists-triangle--e2a246e910eff406fa179a58.md) | 77 | `result-track:e2a246e910eff406fa179a5855f006671ef12579c50f8a0ba11de69c35ee2001` |
| 3 | `lemma` | [shift_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/declarations/shift-le--2e3373ce4027b17ecfe59d0f.md) | 90 | `result-track:2e3373ce4027b17ecfe59d0ffe60d19d9d3bcc2e8725cf6a84e152c2d730b737` |
| 4 | `lemma` | [shift_ge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/declarations/shift-ge--5c22dbb8218a28c768b5cd6e.md) | 100 | `result-track:5c22dbb8218a28c768b5cd6e6b98eeb5b1d2d371316b817dd6c98cb409103e97` |
| 5 | `lemma` | [le_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/declarations/le-monotone--1589c28f8faba1f05c0811ce.md) | 110 | `result-track:1589c28f8faba1f05c0811cece52ae95557ea5b4450cb1a61f6b5a9c4f95662a` |
| 6 | `lemma` | [ge_antitone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/declarations/ge-antitone--87acbffbb2765bd5df39ad57.md) | 133 | `result-track:87acbffbb2765bd5df39ad578b512382af1f9ade87a79c3333a36b054cd7dc2f` |
| 7 | `class` | [IsLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/declarations/isle--ede7c07269d824696f281519.md) | 158 | `declaration-track:ede7c07269d824696f28151997ec24011e59d7bdf87ffebce2dd31d947e2a831` |
| 8 | `class` | [IsGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/declarations/isge--c0ca59ea5f81f1a7f8dffeba.md) | 163 | `declaration-track:c0ca59ea5f81f1a7f8dffeba5c59cf4bb6171da89f549b7e3c2d909b418552f4` |
| 9 | `lemma` | [le_of_isLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/declarations/le-of-isle--2cc392520e0391a2521d53e4.md) | 166 | `result-track:2cc392520e0391a2521d53e42dfc6a4ac3cf0075cb9387f66aaf6a468caf420e` |
| 10 | `lemma` | [ge_of_isGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8228d68151d2fbf9802576b5b01228b361c6f18b12496952b477c9b14efdc64.lean/declarations/ge-of-isge--705b6c5a7071820395fd43a3.md) | 168 | `result-track:705b6c5a7071820395fd43a3b1d3a0cf22677a667bb8c14408a0315d2079ea0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
