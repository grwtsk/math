# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NormedSpace.Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d36edfeac6089bc68d16517c4829aadc7b597b54",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d36edfeac6089bc68d16517c4829aadc7b597b54`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/example--07a06e60cff49c12fb93b9e7.md) | 34 | `declaration-track:07a06e60cff49c12fb93b9e79db482c8b9c99d380286c7e0739a17aaa0916735` |
| 2 | `instance` | [MapLinearEquiv.isAddHaarMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/maplinearequiv-isaddhaarmeasure--c19ad313e5264e95c8cb3505.md) | 47 | `declaration-track:c19ad313e5264e95c8cb3505cd9a7943d3a7d3c61ca5dfb694c651cac1f9096e` |
| 3 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.RootMonoidHomExistsNhdsIsBounded.Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.MonoidHom.exists_nhds_isBounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/root-grwtsk-analysis-realanalysis-integration-rootmonoidhomexistsnhdsisb--2ed5babce140b372ceb15adc.md) | 60 | `result-track:2ed5babce140b372ceb15adc18ed28a4419859b75ac85c7c4ff8ea908047dfba` |
| 4 | `lemma` | [AddMonoidHom.continuous_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/addmonoidhom-continuous-of-measurable--e9d613b800c5564a9ce1e34e.md) | 82 | `result-track:e9d613b800c5564a9ce1e34e2d8e5b55ca2787f9518407c1c08d59d13a8d44df` |
| 5 | `theorem` | [integral_comp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integral-comp-smul--60739b8e396d926a6cb9e737.md) | 95 | `result-track:60739b8e396d926a6cb9e737f1a5aa73cc1418bbcf3ec8c33ce186cb3ff01912` |
| 6 | `theorem` | [integral_comp_smul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integral-comp-smul-of-nonneg--d6bd30f770a66203085e4d62.md) | 118 | `result-track:d6bd30f770a66203085e4d62562086510d1b096608d2f453bc9cad7334abc8ef` |
| 7 | `theorem` | [integral_comp_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integral-comp-inv-smul--14998396dd150825e89e6807.md) | 125 | `result-track:14998396dd150825e89e68072c1d26032d98c5aafb733b5348ec6f3e1703e7ad` |
| 8 | `theorem` | [integral_comp_inv_smul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integral-comp-inv-smul-of-nonneg--54acc4e3b59d7da7a3b27725.md) | 132 | `result-track:54acc4e3b59d7da7a3b27725ffd9f5165939359a16859c61121c052f055a222f` |
| 9 | `theorem` | [setIntegral_comp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/setintegral-comp-smul--2ebdc3859bc029e5aab7b4bd.md) | 136 | `result-track:2ebdc3859bc029e5aab7b4bd3e5d2bc62211c07fb87659f4e1fa2441caed289a` |
| 10 | `theorem` | [setIntegral_comp_smul_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/setintegral-comp-smul-of-pos--a4a152132bd24a91e841e27a.md) | 151 | `result-track:a4a152132bd24a91e841e27a685402f09bde0a8af9ffc5dc6cec16cc5218c165` |
| 11 | `theorem` | [integral_comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integral-comp-mul-left--a300d07b587f3db59df71751.md) | 155 | `result-track:a300d07b587f3db59df71751198bf2a8a8d6a1fa1866def623bc9e374d1613d9` |
| 12 | `theorem` | [integral_comp_inv_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integral-comp-inv-mul-left--9b1aacf84e541dccacc97081.md) | 159 | `result-track:9b1aacf84e541dccacc970814f5d5f0f9e968cc255604ee69c71140ca6fdeb6e` |
| 13 | `theorem` | [integral_comp_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integral-comp-mul-right--0e94ca78b5454a70f7fbeedc.md) | 163 | `result-track:0e94ca78b5454a70f7fbeedcd3ef27caa5a5b233bea3f6c6ecdbc3abc999a4ee` |
| 14 | `theorem` | [integral_comp_inv_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integral-comp-inv-mul-right--90948de4dcba201f8f86a4c6.md) | 167 | `result-track:90948de4dcba201f8f86a4c63e3dacce824d6f8a8c11fdf8b25298fa5e0c469c` |
| 15 | `theorem` | [integral_comp_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integral-comp-div--5d023bbcf61df03b0f690202.md) | 171 | `result-track:5d023bbcf61df03b0f6902022cd7c98070b2131b3205288e4491464e041a3165` |
| 16 | `theorem` | [integrable_comp_smul_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integrable-comp-smul-iff--ee3b43ec3082d293c3ddaf23.md) | 178 | `result-track:ee3b43ec3082d293c3ddaf23ed00f496c5e08a29684a21436030b8f448b9f7cc` |
| 17 | `theorem` | [Integrable.comp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integrable-comp-smul--a9995bace07021680c2f3c64.md) | 194 | `result-track:a9995bace07021680c2f3c645da0f52eac3133d5c930e3619abc28718522915e` |
| 18 | `theorem` | [integrable_comp_mul_left_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integrable-comp-mul-left-iff--db30b84971cb621e705aad2a.md) | 199 | `result-track:db30b84971cb621e705aad2a4acf1ee1bb86c6a9a03edaefa543bad5001fc413` |
| 19 | `theorem` | [Integrable.comp_mul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integrable-comp-mul-left--4c65bb1d5a54c712bcbc79af.md) | 203 | `result-track:4c65bb1d5a54c712bcbc79af3d916ce0a25ada8753f0c333c19f27a42be09a2d` |
| 20 | `theorem` | [integrable_comp_mul_right_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integrable-comp-mul-right-iff--424a23a64156552d822d52da.md) | 207 | `result-track:424a23a64156552d822d52da5002767d3d87bbe246bfee40cc553db3c44ef3aa` |
| 21 | `theorem` | [Integrable.comp_mul_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integrable-comp-mul-right--bb426067e2e3b04816c6776f.md) | 211 | `result-track:bb426067e2e3b04816c6776f481b508aaa2fc1593cf22520da731a510def8e56` |
| 22 | `theorem` | [integrable_comp_div_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integrable-comp-div-iff--2c1b8f0ec7f0b6272de28c74.md) | 215 | `result-track:2c1b8f0ec7f0b6272de28c7401d942997662cafa39c423e919a28da5c603a1b1` |
| 23 | `theorem` | [Integrable.comp_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integrable-comp-div--b98a091d3391538cd03482ee.md) | 219 | `result-track:b98a091d3391538cd03482ee8cfd56a9391fb307535e586d49702e9a20919119` |
| 24 | `theorem` | [integrable_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integrable-comp--4e299ecdb5b821e83757cf3a.md) | 234 | `result-track:4e299ecdb5b821e83757cf3af7e76fad3165690d4f92fe2708c3e0519ea5daa0` |
| 25 | `theorem` | [integral_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantffda340b07278488a3efd0e1bc91f92ae3a0e4e14cdac0c52fd8322c39fe87a5.lean/declarations/integral-comp--92a4b4fe4089b2306519670d.md) | 237 | `result-track:92a4b4fe4089b2306519670d648e2bb14c48d1f327818b6e566eb8ec79932926` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
