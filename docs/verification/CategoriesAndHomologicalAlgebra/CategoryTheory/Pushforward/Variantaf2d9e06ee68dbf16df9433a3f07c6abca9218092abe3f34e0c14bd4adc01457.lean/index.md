# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pushforward.Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19ca10c355d08072a85c921a75d1845af1701b4e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19ca10c355d08072a85c921a75d1845af1701b4e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.CoverPreserving` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LeftExact` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457.lean/declarations/instance--6208116f5487d7e5dac6c1c0.md) | 39 | `declaration-track:6208116f5487d7e5dac6c1c0bc23d9fffa8f1dbd589ecc314f78a9b46d388ff2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457.lean/declarations/instance--a1fddc76b90963cd1cb3111d.md) | 48 | `declaration-track:a1fddc76b90963cd1cb3111d0d8d031969a3f776482730557ee48c47f26ad4c8` |
| 3 | `def` | [Sites.pushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457.lean/declarations/sites-pushforward--29283bd79a668f3803894bd1.md) | 54 | `declaration-track:29283bd79a668f3803894bd19013f377f6f58fb8e2fc5b18f2bba545b0f9570e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457.lean/declarations/instance--e45191381c6ca0664cce2da5.md) | 58 | `declaration-track:e45191381c6ca0664cce2da56ffd7caab570c0c34f6e050e0546d0159ad0dc46` |
| 5 | `def` | [Sites.pullbackPushforwardAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457.lean/declarations/sites-pullbackpushforwardadjunction--e223fb506c20968ec1a71fba.md) | 64 | `declaration-track:e223fb506c20968ec1a71fbad1d9457311a82c1dccaf1acb09f86317bb66e0f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
