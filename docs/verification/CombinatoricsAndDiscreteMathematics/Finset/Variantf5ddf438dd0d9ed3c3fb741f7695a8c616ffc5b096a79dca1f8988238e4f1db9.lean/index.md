# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a7f3c0355042f1e6c8d1f5e768166a36477afcd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a7f3c0355042f1e6c8d1f5e768166a36477afcd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/declarations/prod-eq-zero--36919c71f4cef1e3c167f2f9.md) | 34 | `result-track:36919c71f4cef1e3c167f2f9b319fcaddd09837844513f6c767ee63492c9411b` |
| 2 | `lemma` | [prod_ite_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/declarations/prod-ite-zero--ea0b72002ea0369b0d1f69a6.md) | 37 | `result-track:ea0b72002ea0369b0d1f69a6f59749009e0b92c3ef41fb2f488ca6aaacc5f390` |
| 3 | `lemma` | [prod_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/declarations/prod-boole--9d5289c0286f1c265ba07d8a.md) | 45 | `result-track:9d5289c0286f1c265ba07d8ac3fd557e74cefa9643e8d6800d5f73a2861cd7b2` |
| 4 | `lemma` | [support_prod_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/declarations/support-prod-subset--529410b917341c700a25eb64.md) | 48 | `result-track:529410b917341c700a25eb64144f2d6a4f76a08e498cc8c9f0fc0823040349de` |
| 5 | `lemma` | [prod_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/declarations/prod-eq-zero-iff--c1dad8d357507ced7cddeee8.md) | 54 | `result-track:c1dad8d357507ced7cddeee8458326761783165b09ef340a871d61142efa6046` |
| 6 | `lemma` | [prod_ne_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/declarations/prod-ne-zero-iff--71763a6d28916cdb6d5ff289.md) | 60 | `result-track:71763a6d28916cdb6d5ff28905f2d8d4c2bf227148537e478f188acd4edbb1b5` |
| 7 | `lemma` | [support_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/declarations/support-prod--9731a5276086091269fdc19c.md) | 64 | `result-track:9731a5276086091269fdc19c98ddf0dba62d3e0bfe2e1d87529825b7c78b3275` |
| 8 | `lemma` | [prod_ite_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/declarations/prod-ite-zero--fe4090a60f3c44eaa3ed03e2.md) | 73 | `result-track:fe4090a60f3c44eaa3ed03e214ca12898a19ddb7658b2db128077922c7a3eff9` |
| 9 | `lemma` | [prod_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/declarations/prod-boole--032ed26a2f9dabefc17ac83a.md) | 76 | `result-track:032ed26a2f9dabefc17ac83a01aa0b4cfd8800cb72ef3ffdc7a6163d691e71ec` |
| 10 | `lemma` | [Units.mk0_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9.lean/declarations/units-mk0-prod--95bdf146a8895958ae1f99a6.md) | 80 | `result-track:95bdf146a8895958ae1f99a6cfa62ce44487788998cfb808d9c8ae6c3fe3be6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
