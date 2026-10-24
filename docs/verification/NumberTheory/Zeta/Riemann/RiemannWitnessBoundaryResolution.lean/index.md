# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessBoundaryResolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a655f06ef700131e61cd84fd2a9515f8cef7ad7",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a655f06ef700131e61cd84fd2a9515f8cef7ad7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessRegistryEntries`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryEntries.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExternalRepositoryRef](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/externalrepositoryref--80db82dd468a0a4d0fd19afe.md) | 47 | `declaration-track:80db82dd468a0a4d0fd19afe28c9c2d3875b02a505e9af9e423b32ae1f685d64` |
| 2 | `def` | [toSourceRef](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/tosourceref--0266ff5efcc0d6bea1bed231.md) | 62 | `declaration-track:0266ff5efcc0d6bea1bed231c68327eb0d0f356d046957cdd98732cc5b8d8f69` |
| 3 | `def` | [acceptedMain](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/acceptedmain--1b978c2490dc6b8f904b8fe6.md) | 72 | `declaration-track:1b978c2490dc6b8f904b8fe6a5275634bee8d7e0d07b3c70e886f66f77b0b92d` |
| 4 | `def` | [boundaryCriticalAbelSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundarycriticalabelsource--f23b72b90c5041b763c1e619.md) | 76 | `declaration-track:f23b72b90c5041b763c1e61937ddd767430112d49d88229c9dc641d7416eb7a1` |
| 5 | `def` | [boundaryAbelEquivalenceSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundaryabelequivalencesource--e27c4347a7dffc9813226b48.md) | 88 | `declaration-track:e27c4347a7dffc9813226b48ba5d9a7ddac322f04cfcc24b5b5cf10c6c125456` |
| 6 | `def` | [boundaryEstimateConsumerSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundaryestimateconsumersource--b04b04d07716c34eecd70227.md) | 101 | `declaration-track:b04b04d07716c34eecd702271413639b3bfd7fa4b0347a93b8fe4adc542e5d2a` |
| 7 | `def` | [boundaryEstimateTargetSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundaryestimatetargetsource--f97ae41d6368747c1cb721c8.md) | 113 | `declaration-track:f97ae41d6368747c1cb721c85c7010314bd4eac8d47ae76e9bbaa8d3de9ba4cd` |
| 8 | `def` | [boundaryRHBridgeTargetSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundaryrhbridgetargetsource--f24863e66eefd83a95c1f039.md) | 127 | `declaration-track:f24863e66eefd83a95c1f0399a7c65855c40f01254bcebd46d6f7d97ea8441ea` |
| 9 | `structure` | [BoundaryLayerResolution](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundarylayerresolution--142c7e8a707b38e87fd48a08.md) | 141 | `declaration-track:142c7e8a707b38e87fd48a08bb704db42f33afbfff60702237f562af60e8c750` |
| 10 | `def` | [boundaryLayerResolution](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundarylayerresolution--5a28a4f3f0fe262a7f3f75df.md) | 156 | `declaration-track:5a28a4f3f0fe262a7f3f75dfe65101c7ad8582b2d9c877db7a2de2b59eadbc81` |
| 11 | `def` | [boundaryLayerResolvedNode](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundarylayerresolvednode--785a96c78b92b4e2db9b8b88.md) | 171 | `declaration-track:785a96c78b92b4e2db9b8b8824f5316d1038f250b34b86123fb5ee3322c596e2` |
| 12 | `def` | [replaceBoundaryNode](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/replaceboundarynode--061a51ecf5370f768b391bff.md) | 185 | `declaration-track:061a51ecf5370f768b391bff283a62f92c3ce2f299cb3c3338bfe52f5a97c225` |
| 13 | `def` | [isBoundaryOutgoing](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/isboundaryoutgoing--98e51cd8f7ae8820df76e5a8.md) | 188 | `declaration-track:98e51cd8f7ae8820df76e5a8e8f779291cf9089bbb43d22e7011eed407bd347f` |
| 14 | `def` | [resolvedNoConnection](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/resolvednoconnection--f8968dbf3513b5a48524f5e5.md) | 191 | `declaration-track:f8968dbf3513b5a48524f5e580ce017b6fa4fa400a833af8f84b97ad900370fa` |
| 15 | `def` | [boundaryResolvedNoRectangleEdge](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundaryresolvednorectangleedge--b87f325e94b839fd3cc936e9.md) | 201 | `declaration-track:b87f325e94b839fd3cc936e9f57346865a8c0055867d59357acf8bac3753a2c5` |
| 16 | `def` | [boundaryResolvedNoEndpointEdge](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundaryresolvednoendpointedge--ba87a3f32d6d3db36fc11853.md) | 206 | `declaration-track:ba87a3f32d6d3db36fc11853bec836a52e57aca70614bd9b4286ecdc82728c5f` |
| 17 | `def` | [boundaryResolvedNoReflectionEdge](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundaryresolvednoreflectionedge--dd565f6dc377aa9bafb0575f.md) | 211 | `declaration-track:dd565f6dc377aa9bafb0575f33207f5bf9212f95f2aebd44aa67958c911bd292` |
| 18 | `def` | [registryWithBoundaryResolution](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/registrywithboundaryresolution--d6a7dc198c3384e5a1b9e845.md) | 217 | `declaration-track:d6a7dc198c3384e5a1b9e845d56273f5b6f862a947783368e569e9b2e41c5ac3` |
| 19 | `theorem` | [boundary_source_is_resolved](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundary-source-is-resolved--78612ef962379d5d77aaf91e.md) | 224 | `result-track:78612ef962379d5d77aaf91e355f87baba5a16024211941facaf607d5339101a` |
| 20 | `theorem` | [boundary_source_is_external](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundary-source-is-external--78924fba9492973e5d584c69.md) | 227 | `result-track:78924fba9492973e5d584c693cd8cb58e4374eac42d9d04fa1205936b353b28b` |
| 21 | `theorem` | [boundary_witness_is_not_constructed](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundary-witness-is-not-constructed--4d2778d5b6d48756836177f2.md) | 230 | `result-track:4d2778d5b6d48756836177f26c3c8529f71d2ebbcbabcfa80609841e160670f7` |
| 22 | `theorem` | [boundary_rh_bridge_is_not_discharged](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundary-rh-bridge-is-not-discharged--aa786609bfc8ce3e497ee708.md) | 233 | `result-track:aa786609bfc8ce3e497ee70890528749beba00a00c305f785d5bea7d35f95f5d` |
| 23 | `theorem` | [boundary_edges_remain_nontraversable](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundary-edges-remain-nontraversable--382b37f6af59337cbc2cb636.md) | 236 | `result-track:382b37f6af59337cbc2cb636be6e0ce722b948219403cd458ba0ef13d4e4e87d` |
| 24 | `theorem` | [boundary_identifier_present](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/boundary-identifier-present--079f35c31008b89b17b2b4e7.md) | 244 | `result-track:079f35c31008b89b17b2b4e7d7a362dac8ec91d423c648934f7ec453cd418c6d` |
| 25 | `theorem` | [unresolved_labels_remaining](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/declarations/unresolved-labels-remaining--2a9f689a8d0c8f2bb3d3302f.md) | 250 | `result-track:2a9f689a8d0c8f2bb3d3302fe756e6e6bc69b06dc033ab101e5048abaff811e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
