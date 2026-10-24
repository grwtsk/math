# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WeakFactorizationSystem.Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2ca45ac9bb8d73d79de1649ef4447eb7358af5d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2ca45ac9bb8d73d79de1649ef4447eb7358af5d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.RetractArgument` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsWeakFactorizationSystem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7.lean/declarations/isweakfactorizationsystem--0fa30158e1d06ac6ecb4ba85.md) | 39 | `declaration-track:0fa30158e1d06ac6ecb4ba85549a78fed92213d334d52296fd5257341aa8d901` |
| 2 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7.lean/declarations/mk--3f820f1f58b4bd074157fa02.md) | 48 | `result-track:3f820f1f58b4bd074157fa02bc6323a9fd5652c3233444ee495060750b2d7493` |
| 3 | `lemma` | [rlp_eq_of_wfs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7.lean/declarations/rlp-eq-of-wfs--c8339ded4d8240151cb79d1b.md) | 64 | `result-track:c8339ded4d8240151cb79d1b2d87e9817b98337b25421d58044a81397949b2ea` |
| 4 | `lemma` | [llp_eq_of_wfs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7.lean/declarations/llp-eq-of-wfs--2e4bf4c1732c17d878e35866.md) | 66 | `result-track:2e4bf4c1732c17d878e35866f1adc325563b8794fd74b321d6621c101d46ed62` |
| 5 | `lemma` | [hasLiftingProperty_of_wfs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakFactorizationSystem/Variant4e8c799edbfbadcee42deef38f12c1c3f6cf4b370c8327b9e7cd8b6d7399b9e7.lean/declarations/hasliftingproperty-of-wfs--37ed3e42012dc70825d10625.md) | 69 | `result-track:37ed3e42012dc70825d10625b53c0e2416231ef03d657af920cf81a0ceff045d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
