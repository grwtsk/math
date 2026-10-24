# Verification target: GRWTSK.Analysis.Complex.RectangularCauchyKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04a5862bf8ecf094317d1cfa2f0e02a615a1ab11",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RectangularCauchyKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04a5862bf8ecf094317d1cfa2f0e02a615a1ab11`.

Source path: `GRWTSK/Analysis/Complex/RectangularCauchyKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RectangularCauchyKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.CauchyEdgePrimitives`](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RectangularPoleReduction`](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_cartesian](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/inverse-cartesian--d27188ead8c762622b98bb4b.md) | 30 | `result-track:d27188ead8c762622b98bb4b9da546b13972db54ef4da859e6579a6f712c4c70` |
| 2 | `theorem` | [I_mul_inverse_cartesian](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/i-mul-inverse-cartesian--cff99048287f03dd4adcafa4.md) | 39 | `result-track:cff99048287f03dd4adcafa42e3f987be67bf58d101d41657e43cbf1a55ef689` |
| 3 | `theorem` | [horizontal_cauchy](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/horizontal-cauchy--259f316011f4b3183a1b40c2.md) | 49 | `result-track:259f316011f4b3183a1b40c2fd71541a49fd779b311f4865366fe9eec1412041` |
| 4 | `theorem` | [I_mul_vertical_cauchy](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/i-mul-vertical-cauchy--85a1411474cc3ff80ab8f798.md) | 72 | `result-track:85a1411474cc3ff80ab8f7986ed3b8014ab9e5ed34534837ddaa9e6833faff51` |
| 5 | `theorem` | [boundaryIntegral_cauchy](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/boundaryintegral-cauchy--0f81ceba5c6eed492eada9bc.md) | 96 | `result-track:0f81ceba5c6eed492eada9bc255cf4cc7e7ea4e716fcc5d04c8e82a327b5b1d2` |
| 6 | `theorem` | [boundaryIntegral_cauchy_exterior](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/boundaryintegral-cauchy-exterior--b5479782e026f8ea7a751e0a.md) | 140 | `result-track:b5479782e026f8ea7a751e0a4443c23a00b791a41fc2a9fe067802f72c685d64` |
| 7 | `theorem` | [boundaryIntegral_const_mul](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/boundaryintegral-const-mul--d0ba2fa48c67238eb8ffd478.md) | 149 | `result-track:d0ba2fa48c67238eb8ffd4784499d9b69f9ee3a4d61cbfc43cede8ea672bb812` |
| 8 | `theorem` | [boundaryIntegral_swap](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/boundaryintegral-swap--a9301498ad142fb9266db211.md) | 155 | `result-track:a9301498ad142fb9266db211a5f19db7bd8daa6facd00fe0345db1357992733e` |
| 9 | `theorem` | [boundaryIntegral_simple_pole](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/boundaryintegral-simple-pole--626bc51b97346777b6eb9f36.md) | 162 | `result-track:626bc51b97346777b6eb9f363b88009466d24e947aead79a1c619e1cd48e30b7` |
| 10 | `theorem` | [boundaryIntegral_finset_sum](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/boundaryintegral-finset-sum--9417ba66457d0ffc840298b0.md) | 170 | `result-track:9417ba66457d0ffc840298b0f5f31676e77a37371bde3c5ad940416decbee04a` |
| 11 | `theorem` | [boundaryIntegral_principalSum](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/boundaryintegral-principalsum--27b97ca839f0fecab255e5f0.md) | 183 | `result-track:27b97ca839f0fecab255e5f048a2778bc6c8d231e02091461fdda8252154283b` |
| 12 | `theorem` | [boundaryIntegral_eq_coefficient_sum](../../../../mathematics/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/declarations/boundaryintegral-eq-coefficient-sum--9eb6271c3881bfb2de7d6ae4.md) | 212 | `result-track:9eb6271c3881bfb2de7d6ae4a176cab3e293143beea175031f919d2891ebb219` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
