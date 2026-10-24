# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AbelSummation.Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71b44611d978318185ecc30724856b14e316742f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71b44611d978318185ecc30724856b14e316742f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sumlocc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/sumlocc--5a1937a745f85158c9fdf2a2.md) | 58 | `result-track:5a1937a745f85158c9fdf2a278cc7785ef640729f48d3961dbdc45def9415dac` |
| 2 | `theorem` | [integralmulsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/integralmulsum--434ff0ad087e06e9c2c01783.md) | 64 | `result-track:434ff0ad087e06e9c2c0178327630dc0e3b102428c8cceac9d96600b5d6730c3` |
| 3 | `theorem` | [ineqofmemIco](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/ineqofmemico--824ff061d738cd58ca22be7d.md) | 80 | `result-track:824ff061d738cd58ca22be7d7755105cc742068bacf558e6ca87a24aabdc9662` |
| 4 | `theorem` | [ineqofmemIco'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/ineqofmemico--e3de31892e1aedd00bf3bcd9.md) | 88 | `result-track:e3de31892e1aedd00bf3bcd958c983880573bd7329d3bb6a758f9413ae31ac52` |
| 5 | `theorem` | [_root_.integrableOn_mul_sum_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/root-integrableon-mul-sum-icc--fb9c1c373f17250564c3df0b.md) | 92 | `result-track:fb9c1c373f17250564c3df0b3dfbdcde6d01e895c27c08b38e7d4452e96b8e84` |
| 6 | `theorem` | [_root_.sum_mul_eq_sub_sub_integral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/root-sum-mul-eq-sub-sub-integral-mul--f3d92780438b28a33d975fed.md) | 129 | `result-track:f3d92780438b28a33d975fed0a82d3e966a8208d548f93413140600a7e7c5d00` |
| 7 | `theorem` | [_root_.sum_mul_eq_sub_sub_integral_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/root-sum-mul-eq-sub-sub-integral-mul--18725aeeef1678e1b38ec1f3.md) | 175 | `result-track:18725aeeef1678e1b38ec1f398d6d60f938b98010c7c769f0629ac32031c26d9` |
| 8 | `theorem` | [sum_mul_eq_sub_integral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/sum-mul-eq-sub-integral-mul--a3fbe70e7286d86c4606089b.md) | 189 | `result-track:a3fbe70e7286d86c4606089b11e45330ef1a3afde479523f4164dc2c776ab253` |
| 9 | `theorem` | [sum_mul_eq_sub_integral_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/sum-mul-eq-sub-integral-mul--14e3669e340745be1900404e.md) | 200 | `result-track:14e3669e340745be1900404e3f8ace64d50e407431a83e07f6f67085bc8cac48` |
| 10 | `theorem` | [sum_mul_eq_sub_integral_mul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/sum-mul-eq-sub-integral-mul--8224bc2e9a57b477995a0f32.md) | 211 | `result-track:8224bc2e9a57b477995a0f324eb08d64f78805582e4cd0e7b09cf673b71e4f3c` |
| 11 | `theorem` | [sum_mul_eq_sub_integral_mul₀'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/sum-mul-eq-sub-integral-mul--8eb2d96cdfa4869eef9b7168.md) | 229 | `result-track:8eb2d96cdfa4869eef9b7168a0c8008fb679f7fc298872b51fce0b250eb612f0` |
| 12 | `theorem` | [sum_mul_eq_sub_integral_mul₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/sum-mul-eq-sub-integral-mul--6e3b0d154e5a1221d1f3a375.md) | 239 | `result-track:6e3b0d154e5a1221d1f3a375f8b5e286808d6b3605141445aa42a011f4455e0d` |
| 13 | `theorem` | [locallyIntegrableOn_mul_sum_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/locallyintegrableon-mul-sum-icc--f29c762f5ce9afa391851d49.md) | 270 | `result-track:f29c762f5ce9afa391851d494526ba5da66524a90821e35dfc2c268d061a4a7b` |
| 14 | `theorem` | [tendsto_sum_mul_atTop_nhds_one_sub_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/tendsto-sum-mul-attop-nhds-one-sub-integral--944ab7520f4258daa73ccec5.md) | 283 | `result-track:944ab7520f4258daa73ccec5f951106a6cd61c7eecfb8b0aab49838ed32bdcae` |
| 15 | `theorem` | [tendsto_sum_mul_atTop_nhds_one_sub_integral₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/tendsto-sum-mul-attop-nhds-one-sub-integral--809bf0578e86f359fbe6f1be.md) | 302 | `result-track:809bf0578e86f359fbe6f1beccba5c8c4f85601cdb2f6b56a37c0e6a94eb74eb` |
| 16 | `theorem` | [summable_mul_of_bigO_atTop_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/summable-mul-of-bigo-attop-aux--b8bfaf6a16339a50cd95998d.md) | 330 | `result-track:b8bfaf6a16339a50cd95998d509bc30c149a182092f20c2563bae34a10490a6a` |
| 17 | `theorem` | [summable_mul_of_bigO_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/summable-mul-of-bigo-attop--12cc01841e98b63e4c2c95b3.md) | 368 | `result-track:12cc01841e98b63e4c2c95b3f104a1c490fd620a64723c747a4cb1d629ed8b75` |
| 18 | `theorem` | [summable_mul_of_bigO_atTop'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/declarations/summable-mul-of-bigo-attop--8cf860bef48ff35b085effde.md) | 380 | `result-track:8cf860bef48ff35b085effde784bb2d6152275f32d75078f16969578e2b5d246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
