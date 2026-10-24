# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MeanInequalities.Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f40c8e9540517f10b3aff9d0280120e23c6c6f3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f40c8e9540517f10b3aff9d0280120e23c6c6f3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MeanInequalities` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MeanInequalitiesPow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SpecialFunctions.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Add` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_mul_le_one_of_lintegral_rpow_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-mul-le-one-of-lintegral-rpow-eq-one--089f56b90bdcf515fba1ad8e.md) | 62 | `result-track:089f56b90bdcf515fba1ad8ea914f4ca7f8ba099b4bcf26bcca7b2365683a45f` |
| 2 | `def` | [funMulInvSnorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/funmulinvsnorm--330aa4d509dd14cd40f576e2.md) | 78 | `declaration-track:330aa4d509dd14cd40f576e2d9dac8eb99e3054b4b1265ad4b39f7d4b4050482` |
| 3 | `theorem` | [fun_eq_funMulInvSnorm_mul_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/fun-eq-funmulinvsnorm-mul-elpnorm--6a435f734ed2e5e4e3ead8e9.md) | 81 | `result-track:6a435f734ed2e5e4e3ead8e942bf7963485cb0df2df0fdda814132a1c9acf34e` |
| 4 | `theorem` | [funMulInvSnorm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/funmulinvsnorm-rpow--3566da79f3e4cbd8e4fdaeca.md) | 86 | `result-track:3566da79f3e4cbd8e4fdaeca1edcf52781f9a75a259712db399d8835b9fe46a3` |
| 5 | `theorem` | [lintegral_rpow_funMulInvSnorm_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-rpow-funmulinvsnorm-eq-one--87b6d805eabedd68fde0843d.md) | 93 | `result-track:87b6d805eabedd68fde0843dab2a49aac875b9da1c4324d4877af9056ab695e4` |
| 6 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-ne-top--2020af34e4f212f911b69f5f.md) | 101 | `result-track:2020af34e4f212f911b69f5f52f37430cd9bc53f724adbe9f243c9672b98d427` |
| 7 | `theorem` | [ae_eq_zero_of_lintegral_rpow_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/ae-eq-zero-of-lintegral-rpow-eq-zero--fbc579b06b49aa8f7c09b7be.md) | 123 | `result-track:fbc579b06b49aa8f7c09b7bef6bf66bd5de7ac7b8fb8f174a74d255b1fc60f25` |
| 8 | `theorem` | [lintegral_mul_eq_zero_of_lintegral_rpow_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-mul-eq-zero-of-lintegral-rpow-eq-zero--f7dd5ab0320263fdcffaf5a3.md) | 130 | `result-track:f7dd5ab0320263fdcffaf5a39cd965611f0aa01cf76a75e26a25758c1c401900` |
| 9 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_eq_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-eq-top--85e1b00ff2e8ec5e9fb80304.md) | 138 | `result-track:85e1b00ff2e8ec5e9fb803048d66c6848f581ff57cd0908bb9c77967161e70d8` |
| 10 | `theorem` | [lintegral_mul_le_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-mul-le-lp-mul-lq--d02992a820bddbacf6deb383.md) | 149 | `result-track:d02992a820bddbacf6deb3837df79e1f5930c909bc952c2d744d7324fb2e1663` |
| 11 | `theorem` | [lintegral_mul_norm_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-mul-norm-pow-le--c15d3fb7f6e77bad379a89fc.md) | 169 | `result-track:c15d3fb7f6e77bad379a89fc9f282ac93778366a0ecd064a8c4ad0c559e90c24` |
| 12 | `theorem` | [lintegral_prod_norm_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-prod-norm-pow-le--954962a7abdf0bf60206f5a5.md) | 188 | `result-track:954962a7abdf0bf60206f5a5b59249b99db0c26a5f45f05542f8db73152a1cb0` |
| 13 | `theorem` | [lintegral_mul_prod_norm_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-mul-prod-norm-pow-le--86dae1c5efbdfb072def9ca4.md) | 240 | `result-track:86dae1c5efbdfb072def9ca4cb3b886d2c9e7c42bb9e7f7c3ff75391ddd0ff26` |
| 14 | `theorem` | [lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-rpow-add-lt-top-of-lintegral-rpow-lt-top--3f282c5a79762ab917a21b19.md) | 262 | `result-track:3f282c5a79762ab917a21b19e01660a766c72f5dc8970e3fb756528df01bd12d` |
| 15 | `theorem` | [lintegral_Lp_mul_le_Lq_mul_Lr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-lp-mul-le-lq-mul-lr--c4516e725d8f02418bce1251.md) | 299 | `result-track:c4516e725d8f02418bce1251ecbefd7f7211cdb2fc0d71d1b5e23cad9f4cba0b` |
| 16 | `theorem` | [lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-mul-rpow-le-lintegral-rpow-mul-lintegral-rpow--90b95bf83e019401f2661039.md) | 332 | `result-track:90b95bf83e019401f266103959ab8c002990f414add7266f38f8afbcd007e46a` |
| 17 | `theorem` | [lintegral_rpow_add_le_add_eLpNorm_mul_lintegral_rpow_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-rpow-add-le-add-elpnorm-mul-lintegral-rpow-add--735e4820c14a38cec042663c.md) | 351 | `result-track:735e4820c14a38cec042663c7c55b6f604d7f046b120e8992ecfaa85e4b0c125` |
| 18 | `theorem` | [lintegral_Lp_add_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-lp-add-le-aux--767ed3b1b507206bef7205e9.md) | 386 | `result-track:767ed3b1b507206bef7205e99c648ec3dde934da53923d6640f2b211ec5a4684` |
| 19 | `theorem` | [lintegral_Lp_add_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-lp-add-le--4dad7b74ec43dcea17c772d3.md) | 420 | `result-track:4dad7b74ec43dcea17c772d356d825f45761d9f3df07ccdae65e977a116490d9` |
| 20 | `theorem` | [lintegral_Lp_add_le_of_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/lintegral-lp-add-le-of-le-one--db5c4e906f01bdc983b7cc5c.md) | 450 | `result-track:db5c4e906f01bdc983b7cc5cd194043d5668fbc633d5d4abd9bcfd8bea2b61c0` |
| 21 | `theorem` | [NNReal.lintegral_mul_le_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/declarations/nnreal-lintegral-mul-le-lp-mul-lq--55d5a9a67425f58c876b272a.md) | 471 | `result-track:55d5a9a67425f58c876b272af6932170b07cceca662a2b41a699d0e6779b81c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
