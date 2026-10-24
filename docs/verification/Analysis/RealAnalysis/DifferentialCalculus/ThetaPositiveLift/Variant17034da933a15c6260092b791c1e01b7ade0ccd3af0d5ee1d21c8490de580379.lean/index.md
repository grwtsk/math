# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d0e1692859d6a86e95fdc3adbb50a07085e26f7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d0e1692859d6a86e95fdc3adbb50a07085e26f7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiLogConcavity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_thetaPhi_poly_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/deriv-thetaphi-poly-integrableon--4975c9248c358d873bcc1466.md) | 25 | `result-track:4975c9248c358d873bcc1466777755410e3cd8ad47ffb5029b7bbab3e5fc6d7e` |
| 2 | `theorem` | [thetaPhi_deriv_mul_sub_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/thetaphi-deriv-mul-sub-integrableon--3d8c52bcb44b28d5657f843a.md) | 37 | `result-track:3d8c52bcb44b28d5657f843ad8625d8048319e47f1910851f28dfc6939bc97d0` |
| 3 | `theorem` | [thetaPhi_mul_sub_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/thetaphi-mul-sub-tendsto-attop--c3bb9a75fe2da049de82ad75.md) | 50 | `result-track:c3bb9a75fe2da049de82ad7563a485e76b78d1226fde368c04f39200fb81e198` |
| 4 | `theorem` | [thetaPhi_logSlope_cross_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/thetaphi-logslope-cross-nonnegative--d2cf5fd0606af3a050f32c40.md) | 67 | `result-track:d2cf5fd0606af3a050f32c401d41d456a98cbda9888ef1e9ab9c0cefc242728c` |
| 5 | `theorem` | [thetaPhi_deriv_mul_sub_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/thetaphi-deriv-mul-sub-integral--3c10e35321fed2e7cb90de8f.md) | 75 | `result-track:3c10e35321fed2e7cb90de8fcab3fd6af839a15e3cc2166753f8a2c121bd22bf` |
| 6 | `theorem` | [thetaTail_two_logSlope_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/thetatail-two-logslope-identity--27d47ba744bab67dbdf880be.md) | 95 | `result-track:27d47ba744bab67dbdf880be962776e899493f3929b344db686fa2ecf010eac9` |
| 7 | `theorem` | [thetaTail_two_logSlope_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/thetatail-two-logslope-nonnegative--9abb73dd5f423331ac8d41b6.md) | 116 | `result-track:9abb73dd5f423331ac8d41b636eea061fd5217922b724226a4b72ecd58789d71` |
| 8 | `theorem` | [hasDerivAt_thetaTail_two_div_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/hasderivat-thetatail-two-div-thetaphi--3ff1859e2f12ff1561e9b40b.md) | 123 | `result-track:3ff1859e2f12ff1561e9b40b222da397227052c3eef3a6b82dd6acdda32e69a2` |
| 9 | `theorem` | [thetaTail_two_div_thetaPhi_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/thetatail-two-div-thetaphi-deriv-nonpos--1a0ae5b4e7bc472d980c6bf6.md) | 133 | `result-track:1a0ae5b4e7bc472d980c6bf621d42fecccd857e0670a0d2f2a6f0367f06c7658` |
| 10 | `theorem` | [thetaTail_two_div_thetaPhi_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/thetatail-two-div-thetaphi-antitone--721e5bb7ee9db94aa443bdb3.md) | 140 | `result-track:721e5bb7ee9db94aa443bdb3906be944ba0a8a06ff7395b4d8c55b70be2df1e5` |
| 11 | `theorem` | [thetaTailSignRegular_two_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/declarations/thetatailsignregular-two-zero-one--27b47664bc9f868a06f02c07.md) | 152 | `result-track:27b47664bc9f868a06f02c07d9cc7b1448f862b7eed007a79ec706b2154d4902` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
