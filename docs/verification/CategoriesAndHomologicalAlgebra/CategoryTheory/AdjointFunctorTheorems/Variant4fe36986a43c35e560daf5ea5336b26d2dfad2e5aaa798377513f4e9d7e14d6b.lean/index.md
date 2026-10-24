# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AdjointFunctorTheorems.Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "241291890909b321243082b13b1e34a4e7f920c1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `241291890909b321243082b13b1e34a4e7f920c1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SolutionSetCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/declarations/solutionsetcondition--56248d5ddcb5cb233f6d253f.md) | 59 | `declaration-track:56248d5ddcb5cb233f6d253f09c7da1fe07750db7b2f340f42d9167a14720e30` |
| 2 | `theorem` | [solutionSetCondition_of_isRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/declarations/solutionsetcondition-of-isrightadjoint--0642a7ae49119effe2c5a223.md) | 70 | `result-track:0642a7ae49119effe2c5a223ca9df4a306f75dad992980c7206188d66264b743` |
| 3 | `lemma` | [isRightAdjoint_of_preservesLimits_of_solutionSetCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/declarations/isrightadjoint-of-preserveslimits-of-solutionsetcondition--64cdcfa9737501daf987f737.md) | 81 | `result-track:64cdcfa9737501daf987f7371847f80a5111deb9e339aa02f29540e4e0f80ab8` |
| 4 | `lemma` | [isRightAdjoint_of_preservesLimits_of_isCoseparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/declarations/isrightadjoint-of-preserveslimits-of-iscoseparating--9445ee730e218b7ae00df982.md) | 104 | `result-track:9445ee730e218b7ae00df9823dcee8b56c3b099b688cbee39447d737818705eb` |
| 5 | `lemma` | [isLeftAdjoint_of_preservesColimits_of_isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/declarations/isleftadjoint-of-preservescolimits-of-isseparating--95a09220957fc1b25cb8172e.md) | 118 | `result-track:95a09220957fc1b25cb8172eeca1cfa5a203ac9ec3a6550ac8989053614b8d3d` |
| 6 | `theorem` | [hasColimits_of_hasLimits_of_isCoseparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/declarations/hascolimits-of-haslimits-of-iscoseparating--9bd5983cdf46a35706959c54.md) | 135 | `result-track:9bd5983cdf46a35706959c54716e5f8a9a15ca3ac8f03da130d92963b618c693` |
| 7 | `theorem` | [hasLimits_of_hasColimits_of_isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/declarations/haslimits-of-hascolimits-of-isseparating--33430b7d1f3aa8625f1c1039.md) | 145 | `result-track:33430b7d1f3aa8625f1c103941d0700a95d688ab35cf9b74a676f787df34344b` |
| 8 | `theorem` | [hasLimits_of_hasColimits_of_hasSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/declarations/haslimits-of-hascolimits-of-hasseparator--232da90caf479343cb7814eb.md) | 155 | `result-track:232da90caf479343cb7814eb6b0fa5e43358953d687ae32225708efbcdfeae79` |
| 9 | `theorem` | [hasColimits_of_hasLimits_of_hasCoseparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/declarations/hascolimits-of-haslimits-of-hascoseparator--de79100f32c5128e2ab0f4da.md) | 162 | `result-track:de79100f32c5128e2ab0f4daaa668f6799aad8b07dbc2562feef7947d22b0a6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
