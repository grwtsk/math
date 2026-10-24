# Verification target: GRWTSK.Topology.GeneralTopology.Perfect.Variant75512c05c8f26f6e6e8fd0f9ed6b6f195717bd68c067d543ba6d4b4ec74c08dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3793c6868090122d9d1e4994ddc34961d1c27311",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant75512c05c8f26f6e6e8fd0f9ed6b6f195717bd68c067d543ba6d4b4ec74c08dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant75512c05c8f26f6e6e8fd0f9ed6b6f195717bd68c067d543ba6d4b4ec74c08dc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant75512c05c8f26f6e6e8fd0f9ed6b6f195717bd68c067d543ba6d4b4ec74c08dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3793c6868090122d9d1e4994ddc34961d1c27311`.

Source path: `GRWTSK/Topology/GeneralTopology/Perfect/Variant75512c05c8f26f6e6e8fd0f9ed6b6f195717bd68c067d543ba6d4b4ec74c08dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Perfect/Variant75512c05c8f26f6e6e8fd0f9ed6b6f195717bd68c067d543ba6d4b4ec74c08dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Perfect` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Polish` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CantorScheme` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Perfect.small_diam_aux](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant75512c05c8f26f6e6e8fd0f9ed6b6f195717bd68c067d543ba6d4b4ec74c08dc.lean/declarations/perfect-small-diam-aux--c96c13a27c4553d9fd6f0596.md) | 40 | `result-track:c96c13a27c4553d9fd6f05968814671fe6f2190b944159d7d8219a7257e564c4` |
| 2 | `theorem` | [Perfect.small_diam_splitting](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant75512c05c8f26f6e6e8fd0f9ed6b6f195717bd68c067d543ba6d4b4ec74c08dc.lean/declarations/perfect-small-diam-splitting--f8b737b2c1025b02c5db8c8b.md) | 58 | `result-track:f8b737b2c1025b02c5db8c8ba64245d1ea3858f27f9e4da673151395dfb1c56e` |
| 3 | `theorem` | [Perfect.exists_nat_bool_injection](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant75512c05c8f26f6e6e8fd0f9ed6b6f195717bd68c067d543ba6d4b4ec74c08dc.lean/declarations/perfect-exists-nat-bool-injection--e519a8ffab4ce6beac1a984f.md) | 75 | `result-track:e519a8ffab4ce6beac1a984fb77c9f0f7cf8024a24d87fc7bd04c48630cd5686` |
| 4 | `theorem` | [IsClosed.exists_nat_bool_injection_of_not_countable](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant75512c05c8f26f6e6e8fd0f9ed6b6f195717bd68c067d543ba6d4b4ec74c08dc.lean/declarations/isclosed-exists-nat-bool-injection-of-not-countable--9eb1e7fdc40e6a4beda80110.md) | 133 | `result-track:9eb1e7fdc40e6a4beda801105a41dede037d3f02dd651a3b3cc0e13b0d20aaae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
