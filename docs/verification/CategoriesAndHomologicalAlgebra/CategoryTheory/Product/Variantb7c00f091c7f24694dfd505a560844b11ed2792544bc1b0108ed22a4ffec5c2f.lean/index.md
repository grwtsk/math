# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Product.Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b1d70e32bd0489675babedc26471ffe032d103c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b1d70e32bd0489675babedc26471ffe032d103c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Products` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Product` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/proj--3c5b24038c1993cff5f55375.md) | 50 | `declaration-track:3c5b24038c1993cff5f55375fe4962b3c1582d8f2baf5b9b3a9b9646800686f8` |
| 2 | `theorem` | [proj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/proj-map--b0077da3b287ce1f17446de1.md) | 55 | `result-track:b0077da3b287ce1f17446de1861b8300b8dab4f3b1fbd9be29f70ff647b80b91` |
| 3 | `def` | [piToPiTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/pitopitop--592709f6c9b2d21e43719658.md) | 63 | `declaration-track:592709f6c9b2d21e43719658f6137947a549c827c1ed2b16ddbfe411e62368e4` |
| 4 | `def` | [piIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/piiso--7860d00bd13921378dfb45a7.md) | 76 | `declaration-track:7860d00bd13921378dfb45a7db3e6492fe5de16673c36319772ba17db6c7213f` |
| 5 | `def` | [coneDiscreteComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/conediscretecomp--b155c735f29e45dfbcf252f1.md) | 98 | `declaration-track:b155c735f29e45dfbcf252f11d197fd381b0fabfa74fa20e96a3a440b0c4d77a` |
| 6 | `theorem` | [coneDiscreteComp_obj_mapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/conediscretecomp-obj-mapcone--d3ff1cecc48094b4feea554d.md) | 102 | `result-track:d3ff1cecc48094b4feea554d889d98d594028a6de5b5ac84153b10f349535ba4` |
| 7 | `def` | [piTopToPiCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/pitoptopicone--89cd4f68ca145c9f37ad64a3.md) | 108 | `declaration-track:89cd4f68ca145c9f37ad64a33a9751be207d1bf029e05e1e9c35f7b548277acf` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/instance--5def07bcbc6a06712fa624c8.md) | 112 | `declaration-track:5def07bcbc6a06712fa624c8416ee53e51a4ff74be179fb25095a6588e1f00f8` |
| 9 | `lemma` | [preservesProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/preservesproduct--e6c0fb2020cce50dfe5c3f3a.md) | 117 | `result-track:e6c0fb2020cce50dfe5c3f3a41ee1420dc23edaf2ebbbc34a1060530f5f201cc` |
| 10 | `def` | [projLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/projleft--c29144e2f6d8937c8c2034b4.md) | 133 | `declaration-track:c29144e2f6d8937c8c2034b4f5ab93154ef6f20698b85af0ce7919a92c4d8241` |
| 11 | `def` | [projRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/projright--7a7fddd544ba335492af3d96.md) | 137 | `declaration-track:7a7fddd544ba335492af3d96f98d8e6c08469d17483befc51cea8c61f14bcbb8` |
| 12 | `theorem` | [projLeft_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/projleft-map--4d5cfb429d237dfd44aa5ae8.md) | 141 | `result-track:4d5cfb429d237dfd44aa5ae861aa354063b4bcd6014960be8ba03f13ca40ed6a` |
| 13 | `theorem` | [projRight_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/projright-map--d87b312d2500974ba398d03f.md) | 146 | `result-track:d87b312d2500974ba398d03f07b2bcbd86d3bbdb861159ac7c565a83bf59aace` |
| 14 | `def` | [prodToProdTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/prodtoprodtop--df18b4fdfaf54a61a58ffaec.md) | 155 | `declaration-track:df18b4fdfaf54a61a58ffaec0dca1ae6f580bd940c5f712e3b24a6f43dbe0c4d` |
| 15 | `theorem` | [prodToProdTop_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/prodtoprodtop-map--04a4e3a2a01bc58974d81d97.md) | 169 | `result-track:04a4e3a2a01bc58974d81d97814914c09ee93ab1f0f9eeeb553157d7ae56039d` |
| 16 | `def` | [prodIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/declarations/prodiso--aee47219bf9706c1becf618e.md) | 178 | `declaration-track:aee47219bf9706c1becf618e7b3ecd63dc129ecd941c98a097b98546511ec4b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
