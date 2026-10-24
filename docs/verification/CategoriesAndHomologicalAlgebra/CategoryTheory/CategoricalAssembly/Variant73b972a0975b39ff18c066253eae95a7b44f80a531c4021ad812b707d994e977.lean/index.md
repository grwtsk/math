# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoricalAssembly.Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acb788237c1353931e757262bf402bc5d306230f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acb788237c1353931e757262bf402bc5d306230f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inverseWitnessComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/inversewitnesscomparison--92d69ad62978154bb462aa3c.md) | 28 | `declaration-track:92d69ad62978154bb462aa3c70ae01b71fa27e17a3511e1a685c0d47b7560835` |
| 2 | `def` | [assemble](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/assemble--6fa525d9fb1d99e1d59e5477.md) | 38 | `declaration-track:6fa525d9fb1d99e1d59e54778a1e998b915c90411110da4bfb19eb929eb60dd4` |
| 3 | `theorem` | [assemble_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/assemble-functor--46989203f095a8f84c64e981.md) | 43 | `result-track:46989203f095a8f84c64e98176a685a7348c2fe890eae3b75a8fbb64db1f58e7` |
| 4 | `theorem` | [assemble_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/assemble-inverse--22b766f19f6092ec66adae87.md) | 47 | `result-track:22b766f19f6092ec66adae87a6d4e5a2655644af29af63d48b2a4d6d83daddb3` |
| 5 | `abbrev` | [Sector](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/sector--dc92ef4d7f730af37b9c415f.md) | 52 | `declaration-track:dc92ef4d7f730af37b9c415fdf1b8a32eaf7353b0b6cd7e30e1ac9c06f3157bd` |
| 6 | `def` | [quarterTurn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/quarterturn--cd794f1aab26f18029bb3161.md) | 54 | `declaration-track:cd794f1aab26f18029bb3161adcf2056a16dc6fa66e68297fac765381126a207` |
| 7 | `theorem` | [quarterTurn_square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/quarterturn-square--966b92beaead9c4077d18eeb.md) | 60 | `result-track:966b92beaead9c4077d18eebe6822a01de0069323fa3bd1d1f1a0361621b5c1c` |
| 8 | `theorem` | [quarterTurn_fourth](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/quarterturn-fourth--3c3f3dd74aac0c700969a572.md) | 65 | `result-track:3c3f3dd74aac0c700969a572096f95afde7ed650822953958779e469511d1113` |
| 9 | `theorem` | [quarterTurn_square_not_identity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/quarterturn-square-not-identity--d666ee6f68dd8c34fc60b52e.md) | 70 | `result-track:d666ee6f68dd8c34fc60b52e5cccd004cd0cc1a48681c1c69b4210bc31456b3b` |
| 10 | `def` | [sectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/sectorequivalence--1d894a521578d7ab4c5e214a.md) | 75 | `declaration-track:1d894a521578d7ab4c5e214a06be365f14cccf68302e9582c476c2452e771892` |
| 11 | `def` | [assembledSectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant73b972a0975b39ff18c066253eae95a7b44f80a531c4021ad812b707d994e977.lean/declarations/assembledsectorequivalence--143578f6c158ace10af266b8.md) | 79 | `declaration-track:143578f6c158ace10af266b8c84153eead59a4a0899a275057f3550ff53be77d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
