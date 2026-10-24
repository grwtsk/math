# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyBijective.Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fa44d9742d98e4cd13f521241001aa6b50ec98a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fa44d9742d98e4cd13f521241001aa6b50ec98a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Localization` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocallyBijective_iff_isIso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/islocallybijective-iff-isiso--8b5f052e44069ef2d05c7037.md) | 48 | `result-track:8b5f052e44069ef2d05c703723378cbbf319c2500703b5338d3bf1f4cf72639f` |
| 2 | `lemma` | [isLocallyBijective_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/islocallybijective-iff-isiso--d8e4b4e7a730177501102dbc.md) | 89 | `result-track:d8e4b4e7a730177501102dbce75338f64d00128f302f1ac2b25b2efe30ea034b` |
| 3 | `class` | [WEqualsLocallyBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/wequalslocallybijective--194b8df7c32a24efcfc37899.md) | 110 | `declaration-track:194b8df7c32a24efcfc378990c825d916090662052dfd962c88a6f1d647c07e9` |
| 4 | `lemma` | [W_iff_isLocallyBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/w-iff-islocallybijective--5eab7b44cdb8f3bc7ee54814.md) | 119 | `result-track:5eab7b44cdb8f3bc7ee5481437f3ae808b9696f01072562d0d61a930fa909309` |
| 5 | `lemma` | [W_of_isLocallyBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/w-of-islocallybijective--838b41c43aea03486de2818b.md) | 123 | `result-track:838b41c43aea03486de2818b58033424b4f1b2c68bb6ba83453e9fc40fd88c34` |
| 6 | `lemma` | [W.isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/w-islocallyinjective--e419a92a9a1b32f79cc93433.md) | 130 | `result-track:e419a92a9a1b32f79cc9343327b3d6ef7193bd30220142076b1bcb293c7914d9` |
| 7 | `lemma` | [W.isLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/w-islocallysurjective--8f5b1e040758e0cb5caa92db.md) | 133 | `result-track:8f5b1e040758e0cb5caa92dbee2c9f4f9d85590511cebc7d3684beb0aeb83f23` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/instance--1d6ee8c2d58a9a8dd476ea54.md) | 138 | `declaration-track:1d6ee8c2d58a9a8dd476ea546d6a3f631cc623d224419c24d134cc2289c3a7e9` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/instance--53dd536b7ed5c52a23985274.md) | 141 | `declaration-track:53dd536b7ed5c52a2398527417c78b6cbeef573e657c726ae9e19854a8e060c1` |
| 10 | `lemma` | [WEqualsLocallyBijective.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/wequalslocallybijective-mk--91b50fffea3c8d6b7812460f.md) | 146 | `result-track:91b50fffea3c8d6b7812460f497801de4c471b8ae02c861721505c360b5be34c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/instance--46b19f667f974d1041ecb100.md) | 158 | `declaration-track:46b19f667f974d1041ecb100ec5f63744b185c3899240bdb41626973f4420959` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/instance--67e5a19d0eb0bea48aa67bcb.md) | 166 | `declaration-track:67e5a19d0eb0bea48aa67bcb04d1ab4cfe8dc83a0dc3a71d74ddeda95bbab821` |
| 13 | `lemma` | [isLocallyInjective_presheafToSheaf_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/islocallyinjective-presheaftosheaf-map-iff--4e4c9328c982d1d1a5daa179.md) | 176 | `result-track:4e4c9328c982d1d1a5daa179b10ae90a42e14fe54a5478cdcc0ba47c8c3682b2` |
| 14 | `lemma` | [isLocallySurjective_presheafToSheaf_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/declarations/islocallysurjective-presheaftosheaf-map-iff--254762ff347d46ac766bb896.md) | 183 | `result-track:254762ff347d46ac766bb896d10b0ec213bcd3dd0f8162cb1517996973f1144d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
