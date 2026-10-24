# Verification target: GRWTSK.Analysis.MeasureTheory.WithDensityVectorMeasure.Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f13be07516fd409d36a16c9e5418feb90f4dcbc0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f13be07516fd409d36a16c9e5418feb90f4dcbc0`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.VectorMeasure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.withDensityᵥ](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/measure-withdensity--fa767d64760210c2516e5f3e.md) | 51 | `declaration-track:fa767d64760210c2516e5f3e2f8fa2fa64b291bc101b3c9947b625fc90fd99d6` |
| 2 | `theorem` | [withDensityᵥ_apply](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-apply--b0c6072067f70263f79cff5b.md) | 68 | `result-track:b0c6072067f70263f79cff5b197d4c6a554defae44f55b84a63c23f6b687e3db` |
| 3 | `theorem` | [withDensityᵥ_zero](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-zero--fd6383a54893a6affc4edab9.md) | 73 | `result-track:fd6383a54893a6affc4edab9f86e3867545864df5820f7aa3b2d74dcbcdbfb86` |
| 4 | `theorem` | [withDensityᵥ_neg](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-neg--4dda478bd7cff5d8ce054f42.md) | 78 | `result-track:4dda478bd7cff5d8ce054f424be2900fe26249d897b698fbe7bda5c80fdbd56c` |
| 5 | `theorem` | [withDensityᵥ_neg'](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-neg--b2188511731dda12ab07fb6d.md) | 88 | `result-track:b2188511731dda12ab07fb6d851e8e1b37f5a5ce0b80a8c9df2af78670c96f5c` |
| 6 | `theorem` | [withDensityᵥ_add](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-add--f57cebe4a675582eafc4e193.md) | 93 | `result-track:f57cebe4a675582eafc4e193402d13ee68a49acf3eebc9e11f71e8fa1e322e99` |
| 7 | `theorem` | [withDensityᵥ_add'](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-add--d06d2817114bfebfda9d5d43.md) | 104 | `result-track:d06d2817114bfebfda9d5d439600df82e558ff56448e3a97ad551b35983f6fd5` |
| 8 | `theorem` | [withDensityᵥ_sub](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-sub--417413d513096a44e5195e59.md) | 110 | `result-track:417413d513096a44e5195e5986ac1ca0c6ee488c9f2ab8f127db533f2d3e15b5` |
| 9 | `theorem` | [withDensityᵥ_sub'](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-sub--0667c4cd0adba49f9e4dad79.md) | 115 | `result-track:0667c4cd0adba49f9e4dad79dd2bdd5a312dde003a175843591d64ab3b26f278` |
| 10 | `theorem` | [withDensityᵥ_smul](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-smul--27ef42ee9e51c147cd8871d8.md) | 121 | `result-track:27ef42ee9e51c147cd8871d8a39b3e4711fe3c636b9f5b0ab30f1a23bda92e14` |
| 11 | `theorem` | [withDensityᵥ_smul'](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-smul--2f5627e9114464f415c222a6.md) | 134 | `result-track:2f5627e9114464f415c222a6d303ee0c1b9841f6544cb444027e0cd7863e6020` |
| 12 | `theorem` | [Measure.withDensityᵥ_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/measure-withdensity-absolutelycontinuous--5d03fed5837d72d24614971f.md) | 140 | `result-track:5d03fed5837d72d24614971ff21b96f4bd7e12e0f4a849c46fbcd257067eb7e6` |
| 13 | `theorem` | [Integrable.ae_eq_of_withDensityᵥ_eq](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/integrable-ae-eq-of-withdensity-eq--872ee6432d0ec54382a6fb7a.md) | 151 | `result-track:872ee6432d0ec54382a6fb7a499b49e67abafaaa1e42e18d6fdab33e1f3e6630` |
| 14 | `theorem` | [WithDensityᵥEq.congr_ae](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-eq-congr-ae--b4d068fcd07d7c1021f8946b.md) | 157 | `result-track:b4d068fcd07d7c1021f8946b8d1377d71948abf3d27d20a4c7a5699c172e469f` |
| 15 | `theorem` | [Integrable.withDensityᵥ_eq_iff](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/integrable-withdensity-eq-iff--d705998471f5addb31772f2b.md) | 167 | `result-track:d705998471f5addb31772f2b1395268c3ec74d60f7785c8c0b2009e231bf80d5` |
| 16 | `theorem` | [withDensityᵥ_toReal](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-toreal--488c36c7b31b1a1584f59d1b.md) | 174 | `result-track:488c36c7b31b1a1584f59d1be4ec8eeebeef5d2a2fc794035e1b919969661cdb` |
| 17 | `theorem` | [withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/withdensity-eq-withdensity-pos-part-sub-withdensity-neg-part--d080004c9f803b642255f69b.md) | 187 | `result-track:d080004c9f803b642255f69b9c21adc5cd8ecc87efd075fb73cf700c86f01de2` |
| 18 | `theorem` | [Integrable.withDensityᵥ_trim_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/integrable-withdensity-trim-eq-integral--b4e2994cf1a659f992d7c223.md) | 203 | `result-track:b4e2994cf1a659f992d7c2235e34f5c881fcf7cff6abc3aba0be509b7292668e` |
| 19 | `theorem` | [Integrable.withDensityᵥ_trim_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/declarations/integrable-withdensity-trim-absolutelycontinuous--a96b94c344a5e2787bc3aece.md) | 209 | `result-track:a96b94c344a5e2787bc3aece3d62e176d610421ddd0523f9e8bb59037ad97338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
