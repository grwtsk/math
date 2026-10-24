# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ea0cb02b8d3ad7869da22c09ee5c73c37ba3ae7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ea0cb02b8d3ad7869da22c09ee5c73c37ba3ae7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Functor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Adjunction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Additive` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Opposite.Functor` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isTriangulated_rightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/istriangulated-rightadjoint--2e9c5cc101e14f245ce9c2fd.md) | 62 | `result-track:2e9c5cc101e14f245ce9c2fdc5015dfc725ee9f08133bf10cd68567270ce14cd` |
| 2 | `lemma` | [isTriangulated_leftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/istriangulated-leftadjoint--ff1d0d531719c005d26e9bb4.md) | 141 | `result-track:ff1d0d531719c005d26e9bb40d909f4b1148832a09059d65a645045f38321e20` |
| 3 | `class` | [IsTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/istriangulated--be33933ed613593ce8761987.md) | 150 | `declaration-track:be33933ed613593ce8761987009eac663c1cca89b276e47c4426ed7c9228bd54` |
| 4 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/mk--3b5fa16242fa05827fe07f6f.md) | 161 | `result-track:3b5fa16242fa05827fe07f6f3b96624ba086d66d856702557b949eea70116058` |
| 5 | `lemma` | [mk''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/mk--5d75735b794015d52a65cc37.md) | 166 | `result-track:5d75735b794015d52a65cc37c7870d14b2e9e21767d8144a7f657a69b10aef1c` |
| 6 | `instance` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/id--fc69d7ee181d45514a6327b9.md) | 171 | `declaration-track:fc69d7ee181d45514a6327b97f6f2364a10fb7e89b561339614e07a8117e6904` |
| 7 | `instance` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/comp--5edecf8b7553b3c0a76a4f86.md) | 179 | `declaration-track:5edecf8b7553b3c0a76a4f86777bd941d9f4fb444e78581c85a06c8d0ce442ba` |
| 8 | `abbrev` | [IsTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/istriangulated--a8bb0bac2358b71f47ad143a.md) | 193 | `declaration-track:a8bb0bac2358b71f47ad143aba6f91fcb6e3f3fb9912ca3f3543983cd7e8d988` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/instance--0b332e6c283f1b1068f484cc.md) | 197 | `declaration-track:0b332e6c283f1b1068f484ccf04f76194df512a987338ec36220d9b949bd8b08` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/instance--9d9276cd7fdcdb3b430362c1.md) | 198 | `declaration-track:9d9276cd7fdcdb3b430362c101bc08fc30e9f38a79b29baec64c9c0fe6848060` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/instance--36dc3172036b3ace4967087d.md) | 200 | `declaration-track:36dc3172036b3ace4967087de56f9678eec2f9f0a079f96a18f6bfa55dad2a62` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/instance--3a75ab1daf943267500fa99b.md) | 201 | `declaration-track:3a75ab1daf943267500fa99b40bffce8d7b5401c0961d1c4f2782862eaca0c87` |
| 13 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/mk--cc798a946f5a4aa4219fe78a.md) | 205 | `result-track:cc798a946f5a4aa4219fe78ac8e058617e5ec2a15c58996e3079208e7e76b52c` |
| 14 | `lemma` | [mk''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/mk--0a94928dc9609a4d08ed5988.md) | 209 | `result-track:0a94928dc9609a4d08ed59887c657b7e84ec77fe790659635d813b24ab07b4ee` |
| 15 | `instance` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/refl--9b5bb96bb54824d664e21080.md) | 215 | `declaration-track:9b5bb96bb54824d664e210806b82b8867c7dcece9f047b6c5e2abf85b5648969` |
| 16 | `instance` | [symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/symm--bc76ab2d2eb8daa542029f2f.md) | 222 | `declaration-track:bc76ab2d2eb8daa542029f2f2313ac2b8c4bf80d14cc807c6d1a3ab91a0c7ef8` |
| 17 | `instance` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/declarations/trans--f462e737f132ba9f61023502.md) | 231 | `declaration-track:f462e737f132ba9f61023502c3a765b73e0f8737733a72408b40730e60a06407` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
