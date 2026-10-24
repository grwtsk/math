# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WeakFactorizationSystem.Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cef63b3332f960c9e51403c2daac937bcf7d9779",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cef63b3332f960c9e51403c2daac937bcf7d9779`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.RetractArgument` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsWeakFactorizationSystem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47.lean/declarations/isweakfactorizationsystem--6eeeeef7855ee3b934c13b9a.md) | 31 | `declaration-track:6eeeeef7855ee3b934c13b9a85b5e125eb124929a2a534bee8b74cbfb948a1f3` |
| 2 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47.lean/declarations/mk--09ae3c052582aff9e2d76374.md) | 40 | `result-track:09ae3c052582aff9e2d763749759d8b5d5bc38ad158261ac7a56f6ecd3f4685a` |
| 3 | `lemma` | [rlp_eq_of_wfs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47.lean/declarations/rlp-eq-of-wfs--9a13eabce7cf77ca3a094577.md) | 56 | `result-track:9a13eabce7cf77ca3a094577d4be2caae8b5352a91bd0572177f283062dc9cc9` |
| 4 | `lemma` | [llp_eq_of_wfs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47.lean/declarations/llp-eq-of-wfs--87271e279bf1d810d3c7e966.md) | 58 | `result-track:87271e279bf1d810d3c7e966467b3b1a857a51e1d5013747b98640c4efffe5ac` |
| 5 | `lemma` | [hasLiftingProperty_of_wfs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant6f92de5eb1727a4c795d749ac5301bc35ca2d872673c3e9a368270be13969e47.lean/declarations/hasliftingproperty-of-wfs--a936046a5c2bf7d675103aa4.md) | 61 | `result-track:a936046a5c2bf7d675103aa4421e5bf0c88536224b9770cf28f9f7bbcac64fae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
