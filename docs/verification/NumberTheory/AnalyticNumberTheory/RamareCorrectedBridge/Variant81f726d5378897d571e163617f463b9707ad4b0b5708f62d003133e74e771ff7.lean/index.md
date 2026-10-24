# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.RamareCorrectedBridge.Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc5d4f7bddc48e8e02422bac8d7b700317c7436c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc5d4f7bddc48e8e02422bac8d7b700317c7436c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathExtras.NumberTheory.Mertens.RamareEq22` — import line 5; external provider; requires a separately pinned dependency.
- `MathExtras.NumberTheory.Mertens.RamareCorrectedRemainder` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNT.Bilinear.ProductHyperbola` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hyperbolaPairs](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/hyperbolapairs--568db693b19daf527850132c.md) | 25 | `declaration-track:568db693b19daf527850132c5b023c45e345b0d96012e903c5b1ac8c24341662` |
| 2 | `def` | [hyperbolaLeft](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/hyperbolaleft--777eaf8d589fc43af36233f4.md) | 29 | `declaration-track:777eaf8d589fc43af36233f463dd5262272a73c98b4fe8815d32458f7596d49a` |
| 3 | `def` | [hyperbolaRight](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/hyperbolaright--d44bfead760734414f10290b.md) | 33 | `declaration-track:d44bfead760734414f10290b60f3734bed7cf2d2443d8a020fad83be4c8480b0` |
| 4 | `def` | [hyperbolaSquare](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/hyperbolasquare--e10efb6295c62eb8c4fbd74a.md) | 37 | `declaration-track:e10efb6295c62eb8c4fbd74a1af72d6d314a435385ca37b5f5d5e32d79209df1` |
| 5 | `theorem` | [hyperbolaPairs_eq_union](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/hyperbolapairs-eq-union--dd1ea80fa146ea0513b79f03.md) | 40 | `result-track:dd1ea80fa146ea0513b79f03a355e2048f4a5c5b8dd8b257915478338dec2a92` |
| 6 | `theorem` | [hyperbolaLeft_inter_right](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/hyperbolaleft-inter-right--bfdcb8fc3ce937269d4b2046.md) | 70 | `result-track:bfdcb8fc3ce937269d4b204616514db8c44e263ae33074d20576d04636aabd07` |
| 7 | `theorem` | [sum_hyperbolaPairs_eq_cutoff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/sum-hyperbolapairs-eq-cutoff--956c10e10fbdcb7ccaef2f83.md) | 95 | `result-track:956c10e10fbdcb7ccaef2f83f96e2033b6c82b7f02188021565bbe8947388bd9` |
| 8 | `theorem` | [sum_hyperbolaLeft_eq_cutoff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/sum-hyperbolaleft-eq-cutoff--bf63f042e7a35cb8706f934a.md) | 129 | `result-track:bf63f042e7a35cb8706f934a3c9efda75440cca5c39f267f71d58f0676215adf` |
| 9 | `theorem` | [sum_hyperbolaRight_eq_left](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/sum-hyperbolaright-eq-left--5ab7ef4efdbca028a3d391a9.md) | 163 | `result-track:5ab7ef4efdbca028a3d391a9273820a6448949fb846244bb77c52a3c8e997521` |
| 10 | `theorem` | [balanced_productCutoffSum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/balanced-productcutoffsum--27e1a56edaccec2e95f14f1c.md) | 188 | `result-track:27e1a56edaccec2e95f14f1cd0b2f4d0fcb0632b6019fa3ded54c62b3d0dd56d` |
| 11 | `theorem` | [sum_vonMangoldt_Icc_eq_psi_nat](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/sum-vonmangoldt-icc-eq-psi-nat--0722656fb7ee2437dfca5743.md) | 212 | `result-track:0722656fb7ee2437dfca57436b4cfe3d707253818389fa81e7cc890c659b4d91` |
| 12 | `theorem` | [vonMangoldt_convolution_hyperbola](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/vonmangoldt-convolution-hyperbola--ef3a8d4928dea0f6f7350b0d.md) | 230 | `result-track:ef3a8d4928dea0f6f7350b0dc316da574b808bab93e2a808047f4fd6e6fe4413` |
| 13 | `theorem` | [vonMangoldt_log_sum_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/vonmangoldt-log-sum-eq--c675fd5d54c1cb8e7bab9da5.md) | 276 | `result-track:c675fd5d54c1cb8e7bab9da570573f0b039564b720eee7152e1d53c000d63cae` |
| 14 | `theorem` | [floor_real_sqrt_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/floor-real-sqrt-natcast--03d292a781fcab438bea3060.md) | 362 | `result-track:03d292a781fcab438bea3060510077dbbdc335788d18577cd4e4b38bd414ca3a` |
| 15 | `theorem` | [psi_natDiv_eq_psi_realDiv](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/psi-natdiv-eq-psi-realdiv--cc379bf08717083d733084dc.md) | 390 | `result-track:cc379bf08717083d733084dcac99ee83ecd88f8ff99bd5b88173e45c96ffcd3a` |
| 16 | `theorem` | [firstMertensSum_sqrt_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/firstmertenssum-sqrt-natcast--58609495aa2e32049feecf6b.md) | 396 | `result-track:58609495aa2e32049feecf6b29af8b7a02a7ce7e796aef8f091763d1910f0257` |
| 17 | `def` | [correctedR4](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/correctedr4--975515816dee3ac471007946.md) | 410 | `declaration-track:975515816dee3ac47100794637de39ad1a44b152e0d366e4158f2584edfda907` |
| 18 | `def` | [correctedR3](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/correctedr3--c10938fa6ccc0c99febefc67.md) | 416 | `declaration-track:c10938fa6ccc0c99febefc67fe240d0759429179fffecfea4657632f7424af70` |
| 19 | `theorem` | [hyperbola_small_sum_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/hyperbola-small-sum-eq--d4854140cf1193767b0acac3.md) | 424 | `result-track:d4854140cf1193767b0acac3411f8ef282999d0ad71e3fc7f93d491fbfddac62` |
| 20 | `theorem` | [psi_sqrt_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/psi-sqrt-natcast--6b3cc8cb07305ced98ef28d9.md) | 443 | `result-track:6b3cc8cb07305ced98ef28d94cdc17c3649f2e42818ba6cd39a6287da5c754e3` |
| 21 | `theorem` | [vonMangoldt_convolution_eq_corrected](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/vonmangoldt-convolution-eq-corrected--18ab34ea5c5d903f185c1c1b.md) | 450 | `result-track:18ab34ea5c5d903f185c1c1ba98a2f68e92044d483cb74a3f5920c578eb0bbcf` |
| 22 | `theorem` | [r2Star_eq_convolution_sub_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/r2star-eq-convolution-sub-log--8ecbdf4cec05f0593ffdc3fe.md) | 472 | `result-track:8ecbdf4cec05f0593ffdc3fedc1c03ff18e12038ecac9220e9610a2f01758e66` |
| 23 | `theorem` | [intervalIntegrable_psi_div](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/intervalintegrable-psi-div--9e6726256de3101c01d60ebd.md) | 486 | `result-track:9e6726256de3101c01d60ebde47e5b9dd94859619bdedbedadbe3e2382cbb772` |
| 24 | `theorem` | [intervalIntegrable_chebyshevRemainder_div](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/intervalintegrable-chebyshevremainder-div--5d4b26d15ea5bedcb332c5c1.md) | 504 | `result-track:5d4b26d15ea5bedcb332c5c1cdbe9c17f24d6a19a11ed62fc057bb945871edfe` |
| 25 | `theorem` | [integral_psi_div_eq_corrected](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/integral-psi-div-eq-corrected--0aec4b867022b58ed760597e.md) | 517 | `result-track:0aec4b867022b58ed760597e20424ea6fe4a6260bd00c467a08055f143550fb1` |
| 26 | `theorem` | [r2Star_eq_corrected](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/r2star-eq-corrected--9c08634b824e156fa6177504.md) | 543 | `result-track:9c08634b824e156fa617750493e920fe2fa725e9adfbb75e0912739009569d0a` |
| 27 | `theorem` | [r2Star_abs_le_corrected](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/declarations/r2star-abs-le-corrected--d255110ac1472ee5b145bd87.md) | 561 | `result-track:d255110ac1472ee5b145bd87b694c722b62eb8631587223f5e8b88c940c7ce62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
