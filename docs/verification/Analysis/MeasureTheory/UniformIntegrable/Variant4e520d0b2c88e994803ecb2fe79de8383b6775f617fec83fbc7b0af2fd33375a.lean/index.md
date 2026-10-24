# Verification target: GRWTSK.Analysis.MeasureTheory.UniformIntegrable.Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05b804ec4266a0f0d4d53338a30fb2ad9bf4cac9",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05b804ec4266a0f0d4d53338a30fb2ad9bf4cac9`.

Source path: `GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConvergenceInMeasure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UnifIntegrable](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable--ee5e523fd4706bf8155ac20a.md) | 73 | `declaration-track:ee5e523fd4706bf8155ac20aab23f69bc0c2b52cf85f9808ee75cb27eb4fc102` |
| 2 | `def` | [UniformIntegrable](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable--67d5a07c67133b11e46af645.md) | 80 | `declaration-track:67d5a07c67133b11e46af645bcb0dae977c029fdaf10b38c595799fd65f1a7cc` |
| 3 | `theorem` | [aeStronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/aestronglymeasurable--e3ffdfbfba1cf4efb61c50b0.md) | 86 | `result-track:e3ffdfbfba1cf4efb61c50b0c93803de01ae5320af1754c23c54af56deab9597` |
| 4 | `theorem` | [unifIntegrable](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable--94483a33e23cdf8487be5f52.md) | 91 | `result-track:94483a33e23cdf8487be5f521eb5fcf74e0bd4c4ec67c83659cfcb4bf2c8509a` |
| 5 | `theorem` | [memℒp](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/mem-p--a154d1cb6e79debb39345af7.md) | 96 | `result-track:a154d1cb6e79debb39345af74ff8e5e88bb267a00368116ab6457a371cfef7c3` |
| 6 | `theorem` | [add](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/add--4f70d53c3e9d9585368592ce.md) | 116 | `result-track:4f70d53c3e9d9585368592ce6c928b3244a8a3d5abc6670388dc760aabae4725` |
| 7 | `theorem` | [neg](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/neg--e8893b1c31f079e32280230d.md) | 133 | `result-track:e8893b1c31f079e32280230da0f67d456f270d8f46520ae2b1eae231a332c87b` |
| 8 | `theorem` | [sub](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/sub--8f0cf1291cabae887973b976.md) | 138 | `result-track:8f0cf1291cabae887973b976ec6765bc78986903c599365be7c940515155e62d` |
| 9 | `theorem` | [ae_eq](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/ae-eq--1a730ecd5a30e819d3c15238.md) | 145 | `result-track:1a730ecd5a30e819d3c152389a0c5bc86d4556f4c0424628353212068ff6542a` |
| 10 | `theorem` | [unifIntegrable_zero_meas](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable-zero-meas--0a958c1de40b21885d77c20b.md) | 156 | `result-track:0a958c1de40b21885d77c20b605bc91fc26bfeeffbfd8f3806b4616866643c9f` |
| 11 | `theorem` | [unifIntegrable_congr_ae](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable-congr-ae--7b0724de0a6fcc3184b9323b.md) | 161 | `result-track:7b0724de0a6fcc3184b9323b29ec845468b9a01ced89c2107677f2721f66596c` |
| 12 | `theorem` | [tendsto_indicator_ge](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/tendsto-indicator-ge--fde00e3cbe7b90a38bf51ea7.md) | 166 | `result-track:fde00e3cbe7b90a38bf51ea7d6934eb61f75aed5ebd978d1dd9bb4f4203219b8` |
| 13 | `theorem` | [Memℒp.integral_indicator_norm_ge_le](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/mem-p-integral-indicator-norm-ge-le--45cf9046ef7cabf7b99937f9.md) | 184 | `result-track:45cf9046ef7cabf7b99937f969c21d15227641846cf12c06e427330c24d179cf` |
| 14 | `theorem` | [Memℒp.integral_indicator_norm_ge_nonneg_le_of_meas](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/mem-p-integral-indicator-norm-ge-nonneg-le-of-meas--78f6111bef3379520f41215f.md) | 221 | `result-track:78f6111bef3379520f41215f732ffb5b33220bf2960d77692d8b4b377147562a` |
| 15 | `theorem` | [Memℒp.integral_indicator_norm_ge_nonneg_le](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/mem-p-integral-indicator-norm-ge-nonneg-le--4b5b90fff66a3dbf679a5dd8.md) | 228 | `result-track:4b5b90fff66a3dbf679a5dd8c1708d03aee42c61ac504fb2ec0d8ff2e0a5e4d5` |
| 16 | `theorem` | [Memℒp.snormEssSup_indicator_norm_ge_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/mem-p-snormesssup-indicator-norm-ge-eq-zero--3540dc73840bb124590f052b.md) | 239 | `result-track:3540dc73840bb124590f052bb8ccfbfa50f7159d19026fc8667179061340aa69` |
| 17 | `theorem` | [Memℒp.snorm_indicator_norm_ge_le](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/mem-p-snorm-indicator-norm-ge-le--b2e77e6d8ddc664babbb98ff.md) | 267 | `result-track:b2e77e6d8ddc664babbb98ffd5881302fa1320cee331b4d9e11b20cc62df94e2` |
| 18 | `theorem` | [Memℒp.snorm_indicator_norm_ge_pos_le](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/mem-p-snorm-indicator-norm-ge-pos-le--7df25af23375ec42a7f445a8.md) | 305 | `result-track:7df25af23375ec42a7f445a8b2d073a6ddb9cc324a696dbca0feff263be75216` |
| 19 | `theorem` | [snorm_indicator_le_of_bound](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/snorm-indicator-le-of-bound--d96e121d24798f602760ba64.md) | 319 | `result-track:d96e121d24798f602760ba6425a998fe578164cec1f74669679e8968538d2ffa` |
| 20 | `theorem` | [Memℒp.snorm_indicator_le'](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/mem-p-snorm-indicator-le--b157848019351d308638262d.md) | 353 | `result-track:b157848019351d308638262d9879c58511150d6b20193a43c11822d1e748b725` |
| 21 | `theorem` | [Memℒp.snorm_indicator_le_of_meas](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/mem-p-snorm-indicator-le-of-meas--b1fbe0214bbb08aa8c952288.md) | 385 | `result-track:b1fbe0214bbb08aa8c9522886bfb97da507bb078c3ee26194a3a5d6dc61fc138` |
| 22 | `theorem` | [Memℒp.snorm_indicator_le](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/mem-p-snorm-indicator-le--05b170c6f0bba1e8063c9337.md) | 396 | `result-track:05b170c6f0bba1e8063c9337bcf8711a44ca1343f26b3eb2bc22c14852a66072` |
| 23 | `theorem` | [unifIntegrable_const](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable-const--80d69576e04775c1cd1de207.md) | 410 | `result-track:80d69576e04775c1cd1de20721c06053f9c5fabcb7002edcf9d67fce366409a6` |
| 24 | `theorem` | [unifIntegrable_subsingleton](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable-subsingleton--453f28a684dbdc83d868c5a2.md) | 418 | `result-track:453f28a684dbdc83d868c5a25ab8b24a78fff11c21c9a692ad00fcca515700e6` |
| 25 | `theorem` | [unifIntegrable_fin](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable-fin--01b8b33d14037e5921a2f133.md) | 431 | `result-track:01b8b33d14037e5921a2f133b300634e9070946ac6ce0ce9a255d2cbc8ac1e1b` |
| 26 | `theorem` | [unifIntegrable_finite](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable-finite--1b11ce0181c48ab831e6209a.md) | 458 | `result-track:1b11ce0181c48ab831e6209aa01f1e8047f24bf1569941fd1280466176b8ebde` |
| 27 | `theorem` | [snorm_sub_le_of_dist_bdd](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/snorm-sub-le-of-dist-bdd--37afa6e2f8e2fb4f82c4357a.md) | 473 | `result-track:37afa6e2f8e2fb4f82c4357a60f350f5faf45088f6d2be8c8a6929676ebfd5a6` |
| 28 | `theorem` | [tendsto_Lp_of_tendsto_ae_of_meas](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/tendsto-lp-of-tendsto-ae-of-meas--852c54542bab637ec7facad3.md) | 492 | `result-track:852c54542bab637ec7facad3acfa422c50f5da796f55063f6aa421007fcf4f47` |
| 29 | `theorem` | [tendsto_Lp_of_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/tendsto-lp-of-tendsto-ae--73b851c5c444755050f313f0.md) | 563 | `result-track:73b851c5c444755050f313f0d82a4b486248a0e62cfd1612159490d5b39bae4c` |
| 30 | `theorem` | [unifIntegrable_of_tendsto_Lp_zero](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable-of-tendsto-lp-zero--c1b6fb7059ca891fbc6257c6.md) | 585 | `result-track:c1b6fb7059ca891fbc6257c66cf270fa4f114c8d8dd34f521f81035e38661555` |
| 31 | `theorem` | [unifIntegrable_of_tendsto_Lp](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable-of-tendsto-lp--4fd21e285dd62a87c2138037.md) | 601 | `result-track:4fd21e285dd62a87c21380373363e3eb51eef76f6c299ee5b5b063f3916de21e` |
| 32 | `theorem` | [tendsto_Lp_of_tendstoInMeasure](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/tendsto-lp-of-tendstoinmeasure--85e32886d006f6754a3a3947.md) | 616 | `result-track:85e32886d006f6754a3a3947df13f656ed4d6faf7c067374a83a75ecbe85a1cf` |
| 33 | `theorem` | [tendstoInMeasure_iff_tendsto_Lp](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/tendstoinmeasure-iff-tendsto-lp--c5f17ecb1c979e2bafc9ebe9.md) | 631 | `result-track:c5f17ecb1c979e2bafc9ebe90412bae8efcc52c5269b4169897976991f01fc8a` |
| 34 | `theorem` | [unifIntegrable_of'](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable-of--1aac5a218fb13b27ca4929ea.md) | 643 | `result-track:1aac5a218fb13b27ca4929ea7980b0551b94b245ede798503b36290e8e32a637` |
| 35 | `theorem` | [unifIntegrable_of](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/unifintegrable-of--ab8e1e1e530e64133f6eb988.md) | 708 | `result-track:ab8e1e1e530e64133f6eb988ad29fd0a6eb4dc5adac0ff6944321c3b0e85951b` |
| 36 | `theorem` | [uniformIntegrable_zero_meas](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-zero-meas--13de9e0eec8560f419d71ac0.md) | 750 | `result-track:13de9e0eec8560f419d71ac0a385dc712dd6aab23905ab8355a85889342edc24` |
| 37 | `theorem` | [UniformIntegrable.ae_eq](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-ae-eq--ec224d9d75a341ed9723267d.md) | 755 | `result-track:ec224d9d75a341ed9723267d9b94340d9831f1cfaaf54fadd534f7ef4729f76b` |
| 38 | `theorem` | [uniformIntegrable_congr_ae](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-congr-ae--09a51ff3247a3e2bdf60715e.md) | 763 | `result-track:09a51ff3247a3e2bdf60715e51299978b6c1223f0d0173161c550c69821e86b7` |
| 39 | `theorem` | [uniformIntegrable_finite](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-finite--abc1f05e6e9cf7cd4777b355.md) | 769 | `result-track:abc1f05e6e9cf7cd4777b35505381ba84e03afba0ccbe04ef301d61534eba311` |
| 40 | `theorem` | [uniformIntegrable_subsingleton](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-subsingleton--240e50bea1a65305b8120b6c.md) | 788 | `result-track:240e50bea1a65305b8120b6cd29b1f65207ce420800503a23d436155d6b9c586` |
| 41 | `theorem` | [uniformIntegrable_const](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-const--b72c4d4ecc7eaacfc0fb005e.md) | 794 | `result-track:b72c4d4ecc7eaacfc0fb005e06bdac3acc311602dc80078417ec5553aba12899` |
| 42 | `theorem` | [uniformIntegrable_of'](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-of--b0ab2b786b045abe6766ff8d.md) | 802 | `result-track:b0ab2b786b045abe6766ff8d82a5adc07b4e1a77dbd1c919c50bbd1b9391b8c7` |
| 43 | `theorem` | [uniformIntegrable_of](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-of--81a07bd402dcbc45c415a1c3.md) | 844 | `result-track:81a07bd402dcbc45c415a1c3c7a09936dcf027bd0ce7c63eebd2c33fe54d2ecb` |
| 44 | `theorem` | [UniformIntegrable.spec'](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-spec--3a880d81f17419f49015c542.md) | 864 | `result-track:3a880d81f17419f49015c5422f956e2c9b32f746d9729bde7dcf1a58d8f478c0` |
| 45 | `theorem` | [UniformIntegrable.spec](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-spec--3be61ec08519155a664eeb4e.md) | 900 | `result-track:3be61ec08519155a664eeb4eed7b0a81a5f86408b09362cff18dc22201457a69` |
| 46 | `theorem` | [uniformIntegrable_iff](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-iff--3b345e786f441dc0536b555b.md) | 918 | `result-track:3b345e786f441dc0536b555b1f044f7993e620bb947f0069bcc012a2dfd9cba7` |
| 47 | `theorem` | [uniformIntegrable_average](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/declarations/uniformintegrable-average--42d91338f9504f1654d868de.md) | 928 | `result-track:42d91338f9504f1654d868ded0d2a1bf74a15f7b180bf11e550d04f6996af8b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
