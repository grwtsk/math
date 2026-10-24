# Verification target: GRWTSK.Analysis.MeasureTheory.BranchNativeTranslationGap.Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc90d18817332a51c049ad34bea192fe2be4cb9d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc90d18817332a51c049ad34bea192fe2be4cb9d`.

Source path: `GRWTSK/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.BranchDyadicGap` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Measure` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Completeness` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SourceSpace](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/sourcespace--d39cdda395d0c2ee1d20eef3.md) | 26 | `declaration-track:d39cdda395d0c2ee1d20eef34ad32c2af79f936605c5dd2550ae32fd94aeb801` |
| 2 | `def` | [translation](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/translation--46f21e06b933a3988e61d480.md) | 33 | `declaration-track:46f21e06b933a3988e61d4807e886417d401fe39e6dade4d12f29cab17151921` |
| 3 | `theorem` | [translation_norm](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/translation-norm--78cf1bb2c2a4c03548697c80.md) | 37 | `result-track:78cf1bb2c2a4c03548697c80da7742e05f2241d7837fb33d33544e37db97ead6` |
| 4 | `theorem` | [translation_realization](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/translation-realization--193174e099e7c7c226f4372d.md) | 40 | `result-track:193174e099e7c7c226f4372d993f7ca5b3f7da5e241cbfb5dbd87a0923640ddf` |
| 5 | `def` | [primeTwoDifference](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/primetwodifference--b6c7b6a980d935ca2224854c.md) | 49 | `declaration-track:b6c7b6a980d935ca2224854cf9403e95719ce9a3dfa6dc4d11359a10995836a0` |
| 6 | `theorem` | [native_exact_energy](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/native-exact-energy--d570ab9bd49bc1876b48e82a.md) | 52 | `result-track:d570ab9bd49bc1876b48e82a7515f7a2dbdb21e001bba2706f9ee66fb06c1188` |
| 7 | `theorem` | [native_lower_norm](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/native-lower-norm--6c6196028e583244fe6f1f3c.md) | 57 | `result-track:6c6196028e583244fe6f1f3ccd83255e28a0182e90659ce0021d845d4d209cf8` |
| 8 | `theorem` | [native_upper_norm](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/native-upper-norm--a3c1baf5ce83c4b33e3a13bd.md) | 61 | `result-track:a3c1baf5ce83c4b33e3a13bde964a35c2d036eb430327be42986c91e6d5fb1ae` |
| 9 | `theorem` | [native_gap](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/native-gap--fb67bc3ee333fb1eb0d1568f.md) | 65 | `result-track:fb67bc3ee333fb1eb0d1568fa81090d80bd22ebe0f89f768b7cd3d147e903082` |
| 10 | `theorem` | [native_kernel_zero](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/native-kernel-zero--a749e1e8fe742bbbb2341e21.md) | 68 | `result-track:a749e1e8fe742bbbb2341e21318ba0db3b1586381f3223a5f5b6d5fbf90d43f8` |
| 11 | `def` | [continuousTranslation](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/continuoustranslation--9246964b7cd406754a4d9914.md) | 76 | `declaration-track:9246964b7cd406754a4d9914609f88829c7a2031665e83f7e657db29ed2a1016` |
| 12 | `theorem` | [continuous_translation_apply](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/continuous-translation-apply--a60d6ec31dd6d22cbcc66f36.md) | 79 | `result-track:a60d6ec31dd6d22cbcc66f36f03abfc3899b607c3b3799c8fd698280ea10ea73` |
| 13 | `theorem` | [continuous_translation_norm_le](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/continuous-translation-norm-le--7a1006630e599043f4d60767.md) | 82 | `result-track:7a1006630e599043f4d607679ce9e20910777db52447e2ba639d6f2cb2fccabc` |
| 14 | `def` | [weightedTranslation](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/weightedtranslation--74ba9605e1989bc5033a92ad.md) | 90 | `declaration-track:74ba9605e1989bc5033a92adb28460a118c9b56dbc95422ef538509da30ab731` |
| 15 | `theorem` | [weighted_translation_norm_le](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/weighted-translation-norm-le--22931205b9c9a19969ceca32.md) | 93 | `result-track:22931205b9c9a19969ceca324ccf154aa5a9dca70795653346c004eb89b09660` |
| 16 | `theorem` | [weighted_translation_norm_lt_one](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/weighted-translation-norm-lt-one--18bd657b77cc8205d21044b2.md) | 98 | `result-track:18bd657b77cc8205d21044b2bad5429a59e3f87d56fca774165f80aa18e3b863` |
| 17 | `def` | [inverse](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/inverse--22ea8aaad90450bb0c19b2ac.md) | 102 | `declaration-track:22ea8aaad90450bb0c19b2acc17ca82c41a392d0279bf7bad66f95751f835d7b` |
| 18 | `theorem` | [inverse_hasSum](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/inverse-hassum--9f36ddf1e8986e93c53ba894.md) | 104 | `result-track:9f36ddf1e8986e93c53ba894e23218ada2c27d0ccb3e5be991eb17ac764de2ef` |
| 19 | `theorem` | [inverse_left](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/inverse-left--8980738d835d08fffc943f6f.md) | 107 | `result-track:8980738d835d08fffc943f6f8928d23d060a55cdd1c46fe3ec936c95208dbe86` |
| 20 | `theorem` | [inverse_right](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/inverse-right--78a3de9c5cdcd8f88f667b1f.md) | 110 | `result-track:78a3de9c5cdcd8f88f667b1f18ff12538238156e1b2441a3e37ad18786eebdeb` |
| 21 | `theorem` | [inverse_of_difference](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/inverse-of-difference--756e1bce64f03074d51b83d8.md) | 113 | `result-track:756e1bce64f03074d51b83d8e60271a6adf7c0446c898035feb64614aae38936` |
| 22 | `theorem` | [difference_of_inverse](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/difference-of-inverse--8bb3361643a7ca321dca398c.md) | 118 | `result-track:8bb3361643a7ca321dca398cad777038549e26d8911848d7ea714f50819297e5` |
| 23 | `theorem` | [inverse_norm_le](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/inverse-norm-le--f0fb6ccb125c8b0f3933ba23.md) | 123 | `result-track:f0fb6ccb125c8b0f3933ba23f18ae2a1af240d28d8c1a9e05d9ba30d0c1e2aa5` |
| 24 | `theorem` | [inverse_value_norm_le](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/inverse-value-norm-le--caa43ed7af496f97d38f1837.md) | 133 | `result-track:caa43ed7af496f97d38f183715131cd82bb008444c0d97dc3df37ca625ea4728` |
| 25 | `theorem` | [weighted_translation_power](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/weighted-translation-power--b3f8f61857fa7a64dadb5657.md) | 137 | `result-track:b3f8f61857fa7a64dadb5657ead96d48da5b4aea41db6542d070bbcd7afeb1de` |
| 26 | `theorem` | [inverse_explicit_hasSum](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/inverse-explicit-hassum--53b076adca3e7c3e182e5ecd.md) | 141 | `result-track:53b076adca3e7c3e182e5ecd7002fea97fce73e0ca9efe9551389f93d6e32a4c` |
| 27 | `theorem` | [native_difference_bijective](../../../../../mathematics/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/declarations/native-difference-bijective--6d901128a90ae048be98d5fe.md) | 145 | `result-track:6d901128a90ae048be98d5feb0e0e7960f53e4a3aaf851ad7ef349dbbd9f004e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
