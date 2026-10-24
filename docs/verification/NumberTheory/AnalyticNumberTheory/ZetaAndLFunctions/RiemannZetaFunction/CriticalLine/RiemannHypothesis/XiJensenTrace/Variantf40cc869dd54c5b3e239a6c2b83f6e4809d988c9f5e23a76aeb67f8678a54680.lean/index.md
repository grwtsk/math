# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiJensenTrace.Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eec0902b9103c08d96cdc684af02bad71bdd1e3e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eec0902b9103c08d96cdc684af02bad71bdd1e3e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiCoefficientLogConcavity` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiJensenPolynomial` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiHermiteQuadratic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarticCompanion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/quarticcompanion--c784e7d39f8f17d85177940b.md) | 37 | `declaration-track:c784e7d39f8f17d85177940b3b8872ab53924445d5dda0d346629eb266c02429` |
| 2 | `def` | [quarticHermite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/quartichermite--c5c6afce895027dfbf9b3fed.md) | 41 | `declaration-track:c5c6afce895027dfbf9b3fedb224b0f2ce829a6b9d74d7a03929498148a9f213` |
| 3 | `theorem` | [quarticHermite_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/quartichermite-eq--80aec82514b719ae1a86e946.md) | 45 | `result-track:80aec82514b719ae1a86e9467a0e7664c2025d99ffcc58348466a0135c26e571` |
| 4 | `theorem` | [quarticHermite_square](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/quartichermite-square--ebdc48afb9027b2a393a30d7.md) | 57 | `result-track:ebdc48afb9027b2a393a30d70333857da7b409454c2b39df87b6738a1f9ab1c6` |
| 5 | `theorem` | [quarticCompanion_charpoly](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/quarticcompanion-charpoly--628b31f89045475ad939e0e5.md) | 68 | `result-track:628b31f89045475ad939e0e533d9b843f91a9f1932681652800323913035dc92` |
| 6 | `def` | [jensenTwoB](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwob--2f742045408f35146b6487fb.md) | 79 | `declaration-track:2f742045408f35146b6487fb0b51c3f85d8ee9f75f1886f59a85c126444bec63` |
| 7 | `def` | [jensenTwoC](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwoc--16b0ff52389c3176ad1bbad2.md) | 82 | `declaration-track:16b0ff52389c3176ad1bbad2ee72b104a483c84dfe8448efa4b272459aa4c82b` |
| 8 | `theorem` | [jensenTwoB_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwob-pos--e3eb4ebb81a9246aa73f418a.md) | 85 | `result-track:e3eb4ebb81a9246aa73f418aebc5052c72c4353d5c0916f317646b10edcc61e4` |
| 9 | `theorem` | [jensenTwoC_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwoc-pos--325519c68e41f6a74db765ef.md) | 92 | `result-track:325519c68e41f6a74db765efdea20873f0d9e3a2ca35fdc9b2a7e4ab6a454626` |
| 10 | `theorem` | [jensenTwo_discriminant_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwo-discriminant-pos--7170fedbf88448967ac5af35.md) | 99 | `result-track:7170fedbf88448967ac5af35f12a33058bb1f4dd5cab195c8cc80ee7be2d9aa4` |
| 11 | `def` | [jensenTwoTrace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwotrace--ee96aa816047eefb860f3f0b.md) | 110 | `declaration-track:ee96aa816047eefb860f3f0b84850a8fcf3b7dec2df95c1c996eeb14372e7c00` |
| 12 | `theorem` | [jensenTwoTrace_square_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwotrace-square-nonneg--a66168d145a04895b0e29559.md) | 114 | `result-track:a66168d145a04895b0e2955957b7f4c6052ae94152372ddce85438a71c342ae3` |
| 13 | `theorem` | [jensenTwoTrace_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwotrace-possemidef--a690433fd953d17656ed49cf.md) | 123 | `result-track:a690433fd953d17656ed49cfbb9938fa3b33490d51026cb51c8eebe86cf4219e` |
| 14 | `theorem` | [jensenTwoTrace_posDef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwotrace-posdef--7983ca3f2b9059e79906d04e.md) | 132 | `result-track:7983ca3f2b9059e79906d04ed46cdbd8d5bb5e33777e355b8fb309a36d9af7f7` |
| 15 | `theorem` | [jensenPolynomial_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensenpolynomial-two--574d288dbe5ff387d56919a7.md) | 171 | `result-track:574d288dbe5ff387d56919a79ac6c7e33a5898e3050da6599286a566ed0ce384` |
| 16 | `theorem` | [jensenTwo_charpoly_source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwo-charpoly-source--179cbc7491db163d9351b473.md) | 180 | `result-track:179cbc7491db163d9351b4735627d17936b3f1735231af8342c53a70f0ab41a0` |
| 17 | `theorem` | [jensenTwo_charpoly](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwo-charpoly--e7a238b04717be2b707dd981.md) | 204 | `result-track:e7a238b04717be2b707dd981f965fbd7abbdc5445b4fd33ab939d7321a8bbaf5` |
| 18 | `theorem` | [jensenTwo_source_decode](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwo-source-decode--d0c765d6740be973d47417a9.md) | 210 | `result-track:d0c765d6740be973d47417a972e321c143450241b6f05bc530e081dc5d176973` |
| 19 | `theorem` | [quarticHermite_mul_companion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/quartichermite-mul-companion--25dac303d8ef7cb19d133e25.md) | 218 | `result-track:25dac303d8ef7cb19d133e2527a6fb554131afed67afd8b04e4ba57d94570bc5` |
| 20 | `theorem` | [jensenTwo_trace_selfadjoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwo-trace-selfadjoint--19248e9306dcc5219a43f285.md) | 228 | `result-track:19248e9306dcc5219a43f2858d2846f6a79b5e514a63f18e8ecd455439a27cfa` |
| 21 | `def` | [cubicCompanion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/cubiccompanion--dbb4821126cd85b22612b912.md) | 234 | `declaration-track:dbb4821126cd85b22612b912afcdd4473dcdeae12cfa3e2c189804edf8a322ab` |
| 22 | `def` | [cubicHermite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/cubichermite--8cbd90ed6eeea3e0793db4e8.md) | 239 | `declaration-track:8cbd90ed6eeea3e0793db4e8cb50e10e9c70081bb8958039980fa383899be6fc` |
| 23 | `theorem` | [cubicHermite_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/cubichermite-eq--6247f4db5dee9c8d4a1cee33.md) | 243 | `result-track:6247f4db5dee9c8d4a1cee33b90f28d54691eb6354edd5740b7b2cce3bdcb14e` |
| 24 | `theorem` | [cubicHermite_det](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/cubichermite-det--819f3446799ed14f20dcd468.md) | 254 | `result-track:819f3446799ed14f20dcd4682dade9d0276bd36a95d8806f4bf8eda412026243` |
| 25 | `def` | [jensenThreeTrace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensenthreetrace--c38f46dcb13754469dc29da2.md) | 262 | `declaration-track:c38f46dcb13754469dc29da2c1f9b0b056cabdbfcd424ea127c74d3449466973` |
| 26 | `theorem` | [jensenThreeTrace_det](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensenthreetrace-det--c6bd9c496be602c93426f513.md) | 267 | `result-track:c6bd9c496be602c93426f51360b8ff5754a21ca87468dd800a6b8b8be3048d16` |
| 27 | `theorem` | [geometric_cubic_trace_det_negative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/geometric-cubic-trace-det-negative--c0bf3c7cbc3e1190c6912c41.md) | 280 | `result-track:c0bf3c7cbc3e1190c6912c4148fac5a3dd0d52b4dce9e6bffc636dd0f8e0de87` |
| 28 | `theorem` | [cubicCompanion_charpoly](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/cubiccompanion-charpoly--54162b1a5708f3795c186cbf.md) | 286 | `result-track:54162b1a5708f3795c186cbf405335eb9716e7c71b302be6662f99f7b0e27d80` |
| 29 | `theorem` | [jensenThree_source_decode](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensenthree-source-decode--4f9aaea5ea59c1cfb21214a6.md) | 292 | `result-track:4f9aaea5ea59c1cfb21214a6372b83d3acb1ba857345203c3a5c046aa25097ae` |
| 30 | `theorem` | [jensenTwo_zero_im_eq_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/declarations/jensentwo-zero-im-eq-zero--1261afb1e680d36671d49141.md) | 308 | `result-track:1261afb1e680d36671d49141096f0f2a1078142cba7211ee48de18592929fd13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
