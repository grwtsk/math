# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.WithDensity.Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d65e62a3388b54e00d417ffb9ba5de5d55b7d82",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d65e62a3388b54e00d417ffb9ba5de5d55b7d82`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.withDensityᵥ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/measure-withdensity--9886839e043a30994f8d9014.md) | 41 | `declaration-track:9886839e043a30994f8d901449e708dc62556991ebfbbcbbfd2b68efd768c0d0` |
| 2 | `theorem` | [withDensityᵥ_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-apply--66566cd59d51b8082cd69422.md) | 56 | `result-track:66566cd59d51b8082cd694222b8d6779ec1f70833cc920c4437c9d5025073465` |
| 3 | `theorem` | [withDensityᵥ_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-zero--cb3717e5f28a166935652f7f.md) | 60 | `result-track:cb3717e5f28a166935652f7f4d3944e4e6a4582effa01ccbaa2d29f47a51e9cd` |
| 4 | `theorem` | [withDensityᵥ_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-neg--42a4ffe7348451659f2f059d.md) | 66 | `result-track:42a4ffe7348451659f2f059d070ebcdde4bb3768b4548c1287f04089b9bceecf` |
| 5 | `theorem` | [withDensityᵥ_neg'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-neg--184844db3f4c1209e3b89ea2.md) | 75 | `result-track:184844db3f4c1209e3b89ea2c0287d133be8bd51e00974dcf02d95b189dc5506` |
| 6 | `theorem` | [withDensityᵥ_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-add--61787aa989f258f5baf7cc75.md) | 79 | `result-track:61787aa989f258f5baf7cc754bdeba65949202df676b57b2ceaf0e32be453a79` |
| 7 | `theorem` | [withDensityᵥ_add'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-add--b604d70fda2242b940c87b4f.md) | 89 | `result-track:b604d70fda2242b940c87b4f858cf021baa853a68af83bcc2607e2f5ebbbfca5` |
| 8 | `theorem` | [withDensityᵥ_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-sub--994b1a4757d79dd12a3f77cc.md) | 94 | `result-track:994b1a4757d79dd12a3f77cc73f05adca8f48b0bff1edd64c7ea0844fd83e6ed` |
| 9 | `theorem` | [withDensityᵥ_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-sub--b6583e51642e2eb6d211b878.md) | 98 | `result-track:b6583e51642e2eb6d211b8783f6bfdbc1ead510d5ac46e8a815b0b488dfa7b3d` |
| 10 | `theorem` | [withDensityᵥ_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-smul--f348ca6be906b499f5b596b0.md) | 103 | `result-track:f348ca6be906b499f5b596b0af33e046f0daabae065a3ad6ccb5a655dcceb5ee` |
| 11 | `theorem` | [withDensityᵥ_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-smul--98323344f7538e7bcc786814.md) | 115 | `result-track:98323344f7538e7bcc786814722dc67e3f4bd591ad3294790c44e90348576fa2` |
| 12 | `theorem` | [withDensityᵥ_smul_eq_withDensityᵥ_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-smul-eq-withdensity-withdensity--c74aad01545866e30e5f906b.md) | 120 | `result-track:c74aad01545866e30e5f906b9f89804e846dc2ee80f51f7c5f39f0a4c36d015e` |
| 13 | `theorem` | [withDensityᵥ_smul_eq_withDensityᵥ_withDensity'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-smul-eq-withdensity-withdensity--8e942c11ae65f4682e583266.md) | 129 | `result-track:8e942c11ae65f4682e583266d62b9811b7fe8789b95cd533add9697f4a32893b` |
| 14 | `theorem` | [Measure.withDensityᵥ_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/measure-withdensity-absolutelycontinuous--4a6dffd48a318589515d1135.md) | 139 | `result-track:4a6dffd48a318589515d1135e6405117ee05564b8cb74ee697a40b992caa0af4` |
| 15 | `theorem` | [Integrable.ae_eq_of_withDensityᵥ_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/integrable-ae-eq-of-withdensity-eq--e0cdc25a3e91b48e1ac86cb8.md) | 149 | `result-track:e0cdc25a3e91b48e1ac86cb8ce45643357fab0de90b3758e07fcf7d6e0ef0a06` |
| 16 | `theorem` | [WithDensityᵥEq.congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-eq-congr-ae--e4e76d974e363accac7555f2.md) | 154 | `result-track:e4e76d974e363accac7555f217c8c0c6d62e99fbb0df2f18e26e18916b5469c6` |
| 17 | `theorem` | [Integrable.withDensityᵥ_eq_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/integrable-withdensity-eq-iff--c72b44a0d722fb0cdfddcc6a.md) | 163 | `result-track:c72b44a0d722fb0cdfddcc6ab9b2165c41af315be1908ef26129e83252604596` |
| 18 | `theorem` | [withDensityᵥ_toReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-toreal--a543d36bd6ac6d0c92d4cf9f.md) | 170 | `result-track:a543d36bd6ac6d0c92d4cf9fb57a40b1927f9aa05049b9b96d7e8b1546899458` |
| 19 | `theorem` | [withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/withdensity-eq-withdensity-pos-part-sub-withdensity-neg-part--6e7ef85abfedc327503b996c.md) | 182 | `result-track:6e7ef85abfedc327503b996c0502f1084d11fde8243cc0be9eb6d2347ef79856` |
| 20 | `theorem` | [Integrable.withDensityᵥ_trim_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/integrable-withdensity-trim-eq-integral--eb552bfe83030af1aa27c5e5.md) | 198 | `result-track:eb552bfe83030af1aa27c5e5c3b1a2f2111e9a823ba4d76aece1cb4a11f805d2` |
| 21 | `theorem` | [Integrable.withDensityᵥ_trim_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/declarations/integrable-withdensity-trim-absolutelycontinuous--4d9628e6c34b9a71142e06d1.md) | 203 | `result-track:4d9628e6c34b9a71142e06d1aa39fea0fec2479a833944798a1268c89769ba28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
