# Verification target: GRWTSK.Topology.GeneralTopology.MaterialTopology.Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da8022324caa9662654c8195c9020b3a8cf1771e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da8022324caa9662654c8195c9020b3a8cf1771e`.

Source path: `GRWTSK/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [material_homeomorph_image_connected_iff](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean/declarations/material-homeomorph-image-connected-iff--4495d3faeefe85f582861eed.md) | 24 | `result-track:4495d3faeefe85f582861eed302f3844d597a2a2e0cd83d6e4dc40f4d3f6ad94` |
| 2 | `theorem` | [material_homeomorph_image_preconnected_iff](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean/declarations/material-homeomorph-image-preconnected-iff--24f84ab2a6c80a61c30e0636.md) | 29 | `result-track:24f84ab2a6c80a61c30e0636998ac4d8626e62e50d3051a36cb73ba5b84c8758` |
| 3 | `theorem` | [no_continuous_image_of_connected_disconnected](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean/declarations/no-continuous-image-of-connected-disconnected--cb2b83429bbd233b4dbeea15.md) | 35 | `result-track:cb2b83429bbd233b4dbeea15e4370e904c109602d3d3c747d6e6938362baed7b` |
| 4 | `theorem` | [no_homeomorph_image_of_connected_disconnected](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean/declarations/no-homeomorph-image-of-connected-disconnected--64d4f17e4d9334782d8b73cd.md) | 44 | `result-track:64d4f17e4d9334782d8b73cdb1c34a25eaaa772fab8e5c66cc9d034fd778810b` |
| 5 | `theorem` | [no_homeomorph_image_of_disconnected_connected](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean/declarations/no-homeomorph-image-of-disconnected-connected--7a37b41514d3e94cbb783317.md) | 52 | `result-track:7a37b41514d3e94cbb783317d4c86f7e14851676be92fb9b37b3f6924999ed6b` |
| 6 | `theorem` | [no_interface_homeomorph_of_connected_disconnected](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean/declarations/no-interface-homeomorph-of-connected-disconnected--b46e346529d99c34019d4d49.md) | 62 | `result-track:b46e346529d99c34019d4d49e5042e269a95eeb74e0f277ae03b018d650c7a10` |
| 7 | `theorem` | [no_fixed_interface_homeomorph_family](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean/declarations/no-fixed-interface-homeomorph-family--aa10481cebd017d65b6abf49.md) | 72 | `result-track:aa10481cebd017d65b6abf49aa74e7aae1bf21446720bcc91cdb3d0426327b44` |
| 8 | `theorem` | [empty_interface_is_preconnected](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50.lean/declarations/empty-interface-is-preconnected--ac3d1d07e24d092d92b02f32.md) | 87 | `result-track:ac3d1d07e24d092d92b02f321ce1113423e9ec2624abfac46b2dc615b8e6e8e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
