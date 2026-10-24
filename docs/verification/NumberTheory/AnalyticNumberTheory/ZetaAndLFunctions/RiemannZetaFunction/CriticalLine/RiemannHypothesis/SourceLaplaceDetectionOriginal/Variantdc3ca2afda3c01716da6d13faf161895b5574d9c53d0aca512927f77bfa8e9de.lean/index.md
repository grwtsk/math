# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceLaplaceDetectionOriginal.Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95b55d351c24351f84fe6c6b52562e0fb7a37e6e",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95b55d351c24351f84fe6c6b52562e0fb7a37e6e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.GeneralizedPoleMoments` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceBumpLaplace` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bilateralLaplace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/bilaterallaplace--444e1fe23d453adefcd8df21.md) | 26 | `declaration-track:444e1fe23d453adefcd8df2136e1133f13fea223040daa85d0f60ad5f77aa927` |
| 2 | `def` | [sourceLaplace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/sourcelaplace--3909d9208e001138f67c9aa1.md) | 30 | `declaration-track:3909d9208e001138f67c9aa1e337653e0119ba16af16ddc44eb630cf6fe8cc2f` |
| 3 | `theorem` | [compact_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/compact-laplace-integrable--f6102105c928d5fcde5c52aa.md) | 34 | `result-track:f6102105c928d5fcde5c52aa1cebc17b4a194540f8d954ac22ccf19df379b583` |
| 4 | `theorem` | [reflected_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/reflected-laplace-integrable--6fe995a226a432516bf74089.md) | 44 | `result-track:6fe995a226a432516bf7408970ed41ba761efcfa9860f9f3d463c83bccd17fba` |
| 5 | `theorem` | [complex_weighted_correlation_eq_convolution](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/complex-weighted-correlation-eq-convolution--7ac8f8b0782728929e9c5878.md) | 50 | `result-track:7ac8f8b0782728929e9c5878a2139e4dafdf35a61558581d44f9af47e9259ffd` |
| 6 | `theorem` | [complex_weighted_correlation_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/complex-weighted-correlation-integrable--ac6191fb942f1eabaebee864.md) | 71 | `result-track:ac6191fb942f1eabaebee864d101d41e7323d4409457a89ffcad179d8bfedbac` |
| 7 | `theorem` | [bilateral_laplace_correlation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/bilateral-laplace-correlation--70e7857f989cab9da44f9ab3.md) | 85 | `result-track:70e7857f989cab9da44f9ab3f5f1c21470ec3821ed995fa7d621cf3248dcacd1` |
| 8 | `theorem` | [normalized_test_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/normalized-test-laplace-integrable--7b0a2b946130e8cbcf954c28.md) | 99 | `result-track:7b0a2b946130e8cbcf954c28fd250a89fae48b2e3d12f72b8455d7be9acf03fd` |
| 9 | `theorem` | [source_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/source-laplace-integrable--99848b21c866467d57ef9eb7.md) | 106 | `result-track:99848b21c866467d57ef9eb7e35d839bccf125cb874538a6e896181039acd9fc` |
| 10 | `theorem` | [source_laplace_eq_test_product](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/source-laplace-eq-test-product--7ee3c7c2d34e2620673f4b6b.md) | 114 | `result-track:7ee3c7c2d34e2620673f4b6b9ec956526276893bb4ce10cb3aadd768adecb7cf` |
| 11 | `theorem` | [bilateral_laplace_indicator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/bilateral-laplace-indicator--96ffb6019e5fda9ba283bea6.md) | 121 | `result-track:96ffb6019e5fda9ba283bea6ae1052c690e1f3b443686b20129e3a42ee92a9b1` |
| 12 | `theorem` | [indicator_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/indicator-laplace-integrable--98bb24fa38be46649471d0fe.md) | 134 | `result-track:98bb24fa38be46649471d0feeeb3337c309e409b4afac94b307300a7ed7d8274` |
| 13 | `theorem` | [laplace_wave_has_deriv_at](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/laplace-wave-has-deriv-at--b02b3133f0a0389711a521bf.md) | 146 | `result-track:b02b3133f0a0389711a521bf01907fe004e08e038dbbca557fb244655b5c61c4` |
| 14 | `theorem` | [bilateral_laplace_indicator_derivative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/bilateral-laplace-indicator-derivative--dd837748f9d7c744e68c1d36.md) | 152 | `result-track:dd837748f9d7c744e68c1d367e7fe949db0e1981e932ce7c709c6f610030156e` |
| 15 | `theorem` | [explicit_second_derivative_laplace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/explicit-second-derivative-laplace--bfb18675a7fc04a2c913753b.md) | 179 | `result-track:bfb18675a7fc04a2c913753b79cd5e25757aab0633a14142046c4707a416631c` |
| 16 | `theorem` | [scaled_bump_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/scaled-bump-laplace-integrable--85978ec61dd34426b46291a5.md) | 194 | `result-track:85978ec61dd34426b46291a52092b86c76479d8e16ee4e12c928eb6ed356a36d` |
| 17 | `theorem` | [explicit_second_derivative_laplace_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/explicit-second-derivative-laplace-integrable--87fab7969bdd09cf3f760154.md) | 200 | `result-track:87fab7969bdd09cf3f760154b9da8f5f06553806cdd6e452f341266e48f0e416` |
| 18 | `theorem` | [normalized_test_laplace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/normalized-test-laplace--1cb7fc3b100e0dd503284af0.md) | 205 | `result-track:1cb7fc3b100e0dd503284af026aae2c55ba7cc24a5358e7f77e1e92fef2c2d86` |
| 19 | `theorem` | [scaled_bump_laplace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/scaled-bump-laplace--692829f9c829adaeb58c005d.md) | 223 | `result-track:692829f9c829adaeb58c005d7584df222f7c739149d013364d477f76f83c3897` |
| 20 | `theorem` | [bilateral_laplace_source_bump](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/bilateral-laplace-source-bump--ba79f10c9dd1ba185c718eaa.md) | 245 | `result-track:ba79f10c9dd1ba185c718eaa047f43ded582371209a7de4bb8cf15d561f7185d` |
| 21 | `theorem` | [source_laplace_eq_bump_square](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/source-laplace-eq-bump-square--67f6ced1e0889eb119c79669.md) | 254 | `result-track:67f6ced1e0889eb119c79669f75da0e8009918eeaa30e2364636b5a95fd72b4f` |
| 22 | `theorem` | [source_laplace_ne_zero_of_bump_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/source-laplace-ne-zero-of-bump-ne-zero--3098a3f1bc5c8564f4cdc025.md) | 279 | `result-track:3098a3f1bc5c8564f4cdc0250d1d1868887b83e26a9fcd5a51d2a79399e9588b` |
| 23 | `theorem` | [shifted_strip_pole_factor_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/shifted-strip-pole-factor-ne-zero--0186dd455ee602cc7917d546.md) | 289 | `result-track:0186dd455ee602cc7917d546150c9ce6ec15a7e8d7e5c79df4fc5f6a5db9eb3c` |
| 24 | `theorem` | [scaled_shift_re_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/scaled-shift-re-ne-zero--f258d77fd9df119210cc00b8.md) | 304 | `result-track:f258d77fd9df119210cc00b879988f7ab34861149f20222ef53ec6963fd2334f` |
| 25 | `theorem` | [source_laplace_strip_ne_zero_of_bump_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/source-laplace-strip-ne-zero-of-bump-ne-zero--c9c48c6acf643ce819dc0f92.md) | 311 | `result-track:c9c48c6acf643ce819dc0f9271cbbf3a6a68447a2fc10248362d7188f6105453` |
| 26 | `theorem` | [source_laplace_strip_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/source-laplace-strip-ne-zero--ddbc5420d44eee9ca5ef0b91.md) | 320 | `result-track:ddbc5420d44eee9ca5ef0b91cca65da2729bbefd42b5c03777da7b8dbda0d7e0` |
| 27 | `theorem` | [source_laplace_poles_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/declarations/source-laplace-poles-zero--297fd494f70800207981864d.md) | 327 | `result-track:297fd494f70800207981864d058f13b31413e883f6c9479f3f8b73f6a8389f91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
