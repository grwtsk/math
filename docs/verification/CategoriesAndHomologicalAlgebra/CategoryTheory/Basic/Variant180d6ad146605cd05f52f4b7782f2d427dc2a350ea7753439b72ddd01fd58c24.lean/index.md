# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f777e2f0518d585f19ea97cb698a5775cd887c28",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f777e2f0518d585f19ea97cb698a5775cd887c28`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.IsCardinalForSmallObjectArgument` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSmallObjectArgument](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/declarations/hassmallobjectargument--bb3567b8cffafc56e383cf12.md) | 84 | `declaration-track:bb3567b8cffafc56e383cf129e6e2b221e05845fd6d9220b913b0075c924c420` |
| 2 | `def` | [smallObjectκ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/declarations/smallobject--e0450c44b6eb7037011cbd2a.md) | 92 | `declaration-track:e0450c44b6eb7037011cbd2a75479f9e807d5f8ad2b68d76cc83c04302ff982b` |
| 3 | `instance` | [smallObjectκ_isRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/declarations/smallobject-isregular--d6d144f99a91ed6448dda562.md) | 95 | `declaration-track:d6d144f99a91ed6448dda562be709cecf26195d006f86eb915b272c1ac968dfd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/declarations/instance--32e02914e27d88f19262563f.md) | 98 | `declaration-track:32e02914e27d88f19262563fef27bd67fa83cf98b98194218f7a5c93adac6e56` |
| 5 | `instance` | [isCardinalForSmallObjectArgument_smallObjectκ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/declarations/iscardinalforsmallobjectargument-smallobject--9cc25b28ff6499dc6b190d24.md) | 101 | `declaration-track:9cc25b28ff6499dc6b190d24229b2d020a0ae6e799cc07021c723e4c795df8da` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/declarations/instance--c8c0f84d95f5f1efc8b6bc66.md) | 105 | `declaration-track:c8c0f84d95f5f1efc8b6bc66a6c1520e14a9bf548817fde5fb4cbe1c21e11293` |
| 7 | `lemma` | [llp_rlp_of_hasSmallObjectArgument'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/declarations/llp-rlp-of-hassmallobjectargument--14b92d08d062dbb00963cfd7.md) | 113 | `result-track:14b92d08d062dbb00963cfd7d59441a2c3ad67dfedb2ccb1a53b59655c8d5e93` |
| 8 | `lemma` | [llp_rlp_of_hasSmallObjectArgument](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/declarations/llp-rlp-of-hassmallobjectargument--082a23013d9dbf8b787a9754.md) | 123 | `result-track:082a23013d9dbf8b787a97541dba9a041723e97d9ce1b0ad0037a2f2a2295900` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
