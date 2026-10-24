# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfSequence.Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1bf6334adeac0f26465d393215a7bb5416626b3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1bf6334adeac0f26465d393215a7bb5416626b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [congr_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/congr-f--66a009b00186c70f8518f3d4.md) | 37 | `result-track:66a009b00186c70f8518f3d466f0a294d2c06b818f5ac25513a5b68639b00145` |
| 2 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/map--ba163686b1805999061b8682.md) | 44 | `declaration-track:ba163686b1805999061b8682bd5d322d8e2833af685ef8c06de665da17a6a64b` |
| 3 | `lemma` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/map-id--5105ac7b889544ec219e2ec3.md) | 51 | `result-track:5105ac7b889544ec219e2ec383bf57dbfc3545cee535a7599002527e747ffa5a` |
| 4 | `lemma` | [map_le_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/map-le-succ--6b5b90058877823b906cfcd7.md) | 59 | `result-track:6b5b90058877823b906cfcd720a5a6d0d38b9e35e2f71b04b9f83673d79ed16f` |
| 5 | `lemma` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/map-comp--e91e0bb61fbc81056b0db4de.md) | 68 | `result-track:e91e0bb61fbc81056b0db4deb90ba87c198c612ff4925a64d306d4b30e379b04` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/example--2b423dcc3e5fcb07ca44182b.md) | 97 | `declaration-track:2b423dcc3e5fcb07ca44182b01f548b7edfe5899f88abab0199d6db0c1026477` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/example--c453f03c025403b3fb1a1d82.md) | 98 | `declaration-track:c453f03c025403b3fb1a1d826be5a498bd1f8937010cff32e634b557f4bc87e9` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/example--316316409f40e6308fe5cd9a.md) | 99 | `declaration-track:316316409f40e6308fe5cd9adea1cc0886c44de2735b5d16aa03d07da4b2fca1` |
| 9 | `def` | [ofSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/ofsequence--f1f84e82768ca0c322a6a688.md) | 106 | `declaration-track:f1f84e82768ca0c322a6a6889ded47e4f643a92e9e881762d78935329f921650` |
| 10 | `lemma` | [ofSequence_map_homOfLE_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/ofsequence-map-homofle-succ--2e0e4915662fe6b14ac5c4c3.md) | 113 | `result-track:2e0e4915662fe6b14ac5c4c3697741313b4b0fbf77cc363e40b25f563d8cc602` |
| 11 | `def` | [ofSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/ofsequence--51e2dae62fb913d7c2f9d006.md) | 129 | `declaration-track:51e2dae62fb913d7c2f9d0068ed999bf8af6d105cdb69c09e4e1f20559495b29` |
| 12 | `def` | [ofOpSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/ofopsequence--cff9b93e708d192c0926ddf2.md) | 156 | `declaration-track:cff9b93e708d192c0926ddf22f96aa3427b7f4f9a2edaf0cf5e6f6ff30dbe2d1` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/example--a6cf8274df67a1305a8ae3e3.md) | 159 | `declaration-track:a6cf8274df67a1305a8ae3e377584a6bc7307da07683f5357b8fb0a7fd3fc970` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/example--58f0997db327911c31484651.md) | 160 | `declaration-track:58f0997db327911c314846518c1ac982f42d11cb85a083e50e458cf0b0c96c22` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/example--96fdc4b6b31d75829417a490.md) | 161 | `declaration-track:96fdc4b6b31d75829417a490c63fc0e50b28e67d7e7596289e66e4a68a35f5ba` |
| 16 | `lemma` | [ofOpSequence_map_homOfLE_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/ofopsequence-map-homofle-succ--497d4b252ec9d48fad90e3f3.md) | 165 | `result-track:497d4b252ec9d48fad90e3f3f564ad14cfe0dc14e61b7916f8cbf61fbe8497e7` |
| 17 | `def` | [ofOpSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/declarations/ofopsequence--573d2856b2a4c97858c2a3f7.md) | 181 | `declaration-track:573d2856b2a4c97858c2a3f73e31559937d5bf6bbca0b363fc65f9dbd36b83aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
