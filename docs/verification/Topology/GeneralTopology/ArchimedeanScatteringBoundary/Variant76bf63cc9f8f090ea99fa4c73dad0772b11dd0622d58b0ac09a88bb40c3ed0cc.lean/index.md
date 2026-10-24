# Verification target: GRWTSK.Topology.GeneralTopology.ArchimedeanScatteringBoundary.Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bda45e8e096fee13aaef49082c4f0812bd1498e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bda45e8e096fee13aaef49082c4f0812bd1498e`.

Source path: `GRWTSK/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArchimedeanSpatialAction](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/archimedeanspatialaction--94a4abe5045aaca5050b9a96.md) | 20 | `declaration-track:94a4abe5045aaca5050b9a96f5655d99d9529e8d9d4f7d2bcb53700146ecb778` |
| 2 | `theorem` | [preserves_self_adjointness](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/preserves-self-adjointness--0cd3509f28b012586a7990ad.md) | 36 | `result-track:0cd3509f28b012586a7990adad80e126c6986ca377f1e41b8ae4cbe55a05ddb9` |
| 3 | `structure` | [ArchimedeanBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/archimedeanboundary--f6eccddc42e92aaa1cdb9faf.md) | 46 | `declaration-track:f6eccddc42e92aaa1cdb9faf7d336c9bbffa9ef7841d2e5c1043ef2786cfdc75` |
| 4 | `def` | [defaultArchimedeanBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/defaultarchimedeanboundary--f9bbd783b497a8a709a61718.md) | 65 | `declaration-track:f9bbd783b497a8a709a61718f5318085661d2d026fbf3943280d4feba28d6426` |
| 5 | `theorem` | [archimedean_boundary_preserves_self_adjointness](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/archimedean-boundary-preserves-self-adjointness--44ba19d009dc9ef900fac951.md) | 83 | `result-track:44ba19d009dc9ef900fac951dfc86f6fe059e41f733a0a66a9c5496cc982b57f` |
| 6 | `theorem` | [archimedean_boundary_blocks_ordinary_fredholm_overclaim](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/archimedean-boundary-blocks-ordinary-fredholm-overclaim--b6f8b08d82679a5e28170bf4.md) | 91 | `result-track:b6f8b08d82679a5e28170bf4326df3d56eb6a21498a8250876d944590fe21219` |
| 7 | `theorem` | [finite_mobius_projectors_do_not_act_on_archimedean_channel](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/finite-mobius-projectors-do-not-act-on-archimedean-channel--9897e8b8ea06c8167092b4da.md) | 99 | `result-track:9897e8b8ea06c8167092b4daed82927be37a0bada5ea5cc62659ced892e76352` |
| 8 | `theorem` | [continuous_spectrum_is_not_self_adjointness_failure](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/continuous-spectrum-is-not-self-adjointness-failure--7379d5fc48266fcf74122754.md) | 105 | `result-track:7379d5fc48266fcf74122754e6209325c31c0ea2ebef857541ca3f960780658e` |
| 9 | `theorem` | [continuous_spectrum_forces_no_ordinary_fredholm_claim](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/continuous-spectrum-forces-no-ordinary-fredholm-claim--0ba91a742c58383d6a465e95.md) | 112 | `result-track:0ba91a742c58383d6a465e954a600655d5a6d6b744b50ea62523c70d77249377` |
| 10 | `theorem` | [continuous_spectrum_retains_self_adjoint_generator](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/continuous-spectrum-retains-self-adjoint-generator--b97fd9702efa59fc72698aee.md) | 118 | `result-track:b97fd9702efa59fc72698aeee4b36e19b7626f84fa8908609fd68de1fbe3a719` |
| 11 | `structure` | [ZetaSpectralRigidityBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/zetaspectralrigidityboundary--1bf6c1d48214b642cbd2d336.md) | 126 | `declaration-track:1bf6c1d48214b642cbd2d33615058d8569bb2116db09c1f358e471f447c96c41` |
| 12 | `def` | [defaultZetaSpectralRigidityBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/defaultzetaspectralrigidityboundary--7dc6ac76f8aefadef28f5d46.md) | 140 | `declaration-track:7dc6ac76f8aefadef28f5d4643575ada23f5653390621097c7e4c2e858b45651` |
| 13 | `theorem` | [zeta_boundary_uses_relative_regularized_determinant](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/zeta-boundary-uses-relative-regularized-determinant--de1cfc33192b72f2e8b8160b.md) | 154 | `result-track:de1cfc33192b72f2e8b8160bef040a448d1a8994b800e105f7c6c2784d139c2e` |
| 14 | `theorem` | [zeta_boundary_uses_critical_line_ordinate](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/zeta-boundary-uses-critical-line-ordinate--82a1937df31119b77382e9af.md) | 161 | `result-track:82a1937df31119b77382e9af5f92bb66ec6038e4c94ebe9f22b4199941e03fa5` |
| 15 | `theorem` | [zeta_boundary_keeps_rigidity_conditional](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/zeta-boundary-keeps-rigidity-conditional--a9ca45d027d5df397b2a1418.md) | 168 | `result-track:a9ca45d027d5df397b2a1418c7712b5d4c90f3898a8d3fb8a8bf279c12223d9f` |
| 16 | `theorem` | [archimedean_channel_self_adjoint_relative_boundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/archimedean-channel-self-adjoint-relative-boundary--79fa01e475d8513ef6c2d6c6.md) | 176 | `result-track:79fa01e475d8513ef6c2d6c6e9a15b6536d8eb5b27bfbe6f55a152bd6ab87c89` |
| 17 | `structure` | [GlobalScatteringTraceBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/globalscatteringtraceboundary--d84e92d090f87064b900ac3f.md) | 184 | `declaration-track:d84e92d090f87064b900ac3f8e1852818da2611f51f3dd9bd4b00764a84ba537` |
| 18 | `def` | [defaultGlobalScatteringTraceBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/defaultglobalscatteringtraceboundary--52db9de57ae3781b98196b12.md) | 195 | `declaration-track:52db9de57ae3781b98196b12924cce275f00ab65157b9fa746e1d550182f129f` |
| 19 | `theorem` | [global_trace_blocks_direct_archimedean_projector_lift](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/global-trace-blocks-direct-archimedean-projector-lift--8589264c4865329b89765e0d.md) | 205 | `result-track:8589264c4865329b89765e0d89bb083c9b2d292ac4986958f6b7fddb51d15569` |
| 20 | `theorem` | [global_trace_requires_relative_boundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/declarations/global-trace-requires-relative-boundary--cce38f40045b3b70f64d1778.md) | 213 | `result-track:cce38f40045b3b70f64d17785062f926b9e868cb1aeb21b341b3c8aadc1da421` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
