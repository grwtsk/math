# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousMapDense.Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ce3df3437c96c957ef0ca67463fec98d1751d6a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ce3df3437c96c957ef0ca67463fec98d1751d6a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean.json)

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
| 1 | `theorem` | [exists_continuous_eLpNorm_sub_le_of_closed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/exists-continuous-elpnorm-sub-le-of-closed--85c42eeedc8268fbc3cc76a1.md) | 79 | `result-track:85c42eeedc8268fbc3cc76a1754c2e7f09c676dac34f49b68c060fea66704271` |
| 2 | `theorem` | [MemLp.exists_hasCompactSupport_eLpNorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/memlp-exists-hascompactsupport-elpnorm-sub-le--8463fbdc1313ae20fb9b1693.md) | 141 | `result-track:8463fbdc1313ae20fb9b1693d8dd09e5f5383ef0c6059f0bd0f2526138c59af8` |
| 3 | `theorem` | [MemLp.exists_hasCompactSupport_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/memlp-exists-hascompactsupport-integral-rpow-sub-le--a5f2ffefd566e5a7ca5b86c3.md) | 189 | `result-track:a5f2ffefd566e5a7ca5b86c361037cd839e03b6c8839841ff86a86c387549b71` |
| 4 | `theorem` | [Integrable.exists_hasCompactSupport_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/integrable-exists-hascompactsupport-lintegral-sub-le--92657028f1e2a6e32218234b.md) | 211 | `result-track:92657028f1e2a6e32218234b8e4dc8c20dbd9ff6728e01624f18ee4a8c4c18a3` |
| 5 | `theorem` | [Integrable.exists_hasCompactSupport_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/integrable-exists-hascompactsupport-integral-sub-le--e72ef094fa64c2fc797cf304.md) | 226 | `result-track:e72ef094fa64c2fc797cf304e23b0afa0a4ec91b4f90227f6c2c8e4fb50cb40a` |
| 6 | `theorem` | [MemLp.exists_boundedContinuous_eLpNorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/memlp-exists-boundedcontinuous-elpnorm-sub-le--cb42c0ba45b278967e9eb143.md) | 237 | `result-track:cb42c0ba45b278967e9eb143cfb6372b2d371d158e490b5a52f3ba61e4d3c776` |
| 7 | `theorem` | [MemLp.exists_boundedContinuous_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/memlp-exists-boundedcontinuous-integral-rpow-sub-le--90aabaf3a4a80de8b8e10136.md) | 282 | `result-track:90aabaf3a4a80de8b8e1013690092b20c3c8481ae96a4a76015af67c40b5ffcd` |
| 8 | `theorem` | [Integrable.exists_boundedContinuous_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/integrable-exists-boundedcontinuous-lintegral-sub-le--ede3b8942bf9b262859ea639.md) | 299 | `result-track:ede3b8942bf9b262859ea63906a5ba7a9187657c55656ebe0cbfa260c40701e4` |
| 9 | `theorem` | [Integrable.exists_boundedContinuous_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/integrable-exists-boundedcontinuous-integral-sub-le--ffa765ef3ee1ce5d8fdab252.md) | 311 | `result-track:ffa765ef3ee1ce5d8fdab252c4bf5da0d7ff9138fd1f558dfb1750019a7ba7d3` |
| 10 | `theorem` | [boundedContinuousFunction_dense](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/boundedcontinuousfunction-dense--d1c14143875a8e19bde1bc75.md) | 323 | `result-track:d1c14143875a8e19bde1bc759d2ec3dae70b053b857f68b9f22266b206c3a88c` |
| 11 | `theorem` | [boundedContinuousFunction_topologicalClosure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/boundedcontinuousfunction-topologicalclosure--bdd5dc72e17e138cbc0992d7.md) | 335 | `result-track:bdd5dc72e17e138cbc0992d757a76c14629e275e0781d9ba15e4f821627adfa5` |
| 12 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/tolp-denserange--17e6355951623e1e9ae53948.md) | 351 | `result-track:17e6355951623e1e9ae539480a94a2450d60be141aa8e3206d64d9120ea52b68` |
| 13 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/declarations/tolp-denserange--ee8b175e23434f6aa01d0454.md) | 363 | `result-track:ee8b175e23434f6aa01d045414e4a6bb4d3ea415e23b95323352c80583fa9dcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
