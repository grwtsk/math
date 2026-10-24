# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoricalAssembly.Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c23306c65fb81d8252560bd3d55e84b7012fcb9d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c23306c65fb81d8252560bd3d55e84b7012fcb9d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inverseWitnessComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/inversewitnesscomparison--44cecc2494f681b2ed982e38.md) | 36 | `declaration-track:44cecc2494f681b2ed982e38376c1e82661f7a20e0411c0b8bb12736ce5ae676` |
| 2 | `def` | [assemble](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/assemble--61048736b8b7e37443e7b197.md) | 46 | `declaration-track:61048736b8b7e37443e7b19701a0f935f902e5011e12d7516bc5d45717cb136f` |
| 3 | `theorem` | [assemble_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/assemble-functor--ee1446dc968e5b06cd9d5406.md) | 51 | `result-track:ee1446dc968e5b06cd9d5406e32fd78856a790e88e45f4a0625d519af65ce4f5` |
| 4 | `theorem` | [assemble_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/assemble-inverse--9faa79e8116c1c4d20b61231.md) | 55 | `result-track:9faa79e8116c1c4d20b61231df3be45a1d9d7215aea1a94a5c5417f7a53b15d2` |
| 5 | `abbrev` | [Sector](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/sector--ddd0d6e49f9a549a5b0934d5.md) | 60 | `declaration-track:ddd0d6e49f9a549a5b0934d58d8f3b9a46eb9bc0c6eafb431812155d414bced6` |
| 6 | `def` | [quarterTurn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/quarterturn--d74aecf9395970b770863078.md) | 62 | `declaration-track:d74aecf9395970b7708630787e872726f5f5479335c59f83b11bc7906971ab53` |
| 7 | `theorem` | [quarterTurn_square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/quarterturn-square--471c456c1eb0603cdc656359.md) | 68 | `result-track:471c456c1eb0603cdc656359a30826f53f07005a7d9601e6c95c55dafa29f628` |
| 8 | `theorem` | [quarterTurn_fourth](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/quarterturn-fourth--b0c45e73e6573ad29be105f8.md) | 73 | `result-track:b0c45e73e6573ad29be105f87d96ef27f779b052a28b53c7b217633b2d7857cb` |
| 9 | `theorem` | [quarterTurn_square_not_identity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/quarterturn-square-not-identity--194ee64a596ca90d8f2ccd8e.md) | 78 | `result-track:194ee64a596ca90d8f2ccd8ed81ec4e034c8e3d5985d533c9bfe36f2c8e91e68` |
| 10 | `def` | [sectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/sectorequivalence--ea153b6f07e14d084e336284.md) | 83 | `declaration-track:ea153b6f07e14d084e33628497c1900ebd3b2fca67ea66e08947a6ae59734129` |
| 11 | `def` | [assembledSectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/declarations/assembledsectorequivalence--bfb75ac5a4621220782396d2.md) | 87 | `declaration-track:bfb75ac5a4621220782396d2cd627ced35b854ff763acd89bc2fdfd4da843956` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
