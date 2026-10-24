# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomCongr.Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2619de2c30f1794e3c19b64c53696e2ccc4dd4a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2619de2c30f1794e3c19b64c53696e2ccc4dd4a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/declarations/homcongr--8eeee5abebcf3737d2efbbb3.md) | 36 | `declaration-track:8eeee5abebcf3737d2efbbb385b3405acd842c7240c74a992562ec1ac0279d7e` |
| 2 | `theorem` | [homCongr_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/declarations/homcongr-comp--1fb72eb7d8ae26f186cebb01.md) | 46 | `result-track:1fb72eb7d8ae26f186cebb01ba57aafb6d5ecc1651e611c882ec34c980c02201` |
| 3 | `theorem` | [homCongr_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/declarations/homcongr-refl--f35acf5d2cbe7fd4b1146c47.md) | 49 | `result-track:f35acf5d2cbe7fd4b1146c4717e240e79b49407f0c5435ea35b1c64c5c2926fa` |
| 4 | `theorem` | [homCongr_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/declarations/homcongr-trans--80a8095ac85f7abb4817011f.md) | 51 | `result-track:80a8095ac85f7abb4817011fa95189e3cb4ecbaa4d8dc1f3888b0279d4d688d5` |
| 5 | `theorem` | [homCongr_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/declarations/homcongr-symm--80c8ed2369fd0783f30ba98f.md) | 56 | `result-track:80c8ed2369fd0783f30ba98f2c58ab2668c1cdbf847b779683027bbfc4318fde` |
| 6 | `def` | [isoCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/declarations/isocongr--fbf20b32f06069418b3f18f2.md) | 63 | `declaration-track:fbf20b32f06069418b3f18f253bc4248233a1eb741b07290b553aa50e5f53a7f` |
| 7 | `def` | [isoCongrLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/declarations/isocongrleft--3b19040f816e5d3049a98260.md) | 70 | `declaration-track:3b19040f816e5d3049a98260a85e2e9ae7af5d25e7f762393423545e2b9e56c9` |
| 8 | `def` | [isoCongrRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/declarations/isocongrright--517046ba68b2719fa3491d8a.md) | 74 | `declaration-track:517046ba68b2719fa3491d8a9e193b4a151fc7c85bfd989a04269670e65ae6e2` |
| 9 | `theorem` | [map_homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/declarations/map-homcongr--d89c03c2f5ba8444dea51538.md) | 85 | `result-track:d89c03c2f5ba8444dea5153849beedb94ec9d168a872899cf2cc35c5a920873b` |
| 10 | `theorem` | [map_isoCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/declarations/map-isocongr--fe8bcba34a69e0cbf47e13b8.md) | 88 | `result-track:fe8bcba34a69e0cbf47e13b83783398f11c5aff74c55f7110848e4b953eb010e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
