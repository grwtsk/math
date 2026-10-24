# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AbelSummation.Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e3e8f6bb2a458dfb4cb9a6b5aabce18b9847f4b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e3e8f6bb2a458dfb4cb9a6b5aabce18b9847f4b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.Floor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IsLocallyClosed` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sumlocc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/sumlocc--46649583037ef85d28ad69bd.md) | 54 | `result-track:46649583037ef85d28ad69bd398da06a755de9c78ae50614a0792341baf86f04` |
| 2 | `theorem` | [integralmulsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/integralmulsum--eb18fa2372fde46529689bf3.md) | 60 | `result-track:eb18fa2372fde46529689bf35daa50c068392d96eb82eb9ef8cdfe993fb0b77f` |
| 3 | `theorem` | [ineqofmemIco](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/ineqofmemico--bb9ce33051eefd5c6063832e.md) | 76 | `result-track:bb9ce33051eefd5c6063832e4948330f21ea09a40adc98bcc4d16d7e9c70c4cc` |
| 4 | `theorem` | [ineqofmemIco'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/ineqofmemico--f9bb21f40bc564f46d24975a.md) | 84 | `result-track:f9bb21f40bc564f46d24975acfacde5b0ff380a6182eebf482952e8f8c41ccb5` |
| 5 | `theorem` | [_root_.integrableOn_mul_sum_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/root-integrableon-mul-sum-icc--dd22fb3f457794e23b7734f4.md) | 88 | `result-track:dd22fb3f457794e23b7734f415e4b33f30ebba7f2cac439cda6379e1067f3130` |
| 6 | `theorem` | [_root_.sum_mul_eq_sub_sub_integral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/root-sum-mul-eq-sub-sub-integral-mul--ee3abfe5593a35cfd5cf1ed1.md) | 125 | `result-track:ee3abfe5593a35cfd5cf1ed1ef3a4e856d99fb1ebb97e9a2e15d1be6e8a568d8` |
| 7 | `theorem` | [_root_.sum_mul_eq_sub_sub_integral_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/root-sum-mul-eq-sub-sub-integral-mul--334c0957f08146dd787c246f.md) | 171 | `result-track:334c0957f08146dd787c246ffe6c8997a5d1a53587308d9d6e48e49b0f3a8996` |
| 8 | `theorem` | [sum_mul_eq_sub_integral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/sum-mul-eq-sub-integral-mul--8e9f6a029b6044957e603a25.md) | 185 | `result-track:8e9f6a029b6044957e603a25ee5811fc06ef9e1321cdefd70873f040dda094aa` |
| 9 | `theorem` | [sum_mul_eq_sub_integral_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/sum-mul-eq-sub-integral-mul--2c44fa3281ba7d5041080baf.md) | 196 | `result-track:2c44fa3281ba7d5041080baf5016651e6abb7f1e4f180e0282327d116ba66907` |
| 10 | `theorem` | [sum_mul_eq_sub_integral_mul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/sum-mul-eq-sub-integral-mul--adcea0299160d873aa4fb111.md) | 207 | `result-track:adcea0299160d873aa4fb111847787cefac68f481e096c7d761cbbc061f91e41` |
| 11 | `theorem` | [sum_mul_eq_sub_integral_mul₀'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/sum-mul-eq-sub-integral-mul--9bec55b66a2e58056c61db72.md) | 225 | `result-track:9bec55b66a2e58056c61db7255bcf65e38d67ad14d7eb72a8f51c6cf61ea66fa` |
| 12 | `theorem` | [locallyIntegrableOn_mul_sum_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/locallyintegrableon-mul-sum-icc--e6bd2f42ec14f1429151bab2.md) | 240 | `result-track:e6bd2f42ec14f1429151bab2e5145d1f4197b03d47ae4c24ce9181e920c72fc9` |
| 13 | `theorem` | [tendsto_sum_mul_atTop_nhds_one_sub_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/tendsto-sum-mul-attop-nhds-one-sub-integral--fa6145f22673c869ab0996f6.md) | 253 | `result-track:fa6145f22673c869ab0996f69ca5acb60dcd436284612f6e6d023ea93cdcd533` |
| 14 | `theorem` | [tendsto_sum_mul_atTop_nhds_one_sub_integral₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/tendsto-sum-mul-attop-nhds-one-sub-integral--8c29966f91c0c2c3c74c8845.md) | 272 | `result-track:8c29966f91c0c2c3c74c8845157b8b5a6ce34afa517b2857ada341451bea1f11` |
| 15 | `theorem` | [summable_mul_of_bigO_atTop_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/summable-mul-of-bigo-attop-aux--2beb40902ea4db40d9ee0c43.md) | 300 | `result-track:2beb40902ea4db40d9ee0c43e2f6b741196dc0ac9559a8b5638566c3c04e352c` |
| 16 | `theorem` | [summable_mul_of_bigO_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/summable-mul-of-bigo-attop--055d620651dafb2b30f5f29c.md) | 340 | `result-track:055d620651dafb2b30f5f29cecec6005e4e219e8f942df0f3a0071eff3d5266c` |
| 17 | `theorem` | [summable_mul_of_bigO_atTop'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/declarations/summable-mul-of-bigo-attop--c03600d26e4b01307b7157ec.md) | 352 | `result-track:c03600d26e4b01307b7157eca0eecc1f8c72e0f57e5810f262e3f9fcbb2a7580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
