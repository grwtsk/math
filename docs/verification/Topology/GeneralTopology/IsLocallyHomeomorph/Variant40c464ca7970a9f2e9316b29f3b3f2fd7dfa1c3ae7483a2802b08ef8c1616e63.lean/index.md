# Verification target: GRWTSK.Topology.GeneralTopology.IsLocallyHomeomorph.Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ed70db8f88eb6fa9ba62b29606c6876ebb5abeb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ed70db8f88eb6fa9ba62b29606c6876ebb5abeb`.

Source path: `GRWTSK/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocalHomeomorph` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLocallyHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/islocallyhomeomorphon--98af25aa9d06262744245faa.md) | 33 | `declaration-track:98af25aa9d06262744245faab7c5461015b5879268b85a6ccb59688d969e49ff` |
| 2 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/mk--8d71c1e81e90723d8db15f8f.md) | 42 | `result-track:8d71c1e81e90723d8db15f8fa1f400364fbc7b8948dbfb21946f9a453ac993ba` |
| 3 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/map-nhds-eq--527424e6de6245e4f3c584f7.md) | 58 | `result-track:527424e6de6245e4f3c584f7d464a877349699c2f85ab5a748de2c0b722b7434` |
| 4 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/continuousat--13bd96102feda15bc6fca085.md) | 63 | `result-track:13bd96102feda15bc6fca0852166d1b4ef750a54ae2f20f429d8022e7769ca3f` |
| 5 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/continuouson--0363fd6fe1bb8e5d7a99b784.md) | 68 | `result-track:0363fd6fe1bb8e5d7a99b7848dea18ea52babb26e3c025a7c4c217e5b782c6ec` |
| 6 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/comp--6960ddc71c8b2a05e8bd9b85.md) | 72 | `result-track:6960ddc71c8b2a05e8bd9b8517b1df417725b6db08f0bdfa50178401ea633761` |
| 7 | `def` | [IsLocallyHomeomorph](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/islocallyhomeomorph--36404cf1d919363d1f3fdbc7.md) | 84 | `declaration-track:36404cf1d919363d1f3fdbc77e45e7d8c99e6e4677fc1055cb6e48e3ec2839ac` |
| 8 | `theorem` | [isLocallyHomeomorph_iff_isLocallyHomeomorphOn_univ](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/islocallyhomeomorph-iff-islocallyhomeomorphon-univ--080b655172ba416527786a07.md) | 90 | `result-track:080b655172ba416527786a07ee8e05d80f2d3cfc149a99aa608c448cda3f72f9` |
| 9 | `theorem` | [IsLocallyHomeomorph.isLocallyHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/islocallyhomeomorph-islocallyhomeomorphon--16ae5357e3c41675b8200229.md) | 95 | `result-track:16ae5357e3c41675b820022979f6ace229e7b142c4f084979c71f8224198abed` |
| 10 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/mk--eb517bbe78d07c68133e53ee.md) | 107 | `result-track:eb517bbe78d07c68133e53ee81082fe1a78c895840b863779304daa44b427ea0` |
| 11 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/map-nhds-eq--30630fac5e60cf72f3fcab88.md) | 115 | `result-track:30630fac5e60cf72f3fcab88f0068860dae34b58fd9fd44dfc3a84be652946b4` |
| 12 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/continuous--3f561651dccee51cf2788cec.md) | 119 | `result-track:3f561651dccee51cf2788cec763c93f7503ec01281fb1fd1dee19ff081a1629d` |
| 13 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/isopenmap--f84605a32831433c564c0880.md) | 123 | `result-track:f84605a32831433c564c088066ad28c8867e34a197d94645926419ca5c60f5af` |
| 14 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/declarations/comp--e8d959db9cbc6ef43ef73911.md) | 127 | `result-track:e8d959db9cbc6ef43ef7391178578401438779b683449d8d1dbc08bb9a056bf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
