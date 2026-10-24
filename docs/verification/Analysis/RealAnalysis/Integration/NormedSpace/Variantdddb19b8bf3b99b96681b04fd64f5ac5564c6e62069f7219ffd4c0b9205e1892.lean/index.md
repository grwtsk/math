# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NormedSpace.Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0196db245a689af1ea0980815b816b17bfcbd643",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0196db245a689af1ea0980815b816b17bfcbd643`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/example--1c891c7e0b0942ec7e53f1a8.md) | 26 | `declaration-track:1c891c7e0b0942ec7e53f1a89e23e61d7078c9ef03c41bc8423d381db3f05fc5` |
| 2 | `instance` | [MapLinearEquiv.isAddHaarMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/maplinearequiv-isaddhaarmeasure--9451beaec6ea5fa968b0d66d.md) | 39 | `declaration-track:9451beaec6ea5fa968b0d66df158706675f7fd592c39e22d14384b8c5452a8ba` |
| 3 | `lemma` | [_root_.MonoidHom.exists_nhds_isBounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/root-monoidhom-exists-nhds-isbounded--54c29b9af7b0b8f728eb4ea8.md) | 52 | `result-track:54c29b9af7b0b8f728eb4ea889f035a1b4f30b5301ebd810efcf43371acf864a` |
| 4 | `lemma` | [AddMonoidHom.continuous_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/addmonoidhom-continuous-of-measurable--dd03ed22c4575ed57d568159.md) | 74 | `result-track:dd03ed22c4575ed57d568159a2bab63a58f512c3aa64ec024a903a92e78e1957` |
| 5 | `theorem` | [integral_comp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integral-comp-smul--3d252054e5aabf87d3c6a108.md) | 87 | `result-track:3d252054e5aabf87d3c6a108d5c482ac9d23ec556746671fedf8c7c78f6a43ed` |
| 6 | `theorem` | [integral_comp_smul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integral-comp-smul-of-nonneg--80659e28196800b68e88f4dc.md) | 110 | `result-track:80659e28196800b68e88f4dc536bf6343f36bbedae82c9cac17dd319068934af` |
| 7 | `theorem` | [integral_comp_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integral-comp-inv-smul--6d010d041858f9d0a7c55fa4.md) | 117 | `result-track:6d010d041858f9d0a7c55fa4643970bbfc8fcdb6c4fef7a728085fd8d99401b0` |
| 8 | `theorem` | [integral_comp_inv_smul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integral-comp-inv-smul-of-nonneg--4ef293ea29a8627010ac2d67.md) | 124 | `result-track:4ef293ea29a8627010ac2d67fdd97a7c5b2c39cd0af6f54dd8c713beac0e9d49` |
| 9 | `theorem` | [setIntegral_comp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/setintegral-comp-smul--57cb0d2d2ade9bafa31935ca.md) | 128 | `result-track:57cb0d2d2ade9bafa31935ca01c2b749ee3f9b7d503f445746cd400a60b20a9c` |
| 10 | `theorem` | [setIntegral_comp_smul_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/setintegral-comp-smul-of-pos--bab0445d9b5a5dbb6246dbd7.md) | 143 | `result-track:bab0445d9b5a5dbb6246dbd74b9ff6cc75e43f17580ab5a28f8f165568b33362` |
| 11 | `theorem` | [integral_comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integral-comp-mul-left--820530f82921ddf52e5703b9.md) | 147 | `result-track:820530f82921ddf52e5703b923a47e47cf1b9085db7c1ff2da829a0fba525f41` |
| 12 | `theorem` | [integral_comp_inv_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integral-comp-inv-mul-left--8b162ba84dc5eca5ae231966.md) | 151 | `result-track:8b162ba84dc5eca5ae2319666b3f9e2c8babf542e4125453defdbfdbffb16c63` |
| 13 | `theorem` | [integral_comp_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integral-comp-mul-right--0709b8ef9f851e500a1328fa.md) | 155 | `result-track:0709b8ef9f851e500a1328faf0cb41e199d43f5bfb230051d4749fb53f8fffee` |
| 14 | `theorem` | [integral_comp_inv_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integral-comp-inv-mul-right--71e18f935fd88d900c615ee6.md) | 159 | `result-track:71e18f935fd88d900c615ee6444588490df8be6f83ca409c46f00cc4a86fe3c8` |
| 15 | `theorem` | [integral_comp_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integral-comp-div--7503246c7596b69068f2e031.md) | 163 | `result-track:7503246c7596b69068f2e0319219f436f6bf292fab40882925ac2ea4ee5b2b3c` |
| 16 | `theorem` | [integrable_comp_smul_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integrable-comp-smul-iff--b11d23649a803f61ffd89d08.md) | 170 | `result-track:b11d23649a803f61ffd89d0809d3df93ecb26ff5b3289099c6a9a2d43dc369ee` |
| 17 | `theorem` | [Integrable.comp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integrable-comp-smul--64f384bc66bb16a0a4acc8a9.md) | 186 | `result-track:64f384bc66bb16a0a4acc8a96e95b08054e58cd09181bc4562c7c6bdcddf864d` |
| 18 | `theorem` | [integrable_comp_mul_left_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integrable-comp-mul-left-iff--3bba03af1b98543ea5aab3cb.md) | 191 | `result-track:3bba03af1b98543ea5aab3cbf6b4065f14b27aa4e3de078d359a1f50d7e3e53b` |
| 19 | `theorem` | [Integrable.comp_mul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integrable-comp-mul-left--2e22f3bbbe94eabf176a3d41.md) | 195 | `result-track:2e22f3bbbe94eabf176a3d4184acdd4b7b9d5a3d298e310b452edbf33099cc20` |
| 20 | `theorem` | [integrable_comp_mul_right_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integrable-comp-mul-right-iff--11061bbc6631ef7565b7d773.md) | 199 | `result-track:11061bbc6631ef7565b7d7735c0b13235e5e8578fce9975643fc753d56064ffb` |
| 21 | `theorem` | [Integrable.comp_mul_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integrable-comp-mul-right--9041267a364f64ccf5ec76b2.md) | 203 | `result-track:9041267a364f64ccf5ec76b2544ba03d596d6d04dbee3beb873dfd2f2d5f4f25` |
| 22 | `theorem` | [integrable_comp_div_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integrable-comp-div-iff--1079b6ef26e8b4433ed205bf.md) | 207 | `result-track:1079b6ef26e8b4433ed205bf0fcdefaa17cb559ea8a7cd420a37363026754415` |
| 23 | `theorem` | [Integrable.comp_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integrable-comp-div--6e1b206d08a5bcdbdf46b11e.md) | 211 | `result-track:6e1b206d08a5bcdbdf46b11e9ab1cc6a37f5ab75d2298bcf04d63fbb73597ae7` |
| 24 | `theorem` | [integrable_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integrable-comp--914ec124a9daf5f96fa3d551.md) | 226 | `result-track:914ec124a9daf5f96fa3d55126479d5d79218c15ce02136f569e7bfc57315ee6` |
| 25 | `theorem` | [integral_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/declarations/integral-comp--021e5a19f60f26b8901cf494.md) | 229 | `result-track:021e5a19f60f26b8901cf494b3f9195a14c5d51dced4f7e40c6315b436c569b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
