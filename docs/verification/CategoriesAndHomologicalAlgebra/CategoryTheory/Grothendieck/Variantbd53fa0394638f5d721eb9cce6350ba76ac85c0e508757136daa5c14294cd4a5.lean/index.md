# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grothendieck.Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6913b8f8deb2390edebae28fc72e4b07bd89e648",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6913b8f8deb2390edebae28fc72e4b07bd89e648`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.LocallyDiscrete` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Functor.Pseudofunctor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Pseudofunctor.Grothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean/declarations/pseudofunctor-grothendieck--95b26e45e8cd512df7578b8a.md) | 49 | `declaration-track:95b26e45e8cd512df7578b8a52f0f4cb50c9451e38d31f8a67ad981c9b3bf938` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean/declarations/hom--034cf62a5235618dfa5cf3c3.md) | 63 | `declaration-track:034cf62a5235618dfa5cf3c3c02d9a7c87ab068429be97d1788dac2f44a15eb9` |
| 3 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean/declarations/categorystruct--a17fdf82e695997318e6dbdd.md) | 70 | `declaration-track:a17fdf82e695997318e6dbdd62cd1399bc5b53c40094c14fb4ab949ca5b97c89` |
| 4 | `lemma` | [Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean/declarations/hom-ext--21b989924ddf58dc90f952da.md) | 85 | `result-track:21b989924ddf58dc90f952da04edfb1313fde21cc8244fa0072a8718caeeabcb` |
| 5 | `lemma` | [Hom.ext_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean/declarations/hom-ext-iff--433469bd2898388cd17b5267.md) | 93 | `result-track:433469bd2898388cd17b52676aaf3469246300dbcae809501d37f218d7c69b1b` |
| 6 | `lemma` | [Hom.congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean/declarations/hom-congr--3751007454f33661b7b955a7.md) | 98 | `result-track:3751007454f33661b7b955a7eea4c7048f0c04b8f1b68d42e55350b7f97ef876` |
| 7 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean/declarations/category--4830cb4080fe890f7b04017c.md) | 105 | `declaration-track:4830cb4080fe890f7b04017c5e78f1e024a59403c8f2215b255fc2133217bae4` |
| 8 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantbd53fa0394638f5d721eb9cce6350ba76ac85c0e508757136daa5c14294cd4a5.lean/declarations/forget--1a77461e5aefa02c6bf90505.md) | 125 | `declaration-track:1a77461e5aefa02c6bf9050585ececc8fed6ba351024f1937dc9e350657b7da8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
