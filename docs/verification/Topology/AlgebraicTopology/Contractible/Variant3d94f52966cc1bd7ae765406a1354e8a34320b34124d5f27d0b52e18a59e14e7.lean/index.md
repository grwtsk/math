# Verification target: GRWTSK.Topology.AlgebraicTopology.Contractible.Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11e31398472e31074a2e14768c67d1dfe09e6a65",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11e31398472e31074a2e14768c67d1dfe09e6a65`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Path` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nullhomotopic](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/nullhomotopic--e7ce2f2e62905e912e2efb02.md) | 33 | `declaration-track:e7ce2f2e62905e912e2efb02792f816f397584a80df14dd95cf9f17ea0f69f12` |
| 2 | `theorem` | [nullhomotopic_of_constant](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/nullhomotopic-of-constant--13162c48e5ded434c70b8154.md) | 37 | `result-track:13162c48e5ded434c70b8154cff6985d00b40561bb1941fd4ddde42795043681` |
| 3 | `theorem` | [Nullhomotopic.comp_right](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/nullhomotopic-comp-right--1d6a7550adc93ba39dd83efc.md) | 41 | `result-track:1d6a7550adc93ba39dd83efca58fb9b745ba87257af43b906c1b634f112c4572` |
| 4 | `theorem` | [Nullhomotopic.comp_left](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/nullhomotopic-comp-left--02049fd9f6c0071d22b5ba0b.md) | 48 | `result-track:02049fd9f6c0071d22b5ba0bc757361318c1d4d2385f4a95d23f3d917df9c308` |
| 5 | `class` | [ContractibleSpace](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/contractiblespace--4205134084098708212ed4df.md) | 60 | `declaration-track:4205134084098708212ed4dfe1a762f431d810ff5dfe3d50cf40744db302728f` |
| 6 | `theorem` | [ContractibleSpace.hequiv_unit](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/contractiblespace-hequiv-unit--07bf68f3d4a918b6ff10e7ff.md) | 65 | `result-track:07bf68f3d4a918b6ff10e7ff9b4dbe21ae9a487e0d0b4fd12e5368f1f9855e67` |
| 7 | `theorem` | [id_nullhomotopic](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/id-nullhomotopic--e62b2ca2caa35249c37f3e50.md) | 70 | `result-track:e62b2ca2caa35249c37f3e504c26cc1a70c188486546de189b33bf98be1f116e` |
| 8 | `theorem` | [contractible_iff_id_nullhomotopic](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/contractible-iff-id-nullhomotopic--53b0734cf490fa9e91e957c9.md) | 77 | `result-track:53b0734cf490fa9e91e957c94c39e72ba16690c0e5305330f9f35fc67fafafdb` |
| 9 | `theorem` | [ContinuousMap.HomotopyEquiv.contractibleSpace](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/continuousmap-homotopyequiv-contractiblespace--533fc4dc23dd12a81c3bb09f.md) | 95 | `result-track:533fc4dc23dd12a81c3bb09fdc7a374dd3bf9bf52442a0a3ee957f97eacab40e` |
| 10 | `theorem` | [ContinuousMap.HomotopyEquiv.contractibleSpace_iff](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/continuousmap-homotopyequiv-contractiblespace-iff--818f2f382fb44fbdc008a2b9.md) | 100 | `result-track:818f2f382fb44fbdc008a2b9305d33708896b879614258351b984bcfb0e62e93` |
| 11 | `theorem` | [Homeomorph.contractibleSpace](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/homeomorph-contractiblespace--5f40283e4924d9d7e614f599.md) | 105 | `result-track:5f40283e4924d9d7e614f5995ecb036699c7e81b826deca4ee9514679919308c` |
| 12 | `theorem` | [Homeomorph.contractibleSpace_iff](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/homeomorph-contractiblespace-iff--49643a8028275ae4fd0b0fa0.md) | 110 | `result-track:49643a8028275ae4fd0b0fa0c2fe5a5894e56bf2638afcfbf39ef3342362d89a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/declarations/instance--802bfb23f8ec59d28e017947.md) | 117 | `declaration-track:802bfb23f8ec59d28e01794726cc1e98708d203d0f1d1aed383abafd5c4a5841` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
