# Verification target: GRWTSK.Topology.AlgebraicTopology.SimplyConnected.Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdac8dab048517d18ab58fe022e106bb21bce8c2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdac8dab048517d18ab58fe022e106bb21bce8c2`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.FundamentalGroupoid.InducedMaps` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Contractible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.PUnit` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SimplyConnectedSpace](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean/declarations/simplyconnectedspace--f474eba4e5e74f475d0eb9e2.md) | 43 | `declaration-track:f474eba4e5e74f475d0eb9e2adc961eabe43f8616afcbef35b9874b56f5bdf4d` |
| 2 | `theorem` | [simply_connected_iff_unique_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean/declarations/simply-connected-iff-unique-homotopic--519ef568ffb81b16903671b2.md) | 46 | `result-track:519ef568ffb81b16903671b2483fcbd4ca1766b6f7f12f579fb42d1bbce46237` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean/declarations/instance--27f0cd16a3c07334099ded62.md) | 58 | `declaration-track:27f0cd16a3c07334099ded620735f83a9796d24e557a0993653b34a70555fc30` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean/declarations/instance--fafa8a91c7cfe2b4a7f2eb2d.md) | 64 | `declaration-track:fafa8a91c7cfe2b4a7f2eb2d095d41266a6b357ace7f29b9fe2bed8e2daf938e` |
| 5 | `theorem` | [paths_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean/declarations/paths-homotopic--104042ef7f93a5f41a15d761.md) | 70 | `result-track:104042ef7f93a5f41a15d761ce25468acaeafeafc4d4059d085ca01b6933f4b6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean/declarations/instance--ef2f9da6a010dc410b7666e3.md) | 73 | `declaration-track:ef2f9da6a010dc410b7666e309d2a07918d5d12e12fea7813f27356da8eed48b` |
| 7 | `theorem` | [simply_connected_iff_paths_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean/declarations/simply-connected-iff-paths-homotopic--ee79bd66763674b884127bf7.md) | 86 | `result-track:ee79bd66763674b884127bf729f5a28b8361cdbbcee9657fe509fbc418a00032` |
| 8 | `theorem` | [simply_connected_iff_paths_homotopic'](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f.lean/declarations/simply-connected-iff-paths-homotopic--b71fe227bd013e6cce53fdf9.md) | 94 | `result-track:b71fe227bd013e6cce53fdf903b22467dbdb3cf30362709657b44ae38cf9f84f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
