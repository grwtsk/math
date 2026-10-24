# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DisjointCoproduct.Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3984cbe02908c91ff374eadbfe854c79f33eace6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3984cbe02908c91ff374eadbfe854c79f33eace6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CoproductDisjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/declarations/coproductdisjoint--ec5f837faf1f806e7279e8c3.md) | 55 | `declaration-track:ec5f837faf1f806e7279e8c3a967710220bfa173e5ec663d59c67285537ff5d8` |
| 2 | `def` | [isInitialOfIsPullbackOfIsCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/declarations/isinitialofispullbackofiscoproduct--45e0d439b89ef7ed5bf2d824.md) | 74 | `declaration-track:45e0d439b89ef7ed5bf2d8244ee741e9f714e45893409312b3258b89045ba9a7` |
| 3 | `def` | [isInitialOfIsPullbackOfCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/declarations/isinitialofispullbackofcoproduct--d93865a7d4a452104d6e481b.md) | 89 | `declaration-track:d93865a7d4a452104d6e481b27fbac27f867d597ca0aa7a1da815fe8ddf60100` |
| 4 | `def` | [isInitialOfPullbackOfIsCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/declarations/isinitialofpullbackofiscoproduct--263b110e303baa607c89a497.md) | 104 | `declaration-track:263b110e303baa607c89a49756859f10c32991bc8fe7f4ea065552787b84e96b` |
| 5 | `def` | [isInitialOfPullbackOfCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/declarations/isinitialofpullbackofcoproduct--ce32df5dee7b195372dfa3aa.md) | 112 | `declaration-track:ce32df5dee7b195372dfa3aadb07bedb7d70353945569014cbd4db694c75cafe` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/declarations/instance--70af74b6980700c8be33f00d.md) | 117 | `declaration-track:70af74b6980700c8be33f00d28e199bc5b1b24c8e262c5710efdd6d43ee48828` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/declarations/instance--3c1bda14969129dbf2950677.md) | 121 | `declaration-track:3c1bda14969129dbf29506772134b2edfa0347a49821490b1ae84af6a417d4f4` |
| 8 | `class` | [CoproductsDisjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/declarations/coproductsdisjoint--1379f0266a56381368fe38cc.md) | 126 | `declaration-track:1379f0266a56381368fe38cc664540758908bba806fc80e89f568f7ef4b19408` |
| 9 | `theorem` | [initialMonoClass_of_disjoint_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/declarations/initialmonoclass-of-disjoint-coproducts--32db5051e5777d04d381b974.md) | 134 | `result-track:32db5051e5777d04d381b97466b731d215b154f040c9661bd7ea382e76675186` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
