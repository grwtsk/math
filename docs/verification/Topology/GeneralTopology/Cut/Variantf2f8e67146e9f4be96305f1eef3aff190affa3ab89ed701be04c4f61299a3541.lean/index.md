# Verification target: GRWTSK.Topology.GeneralTopology.Cut.Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02f636ae4da9f46bcb72078aa18cbe6b5bf32ba0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cut/Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cut/Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cut/Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02f636ae4da9f46bcb72078aa18cbe6b5bf32ba0`.

Source path: `GRWTSK/Topology/GeneralTopology/Cut/Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cut/Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [HeightConvention](../../../../../mathematics/Topology/GeneralTopology/Cut/Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541.lean/declarations/heightconvention--b563735060b563de522ba091.md) | 13 | `declaration-track:b563735060b563de522ba091264b432cf54cc7718a65da699e916a7cba62bcea` |
| 2 | `structure` | [CriticalStripCut](../../../../../mathematics/Topology/GeneralTopology/Cut/Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541.lean/declarations/criticalstripcut--5215e4d59227ee3e4eff3358.md) | 18 | `declaration-track:5215e4d59227ee3e4eff33582b8bdb7aef84f54b763ef4180d5f91bf17e709f8` |
| 3 | `def` | [CriticalStripCut.owns](../../../../../mathematics/Topology/GeneralTopology/Cut/Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541.lean/declarations/criticalstripcut-owns--abde379efb6ca67cb8934019.md) | 40 | `declaration-track:abde379efb6ca67cb893401960940297f45c944a7df176a6bf379e38b07065f0` |
| 4 | `def` | [CriticalStripCut.boundaryOwned](../../../../../mathematics/Topology/GeneralTopology/Cut/Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541.lean/declarations/criticalstripcut-boundaryowned--280a77e0ef01239dc609e2a9.md) | 48 | `declaration-track:280a77e0ef01239dc609e2a99711898cd2004f5d05c129e1e76be01bb60718e1` |
| 5 | `theorem` | [CriticalStripCut.boundaryOwned_sound](../../../../../mathematics/Topology/GeneralTopology/Cut/Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541.lean/declarations/criticalstripcut-boundaryowned-sound--82de27f50ac474d56907c0e5.md) | 60 | `result-track:82de27f50ac474d56907c0e5faa156a4c444e80e0834517a9730aa15f4ac3080` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
