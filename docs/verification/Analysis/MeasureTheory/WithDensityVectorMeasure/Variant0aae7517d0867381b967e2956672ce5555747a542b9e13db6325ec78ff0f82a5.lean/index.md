# Verification target: GRWTSK.Analysis.MeasureTheory.WithDensityVectorMeasure.Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aadae740df5f367123a2070536a547b879ff3b5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aadae740df5f367123a2070536a547b879ff3b5`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.VectorMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.withDensityᵥ](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/measure-withdensity--de1cea71589266d954490a39.md) | 43 | `declaration-track:de1cea71589266d954490a39d371f882f4d798b9b84809068a2da5fa76b415d2` |
| 2 | `theorem` | [withDensityᵥ_apply](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-apply--0249fdba5dd1508040c02cc3.md) | 60 | `result-track:0249fdba5dd1508040c02cc34ecce5f8f0ade05eb0e360af01f1868786cd724c` |
| 3 | `theorem` | [withDensityᵥ_zero](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-zero--cd55bdfee1ebb53763a6f32a.md) | 65 | `result-track:cd55bdfee1ebb53763a6f32a182a9595734ada8b9ba08bbc632c2e9648ad7521` |
| 4 | `theorem` | [withDensityᵥ_neg](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-neg--07e8d6093a1a187e4bc01121.md) | 70 | `result-track:07e8d6093a1a187e4bc01121d06d39c04c820464fdca2e06ebf6c488f0b5471b` |
| 5 | `theorem` | [withDensityᵥ_neg'](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-neg--dc84a123d9324e648e27a3a6.md) | 80 | `result-track:dc84a123d9324e648e27a3a68004fe484df0022a7b373da8ea8574267f08c741` |
| 6 | `theorem` | [withDensityᵥ_add](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-add--3c514b59f2a52f473d8c8c3e.md) | 85 | `result-track:3c514b59f2a52f473d8c8c3ec8e75af4b2b13a016df28ae1cba9bcb5a60b36a9` |
| 7 | `theorem` | [withDensityᵥ_add'](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-add--7f57a05feb6a04a8f96383d0.md) | 96 | `result-track:7f57a05feb6a04a8f96383d086864a470a493c70b037bb477f5016074c94aec9` |
| 8 | `theorem` | [withDensityᵥ_sub](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-sub--084bb7d948e79d4c09610ccd.md) | 102 | `result-track:084bb7d948e79d4c09610ccd37f2b82a359cffba28ee3be29bab5e73ffe56659` |
| 9 | `theorem` | [withDensityᵥ_sub'](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-sub--120ba073e9eb7c8d68c9e975.md) | 107 | `result-track:120ba073e9eb7c8d68c9e975ba217d2dbbb1a4e1dc4d3de49a6cd40e3d395f3b` |
| 10 | `theorem` | [withDensityᵥ_smul](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-smul--627fcd155a60e0b738f8ce65.md) | 113 | `result-track:627fcd155a60e0b738f8ce658a8516d72f3b8b255b1a93935a03009150197d42` |
| 11 | `theorem` | [withDensityᵥ_smul'](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-smul--d05462f7fdf7a9bf05049716.md) | 126 | `result-track:d05462f7fdf7a9bf05049716a7ce4e1aae171e38de7cfb3b768e01c94ca54ff9` |
| 12 | `theorem` | [Measure.withDensityᵥ_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/measure-withdensity-absolutelycontinuous--2bb5d7424bc9ed66b164a3a6.md) | 132 | `result-track:2bb5d7424bc9ed66b164a3a65200e2e98bd52fab490733598ef1642dc7f7818b` |
| 13 | `theorem` | [Integrable.ae_eq_of_withDensityᵥ_eq](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/integrable-ae-eq-of-withdensity-eq--abc5a70a20a39b727eaad8c3.md) | 143 | `result-track:abc5a70a20a39b727eaad8c32e659c449e7701ca6244ffe21da83416b0bdd6d5` |
| 14 | `theorem` | [WithDensityᵥEq.congr_ae](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-eq-congr-ae--68d59876ace76466d1185cb4.md) | 149 | `result-track:68d59876ace76466d1185cb400ef6950990c2612c4aa4a335b284ed9cb602f11` |
| 15 | `theorem` | [Integrable.withDensityᵥ_eq_iff](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/integrable-withdensity-eq-iff--902a69d1f7d1d5aeb5b84e21.md) | 159 | `result-track:902a69d1f7d1d5aeb5b84e218ae8454d30146ff15a00193de9fdc80d649bc805` |
| 16 | `theorem` | [withDensityᵥ_toReal](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-toreal--3209d2c3e89347bc08733ec7.md) | 166 | `result-track:3209d2c3e89347bc08733ec7928717b79f01dfe0f00f36d262e18605467e32a6` |
| 17 | `theorem` | [withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/withdensity-eq-withdensity-pos-part-sub-withdensity-neg-part--935de7b760aba90d41ab8dc7.md) | 179 | `result-track:935de7b760aba90d41ab8dc75eeccca6b6f83b781a403d8161df8b145576400a` |
| 18 | `theorem` | [Integrable.withDensityᵥ_trim_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/integrable-withdensity-trim-eq-integral--7eae8daf62c7bf99f9655fad.md) | 195 | `result-track:7eae8daf62c7bf99f9655fad2c4c924092ebfff1daef306ae4973fa0898ab86b` |
| 19 | `theorem` | [Integrable.withDensityᵥ_trim_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/declarations/integrable-withdensity-trim-absolutelycontinuous--01c9eafc700c7375f67f8281.md) | 201 | `result-track:01c9eafc700c7375f67f8281c7a0321bbbfa3413077249ecf065664f2e5663c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
