# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4df8d6b6d2a5c15534a52bd4aaa72d4900e8591f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4df8d6b6d2a5c15534a52bd4aaa72d4900e8591f`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.LocalInvariantProperties` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.LocalPredicate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [TopCat.of.chartedSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean/declarations/topcat-of-chartedspace--7129edc1a621b74907a34d60.md) | 43 | `declaration-track:7129edc1a621b74907a34d6005efed2a9687a726a6fcdf5ae65e0918b68c309f` |
| 2 | `instance` | [TopCat.of.hasGroupoid](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean/declarations/topcat-of-hasgroupoid--25baf8658b6c14b7aac7ddde.md) | 46 | `declaration-track:25baf8658b6c14b7aac7dddeac1344faacb07d71cc90f9534eb230ed13963ad5` |
| 3 | `def` | [StructureGroupoid.LocalInvariantProp.localPredicate](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean/declarations/structuregroupoid-localinvariantprop-localpredicate--0120214864e25f1ea6673d6b.md) | 52 | `declaration-track:0120214864e25f1ea6673d6b5a85b063935a0fd2d7c36e9362a49f4f6df0a074` |
| 4 | `def` | [StructureGroupoid.LocalInvariantProp.sheaf](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean/declarations/structuregroupoid-localinvariantprop-sheaf--fa820931d866637d93cdf186.md) | 75 | `declaration-track:fa820931d866637d93cdf18621d2b40a3f2106376a9976adabb05e47c8c35503` |
| 5 | `instance` | [StructureGroupoid.LocalInvariantProp.sheafHasCoeToFun](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean/declarations/structuregroupoid-localinvariantprop-sheafhascoetofun--5b9970638dacfa2739312c62.md) | 79 | `declaration-track:5b9970638dacfa2739312c629001c591332a099d20b474fc1f0c58f3c2521f19` |
| 6 | `theorem` | [StructureGroupoid.LocalInvariantProp.section_spec](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68455c841ba1784965e03cc95f170ac7c8ed44dabd8559b3d31524e7919a809a.lean/declarations/structuregroupoid-localinvariantprop-section-spec--0f66e139ddf19b76f3ec5d2f.md) | 83 | `result-track:0f66e139ddf19b76f3ec5d2f73d7a9efc07a8488bbe8ea6fc550b0848593ce9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
