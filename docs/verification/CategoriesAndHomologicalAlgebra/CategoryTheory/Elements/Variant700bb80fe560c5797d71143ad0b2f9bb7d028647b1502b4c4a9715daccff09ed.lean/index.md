# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elements.Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecaa6180251ebf3c0e2fcabdd9d8d3fe4924c5e1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecaa6180251ebf3c0e2fcabdd9d8d3fe4924c5e1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.StructuredArrow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.Elements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/functor-elements--3dd73e8ede7786148ad4b1da.md) | 54 | `declaration-track:3dd73e8ede7786148ad4b1da14eebbd5e93a1935e7be983fed04aa0f76ade749` |
| 2 | `lemma` | [Functor.Elements.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/functor-elements-ext--3e80b8fbfd3f05080a5ca338.md) | 59 | `result-track:3e80b8fbfd3f05080a5ca338d1947142457f451766b73befd3e5bd51c3214b8a` |
| 3 | `instance` | [categoryOfElements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/categoryofelements--2c55d44de3a5995c4454553b.md) | 70 | `declaration-track:2c55d44de3a5995c4454553b971b0787bc13bb3fe7ba7079f18b4e4539e78051` |
| 4 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/ext--0c131d06d7455eb8d5505bc5.md) | 79 | `result-track:0c131d06d7455eb8d5505bc50c585f9d0ddfc79bdd37f6f8a8e81395176a945f` |
| 5 | `theorem` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/comp-val--8991d6929c258fd6ca6af0ec.md) | 84 | `result-track:8991d6929c258fd6ca6af0ecea11b577aa7b841e520ddfe748cf644da3a7593d` |
| 6 | `theorem` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/id-val--2f972177ab8a985b83a3c0a7.md) | 90 | `result-track:2f972177ab8a985b83a3c0a79f87ea327598db50099c7f73c7a23785970af2d9` |
| 7 | `instance` | [groupoidOfElements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/groupoidofelements--d4f00e57aec47ecfd7dc1010.md) | 96 | `declaration-track:d4f00e57aec47ecfd7dc10100c450f7d559c5119073564f31f75db4dde93d768` |
| 8 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/anonymous--6deaf46ca3fb68bf48814cb7.md) | 122 | `declaration-track:6deaf46ca3fb68bf48814cb7e09338722c97eedd71287393e29d3252f2008cfb` |
| 9 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/map--39a718f53d32a7d9396b76a8.md) | 130 | `declaration-track:39a718f53d32a7d9396b76a870babc2b8cb90e3345f17b010afada097ca56444` |
| 10 | `theorem` | [map_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/map--b9899326af4ca5060d4df9fa.md) | 137 | `result-track:b9899326af4ca5060d4df9fabd6151e9b569863a518d7bbf52acebb6a3291802` |
| 11 | `def` | [toStructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/tostructuredarrow--436ca124d049a3be4a2b3eb9.md) | 142 | `declaration-track:436ca124d049a3be4a2b3eb92218c0bdd41a9b11cae33261dc87c386e2d655c3` |
| 12 | `theorem` | [toStructuredArrow_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/tostructuredarrow-obj--0ae7b6e8dc6c050c95715f20.md) | 148 | `result-track:0ae7b6e8dc6c050c95715f20639898d919a42a06e2aa722fadc674abd2ca124e` |
| 13 | `theorem` | [to_comma_map_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/to-comma-map-right--577c0c10b2baff50a5d86989.md) | 157 | `result-track:577c0c10b2baff50a5d86989f2f97693d832ea20bbf084f603e4a7d8e8a658a4` |
| 14 | `def` | [fromStructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/fromstructuredarrow--2b8e3b0ce2feec24290838b3.md) | 162 | `declaration-track:2b8e3b0ce2feec24290838b39386ce4df8cdf494b7484425dc7fe3bae98811a6` |
| 15 | `theorem` | [fromStructuredArrow_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/fromstructuredarrow-obj--6e21eed60ba669db2433ad7d.md) | 168 | `result-track:6e21eed60ba669db2433ad7d0e8d45dc8f5c860d3f6c807322dbc3b4890a75f5` |
| 16 | `theorem` | [fromStructuredArrow_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/fromstructuredarrow-map--ce20f7c056e4db0b1b767a0a.md) | 173 | `result-track:ce20f7c056e4db0b1b767a0afe7fc21c5cf3416c90700ed2c96ebbc8dd830205` |
| 17 | `def` | [structuredArrowEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/structuredarrowequivalence--48203fbe8958ace11973c356.md) | 182 | `declaration-track:48203fbe8958ace11973c356cfccd4d678d85e3f4c1fe748401522a4248a8458` |
| 18 | `def` | [toCostructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/tocostructuredarrow--766674695187ac5335591712.md) | 194 | `declaration-track:766674695187ac5335591712cadde5520f1b478d27427ff57d5e897fd1497bf2` |
| 19 | `def` | [fromCostructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/fromcostructuredarrow--c166cc384447d036466cc535.md) | 209 | `declaration-track:c166cc384447d036466cc535208718deabe0f2f47ae89961ff1bfc3f224a38ff` |
| 20 | `theorem` | [fromCostructuredArrow_obj_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/fromcostructuredarrow-obj-mk--bdc9f636d841a7997a2222a8.md) | 224 | `result-track:bdc9f636d841a7997a2222a801174586a51ae622be8ac3d082c765b4e433d34c` |
| 21 | `theorem` | [from_toCostructuredArrow_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/from-tocostructuredarrow-eq--8fd8c7b62f142bb95ca23c25.md) | 230 | `result-track:8fd8c7b62f142bb95ca23c25ce832b4fd3ae6790971b27e2a18badeeeeadfdef` |
| 22 | `theorem` | [to_fromCostructuredArrow_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/to-fromcostructuredarrow-eq--12038719c2264f70592137f0.md) | 245 | `result-track:12038719c2264f70592137f081ef9e9286d5aa0a753aa30491ebbd2f8cdb4f13` |
| 23 | `def` | [costructuredArrowYonedaEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/costructuredarrowyonedaequivalence--4113e1044034fa10cbed69df.md) | 264 | `declaration-track:4113e1044034fa10cbed69df807859037dd453a0af3c4eb1eeb216639e0e8888` |
| 24 | `theorem` | [costructuredArrow_yoneda_equivalence_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/declarations/costructuredarrow-yoneda-equivalence-naturality--217a7b2d6ea825fd7e154d4f.md) | 277 | `result-track:217a7b2d6ea825fd7e154d4f366c0f9263a5670c7477d513a21dd2a37f388590` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
