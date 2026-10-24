# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierTransform.Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ea99a82ef6d9f40b9a88d891fbd4440ef38fc70",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ea99a82ef6d9f40b9a88d891fbd4440ef38fc70`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral--70b0a83683487deab807e622.md) | 83 | `declaration-track:70b0a83683487deab807e62243554831180d3a497ce98f2fcb6b9d788a6b5896` |
| 2 | `theorem` | [fourierIntegral_smul_const](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral-smul-const--4bfc3f4818b1c78f3a770d7e.md) | 88 | `result-track:4bfc3f4818b1c78f3a770d7ef88ff3aeb1dcf576b7ab9b4f2066736b1a29b561` |
| 3 | `theorem` | [norm_fourierIntegral_le_integral_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/norm-fourierintegral-le-integral-norm--04ba693a899d4a349eadcdef.md) | 100 | `result-track:04ba693a899d4a349eadcdef22a7d6844922deafa7f74155b923f1a15928b3ce` |
| 4 | `theorem` | [fourierIntegral_comp_add_right](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral-comp-add-right--dc02d6c4214b75d2606487be.md) | 108 | `result-track:dc02d6c4214b75d2606487be7e6fdeb93cae63fd29f7bee618ecd4f9633ddeb1` |
| 5 | `theorem` | [fourier_integral_convergent_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourier-integral-convergent-iff--b0300d9314e69d17ddd51117.md) | 137 | `result-track:b0300d9314e69d17ddd511172573d682ca2ef0f95e118c2b38c840a84544c918` |
| 6 | `theorem` | [fourierIntegral_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral-add--0090da8fc57c61f27519ca2b.md) | 160 | `result-track:0090da8fc57c61f27519ca2bc2bb9f3cc91057af1a54bb44f6ee08d9eb8b5d96` |
| 7 | `theorem` | [fourierIntegral_continuous](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral-continuous--e978a821ac8152a99353d648.md) | 172 | `result-track:e978a821ac8152a99353d6489518cc8a55e75b6bf874b8bc80b512b67e6cc465` |
| 8 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral--7e2a1f04c5d5c03983906b6c.md) | 204 | `declaration-track:7e2a1f04c5d5c03983906b6c3e596177ec28f13230529602ffb038ee05db48a8` |
| 9 | `theorem` | [fourierIntegral_def](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral-def--6cd73b2aaecbef9112c52036.md) | 208 | `result-track:6cd73b2aaecbef9112c5203613fa00d0c1daf5c96b07a6c4331fa950994e453e` |
| 10 | `theorem` | [fourierIntegral_smul_const](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral-smul-const--98746ede5bb4de2597960ad2.md) | 213 | `result-track:98746ede5bb4de2597960ad28b374e4876c42f8263dcff1ba72cf35719f2e880` |
| 11 | `theorem` | [norm_fourierIntegral_le_integral_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/norm-fourierintegral-le-integral-norm--0141ea3a5519f45522238077.md) | 219 | `result-track:0141ea3a5519f4552223807716dddfc1dd9d43576b56a7daf9eb66fe4d1db0a7` |
| 12 | `theorem` | [fourierIntegral_comp_add_right](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral-comp-add-right--c78733b09aa552da93110fe9.md) | 225 | `result-track:c78733b09aa552da93110fe9abeb6f8b4244bb5887a1feffb7ec99d38515d09d` |
| 13 | `def` | [fourierChar](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierchar--cb271d2d92e8ee5a42b62047.md) | 240 | `declaration-track:cb271d2d92e8ee5a42b620474888c9f97b9417a3006fea1d8d53a62e7b20196f` |
| 14 | `theorem` | [fourierChar_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierchar-apply--25b71de8d961e323fecc43ca.md) | 246 | `result-track:25b71de8d961e323fecc43ca95aa647597a81deb38e1b8b1efbdc7e7ebb3309e` |
| 15 | `theorem` | [continuous_fourierChar](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/continuous-fourierchar--07c934c2dd594309b1820c96.md) | 251 | `result-track:07c934c2dd594309b1820c960d9f5bf29fdbe64ad5d7150b4c56a7446df7c96f` |
| 16 | `theorem` | [vector_fourierIntegral_eq_integral_exp_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/vector-fourierintegral-eq-integral-exp-smul--de37df26a73be8a6851e6748.md) | 257 | `result-track:de37df26a73be8a6851e6748a618678f1c9d1e3563d0f3f0adf269ffbadc7eca` |
| 17 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral--ae2fdaaa3d1c2ca4abfbfd55.md) | 267 | `declaration-track:ae2fdaaa3d1c2ca4abfbfd55fd1b0e0a24b3e62fb25f3897b78240a475b78464` |
| 18 | `theorem` | [fourierIntegral_def](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral-def--745919e40470819879f9208c.md) | 271 | `result-track:745919e40470819879f9208cc4ce1f88a05b786915b26537d641656647c6a06f` |
| 19 | `theorem` | [fourierIntegral_eq_integral_exp_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/declarations/fourierintegral-eq-integral-exp-smul--8b10a8ede2d70421b2750c49.md) | 278 | `result-track:8b10a8ede2d70421b2750c4950cc2d188ce83a8cf59ac8e2f06178945e0ac4c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
