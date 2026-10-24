# Verification target: GRWTSK.LinearAlgebra.FramedFiberPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ec292976cee8ec6d45bf366023ffd1d7deff4d2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/FramedFiberPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ec292976cee8ec6d45bf366023ffd1d7deff4d2`.

Source path: `GRWTSK/LinearAlgebra/FramedFiberPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/FramedFiberPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.KTheory.GrothendieckPort`](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [operatorDefect](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/operatordefect--278a7e18f1cb844e5bebf66e.md) | 17 | `declaration-track:278a7e18f1cb844e5bebf66e50789abc177070f7becfa873a88122cf401d9a65` |
| 2 | `theorem` | [operatorDefect_comp](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/operatordefect-comp--b32fa642b5f3289ce5053abc.md) | 23 | `result-track:b32fa642b5f3289ce5053abc44f4f656665043f4380b1ee4970dcaa549c4f30d` |
| 3 | `def` | [Intertwines](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/intertwines--62bbb2ff98b760741d395587.md) | 33 | `declaration-track:62bbb2ff98b760741d3955876d6a53c2bdabaffd852cf04af85352c5d8d3c73e` |
| 4 | `theorem` | [intertwines_iff_defect_eq_zero](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/intertwines-iff-defect-eq-zero--e2c8674d42326b840905eb90.md) | 37 | `result-track:e2c8674d42326b840905eb90b9abf9c138db0b16943d2878f00aea47a41d05aa` |
| 5 | `theorem` | [Intertwines.comp](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/intertwines-comp--62f21b8459728b67a666b4cf.md) | 43 | `result-track:62f21b8459728b67a666b4cf9e5b5d0e216c7294bb88685ca04c01e103f93853` |
| 6 | `structure` | [TwoTermHodgeData](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/twotermhodgedata--65b7583814c1995b1a418f12.md) | 67 | `declaration-track:65b7583814c1995b1a418f12fa758e5cb1066a0c0c3595509b56edd5a300bf45` |
| 7 | `def` | [laplacian0](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/laplacian0--e965973e17f03b3de79c9a6b.md) | 77 | `declaration-track:e965973e17f03b3de79c9a6bca624ab1a68889ee96bf09fda5ffe4c46bccdb84` |
| 8 | `def` | [laplacian1](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/laplacian1--ded4963f60e54a33838c6f09.md) | 81 | `declaration-track:ded4963f60e54a33838c6f090fb5db72a60c658e9be77aa3eefd3e274e5e32a4` |
| 9 | `def` | [IsHarmonic0](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/isharmonic0--35a85660416aad34752b9a2e.md) | 85 | `declaration-track:35a85660416aad34752b9a2ea4095de74ad3b35d52e299f24ec76e641f76c5ed` |
| 10 | `structure` | [HodgePort](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/hodgeport--cb44918d3bae2284a7484f26.md) | 91 | `declaration-track:cb44918d3bae2284a7484f261567c31a684a387cc8cbff1ea8f605c766d97d54` |
| 11 | `theorem` | [laplacian0_comm](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/laplacian0-comm--5723d2149a3fbd6dec89a52e.md) | 103 | `result-track:5723d2149a3fbd6dec89a52e1379d73e66c9d4d814cb50680e06b0dc5c6f12b8` |
| 12 | `theorem` | [map_harmonic0](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/map-harmonic0--1883c3a64bfcbb337c69f0f4.md) | 119 | `result-track:1883c3a64bfcbb337c69f0f41dfacfd5571832cbad768f03ca3ce0bf24810357` |
| 13 | `structure` | [HodgeProjector](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/hodgeprojector--f9a5b543384cb1d7a3a4d76d.md) | 131 | `declaration-track:f9a5b543384cb1d7a3a4d76d5cefd8027ed321463e3a06b4c765596cabcc944a` |
| 14 | `def` | [toPort](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/toport--798bd6669a77aecc7188b1d8.md) | 144 | `declaration-track:798bd6669a77aecc7188b1d890270b260ca55149f888f37f3c0c1ed8df304c5f` |
| 15 | `theorem` | [laplacian0_comm](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/laplacian0-comm--a05216cef908eea280df1241.md) | 151 | `result-track:a05216cef908eea280df12416eff4dbff9b90128073c930b2650b304c60da701` |
| 16 | `abbrev` | [RationalTwoTermHodgeData](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/rationaltwotermhodgedata--bfe9205769fe742dcdcf9b05.md) | 158 | `declaration-track:bfe9205769fe742dcdcf9b055253886cd92a5f9fa9ba190eb1239d3688b6a8fd` |
| 17 | `structure` | [StableKOperatorPort](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/stablekoperatorport--d55e4770e32e5e86dd3dc6b2.md) | 177 | `declaration-track:d55e4770e32e5e86dd3dc6b29c7f542b375bb3d10ad98f8fc1a231f1a85a34a1` |
| 18 | `def` | [residual](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/residual--790f1bb772b688d801ad3f74.md) | 188 | `declaration-track:790f1bb772b688d801ad3f74d6579ffb0d61730023ac668ab7d59556a1ac7d1d` |
| 19 | `def` | [kZeroMap](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/kzeromap--756060845af9fd02eb7a0544.md) | 192 | `declaration-track:756060845af9fd02eb7a05443e53faa4a5f485e7bef958257ba1e43060a18686` |
| 20 | `def` | [comp](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/comp--c8aa4027acc1c681deff5682.md) | 198 | `declaration-track:c8aa4027acc1c681deff568249ceb5ad97fc776369efb8a06322d8239a8e6abd` |
| 21 | `theorem` | [residual_comp](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/residual-comp--73327be4ade99f3ad17bd64a.md) | 206 | `result-track:73327be4ade99f3ad17bd64ae32d8922aa65d5746fa378d78dfd0fb4a740162f` |
| 22 | `theorem` | [kZeroMap_comp](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/kzeromap-comp--cd3a16251181202249d1120b.md) | 214 | `result-track:cd3a16251181202249d1120b84a2e161b09ca03aa2b75ca7fa6c9438965aa45e` |
| 23 | `def` | [IsExact](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/isexact--7f4175329ce8eaa0a954b3b7.md) | 223 | `declaration-track:7f4175329ce8eaa0a954b3b7f0cc245476f90f6e7e2df62b164ccc0e85fb455d` |
| 24 | `theorem` | [exact_comp](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/declarations/exact-comp--f061107a00e60b2b3f810fa8.md) | 227 | `result-track:f061107a00e60b2b3f810fa8ae78c534a7b3e24fffc5af3f17f9e6baba90793e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
