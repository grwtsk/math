# Verification target: GRWTSK.Combinatorics.WeightedInventoryDeficit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56e05c022a7597bc93f3ef42064183cb937bec55",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/WeightedInventoryDeficit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/index.md) · [Full source](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56e05c022a7597bc93f3ef42064183cb937bec55`.

Source path: `GRWTSK/Combinatorics/WeightedInventoryDeficit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/WeightedInventoryDeficit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.WeightedPairBudget`](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.Omega` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mass_partition](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/declarations/mass-partition--2c30aed1a60d06a85af17606.md) | 29 | `result-track:2c30aed1a60d06a85af17606b2031aba815a1c7193a420c6092ca785982b54a3` |
| 2 | `theorem` | [known_add_pair_le_mass](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/declarations/known-add-pair-le-mass--bc6cd8e1baac171bbd889a02.md) | 51 | `result-track:bc6cd8e1baac171bbd889a02a58a67cd87a216010c6ee7ba8e60b85995851baf` |
| 3 | `theorem` | [no_room_for_unrecorded_pair](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/declarations/no-room-for-unrecorded-pair--a3ed53d77aec38b861290aff.md) | 64 | `result-track:a3ed53d77aec38b861290aff02478cba77356401764503c408d10f797c883511` |
| 4 | `theorem` | [one_missing_fixed_point_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/declarations/one-missing-fixed-point-fixture--0d1a3597a6dd74342402007d.md) | 79 | `result-track:0d1a3597a6dd74342402007d7f602e665e4c69a63f03901c6ccddc9eb9379413` |
| 5 | `theorem` | [two_unit_deficit_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/declarations/two-unit-deficit-fixture--a9b2da3555f7f8de31a0a514.md) | 85 | `result-track:a9b2da3555f7f8de31a0a514370a463e8bbe674455db2896b710f1a44c1da95d` |
| 6 | `theorem` | [duplicate_credit_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/declarations/duplicate-credit-fixture--5e28228388406c4ffab9906b.md) | 91 | `result-track:5e28228388406c4ffab9906b74d2fbae7fb033d5a53d4e06f600e83005c5ba62` |
| 7 | `theorem` | [zero_weight_pair_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/declarations/zero-weight-pair-fixture--3cb2bf2afa5e2e0b30ab076e.md) | 98 | `result-track:3cb2bf2afa5e2e0b30ab076e42b0d66c02686b1ef35f3ef076cc3d884ef82f56` |
| 8 | `theorem` | [outside_source_credit_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/declarations/outside-source-credit-fixture--f2f36877b75b9c19bbf08a89.md) | 105 | `result-track:f2f36877b75b9c19bbf08a89d252ffd7e70a6e330b0e9a7f83437c512a9804eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
