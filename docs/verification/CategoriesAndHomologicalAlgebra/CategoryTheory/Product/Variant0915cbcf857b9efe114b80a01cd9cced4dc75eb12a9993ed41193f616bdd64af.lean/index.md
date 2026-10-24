# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Product.Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6832377f7ffe7db28f0156ec4e6b077d10d8646",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6832377f7ffe7db28f0156ec4e6b077d10d8646`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Products` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Product` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/proj--dcdf597d7cfb107be9eb1d0c.md) | 42 | `declaration-track:dcdf597d7cfb107be9eb1d0cb58eaaf6c8523ead9e7b932f59cca571ef7a7ed4` |
| 2 | `theorem` | [proj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/proj-map--106cfd774265f6cf019673ee.md) | 47 | `result-track:106cfd774265f6cf019673ee4bc3cab9ea0b65e52877ec09f8abf5412ce8dcee` |
| 3 | `def` | [piToPiTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/pitopitop--5ed7695667125fb3a393042a.md) | 55 | `declaration-track:5ed7695667125fb3a393042a9578ba4f8fa055b34e75c19b1b9c9b8748f7dbfd` |
| 4 | `def` | [piIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/piiso--3096a31178db396ac5db5071.md) | 68 | `declaration-track:3096a31178db396ac5db50714ad4b34faceb4cfe23f26a06180ca11a9c5d91be` |
| 5 | `def` | [coneDiscreteComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/conediscretecomp--1a6911d8e8e64e9f2c2b1543.md) | 90 | `declaration-track:1a6911d8e8e64e9f2c2b15435d07350aa5415086aa3f80a24475f201f42d8bf4` |
| 6 | `theorem` | [coneDiscreteComp_obj_mapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/conediscretecomp-obj-mapcone--4c9f7e9efab988a50cd1cd7b.md) | 94 | `result-track:4c9f7e9efab988a50cd1cd7b894eef6d6f56a9b132be7b6ea1b90023e0c9f7e2` |
| 7 | `def` | [piTopToPiCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/pitoptopicone--fbe69d7a26d8048b5b29fa84.md) | 100 | `declaration-track:fbe69d7a26d8048b5b29fa84c218a7c05c49682690dd28e8d6913a0b4c4a070a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/instance--43bcbc137d2cb79091448078.md) | 104 | `declaration-track:43bcbc137d2cb790914480786e5ec699d4f7fb3186600d0d454636d10b0d8277` |
| 9 | `lemma` | [preservesProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/preservesproduct--a5713ff7f54759c7da513fab.md) | 109 | `result-track:a5713ff7f54759c7da513fabda1ae6db325dc3af50466349705ef4b2ab889fba` |
| 10 | `def` | [projLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/projleft--f0474cf1675ab482c54b87e3.md) | 125 | `declaration-track:f0474cf1675ab482c54b87e3706e45c582723ce06ac94cbdcb175a13ff31cdea` |
| 11 | `def` | [projRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/projright--54ac6dfab0e0fefbdf47053d.md) | 129 | `declaration-track:54ac6dfab0e0fefbdf47053d1af0ae6f5d194f12a216a7ac92b4fdaf2fc9c2f5` |
| 12 | `theorem` | [projLeft_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/projleft-map--1d2114f45e88219f84f0f7c5.md) | 133 | `result-track:1d2114f45e88219f84f0f7c5659bd70664cddadf4099f9a21dc3c55cff59be69` |
| 13 | `theorem` | [projRight_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/projright-map--3d06709e90a58d08a4599dd9.md) | 138 | `result-track:3d06709e90a58d08a4599dd9652d6ec440790acf23c68f5203a7357f873ea71a` |
| 14 | `def` | [prodToProdTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/prodtoprodtop--227627612d0a3a7975511262.md) | 147 | `declaration-track:227627612d0a3a7975511262849bd71aae93280e1d8b2af1a4c2268363a843a5` |
| 15 | `theorem` | [prodToProdTop_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/prodtoprodtop-map--16adef04c469d4299e9b7cf4.md) | 161 | `result-track:16adef04c469d4299e9b7cf47539372796cad057e19159005dde679e2c77509b` |
| 16 | `def` | [prodIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/declarations/prodiso--e66ba1796e249c237cf7dc4c.md) | 170 | `declaration-track:e66ba1796e249c237cf7dc4c3f33fa2e5733d2a544a0eef6933a78ce71f59dda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
