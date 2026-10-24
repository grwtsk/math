# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismProperty.Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48a845bacb23845c5f1ac6d1e26839a22ed6a48b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48a845bacb23845c5f1ac6d1e26839a22ed6a48b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Comma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FullSubcategory` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Comma` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forgetCreatesLimitOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/forgetcreateslimitofclosed--54c229df03070431fcbb3bd0.md) | 30 | `declaration-track:54c229df03070431fcbb3bd092dae19ab039538dd47337f3bee045ee149f889e` |
| 2 | `def` | [forgetCreatesLimitsOfShapeOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/forgetcreateslimitsofshapeofclosed--b90fad7386aa915cb5ec2e7f.md) | 40 | `declaration-track:b90fad7386aa915cb5ec2e7f02daf067b039f54d44877dd670b84c75d06b5075` |
| 3 | `lemma` | [hasLimit_of_closedUnderLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/haslimit-of-closedunderlimitsofshape--aedb587e9a6bb99971bccde8.md) | 45 | `result-track:aedb587e9a6bb99971bccde84257fb1a984f710bf4ff576caddcce11f1bb3fdb` |
| 4 | `lemma` | [hasLimitsOfShape_of_closedUnderLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/haslimitsofshape-of-closedunderlimitsofshape--87b1c8d6396a55c0acc1aa95.md) | 52 | `result-track:87b1c8d6396a55c0acc1aa9573e97dd9560bf17c7d911cfa3a77f5777682208d` |
| 5 | `lemma` | [CostructuredArrow.closedUnderLimitsOfShape_discrete_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/costructuredarrow-closedunderlimitsofshape-discrete-empty--fd5b2be366b4e6caa3694323.md) | 63 | `result-track:fd5b2be366b4e6caa3694323f8b1577347fbdd967d658f478307ee8d8644cb9a` |
| 6 | `lemma` | [Over.closedUnderLimitsOfShape_discrete_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/over-closedunderlimitsofshape-discrete-empty--4fbb14908e325548813da429.md) | 81 | `result-track:4fbb14908e325548813da42949f1dfb926094c719cab6d8ebc5465e47f0d40c7` |
| 7 | `lemma` | [Over.closedUnderLimitsOfShape_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/over-closedunderlimitsofshape-pullback--34be45daf22ae879e1af1e0b.md) | 90 | `result-track:34be45daf22ae879e1af1e0bf98cca4dc61b1c2047c21c805d0f72ebc2a6e593` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/instance--c03ae7aab36d376817c17bca.md) | 107 | `declaration-track:c03ae7aab36d376817c17bca74d5292c22914a7855d828ce31397ba86e54b709` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/instance--208d1578e5877ca967af8623.md) | 116 | `declaration-track:208d1578e5877ca967af8623970f86301512497d180176ef605ed6cfa593e8a4` |
| 10 | `def` | [mkIdTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/mkidterminal--4fba279816f204b9e190392c.md) | 126 | `declaration-track:4fba279816f204b9e190392cc3c10effdacb410aa934639fb1c146cc304b8f81` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/instance--f235c8d4c9f6a51b7e832dba.md) | 130 | `declaration-track:f235c8d4c9f6a51b7e832dba4f08069b1f865175f70515d942fecee2b44019b0` |
| 12 | `instance` | [createsLimitsOfShape_walkingCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/createslimitsofshape-walkingcospan--922d2f6652154a0456a993c8.md) | 136 | `declaration-track:922d2f6652154a0456a993c8cb573de93af065a0bb0ff5310e8327c282063450` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356.lean/declarations/instance--3a16f236b7d076c74c7d64dd.md) | 146 | `declaration-track:3a16f236b7d076c74c7d64ddd6cafc89315519f131f2a47b24e048a0ec3e4661` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
