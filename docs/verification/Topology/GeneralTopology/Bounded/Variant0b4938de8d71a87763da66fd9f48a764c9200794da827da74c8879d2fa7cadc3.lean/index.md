# Verification target: GRWTSK.Topology.GeneralTopology.Bounded.Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c49cd1856d66addd45ccc716974270a850b87b4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c49cd1856d66addd45ccc716974270a850b87b4`.

Source path: `GRWTSK/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformGroup` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded--802946ca8ed56267c9496fbe.md) | 73 | `declaration-track:802946ca8ed56267c9496fbeaec877afe3e3b7ceea41502fb8bf209dea542a5b` |
| 2 | `theorem` | [isVonNBounded_empty](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-empty--1f768b52c82719151a629fd3.md) | 80 | `result-track:1f768b52c82719151a629fd371fbb9a9b9445e3aa727a70c00808d78a73598e6` |
| 3 | `theorem` | [isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-iff--6cc2714660ea4d8454dd5440.md) | 85 | `result-track:6cc2714660ea4d8454dd54405b3e36c225ff978be41b7d09d1b54a7ed7691fda` |
| 4 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsVonNBounded.Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.Filter.HasBasis.isVonNBounded_basis_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/root-grwtsk-topology-generaltopology-isvonnbounded-variant25f5b9d38e8559--b15732741133f04c2012fc53.md) | 89 | `result-track:b15732741133f04c2012fc53054ccc127e879944a01b71974ac2bbfb8d7a418e` |
| 5 | `theorem` | [IsVonNBounded.subset](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-subset--f26ef481ac51ad11e0240b4e.md) | 97 | `result-track:f26ef481ac51ad11e0240b4ed07f4c9d4c0a48d75a06639c62f6ecac20dd9bc4` |
| 6 | `theorem` | [IsVonNBounded.union](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-union--b7ba3f16a0421393eba9fbc8.md) | 102 | `result-track:b7ba3f16a0421393eba9fbc8e74e828cb456c87ea8ac1156234a019835dddf55` |
| 7 | `theorem` | [IsVonNBounded.of_topologicalSpace_le](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-of-topologicalspace-le--e8588cd7980a55e9ba325ed7.md) | 116 | `result-track:e8588cd7980a55e9ba325ed70d9474d734cf8b3b2e6465c0530d3d47e63fc333` |
| 8 | `theorem` | [IsVonNBounded.image](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-image--e2445b5e6b0c93e01a664afe.md) | 129 | `result-track:e2445b5e6b0c93e01a664afee3115e0c6542f8900afbca15ac5d5a3adf1d12ae` |
| 9 | `theorem` | [IsVonNBounded.smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-smul-tendsto-zero--acea21e406ed7d5aa438a7c5.md) | 155 | `result-track:acea21e406ed7d5aa438a7c59f04153cc6d0619c4e97a2fabc575dadf5787246` |
| 10 | `theorem` | [isVonNBounded_of_smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-of-smul-tendsto-zero--524344d1f4a57e6bb45a40a0.md) | 169 | `result-track:524344d1f4a57e6bb45a40a0d65c40e14aeced38d6ed923d2cc7349bf0e05007` |
| 11 | `theorem` | [isVonNBounded_iff_smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-iff-smul-tendsto-zero--bbd9b657aa81d09d3673eb12.md) | 194 | `result-track:bbd9b657aa81d09d3673eb1262d7832be4d6f9b965581fcf9e8cf14fed76b0b9` |
| 12 | `theorem` | [isVonNBounded_singleton](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-singleton--c037e2ce97e85a811870c7c5.md) | 210 | `result-track:c037e2ce97e85a811870c7c5d9571104c4bcf0e583f0df83960cd0d87372d659` |
| 13 | `theorem` | [isVonNBounded_covers](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-covers--2f98627539f8ee046aa6ebc3.md) | 215 | `result-track:2f98627539f8ee046aa6ebc3b067cb7fb81c6f8add207df8d6c2f2de0e6d8ebf` |
| 14 | `def` | [vonNBornology](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/vonnbornology--b160737d4b9c25b837ca7fa2.md) | 228 | `declaration-track:b160737d4b9c25b837ca7fa20fb250eaa4d920e0dd7d42a14659810cbb6d8250` |
| 15 | `theorem` | [isBounded_iff_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isbounded-iff-isvonnbounded--7f2095428f6e0b49280533fc.md) | 236 | `result-track:7f2095428f6e0b49280533fc2ca2ca448299581dd096a31dbc42cd5dbf0b789a` |
| 16 | `theorem` | [TotallyBounded.isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/totallybounded-isvonnbounded--bd1b5cb3bd80d9e30f86bad5.md) | 251 | `result-track:bd1b5cb3bd80d9e30f86bad5138cae36b3335b99e5f5259eba53feef9f37a530` |
| 17 | `theorem` | [isVonNBounded_ball](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-ball--6abd06ea00914905e7270ef5.md) | 282 | `result-track:6abd06ea00914905e7270ef576812a6f4c06add55cbbb84c5689a91b335aaef5` |
| 18 | `theorem` | [isVonNBounded_closedBall](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-closedball--96465e29dcba371b9549c760.md) | 287 | `result-track:96465e29dcba371b9549c760020f493426c25169708b2a86c77f3474b2fd7549` |
| 19 | `theorem` | [isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-iff--3eebf2142599b64d770fef1f.md) | 292 | `result-track:3eebf2142599b64d770fef1f2fe73c5c0df7f38aefe4974b5d106e9adcf9da7c` |
| 20 | `theorem` | [isVonNBounded_iff'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isvonnbounded-iff--e28042092aacda5297dcb3b5.md) | 305 | `result-track:e28042092aacda5297dcb3b5398d5cc65adcc56f419f14772e6bafc1abf8153d` |
| 21 | `theorem` | [image_isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/image-isvonnbounded-iff--9fef579a5912b4a0a6a1dbb6.md) | 310 | `result-track:9fef579a5912b4a0a6a1dbb6806cbbda46cdf7462e24dbba93351bd9ebcfb315` |
| 22 | `theorem` | [vonNBornology_eq](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/vonnbornology-eq--6432e6e060dd392010835146.md) | 317 | `result-track:6432e6e060dd392010835146c3a83a41b00218392d51fec1b1f20885e2d11afe` |
| 23 | `theorem` | [isBounded_iff_subset_smul_ball](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isbounded-iff-subset-smul-ball--47a68a2cb29681fd0f2d2929.md) | 324 | `result-track:47a68a2cb29681fd0f2d2929eb5249920f5352e4e62fc4e9f954c05be5c8a189` |
| 24 | `theorem` | [isBounded_iff_subset_smul_closedBall](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/declarations/isbounded-iff-subset-smul-closedball--e0fbfd7d8cc70e0de1ad2625.md) | 336 | `result-track:e0fbfd7d8cc70e0de1ad262537b889489fb24e306d0c8969f419f257144103e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
