# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WellPowered.Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98ea901dcb3e2f891c1a24c92460d7a554489821",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98ea901dcb3e2f891c1a24c92460d7a554489821`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentiallySmall` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [WellPowered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/declarations/wellpowered--d66886452fa15b568b2742f4.md) | 44 | `declaration-track:d66886452fa15b568b2742f4212cb31c6c7f3a052971d759ac99626ded5ca4cc` |
| 2 | `instance` | [small_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/declarations/small-subobject--782a464ffe49c4a95048b302.md) | 47 | `declaration-track:782a464ffe49c4a95048b30260c6bb98436adeffc026c0135488ae8bd5cb48c8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/declarations/instance--654abdf0f4b4c3ad6c4db6fb.md) | 51 | `declaration-track:654abdf0f4b4c3ad6c4db6fb23229e6537b5c36e72123923477ccc61670c567a` |
| 4 | `theorem` | [essentiallySmall_monoOver_iff_small_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/declarations/essentiallysmall-monoover-iff-small-subobject--9c290787b7e60fd113c7c811.md) | 56 | `result-track:9c290787b7e60fd113c7c8115a36bc492c2f3d5dd80800a252fc33e69d278bcf` |
| 5 | `theorem` | [wellPowered_of_essentiallySmall_monoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/declarations/wellpowered-of-essentiallysmall-monoover--f9f07340f798179ff55ceeff.md) | 60 | `result-track:f9f07340f798179ff55ceeff482e4af91e3afbb675edaca35f8578f2ad9eb9f0` |
| 6 | `instance` | [essentiallySmall_monoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/declarations/essentiallysmall-monoover--7542b6814aff33dee92db4fe.md) | 69 | `declaration-track:7542b6814aff33dee92db4fe0d8b214ecd85d2c40f1940a2267b11141f6fb27f` |
| 7 | `theorem` | [wellPowered_of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/declarations/wellpowered-of-equiv--4b22fedcb269538ad57c0952.md) | 78 | `result-track:4b22fedcb269538ad57c0952636e7739934fa1265bfc7f97f92d61a9e8b9d895` |
| 8 | `theorem` | [wellPowered_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/declarations/wellpowered-congr--8c69673153ebe777e77eadfa.md) | 84 | `result-track:8c69673153ebe777e77eadfa3d95931c5f42fb29c44feb885e794d4c2096136b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variantb1d8b1c9da568fb3f958f089e4be7505d6597f554c3b7156dbf9b3b7839a9684.lean/declarations/instance--3b9a2d393b571f645ab76f72.md) | 88 | `declaration-track:3b9a2d393b571f645ab76f726f5c144ec881268d9b00420f386423b6623507bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
