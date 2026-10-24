# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pushforward.Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad52a202dc10e3e2377590fe6d9f4c7381be967b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad52a202dc10e3e2377590fe6d9f4c7381be967b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.CoverPreserving` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LeftExact` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean/declarations/instance--a4f8140c487c45c39a016fb4.md) | 47 | `declaration-track:a4f8140c487c45c39a016fb41da7df98e8559aa19c2bd1fd03597e25a4266b9c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean/declarations/instance--52eef2a35d4f281d6cf9fa17.md) | 56 | `declaration-track:52eef2a35d4f281d6cf9fa175e65a861d9a8155bd1015e4a0cf0eaa7d05ad242` |
| 3 | `def` | [Sites.pushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean/declarations/sites-pushforward--c3c63675e5d1f61d110bf7cf.md) | 62 | `declaration-track:c3c63675e5d1f61d110bf7cf9aab2533cc2066f5924f108a469d61ef072fd84e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean/declarations/instance--f056eeaa8a3305a827965f16.md) | 66 | `declaration-track:f056eeaa8a3305a827965f160a518702ecbb97afc2f4d0031d1d915680cd0cc7` |
| 5 | `def` | [Sites.pullbackPushforwardAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean/declarations/sites-pullbackpushforwardadjunction--289da1daef5e88010acffad6.md) | 72 | `declaration-track:289da1daef5e88010acffad681c42e80fd2b101d1d50a0519b7931f3c895baf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
