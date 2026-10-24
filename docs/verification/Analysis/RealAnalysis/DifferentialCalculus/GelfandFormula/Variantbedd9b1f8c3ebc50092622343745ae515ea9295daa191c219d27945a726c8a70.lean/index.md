# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.GelfandFormula.Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa3f919d58eaacd482d12b13f639e79d30bfe6f5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa3f919d58eaacd482d12b13f639e79d30bfe6f5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.RadiusLiminf` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_resolvent_const_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/hasderivat-resolvent-const-left--ca8e5bcb95725adc20940e78.md) | 61 | `result-track:ca8e5bcb95725adc20940e78bea7212fa34c8c72a068dc0bf0c9bd739e507d08` |
| 2 | `theorem` | [hasFDerivAt_resolvent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/hasfderivat-resolvent--c7bde4cc2280f02a75cc593c.md) | 72 | `result-track:c7bde4cc2280f02a75cc593c61027ed49e5e81ca425fa3effed436684ae5a754` |
| 3 | `theorem` | [hasDerivAt_resolvent_const_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/hasderivat-resolvent-const-right--32655ee2dc0290bb5cd4bb54.md) | 83 | `result-track:32655ee2dc0290bb5cd4bb540422342dcd60ec3c351982830001c0dceef146ae` |
| 4 | `theorem` | [differentiableOn_inverse_one_sub_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/differentiableon-inverse-one-sub-smul--40029f69b5ce506e5fdec6ae.md) | 92 | `result-track:40029f69b5ce506e5fdec6ae0fc105ce44649abede691601d1fd6bb27ed6383b` |
| 5 | `theorem` | [limsup_pow_nnnorm_pow_one_div_le_spectralRadius](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/limsup-pow-nnnorm-pow-one-div-le-spectralradius--7b3efceb1c93f1bfbb5a3345.md) | 111 | `result-track:7b3efceb1c93f1bfbb5a3345c0104d385d7ec62bdbfd675aeeb49725630edbd9` |
| 6 | `theorem` | [pow_nnnorm_pow_one_div_tendsto_nhds_spectralRadius](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/pow-nnnorm-pow-one-div-tendsto-nhds-spectralradius--cb0d3700dc873152bb7e7f6f.md) | 130 | `result-track:cb0d3700dc873152bb7e7f6faa596255f12fe9a5782ed8052aa685c6ea419c5b` |
| 7 | `theorem` | [pow_norm_pow_one_div_tendsto_nhds_spectralRadius](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/pow-norm-pow-one-div-tendsto-nhds-spectralradius--b3139ecbaa6ae6141dbc879a.md) | 141 | `result-track:b3139ecbaa6ae6141dbc879a45110889d0b01c7dbd55877a6bb5609a5b9646cd` |
| 8 | `theorem` | [nonempty](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/nonempty--1f29629a48f3b08bfd59ec30.md) | 154 | `result-track:1f29629a48f3b08bfd59ec30b14f835814fcc615b00dd1cf37ffbc8c99ee2e31` |
| 9 | `theorem` | [exists_nnnorm_eq_spectralRadius](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/exists-nnnorm-eq-spectralradius--1f3c741718e752652b9fe75d.md) | 170 | `result-track:1f3c741718e752652b9fe75d3bed0db31063603eede3c4127bb6ffd3c0288078` |
| 10 | `theorem` | [spectralRadius_lt_of_forall_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/spectralradius-lt-of-forall-lt--e11254b88339a073c26479a3.md) | 176 | `result-track:e11254b88339a073c26479a37f0189cc29808168fd60ec361a53ae681f06c6c3` |
| 11 | `theorem` | [map_polynomial_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/map-polynomial-aeval--81bd3cd58bbbb796facb6595.md) | 183 | `result-track:81bd3cd58bbbb796facb6595f024ea677696b8fe73b61029360ada8ee6b74739` |
| 12 | `theorem` | [map_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/map-pow--397f77fd7127cb5b851ae993.md) | 190 | `result-track:397f77fd7127cb5b851ae99392e2bde62be79e95e3200a0f3fb98998f9241de5` |
| 13 | `theorem` | [algebraMap_eq_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/algebramap-eq-of-mem--f9b5d145afcb1d6976b41c22.md) | 197 | `result-track:f9b5d145afcb1d6976b41c22cae884c934650c04e7429d891d70f6becf624feb` |
| 14 | `def` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtResolventConstLeft.Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.NormedRing.algEquivComplexOfComplete](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-hasderivatresolve--38784d29cd8e41331ec515ab.md) | 211 | `declaration-track:38784d29cd8e41331ec515ab3e2e895f8facf3af8ead74769ee81135cef23149` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
