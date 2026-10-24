# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Multiset.Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27e6fc4f72524341a58f3ae490c2a4342d487cef",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27e6fc4f72524341a58f3ae490c2a4342d487cef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.List` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean/declarations/prod-nonneg--cf462b2e74cae39809086be8.md) | 28 | `result-track:cf462b2e74cae39809086be86ad44479ab1115808d3bbf3966d003e983b0e3d4` |
| 2 | `lemma` | [one_le_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean/declarations/one-le-prod--a813a9217d06eaf0d6fe2db4.md) | 33 | `result-track:a813a9217d06eaf0d6fe2db49769acd237fd4b4403efc80feda29565fc72b5f7` |
| 3 | `theorem` | [prod_map_le_prod_map₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean/declarations/prod-map-le-prod-map--5386e605c767ecdb2beed46b.md) | 38 | `result-track:5386e605c767ecdb2beed46b143f658ae4eda6dd18eef3c2bdb58e109d1524b8` |
| 4 | `theorem` | [prod_map_le_pow_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean/declarations/prod-map-le-pow-card--eb4c89676a4f58e75471c06c.md) | 45 | `result-track:eb4c89676a4f58e75471c06c2168295d9a4b49aa62792254b27d8ba83d1a6788` |
| 5 | `lemma` | [prod_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean/declarations/prod-pos--71946aa9d581bb9f39fd4322.md) | 54 | `result-track:71946aa9d581bb9f39fd432218ec49e878088c9ec686e57be3a6b8b36c248c7b` |
| 6 | `theorem` | [prod_map_lt_prod_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variantc9f99ed62dde43ba698c2483b75738d70c311697ff3b93ee71e3afe2e189c95c.lean/declarations/prod-map-lt-prod-map--642e8c3eb2c30a24320d51e5.md) | 59 | `result-track:642e8c3eb2c30a24320d51e52ed25636476cac665661f862627b1ec21edf0ca5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
