# Verification target: GRWTSK.Topology.GeneralTopology.C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile.Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f98268724a793c4dd24f6cde4395991e7f1a4899",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f98268724a793c4dd24f6cde4395991e7f1a4899`.

Source path: `GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaDifferentialBridge` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaASecondSeries_sub_thetaA_eq_eight_phi](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaasecondseries-sub-thetaa-eq-eight-phi--db586826b620e94edaf5253c.md) | 36 | `result-track:db586826b620e94edaf5253c4b6ca6c738a3dcf9977b7474089f0cef2f6a3392` |
| 2 | `theorem` | [thetaADerivSeries_zero](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaaderivseries-zero--aa61d3d451f9472e28f6b8a7.md) | 46 | `result-track:aa61d3d451f9472e28f6b8a77e11d53d3ff43f0abf7b025d70eb2337a3e8bd55` |
| 3 | `def` | [thetaExpKernel](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaexpkernel--bfce8fe896494f0b5c29e831.md) | 52 | `declaration-track:bfce8fe896494f0b5c29e831b29a12f5d7f9c7e467f406c0b63e55d70fbcb495` |
| 4 | `def` | [thetaExpBoundary](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaexpboundary--4cd41cf419e6595d06c862a9.md) | 57 | `declaration-track:4cd41cf419e6595d06c862a9a747db94f9d2256f8924e55f94a36e2b6e21c057` |
| 5 | `theorem` | [thetaExpKernel_hasDerivAt](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaexpkernel-hasderivat--0f0ba4ba8dffe378dc2a7c05.md) | 62 | `result-track:0f0ba4ba8dffe378dc2a7c05f45063a1980666d7c1bee61e1473fc399ee8b988` |
| 6 | `theorem` | [thetaExpBoundary_hasDerivAt](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaexpboundary-hasderivat--e592eb87eb0ec4dc0d3a6afe.md) | 75 | `result-track:e592eb87eb0ec4dc0d3a6afe7b0b2376b9e0894fcec099245cb8588d706235cd` |
| 7 | `theorem` | [continuous_thetaExpKernel](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/continuous-thetaexpkernel--eb8daa9edf1169c506bbc930.md) | 94 | `result-track:eb8daa9edf1169c506bbc930fd5f0cdd6752212322ead01d228a7007c44103ef` |
| 8 | `theorem` | [continuous_thetaA_complex](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/continuous-thetaa-complex--5968f4442d05890bf342e605.md) | 100 | `result-track:5968f4442d05890bf342e6058bcb8eda78e98701d3a446930d88bd8262377f54` |
| 9 | `theorem` | [continuous_thetaPhi_complex](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/continuous-thetaphi-complex--3691efc0d15e8062a047d1bd.md) | 107 | `result-track:3691efc0d15e8062a047d1bd0afaba43a7debfc89c66618a873a1a5c1a7fbb1e` |
| 10 | `theorem` | [thetaPhi_exp_interval_identity](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaphi-exp-interval-identity--d7e02cf026316ab99257de7a.md) | 118 | `result-track:d7e02cf026316ab99257de7aabc525d4d7c070592f53e1c8046263f1c4044943` |
| 11 | `theorem` | [thetaExpBoundary_zero](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaexpboundary-zero--93c68fc9e354bc5a1ebb7be9.md) | 174 | `result-track:93c68fc9e354bc5a1ebb7be963fafd39abca528fc79643e49228537daf0cd79c` |
| 12 | `def` | [thetaCoshBoundary](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetacoshboundary--fe3b242cc0fa04c9ee77903d.md) | 182 | `declaration-track:fe3b242cc0fa04c9ee77903db4322caf89ab510a2d79deba8032435d3ecb0344` |
| 13 | `theorem` | [thetaExpKernel_neg](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaexpkernel-neg--80b81910c53dd62fda299bef.md) | 185 | `result-track:80b81910c53dd62fda299befcd4650281b89e0d834d5c57ea2de7c951d31d612` |
| 14 | `theorem` | [thetaExpKernel_average_eq_cosh](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaexpkernel-average-eq-cosh--0a3f0dce6cc211d525e53c92.md) | 193 | `result-track:0a3f0dce6cc211d525e53c924e4ce0ee264d0021334cf68801f090f09b62e7ec` |
| 15 | `theorem` | [thetaExpKernel_difference_eq_sinh](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaexpkernel-difference-eq-sinh--4a50ba85b1802e5affe1d95c.md) | 200 | `result-track:4a50ba85b1802e5affe1d95cce35e67672ec3380740eb8d40c2950216b8350b3` |
| 16 | `theorem` | [thetaCoshBoundary_eq](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetacoshboundary-eq--630a3f1946c1a328106ad2f2.md) | 208 | `result-track:630a3f1946c1a328106ad2f28959d5810e15889f5628a08164563e58c097eff3` |
| 17 | `theorem` | [thetaCoshBoundary_zero](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetacoshboundary-zero--a64ae7ef4eeb8a2b071e7d18.md) | 219 | `result-track:a64ae7ef4eeb8a2b071e7d180cc76378d2fa1f0666a4d2bcc61d7f195cbc8f98` |
| 18 | `theorem` | [thetaPhi_cosh_interval_eq_average](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaphi-cosh-interval-eq-average--8447687fe6078b5d24ac6df7.md) | 225 | `result-track:8447687fe6078b5d24ac6df7739ebf986ad25c3a2530476f7c428c3bd231ed44` |
| 19 | `theorem` | [thetaA_cosh_interval_eq_average](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaa-cosh-interval-eq-average--71481343e1616ad2130c5eea.md) | 255 | `result-track:71481343e1616ad2130c5eea08489b0f9cb5c8aadde439961af5ff4a946f2c41` |
| 20 | `theorem` | [thetaPhi_cosh_interval_identity](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaphi-cosh-interval-identity--733dc5e7b51f97c25635f84e.md) | 287 | `result-track:733dc5e7b51f97c25635f84e660e84614f7e48f7de0c7bf972b38d9a50ca750e` |
| 21 | `theorem` | [thetaPhi_cosh_interval_identity_explicit](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaphi-cosh-interval-identity-explicit--62a474ba0826b69bec81b5da.md) | 320 | `result-track:62a474ba0826b69bec81b5da954ef2ac359c114d4361399daf5c8a40d9c4c518` |
| 22 | `theorem` | [thetaPhi_cosh_interval_identity_at_zero](../../../../../mathematics/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/declarations/thetaphi-cosh-interval-identity-at-zero--a2d0bad8f4efc2933a87c9ea.md) | 335 | `result-track:a2d0bad8f4efc2933a87c9eaedbc9c4655e9ec9e5ff615e40c3cf933a2421294` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
