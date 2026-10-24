# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HasOuterApproxClosedProd.Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c3c1aa30acb951e34c19d1bcf8000ad38599457",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c3c1aa30acb951e34c19d1bcf8000ad38599457`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean.json)

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
| 1 | `lemma` | [ext_of_lintegral_prod_mul_prod_boundedContinuousFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/ext-of-lintegral-prod-mul-prod-boundedcontinuousfunction--bac2e908c7ccefebf04140ce.md) | 86 | `result-track:bac2e908c7ccefebf04140ce6248ea2adb09baea2b8bd1d87aa9630ab16525c4` |
| 2 | `lemma` | [ext_of_integral_prod_mul_prod_boundedContinuousFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/ext-of-integral-prod-mul-prod-boundedcontinuousfunction--84f26e008aa4cc5e2eb49f98.md) | 168 | `result-track:84f26e008aa4cc5e2eb49f989405b4aa3ae6c1ad2279bdaad40a9b8ef5d675cf` |
| 3 | `lemma` | [eq_prod_of_integral_prod_mul_prod_boundedContinuousFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/eq-prod-of-integral-prod-mul-prod-boundedcontinuousfunction--aa38d9d6e65f1855adbe304c.md) | 206 | `result-track:aa38d9d6e65f1855adbe304c7defee9b56226a8e474ba4318398a20f8172272c` |
| 4 | `lemma` | [ext_of_integral_prod_mul_boundedContinuousFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/ext-of-integral-prod-mul-boundedcontinuousfunction--2c7381e4480ef329cbb314a7.md) | 215 | `result-track:2c7381e4480ef329cbb314a780c6fd5024d2fd805368d0c1ee4ec1437da469e4` |
| 5 | `lemma` | [eq_prod_of_integral_prod_mul_boundedContinuousFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/eq-prod-of-integral-prod-mul-boundedcontinuousfunction--dc0a38259f40124392f010bb.md) | 230 | `result-track:dc0a38259f40124392f010bb50ed64e815e636270464b41e791f8fcabbe00c6a` |
| 6 | `lemma` | [ext_of_integral_mul_prod_boundedContinuousFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/ext-of-integral-mul-prod-boundedcontinuousfunction--760fec91f2d342337fab7819.md) | 238 | `result-track:760fec91f2d342337fab78194e60ef739bbf5f148c0c28f275528b690d9d777b` |
| 7 | `lemma` | [eq_prod_of_integral_mul_prod_boundedContinuousFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/eq-prod-of-integral-mul-prod-boundedcontinuousfunction--008311ee93d74c8baf1d4f65.md) | 249 | `result-track:008311ee93d74c8baf1d4f653245749b64e6b8fac42d762b9de85e52b60e4ef4` |
| 8 | `lemma` | [ext_of_integral_mul_boundedContinuousFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/ext-of-integral-mul-boundedcontinuousfunction--3bee0096459a440c913a4573.md) | 259 | `result-track:3bee0096459a440c913a4573956886e0175a109f3030b27d7a8fb8971d41c7e2` |
| 9 | `lemma` | [eq_prod_of_integral_mul_boundedContinuousFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/eq-prod-of-integral-mul-boundedcontinuousfunction--329f5ae8b6f686498fe99310.md) | 273 | `result-track:329f5ae8b6f686498fe99310734f2344685e461b9aa0a90d35f9ea9b1cd41b9c` |
| 10 | `lemma` | [ext_of_integral_prod_mul_prod_boundedContinuousFunction'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/ext-of-integral-prod-mul-prod-boundedcontinuousfunction--af4f100eb3a0466381d3370e.md) | 286 | `result-track:af4f100eb3a0466381d3370ef35cc69080ad26d8496211566fa90b369da28390` |
| 11 | `lemma` | [eq_prod_of_integral_prod_mul_prod_boundedContinuousFunction'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/eq-prod-of-integral-prod-mul-prod-boundedcontinuousfunction--936415a4e597cfbdb7273023.md) | 297 | `result-track:936415a4e597cfbdb7273023c65a387094326c7a743de473815676c235034326` |
| 12 | `lemma` | [ext_of_integral_prod_mul_boundedContinuousFunction'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/ext-of-integral-prod-mul-boundedcontinuousfunction--44ad8a36084b7974e54542cf.md) | 305 | `result-track:44ad8a36084b7974e54542cfdaccabbb2c776daad4b384b7ee6e33dd092bddf1` |
| 13 | `lemma` | [eq_prod_of_integral_prod_mul_boundedContinuousFunction'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/eq-prod-of-integral-prod-mul-boundedcontinuousfunction--c2fbda1e73265dfab95b13f1.md) | 314 | `result-track:c2fbda1e73265dfab95b13f1105c35ae0cc5fc72a32dedc3aea90cae25bc5826` |
| 14 | `lemma` | [ext_of_integral_mul_prod_boundedContinuousFunction'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/ext-of-integral-mul-prod-boundedcontinuousfunction--f6ab0fcc4cad60d6cff1c702.md) | 322 | `result-track:f6ab0fcc4cad60d6cff1c702b8428533c6c765d9675de24c0a21d4ec157ca525` |
| 15 | `lemma` | [eq_prod_of_integral_mul_prod_boundedContinuousFunction'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/declarations/eq-prod-of-integral-mul-prod-boundedcontinuousfunction--7e516380a5ef5921d50416d0.md) | 330 | `result-track:7e516380a5ef5921d50416d08a9e6ddd7f0b1c444aac1dce5d9e523d4e0a6fd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
