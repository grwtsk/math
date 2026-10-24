# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12a376070e8d7d4cadde391133d123f3c75677f5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12a376070e8d7d4cadde391133d123f3c75677f5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThree012` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rankThreeKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/rankthreekernel--17cbeb1d98c145d1a52b35a6.md) | 32 | `declaration-track:17cbeb1d98c145d1a52b35a68e6289f583cf839a9b8e3be77c5997d1b5504362` |
| 2 | `theorem` | [rankThreeKernel_eq_det](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/rankthreekernel-eq-det--090144fd04173cb03221dd2e.md) | 41 | `result-track:090144fd04173cb03221dd2ecd3e0f8ca4515a8a70b51f7526af6c7de95007ad` |
| 3 | `theorem` | [triple_setIntegral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/triple-setintegral-mul--13ae88a8914d07b39fff2f87.md) | 49 | `result-track:13ae88a8914d07b39fff2f87c8af208a3878d38e09cbea320f32f62501e912d7` |
| 4 | `theorem` | [triple_mul_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/triple-mul-integrableon--5d1d9d7a52a8f987b1625f6e.md) | 64 | `result-track:5d1d9d7a52a8f987b1625f6e8a2a1e0b43d14dc9aa550bcaf7e2b32ae060c1a9` |
| 5 | `theorem` | [rankThreeKernel_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/rankthreekernel-integrableon--246b26974a3425d63881d498.md) | 73 | `result-track:246b26974a3425d63881d498ab055e92e1d49faa2141812700ddaf851022d4d3` |
| 6 | `theorem` | [det_setIntegral_columns_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/det-setintegral-columns-eq--e47afa4db6875c4a3801e335.md) | 94 | `result-track:e47afa4db6875c4a3801e335680100d5603f4dd242962d97ada6bf6eb5af4c47` |
| 7 | `theorem` | [det_three_tail_columns_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/det-three-tail-columns-sub--c2fe68fb75f3a90807d03dc4.md) | 165 | `result-track:c2fe68fb75f3a90807d03dc47ef3e00bb9e3d59a0aea188b7dc52cae14dd04a2` |
| 8 | `theorem` | [thetaTail_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/thetatail-integrableon-ioc--efe7fab1ae97d7f8a1a9a31f.md) | 174 | `result-track:efe7fab1ae97d7f8a1a9a31f7750a0aac50c390c0989d3759d35e934bcc557cb` |
| 9 | `theorem` | [thetaTail_succ_sub_eq_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/thetatail-succ-sub-eq-ioc--f953815c78a36baec3c5eba5.md) | 179 | `result-track:f953815c78a36baec3c5eba528014f1c6a709bce7aa285535b37012733e6c114` |
| 10 | `theorem` | [thetaTail_rankThree_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/thetatail-rankthree-shift--96d8efdb4eee113e95786f8d.md) | 192 | `result-track:96d8efdb4eee113e95786f8d5fec86bb28b68e708b825e5a417d776c1c9aafc5` |
| 11 | `theorem` | [thetaTail_rankThree_consecutive_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/thetatail-rankthree-consecutive-shift--49c2c95dbb81dbe6ba90f8c2.md) | 237 | `result-track:49c2c95dbb81dbe6ba90f8c2a6a3fd5406806c54bf2008336906471ee00638d1` |
| 12 | `theorem` | [thetaTailSignRegular_three_consecutive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/declarations/thetatailsignregular-three-consecutive--be46f3937e368748be1800b8.md) | 254 | `result-track:be46f3937e368748be1800b850b94936961f39c82e1b7fc59fb5a14569910712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
