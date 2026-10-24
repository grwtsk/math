# Verification target: GRWTSK.Topology.GeneralTopology.MaterialTopology.Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa8169733b232e81404d4669f6dd214ce5efb4b3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa8169733b232e81404d4669f6dd214ce5efb4b3`.

Source path: `GRWTSK/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [material_homeomorph_image_connected_iff](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean/declarations/material-homeomorph-image-connected-iff--1bf66a8eac731cd8cbc54d81.md) | 32 | `result-track:1bf66a8eac731cd8cbc54d8137088792d76740b70dd02059de3ce09b73ddcae7` |
| 2 | `theorem` | [material_homeomorph_image_preconnected_iff](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean/declarations/material-homeomorph-image-preconnected-iff--a6fb08b6271948c6ec573415.md) | 37 | `result-track:a6fb08b6271948c6ec5734152e8dd79d27e10ce09f95c05e540c8ba5e726c902` |
| 3 | `theorem` | [no_continuous_image_of_connected_disconnected](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean/declarations/no-continuous-image-of-connected-disconnected--9f70c94e6ad149d9cffb3f68.md) | 43 | `result-track:9f70c94e6ad149d9cffb3f6849787f2f99ae09655b942ea5517ba6302c3e9063` |
| 4 | `theorem` | [no_homeomorph_image_of_connected_disconnected](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean/declarations/no-homeomorph-image-of-connected-disconnected--f980480877f5f7969803f81b.md) | 52 | `result-track:f980480877f5f7969803f81ba92ae8df1f976ab05e7027fe2b55e9b31dc79f23` |
| 5 | `theorem` | [no_homeomorph_image_of_disconnected_connected](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean/declarations/no-homeomorph-image-of-disconnected-connected--1e4c138ecf4e2a6a69ea597f.md) | 60 | `result-track:1e4c138ecf4e2a6a69ea597f555baaf00ff8509cd51bd777b053346cd4192c43` |
| 6 | `theorem` | [no_interface_homeomorph_of_connected_disconnected](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean/declarations/no-interface-homeomorph-of-connected-disconnected--0470fadc46b7291e09cab43e.md) | 70 | `result-track:0470fadc46b7291e09cab43e780a1340935939e6dce1870f80b3327ec80e2cb8` |
| 7 | `theorem` | [no_fixed_interface_homeomorph_family](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean/declarations/no-fixed-interface-homeomorph-family--1d64242dc72987b035987eb3.md) | 80 | `result-track:1d64242dc72987b035987eb3c478de80b6cdfcc76b84bf17eae43f5c6f8f3b1b` |
| 8 | `theorem` | [empty_interface_is_preconnected](../../../../../mathematics/Topology/GeneralTopology/MaterialTopology/Variante4529d0063377212d7db3d80ebf66a2f537c6f9dfdb9e2c2ce2cd653d3d6c40c.lean/declarations/empty-interface-is-preconnected--3206694158b1066a66bf8798.md) | 95 | `result-track:3206694158b1066a66bf87983479ecb427fef8338f6ebbb45a8960d5806df881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
