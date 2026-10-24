# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colim.Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcee2ed729b8e0ff9b75c6b5e0253bba82aad274",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcee2ed729b8e0ff9b75c6b5e0253bba82aad274`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Final` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Connected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [colim.map_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/declarations/colim-map-mono--e41d90364b9419426ea68a59.md) | 45 | `result-track:e41d90364b9419426ea68a5969b1a25888457e1d675693637faf3afcc021f228` |
| 2 | `lemma` | [colim.map_epi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/declarations/colim-map-epi--1c5cded3062fca8d85d8ee24.md) | 65 | `result-track:1c5cded3062fca8d85d8ee24d3022b99425594586b807f2efbb8a375cb92e2f7` |
| 3 | `lemma` | [IsColimit.mono_ι_app_of_isFiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/declarations/iscolimit-mono-app-of-isfiltered--07b3e09adbb8db0189ecedd0.md) | 78 | `result-track:07b3e09adbb8db0189ecedd016f590bfc5d14983f3e4bf6d7a63e593b2f194f1` |
| 4 | `def` | [colim.mapShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/declarations/colim-mapshortcomplex--2e82fa3c262d2b032ab7d609.md) | 107 | `declaration-track:2e82fa3c262d2b032ab7d609c3b6101cfc356ab90644fc30a640bd0d78aefe97` |
| 5 | `lemma` | [colim.exact_mapShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/declarations/colim-exact-mapshortcomplex--bbc9f87dba9ad925865ffb7f.md) | 121 | `result-track:bbc9f87dba9ad925865ffb7f67b1dc516e78397ab9cd98e1bc649266acfb0735` |
| 6 | `instance` | [isStableUnderColimitsOfShape_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/declarations/isstableundercolimitsofshape-monomorphisms--6f75df2d544ba5683c9c7cf5.md) | 149 | `declaration-track:6f75df2d544ba5683c9c7cf53afef6f6c3ee42ae238a9154ac8d07e5e2c25120` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/declarations/instance--dd6959b884ed3b0cb6559b9b.md) | 157 | `declaration-track:dd6959b884ed3b0cb6559b9b82564251a77ae1dd5fe214c10f9ac715d8f53362` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
