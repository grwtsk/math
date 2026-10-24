# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualXiConditionalLaplace.Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8148e566eab2b7c967794f2db3d5c604ab4e7793",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8148e566eab2b7c967794f2db3d5c604ab4e7793`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiAbsoluteCumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxiabsolutecumulative--2fae76f8e79e178842cff203.md) | 20 | `declaration-track:2fae76f8e79e178842cff2030cf5213e51cf2ab657bf8d95f5236b95a0a9c6aa` |
| 2 | `def` | [actualXiConditionalLaplaceBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxiconditionallaplacebudget--b9949d7d7827bc2d5acc2df4.md) | 24 | `declaration-track:b9949d7d7827bc2d5acc2df4fbb44d9c8e7a307d571f6b81e831ec23ecdf3172` |
| 3 | `theorem` | [lower_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/lower-nonneg--870d601e1d155e604b1ae9f5.md) | 27 | `result-track:870d601e1d155e604b1ae9f5544293ea9b31bbb4a81052862309147c505d9385` |
| 4 | `theorem` | [actual_abs_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actual-abs-intervalintegrable--7cb609244ca2d9c784dd6f1d.md) | 29 | `result-track:7cb609244ca2d9c784dd6f1dd4500e2b1eb314921ebea66778eac9712f78316a` |
| 5 | `theorem` | [actualXiAbsoluteCumulative_at_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxiabsolutecumulative-at-lower--8e893e575a073721b5fc8be8.md) | 34 | `result-track:8e893e575a073721b5fc8be8a2a4ccefcd6aaae595f4992697e13a2c27747f12` |
| 6 | `theorem` | [actualXiAbsoluteCumulative_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxiabsolutecumulative-nonneg--0545f25d1b17b3095930b5b4.md) | 39 | `result-track:0545f25d1b17b3095930b5b46dd5cf752b1181fd0d05e64c00de97fa9edf4418` |
| 7 | `theorem` | [actualXiAbsoluteCumulative_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxiabsolutecumulative-absolutelycontinuous--5626d53377c5e5525c38072d.md) | 44 | `result-track:5626d53377c5e5525c38072dbffa20cde1efd3b04b3cf3ed6a6ed7b0b3e72f5f` |
| 8 | `theorem` | [actualXiAbsoluteCumulative_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxiabsolutecumulative-ae-hasderivat--03c3db8e7cd12d01348a7932.md) | 50 | `result-track:03c3db8e7cd12d01348a793259060d8ef73e96a79c161de4918ed477f1d5b93e` |
| 9 | `theorem` | [cumulative_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/cumulative-weight-intervalintegrable--0bf66ffc4b56c106f33554b4.md) | 56 | `result-track:0bf66ffc4b56c106f33554b4222e10ba29dde68b96b5ed4c0de4f1dc1bfe0698` |
| 10 | `theorem` | [absolute_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/absolute-weight-intervalintegrable--bf5e125d7be57172e3459500.md) | 63 | `result-track:bf5e125d7be57172e3459500cb5c76f7708ca3ac5655b8f608656f3068b85938` |
| 11 | `theorem` | [actualXiLaplace_finite_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxilaplace-finite-abel--dd7b36c71be2f8c1fdae28ea.md) | 70 | `result-track:dd7b36c71be2f8c1fdae28ea8efa0af33a3608e146a73ffa0504961952d2cf25` |
| 12 | `theorem` | [actualXiAbsoluteCumulative_le_future_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxiabsolutecumulative-le-future-envelope--3338b1f58bc11b550b38504c.md) | 103 | `result-track:3338b1f58bc11b550b38504ca6c317c0121aa3a6d164841b4eda61ff92a04422` |
| 13 | `theorem` | [polynomial_exponential_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/polynomial-exponential-bound--dc01703e8d91a37212d257ff.md) | 116 | `result-track:dc01703e8d91a37212d257ff1eddf952d835d5574f4dda48c29c0cbb24842205` |
| 14 | `theorem` | [cumulative_weight_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/cumulative-weight-norm-bound--0b9ad0ca643c836d2e47e38a.md) | 142 | `result-track:0b9ad0ca643c836d2e47e38aba0a10ee694ccf4d51e55c2f4a8b9cda500baa7d` |
| 15 | `theorem` | [actualXiCumulativeLaplace_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxicumulativelaplace-integrableon--3823c2ff8b9de3ed31d6cc0d.md) | 162 | `result-track:3823c2ff8b9de3ed31d6cc0d3f85d40e7a13b8d2cc85bfa3abc2bef2ca1354ac` |
| 16 | `theorem` | [actualXiCumulativeLaplace_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxicumulativelaplace-tendsto-zero--42347bb6b27ee9200536e079.md) | 179 | `result-track:42347bb6b27ee9200536e079895bf4d270123742ed69dab5abf0fc425f8942af` |
| 17 | `theorem` | [absolute_laplace_finite_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/absolute-laplace-finite-tendsto--6e6faf431e055c4556c4b5aa.md) | 193 | `result-track:6e6faf431e055c4556c4b5aa7c9cded51963ad2416d240a2a9251abf247b5680` |
| 18 | `theorem` | [actualXiLaplace_integrableOn_of_future_average](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxilaplace-integrableon-of-future-average--8aa04d1397189e9c50a74560.md) | 210 | `result-track:8aa04d1397189e9c50a745607998a197177d6bbe0986da531be0c7313a329fdc` |
| 19 | `theorem` | [actualXiLaplace_integral_norm_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxilaplace-integral-norm-eq--0935ab646ac8c58bbd331a41.md) | 227 | `result-track:0935ab646ac8c58bbd331a4159e71ba4c8268087cf8a5b13872bfe2fdf8afc9e` |
| 20 | `theorem` | [actualXiLaplace_integral_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxilaplace-integral-norm-le--749927721030bf2cf5c73f84.md) | 238 | `result-track:749927721030bf2cf5c73f84de5c72a498f83c2dfb62adc0408dcbcd6232096b` |
| 21 | `theorem` | [actualXiLaplace_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantf1639d93179eac8b683c66a0490e900a9e915221c19d773883bbf6783f77f456.lean/declarations/actualxilaplace-norm-le--fe7b3b4ede1335a2ff65fa7e.md) | 266 | `result-track:fe7b3b4ede1335a2ff65fa7e36a9638d50bf1ce9adcba42b23ce3193f521c8ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
