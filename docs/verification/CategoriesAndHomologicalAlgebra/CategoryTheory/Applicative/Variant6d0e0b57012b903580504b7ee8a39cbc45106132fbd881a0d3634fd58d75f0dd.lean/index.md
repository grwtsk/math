# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Applicative.Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a98a7cf21cd79968c5855941d04193214e08dfa7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a98a7cf21cd79968c5855941d04193214e08dfa7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Attr.Register` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Applicative.map_seq_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/applicative-map-seq-map--894c48014080e32aba259b56.md) | 44 | `result-track:894c48014080e32aba259b56a9a1b3ebccbc718017b30f068b4295f1863f2361` |
| 2 | `theorem` | [Applicative.pure_seq_eq_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/applicative-pure-seq-eq-map--e996d0aa931ec4e95be03bbf.md) | 48 | `result-track:e996d0aa931ec4e95be03bbf72484ca5a99bd7df53e05a7fd8f591e91fef390d` |
| 3 | `theorem` | [Applicative.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/applicative-ext--f85a9bfd8f9ceb6d20a24448.md) | 52 | `result-track:f85a9bfd8f9ceb6d20a24448ef980e42a9e937148f7e44e43a9eb5327eaf2e5f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/instance--7e0cb65b3244c4f37392f93f.md) | 82 | `declaration-track:7e0cb65b3244c4f37392f93fd50f1c81593a9e5c274a1e85882b9a40cb2bcd02` |
| 5 | `theorem` | [map_pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/map-pure--05b9dbb390eb839354391f11.md) | 97 | `result-track:05b9dbb390eb839354391f11d0c544899f92817b213cc9d68df042521ac65c2d` |
| 6 | `theorem` | [seq_pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/seq-pure--dc78fd409921a7a9c441f805.md) | 100 | `result-track:dc78fd409921a7a9c441f805a9139dff8288a3fe88c070c1abc78e022e68ca9b` |
| 7 | `theorem` | [seq_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/seq-assoc--2a585e5b8352988586f63b3d.md) | 103 | `result-track:2a585e5b8352988586f63b3d87be74a332440b8fb358bed32813002401bf1169` |
| 8 | `theorem` | [pure_seq_eq_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/pure-seq-eq-map--a6ae31fae96cf509aee89174.md) | 107 | `result-track:a6ae31fae96cf509aee8917451efc91b8b13849e082def0ef67448fc610ce699` |
| 9 | `instance` | [instLawfulApplicativeComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/instlawfulapplicativecomp--bac14dc0df03775132179b81.md) | 111 | `declaration-track:bac14dc0df03775132179b814a7b169aa1100a10c7c08458aea6f06777367ebc` |
| 10 | `theorem` | [applicative_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/applicative-id-comp--941a2c9e35d42cd63062b2ed.md) | 119 | `result-track:941a2c9e35d42cd63062b2ed50257243a7c7ae8d9c76b99d2c26fe7bf4729368` |
| 11 | `theorem` | [applicative_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/applicative-comp-id--af1289beba037bb7c97d5fbe.md) | 124 | `result-track:af1289beba037bb7c97d5fbe852d7f2ce7c260098436e680ce86e21f366a02a1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/instance--627cd4508ec28589391b27c0.md) | 132 | `declaration-track:627cd4508ec28589391b27c01e8cb467b38a46afcc3f455322eb470529fc4df3` |
| 13 | `theorem` | [Comp.seq_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/comp-seq-mk--f500dddae73a87d3fc275e61.md) | 150 | `result-track:f500dddae73a87d3fc275e6106098031e8fa5633c4030ee842bbf53f2cebe42a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/instance--fc047323c26bd0d5dc90dd1d.md) | 157 | `declaration-track:fc047323c26bd0d5dc90dd1d10ba9697ae113c16046beabba1e1d4b75cc0513e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/instance--eb04adcc4e1223a5300eb0ec.md) | 165 | `declaration-track:eb04adcc4e1223a5300eb0ec43f16ad41fb3a5d5042bed8b841796d2f11f7b70` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/instance--5e6cd8b133731f0feec930e2.md) | 173 | `declaration-track:5e6cd8b133731f0feec930e2d1749c03c0678ab2c5d8528addc699bae3901058` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant6d0e0b57012b903580504b7ee8a39cbc45106132fbd881a0d3634fd58d75f0dd.lean/declarations/instance--dcce90b92aa3b0c1110007fe.md) | 178 | `declaration-track:dcce90b92aa3b0c1110007feecef8434fece663e892ada1d859b6af9099529b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
