# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaMomentMeasure.Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d61a97bbbef77b66bc2c13cda190b37bd32491b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d61a97bbbef77b66bc2c13cda190b37bd32491b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/sourcemeasure--9cc4cf4d08809f413d72e06c.md) | 30 | `declaration-track:9cc4cf4d08809f413d72e06c37231fb70150307709f8cba70b862aaf8ebd6874` |
| 2 | `def` | [momentMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/momentmeasure--bd33fab761db04fc3fcfab02.md) | 34 | `declaration-track:bd33fab761db04fc3fcfab024e64dd8e6335dae9d2761818750eae01ce9a708a` |
| 3 | `def` | [moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/moment--88f3bfaa1dfc65baceaf9a85.md) | 38 | `declaration-track:88f3bfaa1dfc65baceaf9a85ff4b2d31ac8d74f2b47a455fd936d62469c93e93` |
| 4 | `theorem` | [density_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/density-measurable--10912e57805f28d83e5ced9a.md) | 40 | `result-track:10912e57805f28d83e5ced9a385cf64767608337870ac61dcaf892fca6a418d2` |
| 5 | `theorem` | [phi_nonnegative_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/phi-nonnegative-ae--f40ef2639f7ca8dfdedf5811.md) | 44 | `result-track:f40ef2639f7ca8dfdedf5811a2846e79d703206b3faa76230851e0e8c52a8ea0` |
| 6 | `theorem` | [source_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/source-power-integrable--113e3ae9c3c5e07e7dfbe184.md) | 50 | `result-track:113e3ae9c3c5e07e7dfbe1843b3d5cd30e1e6c841fbff98445c42396a0fbb671` |
| 7 | `theorem` | [sourceMeasure_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/sourcemeasure-power-integrable--efe0144d80cbb1f468c7d3b7.md) | 58 | `result-track:efe0144d80cbb1f468c7d3b786c66008d4d080f6be7e1e09387494c694aa5969` |
| 8 | `theorem` | [moment_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/moment-power-integrable--45e76c52b120bc79065ea050.md) | 67 | `result-track:45e76c52b120bc79065ea050a8bf24d4671f76ad9d4249452ff5630aa2db02e3` |
| 9 | `theorem` | [moment_eq_source_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/moment-eq-source-integral--609d7d76d8524e72d7065882.md) | 76 | `result-track:609d7d76d8524e72d70658826ef6c0642ff7e86bfef28264fb99ee7632396a32` |
| 10 | `theorem` | [moment_eq_factorial_mul_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/moment-eq-factorial-mul-thetatail--cf196ef370fc04e35e6f0885.md) | 88 | `result-track:cf196ef370fc04e35e6f08853c4c2450e14c877996b4ce5c2f31035d3509ec35` |
| 11 | `theorem` | [moment_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/moment-positive--ce3633fa035ac291c951f7e0.md) | 99 | `result-track:ce3633fa035ac291c951f7e0fc66deb91a6afea31438a6985cfefca4bf958184` |
| 12 | `theorem` | [moment_le_factorial_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/moment-le-factorial-bound--cea9dbcd115525335a4a765b.md) | 104 | `result-track:cea9dbcd115525335a4a765bc5b0261f24a150d64293d4cbae090264c0f0ad06` |
| 13 | `theorem` | [momentMeasure_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/momentmeasure-finite--3139177b10d4c24dd7ca947b.md) | 111 | `result-track:3139177b10d4c24dd7ca947b7fe9de8a86a214476eb9746ba0ca4e59d25b4944` |
| 14 | `theorem` | [momentMeasure_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/momentmeasure-ne-zero--f9dd21791b5643acf3222fc2.md) | 116 | `result-track:f9dd21791b5643acf3222fc2a87c8c30ec8472bbbb718f87918cc5ad24812d99` |
| 15 | `theorem` | [momentMeasure_nonnegative_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/momentmeasure-nonnegative-ae--d63b2700cabcfe8f10ec47cf.md) | 122 | `result-track:d63b2700cabcfe8f10ec47cf06ce2a7f27d4299a4906a5e8b40654297b1434fa` |
| 16 | `theorem` | [integral_momentMeasure_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/integral-momentmeasure-eq-source--9c82671e2dee4b38c523260a.md) | 134 | `result-track:9c82671e2dee4b38c523260a19bbff032df4f6ff896bc5f5d0dfc63ab4661dd5` |
| 17 | `theorem` | [integrable_momentMeasure_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/integrable-momentmeasure-iff--ce5d814d37d2a2e7a741ed1f.md) | 147 | `result-track:ce5d814d37d2a2e7a741ed1f9ec821aed2baf3963a6f7b827e1f8eec54a8058b` |
| 18 | `theorem` | [polynomial_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/polynomial-integrable--c909fd72e6baa36ee3b6008d.md) | 161 | `result-track:c909fd72e6baa36ee3b6008d6a7caa4d207f27d26a3bfb079f179cb3fcb4ed81` |
| 19 | `theorem` | [polynomial_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/polynomial-square-integrable--76bc9e8f325ea78382d1dc51.md) | 168 | `result-track:76bc9e8f325ea78382d1dc518b02afa00f567b43d65f0cd151ee9f3c1dc39f06` |
| 20 | `theorem` | [polynomial_square_integral_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/polynomial-square-integral-positive--8ed4d88a26afda57982908c1.md) | 174 | `result-track:8ed4d88a26afda57982908c173bba2f44c975683cf06f74906202a4ad6b509f2` |
| 21 | `theorem` | [moment_zero_eq_thetaTail_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/moment-zero-eq-thetatail-one--f6431fe38a5bb9d7ec17cc14.md) | 208 | `result-track:f6431fe38a5bb9d7ec17cc14513a191548de134c77ccb7c320b89b3fed222f0d` |
| 22 | `def` | [initialDiagonal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/initialdiagonal--2103a40384a7e2369f55cc60.md) | 213 | `declaration-track:2103a40384a7e2369f55cc607181ca5b16683fc17bf62675f87e78a959ce840f` |
| 23 | `def` | [initialOffDiagonalSquared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/initialoffdiagonalsquared--c957880282be024a2f3952d8.md) | 216 | `declaration-track:c957880282be024a2f3952d887706d6132d7a3461e518361459461f3e6c6b347` |
| 24 | `theorem` | [initialDiagonal_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/initialdiagonal-positive--e9f8620501d107d659921a62.md) | 220 | `result-track:e9f8620501d107d659921a6281aa79e07c508a833d4e3d721816fc1b78a98b8b` |
| 25 | `theorem` | [centered_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/centered-square-integral--d86e6059bc1d1af3094926df.md) | 224 | `result-track:d86e6059bc1d1af3094926df85136b9ed58c8c30fa8d4d803f860aa91c096652` |
| 26 | `theorem` | [centered_square_integral_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/centered-square-integral-positive--c3f348583f6509ab9056fde9.md) | 244 | `result-track:c3f348583f6509ab9056fde9b0c0818ebe991252ca4f14baf1a3d5905c2e2369` |
| 27 | `theorem` | [initialOffDiagonalSquared_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/initialoffdiagonalsquared-positive--c2f12205fc6e647ffd037b35.md) | 253 | `result-track:c2f12205fc6e647ffd037b357558810dc7b8e9718784139d6497af5fa0f2f1e3` |
| 28 | `def` | [initialOffDiagonal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/initialoffdiagonal--a6f6e327644c17b713141950.md) | 270 | `declaration-track:a6f6e327644c17b7131419507bd3afc512190558c73fbcd4267fb55212875f35` |
| 29 | `theorem` | [initialOffDiagonal_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/initialoffdiagonal-positive--723a85bf251b64cbf59d9ff6.md) | 273 | `result-track:723a85bf251b64cbf59d9ff6197663f7bef5e05bb7ab0bcc90ed038184faeb61` |
| 30 | `theorem` | [initialOffDiagonal_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/initialoffdiagonal-sq--092302a21e9840cfcdefd5d7.md) | 277 | `result-track:092302a21e9840cfcdefd5d7408342cefec33ee6ea3396441815905d5deebd78` |
| 31 | `theorem` | [initialDiagonal_eq_tail_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/initialdiagonal-eq-tail-ratio--021b945fb530a6c1c04f7a18.md) | 282 | `result-track:021b945fb530a6c1c04f7a1880bc80a44ed366dd5b59b72070f7ad9eeae31a76` |
| 32 | `theorem` | [initialOffDiagonalSquared_eq_tail_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/initialoffdiagonalsquared-eq-tail-ratio--9de613a095de9e75125da3f2.md) | 289 | `result-track:9de613a095de9e75125da3f244335dfca2550ed329747400bfced0f26cf70ccc` |
| 33 | `def` | [cyclicVectorNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/cyclicvectornorm--1ece6031dd6b5dd05ace16aa.md) | 298 | `declaration-track:1ece6031dd6b5dd05ace16aaeac322c7aa9d7fa3b840edde2354c670dd554e5e` |
| 34 | `theorem` | [cyclicVectorNorm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/cyclicvectornorm-sq--2be097fa88703138cd223851.md) | 301 | `result-track:2be097fa88703138cd223851be7c74c15a058ae1bfcced4bdc3f82fd6327fd15` |
| 35 | `theorem` | [sourceMeasure_dominates_restricted_volume](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/sourcemeasure-dominates-restricted-volume--d71985398bd9f8a630541d11.md) | 307 | `result-track:d71985398bd9f8a630541d11338b7d35fa0eb79bf86b78aec19544638c4f2ecc` |
| 36 | `theorem` | [momentMeasure_Ioi_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/momentmeasure-ioi-positive--2b6a69b00ef48c5c7fad9c5a.md) | 316 | `result-track:2b6a69b00ef48c5c7fad9c5adc5b38a62155b0a2433612e57118fb79a96d10ee` |
| 37 | `theorem` | [exponential_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/exponential-majorant-integrable--c4e922a695c0392afbf49dc4.md) | 340 | `result-track:c4e922a695c0392afbf49dc4eb272f0cb216439bca7b8076ea39f7d1bf2f2ac1` |
| 38 | `theorem` | [source_exp_le_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/source-exp-le-majorant--defde504b3a9e12ef705a3d7.md) | 347 | `result-track:defde504b3a9e12ef705a3d778b36fb2a6eaa6cb001f9847e786b4967f755282` |
| 39 | `theorem` | [exponential_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/exponential-integrable--6777315871603dcee62fd618.md) | 360 | `result-track:6777315871603dcee62fd61833bef27ff9f94c8c97720752ca9aa17c52bc801b` |
| 40 | `theorem` | [exponential_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/exponential-integral-le--b850a1821c0ca8463d85b12f.md) | 374 | `result-track:b850a1821c0ca8463d85b12fb1fa5191d706a50c03dc9991a8930f884136643d` |
| 41 | `theorem` | [even_moment_tail_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/even-moment-tail-lower--a442e7b7e59e3713bd0e74fa.md) | 402 | `result-track:a442e7b7e59e3713bd0e74fa2b33671d458697aba9d8a36bf8851a60caf745ec` |
| 42 | `theorem` | [no_geometric_even_moment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/declarations/no-geometric-even-moment-bound--3aaeb7f3fa38b333dd9f3167.md) | 424 | `result-track:3aaeb7f3fa38b333dd9f3167df8a150e96e00078087ec10af8cf9df0060e3214` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
