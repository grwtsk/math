# Verification target: GRWTSK.Topology.GeneralTopology.Attempt01.Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5580ffd34c7725332eb75cb6665ace3f9d750d4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5580ffd34c7725332eb75cb6665ace3f9d750d4`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerTransport` — import line 6; external provider; requires a separately pinned dependency.
- `ClosedProperPowerPrefix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftedInventory](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean/declarations/shiftedinventory--8a9717c12c6d3ea7f3197fd4.md) | 25 | `declaration-track:8a9717c12c6d3ea7f3197fd4970d8a7d0d5a6a67b2812038d7599f5547652687` |
| 2 | `theorem` | [mem_shiftedInventory_iff](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean/declarations/mem-shiftedinventory-iff--28e9ffb67adc63859ef1f691.md) | 29 | `result-track:28e9ffb67adc63859ef1f691d8daf04c5440e79448fa9549bb80303a50fc430a` |
| 3 | `theorem` | [shiftedInventory_onset_iff](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean/declarations/shiftedinventory-onset-iff--b72a584f3f98399a852ee419.md) | 46 | `result-track:b72a584f3f98399a852ee419822dcebe979ff01016696d60234cd7a0451c61c6` |
| 4 | `theorem` | [closedOnsetAtom_zero_outside](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean/declarations/closedonsetatom-zero-outside--3c9c05df1f02f83453ec157d.md) | 51 | `result-track:3c9c05df1f02f83453ec157d95c37eed14bfd7c7988cf523500710ca5ed5f479` |
| 5 | `theorem` | [closedOnsetPrefix_eq_finite_shifted](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean/declarations/closedonsetprefix-eq-finite-shifted--b6c0f7bdd0674233b6939e7e.md) | 57 | `result-track:b6c0f7bdd0674233b6939e7e7763474e1420d4787867194c0bdacccfdcf91860` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
