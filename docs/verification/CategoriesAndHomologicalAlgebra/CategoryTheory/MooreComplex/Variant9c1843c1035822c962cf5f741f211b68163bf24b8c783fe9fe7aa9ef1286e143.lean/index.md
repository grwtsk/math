# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MooreComplex.Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5b2ef24aa36a8442fcc0af363cf88d833a640d3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5b2ef24aa36a8442fcc0af363cf88d833a640d3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [objX](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/declarations/objx--ac1d9baade1767eee40d9238.md) | 58 | `declaration-track:ac1d9baade1767eee40d923897903a1f7da751c66c3a011e7bfed2796b252a95` |
| 2 | `theorem` | [objX_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/declarations/objx-zero--acdbd61795c4a68f2bcd01c9.md) | 62 | `result-track:acdbd61795c4a68f2bcd01c96c5edd178a162fa8e0741e79ac7aec8e33e516f0` |
| 3 | `theorem` | [objX_add_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/declarations/objx-add-one--f69cbaf99b41d2172a03772b.md) | 65 | `result-track:f69cbaf99b41d2172a03772b0345bc218aa6b56b6f8c1b02a11f110b658dcc09` |
| 4 | `def` | [objD](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/declarations/objd--08d88ca6cae1627fcfa37040.md) | 72 | `declaration-track:08d88ca6cae1627fcfa37040329a7708885e8f0d5f672c564ca0169cb52eee1d` |
| 5 | `theorem` | [d_squared](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/declarations/d-squared--d64387884e3e71738835f714.md) | 91 | `result-track:d64387884e3e71738835f7148c9f69b160fefd0ccad676cd2883dd60290b4b63` |
| 6 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/declarations/obj--e13f269bd4efa4279886ecdc.md) | 108 | `declaration-track:e13f269bd4efa4279886ecdcf364ee3b8886aefbf9caaffc37a01cb99c51182c` |
| 7 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/declarations/map--8bbd2c303b1b784f378d224f.md) | 118 | `declaration-track:8bbd2c303b1b784f378d224fc1e586cdf42ad78a4176acea430dff1b255c44e4` |
| 8 | `def` | [normalizedMooreComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/declarations/normalizedmoorecomplex--6c698266f82f66435e7620f1.md) | 146 | `declaration-track:6c698266f82f66435e7620f16eb5c2b3e9978f37cf09628a064e52641f82ae27` |
| 9 | `theorem` | [normalizedMooreComplex_objD](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant9c1843c1035822c962cf5f741f211b68163bf24b8c783fe9fe7aa9ef1286e143.lean/declarations/normalizedmoorecomplex-objd--d4446f49c221304819f298fb.md) | 151 | `result-track:d4446f49c221304819f298fbcaa9382d9ae498a39dcf81f0e980575c6fc3a337` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
