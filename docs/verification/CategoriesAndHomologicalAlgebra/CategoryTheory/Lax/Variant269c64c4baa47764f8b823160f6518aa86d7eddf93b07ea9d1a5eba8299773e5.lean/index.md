# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Lax.Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6530ce28397145843432bfc66293a0400b5a850",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6530ce28397145843432bfc66293a0400b5a850`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Prelax` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Slice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.ToApp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LaxFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/declarations/laxfunctor--366f6f49121c9072e615b48e.md) | 64 | `declaration-track:366f6f49121c9072e615b48e32668cc6c49eded7f87a1493e3404e9db338d618` |
| 2 | `lemma` | [mapComp_assoc_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/declarations/mapcomp-assoc-left--167ac3046d4c1a3f248f5ce1.md) | 108 | `result-track:167ac3046d4c1a3f248f5ce19a27edb790cd5283c3a2855184fd63f3601bd57b` |
| 3 | `lemma` | [mapComp_assoc_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/declarations/mapcomp-assoc-right--cc066f7149135d88c23705a1.md) | 115 | `result-track:cc066f7149135d88c23705a1a10f7b45c061f679e56f477785cb50702c608539` |
| 4 | `lemma` | [map₂_leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/declarations/map-leftunitor-hom--40f77a03654e62c8cc3616cc.md) | 122 | `result-track:40f77a03654e62c8cc3616cc051ac4c4c55614d37465c13009bffcd7708ff5e8` |
| 5 | `lemma` | [map₂_rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/declarations/map-rightunitor-hom--04ed7167f42169076b3cafb0.md) | 128 | `result-track:04ed7167f42169076b3cafb030feb152954b0d567d779da31ad513de6ba7a0ae` |
| 6 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/declarations/id--9b1994629cc6dcb14b93e815.md) | 135 | `declaration-track:9b1994629cc6dcb14b93e815a61f8282c84bbee6ca46927f5a59a54283be1f22` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/declarations/instance--20c3561822d321e84add9899.md) | 140 | `declaration-track:20c3561822d321e84add989955406c6c834ae5c71948f6e546d8092a4f4cbc43` |
| 8 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/declarations/comp--0693bb9b5e464f6fd5945c82.md) | 145 | `declaration-track:0693bb9b5e464f6fd5945c824b44127b6f9eb08e597a94621e5bcd652558df5a` |
| 9 | `structure` | [PseudoCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/declarations/pseudocore--5edc4e9d65a9937191276296.md) | 177 | `declaration-track:5edc4e9d65a9937191276296ad4d728f444057affe7653f1f1d180a04cfa03b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
