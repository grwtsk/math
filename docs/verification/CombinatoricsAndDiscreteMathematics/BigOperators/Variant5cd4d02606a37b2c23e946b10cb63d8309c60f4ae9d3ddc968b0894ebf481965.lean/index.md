# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81e5b4f7129bf7d979a31f2bfe52f7d51425c240",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81e5b4f7129bf7d979a31f2bfe52f7d51425c240`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast.CharZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean/declarations/cast-list-sum--d710ad874bd80d1be872b1ff.md) | 21 | `result-track:d710ad874bd80d1be872b1ffcd9193aea0c53b0f2ad093590eafc3409e0b0b7a` |
| 2 | `theorem` | [cast_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean/declarations/cast-multiset-sum--6bd4d305a52de67f5435a882.md) | 25 | `result-track:6bd4d305a52de67f5435a8828ac20a1755f012f91d844ccf2a51937929e6943b` |
| 3 | `theorem` | [cast_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean/declarations/cast-sum--0cd70e05047b03b6bf348bd4.md) | 29 | `result-track:0cd70e05047b03b6bf348bd40f3d7dbb49f49665f06c0d5b2c494efa5ee03002` |
| 4 | `theorem` | [cast_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean/declarations/cast-list-prod--c909c52d561b8daaf4ab1e71.md) | 33 | `result-track:c909c52d561b8daaf4ab1e71b41580daa7aa060b33ac1edfd0c2d1b0a5a36a39` |
| 5 | `theorem` | [cast_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean/declarations/cast-multiset-prod--2e67adf1aad5c748e4f53814.md) | 43 | `result-track:2e67adf1aad5c748e4f53814ffaed3ff0ceeead398dcd2ebb890681582f8c272` |
| 6 | `theorem` | [cast_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5cd4d02606a37b2c23e946b10cb63d8309c60f4ae9d3ddc968b0894ebf481965.lean/declarations/cast-prod--48d79f19a141285a1a9bec34.md) | 47 | `result-track:48d79f19a141285a1a9bec34b610f34eca71799eb0b1d268acdf1928f15ce053` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
