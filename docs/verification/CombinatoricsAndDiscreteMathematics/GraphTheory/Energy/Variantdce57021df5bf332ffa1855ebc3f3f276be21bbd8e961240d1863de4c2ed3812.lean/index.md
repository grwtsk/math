# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Energy.Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d46571674948d48976d78c07d1e44460659cd21",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d46571674948d48976d78c07d1e44460659cd21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.NatInt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Density` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.BigOperators` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [energy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean/declarations/energy--b8a881bd4e6e79bb9923a30f.md) | 35 | `declaration-track:b8a881bd4e6e79bb9923a30ff007c02d7e109731cefc6107ae2577468ab08bc1` |
| 2 | `theorem` | [energy_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean/declarations/energy-nonneg--e702b0adde4fc991225147c5.md) | 38 | `result-track:e702b0adde4fc991225147c5cfb5d60c26e67795d9deaeea1c403a12bc3bb818` |
| 3 | `theorem` | [energy_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean/declarations/energy-le-one--e6d186e02e27a7e34d9fc26b.md) | 41 | `result-track:e6d186e02e27a7e34d9fc26b2d86b0e0e7e26af102eff63ec56f1cd902cbeef2` |
| 4 | `theorem` | [coe_energy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean/declarations/coe-energy--07dd8dc04ff5006d61093b03.md) | 55 | `result-track:07dd8dc04ff5006d61093b03ce6a01478020e9c904fd726ab1a2d010b624fa76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
