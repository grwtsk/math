# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousLinearMap.Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bc7c385db5891e663e4cac9a7af68fbfa474d41",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bc7c385db5891e663e4cac9a7af68fbfa474d41`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.SeparatingDual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousMapZero` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_compLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-complp--e195f5f264c1596849887065.md) | 38 | `result-track:e195f5f264c159684988706594bcdb74ab1105253f033b440aa38c99276bc41c` |
| 2 | `theorem` | [setIntegral_compLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/setintegral-complp--4c08690dbec1005703ff2809.md) | 42 | `result-track:4c08690dbec1005703ff2809822e77edcac7153eab21af0744afaefb38c18f07` |
| 3 | `theorem` | [continuous_integral_comp_L1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/continuous-integral-comp-l1--dbeda317ab1dc2b8ad433dbd.md) | 46 | `result-track:dbeda317ab1dc2b8ad433dbd0e2ac847e82b5bdc92d9dcbcff8a3e826263f505` |
| 4 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-comp-comm--b78ddd279e57a8d1ece419a7.md) | 52 | `result-track:b78ddd279e57a8d1ece419a70df62e8cc3b53b81a3de89eb1608ad008a9e2da6` |
| 5 | `theorem` | [integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-apply--5928b0b0521d70de51b66fd6.md) | 70 | `result-track:5928b0b0521d70de51b66fd6eb6774b7fc10c0cca362e4ca0752f108d0028aac` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralCompLp.Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.ContinuousMultilinearMap.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/root-grwtsk-analysis-realanalysis-integration-integralcomplp-variante665--64181f9c2ef884e18f9a9245.md) | 80 | `result-track:64181f9c2ef884e18f9a9245c489fa2677763da899fd09e9917d6b53e13c6667` |
| 7 | `theorem` | [integral_comp_comm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-comp-comm--87e71e11236b57c47613df0b.md) | 96 | `result-track:87e71e11236b57c47613df0b7c0643cfedfd68a8eb5b91a6cbf4d66d811c46cc` |
| 8 | `theorem` | [integral_comp_L1_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-comp-l1-comm--6426e978d07d7414cc0308ce.md) | 105 | `result-track:6426e978d07d7414cc0308ce47e3cc8b06a5f8252995e22c34a1b105c281ce05` |
| 9 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-comp-comm--30f1f7894940afd93c668d79.md) | 115 | `result-track:30f1f7894940afd93c668d793220173b92203cf6cabba63a4f5341e3aa17bd75` |
| 10 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-comp-comm--4a09efe322100a948409d46f.md) | 124 | `result-track:4a09efe322100a948409d46f88d1c9d503a4ddd7711e55a2011e86ebb85f25ed` |
| 11 | `lemma` | [ContinuousMap.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/continuousmap-integral-apply--270905ad1b51314d3f8da6b5.md) | 137 | `result-track:270905ad1b51314d3f8da6b5c3bc2cf2e9481da48db1aca31304b46272925048` |
| 12 | `theorem` | [ContinuousMapZero.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/continuousmapzero-integral-apply--5da9f0b2ec68282b619bde17.md) | 145 | `result-track:5da9f0b2ec68282b619bde17cc8a462952c8c205c76af7af0131eff433174026` |
| 13 | `theorem` | [integral_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-ofreal--acc94c1071f4acb74804234b.md) | 157 | `result-track:acc94c1071f4acb74804234bd4802824ae01a4fdc06e9ebc611970218a246f08` |
| 14 | `theorem` | [integral_complex_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-complex-ofreal--e7895c7ab4018923a0937cb5.md) | 160 | `result-track:e7895c7ab4018923a0937cb5fae402b2c7585ebbdf1ddfea595941144ae70020` |
| 15 | `theorem` | [integral_re](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-re--650bb39c5543c79674c89b7f.md) | 162 | `result-track:650bb39c5543c79674c89b7fa99552381f2540852218a93b6c168640909a4e54` |
| 16 | `theorem` | [integral_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-im--bf404a743db551d15e54aca3.md) | 166 | `result-track:bf404a743db551d15e54aca330695c67a9f6fa11f43d483e0e5e8b0c69cbe0ac` |
| 17 | `theorem` | [integral_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-conj--7855e33bc39eb41fbcceee9e.md) | 171 | `result-track:7855e33bc39eb41fbcceee9ed892653cec0063f6d2bd856ad8316a1dfff273c3` |
| 18 | `theorem` | [integral_coe_re_add_coe_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-coe-re-add-coe-im--80fb80a9962bc3d0bc55ad12.md) | 174 | `result-track:80fb80a9962bc3d0bc55ad12492699069c7fe7cf43f2c0e3480ffcde3ce23198` |
| 19 | `theorem` | [integral_re_add_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-re-add-im--8542039374ca2fb5505bc5e6.md) | 183 | `result-track:8542039374ca2fb5505bc5e6e4846e52e06ccb0431f4bb554c2a8ba220946045` |
| 20 | `theorem` | [setIntegral_re_add_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/setintegral-re-add-im--73be6557a980875f15059d7f.md) | 188 | `result-track:73be6557a980875f15059d7fd203d3646483593c51d2ca32548e43442214b15f` |
| 21 | `lemma` | [swap_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/swap-integral--804eb4da2cd0ced86a9224cf.md) | 195 | `result-track:804eb4da2cd0ced86a9224cfb227ae75e615049a77ad4ac29c0e7a52351612db` |
| 22 | `theorem` | [fst_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/fst-integral--abad5ff0ebfdb5c89b8f97d9.md) | 198 | `result-track:abad5ff0ebfdb5c89b8f97d9558dc59ca6435c5085c8ce9b0ce9110086e4fa7f` |
| 23 | `theorem` | [snd_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/snd-integral--aa8677574d4f5c87d0371b05.md) | 205 | `result-track:aa8677574d4f5c87d0371b0529f1e5553f4f07e479be2e0bdc384559b20ad85b` |
| 24 | `theorem` | [integral_pair](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-pair--fe245554630baa8c1c02c89c.md) | 210 | `result-track:fe245554630baa8c1c02c89cdb90dc34baee4cdf81ecf5e8774b6f0aadcffbb7` |
| 25 | `theorem` | [integral_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-smul-const--16c0930833c93fb1b90f459a.md) | 216 | `result-track:16c0930833c93fb1b90f459a1b5db439a213ef82b150134c8a61f1d84acd658c` |
| 26 | `lemma` | [integral_const_mul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-const-mul-of-integrable--8a4d486913e1edec9bf8e7c0.md) | 231 | `result-track:8a4d486913e1edec9bf8e7c083fc4561bf8847ab741cf5bebae4f68b3e1cf463` |
| 27 | `lemma` | [integral_mul_const_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-mul-const-of-integrable--20a141dff89b8b3bd631bf1d.md) | 239 | `result-track:20a141dff89b8b3bd631bf1daed99c1f5d8b6e71e7fa539951025053ea44ecde` |
| 28 | `theorem` | [integral_withDensity_eq_integral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-withdensity-eq-integral-smul--d7537066d585384c1351a8e6.md) | 248 | `result-track:d7537066d585384c1351a8e60927607f09c53c2adc2575001bc643fb8a80c0ac` |
| 29 | `theorem` | [integral_withDensity_eq_integral_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-withdensity-eq-integral-smul--7d4c91b0bb63f3c5a4d04768.md) | 293 | `result-track:7d4c91b0bb63f3c5a4d04768ee2ed4b23484de7bc17d5f4ff36e9cf757e9b4b4` |
| 30 | `theorem` | [integral_withDensity_eq_integral_toReal_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-withdensity-eq-integral-toreal-smul--4eab341f3c5e2981a3a3ce23.md) | 308 | `result-track:4eab341f3c5e2981a3a3ce2300266b8a3f54fb831a92ab5e39ae05169c05b981` |
| 31 | `theorem` | [integral_withDensity_eq_integral_toReal_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/integral-withdensity-eq-integral-toreal-smul--b1c9dc2185959a6cf58fb989.md) | 315 | `result-track:b1c9dc2185959a6cf58fb9891bfdd1a537466ed2242a98cb5bf5ce0957914b65` |
| 32 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/setintegral-withdensity-eq-setintegral-smul--ff692826ff18f722d7940b91.md) | 320 | `result-track:ff692826ff18f722d7940b91adebe29eb8612b63dcca9cae5ed9ef102e3d34a1` |
| 33 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--cba1ac6982e15967d5545f1c.md) | 325 | `result-track:cba1ac6982e15967d5545f1c3e026c32ed245999967259d2e56570e52784e4fe` |
| 34 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/setintegral-withdensity-eq-setintegral-smul--2250afda8f3fde6954e5d733.md) | 331 | `result-track:2250afda8f3fde6954e5d7331b8f69fb3d46c6b6d8533c1ed3deb02c342e67d5` |
| 35 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--1d85f74047abec3093120b08.md) | 336 | `result-track:1d85f74047abec3093120b08f2bec36ce37feab40f92371d6176737fd13617b3` |
| 36 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul₀'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/setintegral-withdensity-eq-setintegral-smul--430bced0b528803c52086481.md) | 341 | `result-track:430bced0b528803c52086481af9c20180c502fda418069126aefe708a33362bf` |
| 37 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul₀'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--9fa77599fac738ad0801bbdf.md) | 346 | `result-track:9fa77599fac738ad0801bbdf61afbd4e43898095d850dfc0a325e20fe61546e7` |
| 38 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--f6837293ba4fb18223c0b475.md) | 351 | `result-track:f6837293ba4fb18223c0b47552c69184133e31711d673643c27a4a5368170710` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
