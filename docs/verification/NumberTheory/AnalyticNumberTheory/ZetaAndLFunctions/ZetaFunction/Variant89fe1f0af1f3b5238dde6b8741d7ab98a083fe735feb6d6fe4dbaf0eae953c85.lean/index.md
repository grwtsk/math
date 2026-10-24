# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ZetaFunction.Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32fb55b80053cd2ceca6e621ffb4cda24a0f7394",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32fb55b80053cd2ceca6e621ffb4cda24a0f7394`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.JacobiTheta.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ZetaValues` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/macro-rules--44dbd12c448bad38ab2351e7.md) | 79 | `declaration-track:44dbd12c448bad38ab2351e7e56addfbbc09a21038cf6aa48d16674651f38381` |
| 2 | `def` | [zetaKernel₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/zetakernel--be2645451d01c065300643bf.md) | 82 | `declaration-track:be2645451d01c065300643bf00455bbbef54b660eaca6f4b87ad12d9c140de26` |
| 3 | `def` | [zetaKernel₂](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/zetakernel--e180cceb5025f165cccb4372.md) | 87 | `declaration-track:e180cceb5025f165cccb4372e2e13824444ff520ae29d7c32ccd6102f7e1c592` |
| 4 | `def` | [riemannCompletedZeta₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemanncompletedzeta--df5dd1fe530f54dce5a2ac1a.md) | 92 | `declaration-track:df5dd1fe530f54dce5a2ac1ad27e4c1e7781e336469b37088645f4166371ade4` |
| 5 | `def` | [riemannCompletedZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemanncompletedzeta--023b5cb1de0ae660c992aaab.md) | 98 | `declaration-track:023b5cb1de0ae660c992aaab18c169105a091b55e2d6093ef15e6e4fb67af7b3` |
| 6 | `theorem` | [riemannZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemannzeta-zero--1922b719f10252363ac2ac9a.md) | 112 | `result-track:1922b719f10252363ac2ac9a95a14162c869a4a8db69f76ed68d3f24c66d77ea` |
| 7 | `theorem` | [summable_exp_neg_pi_mul_nat_sq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/summable-exp-neg-pi-mul-nat-sq--95b6697fcf936d7116ca0bea.md) | 124 | `result-track:95b6697fcf936d7116ca0bead6a31afb4d707f9423b94a1c5c4f3c598b157d99` |
| 8 | `theorem` | [zetaKernel₁_eq_jacobiTheta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/zetakernel-eq-jacobitheta--bf86cb2802cfc41300e95751.md) | 138 | `result-track:bf86cb2802cfc41300e9575127682093989924db483d2bbc5cd614384de71d5e` |
| 9 | `theorem` | [continuousAt_zetaKernel₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/continuousat-zetakernel--d835dabb42d478cbee31bfb5.md) | 149 | `result-track:d835dabb42d478cbee31bfb5b04f4a4f8f8f1e3b4f3c3d80dde841fee71056b7` |
| 10 | `theorem` | [locally_integrable_zetaKernel₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/locally-integrable-zetakernel--dd00b64799cc7617c8776e9c.md) | 160 | `result-track:dd00b64799cc7617c8776e9cc561261e102bfa7cb4a71054d28a65e6f1be7e27` |
| 11 | `theorem` | [locally_integrable_zetaKernel₂](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/locally-integrable-zetakernel--91086280e93ad4b4d63c9fba.md) | 166 | `result-track:91086280e93ad4b4d63c9fba1d031a3a8c06df9a01845563dc725f43aed2e735` |
| 12 | `theorem` | [zetaKernel₂_one_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/zetakernel-one-div--115244e85eda82c0ae92a4e3.md) | 185 | `result-track:115244e85eda82c0ae92a4e3fff836b27ba897c507bfee1182a242e869e2d8ad` |
| 13 | `theorem` | [isBigO_atTop_zetaKernel₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/isbigo-attop-zetakernel--5aa830e860799f318ad8b282.md) | 222 | `result-track:5aa830e860799f318ad8b2829c2b0efacae9a207f6bc3a424a879bf4cd726138` |
| 14 | `theorem` | [isBigO_atTop_zetaKernel₂](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/isbigo-attop-zetakernel--c48cad0d8bcf263f127fb451.md) | 238 | `result-track:c48cad0d8bcf263f127fb45138ba721692c8d8ef2858fc72be1f08d61f12f610` |
| 15 | `theorem` | [isBigO_zero_zetaKernel₂](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/isbigo-zero-zetakernel--56f4e9b7dba329c72340d6ec.md) | 248 | `result-track:56f4e9b7dba329c72340d6ec798f5762100ea1db0386070516a0c53c8d8842ae` |
| 16 | `theorem` | [isBigO_zero_zetaKernel₂_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/isbigo-zero-zetakernel-rpow--2936828f4952dd7e300be729.md) | 269 | `result-track:2936828f4952dd7e300be729df25127d67323e5521f866e90ef0cfdf9d552813` |
| 17 | `theorem` | [isBigO_zero_zetaKernel₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/isbigo-zero-zetakernel--3885b1c09e6e26ea52ba6c24.md) | 285 | `result-track:3885b1c09e6e26ea52ba6c245642857a774ba6b4b6f06be20df720cdb1717c3d` |
| 18 | `theorem` | [differentiableAt_mellin_zetaKernel₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/differentiableat-mellin-zetakernel--b5251c76db29563bbe02e13d.md) | 313 | `result-track:b5251c76db29563bbe02e13d8646f718a6dcab55896f6e3889f116d7dbc42298` |
| 19 | `theorem` | [differentiable_mellin_zetaKernel₂](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/differentiable-mellin-zetakernel--506c1913fb7043d8b514bc87.md) | 320 | `result-track:506c1913fb7043d8b514bc87f3d7119eab0600cee1601a4ed2a25a917c51d9dc` |
| 20 | `theorem` | [differentiable_completed_zeta₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/differentiable-completed-zeta--6fa89c845b57737f058be0a1.md) | 326 | `result-track:6fa89c845b57737f058be0a1d57377c519d3089a9fbd49f8842ae57e8bce32d7` |
| 21 | `theorem` | [differentiableAt_completed_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/differentiableat-completed-zeta--5b9950f9f2be5842f5f81760.md) | 332 | `result-track:5b9950f9f2be5842f5f81760fe77f71c4a76ceb1c3e5ae1a61f8b21196cf4562` |
| 22 | `theorem` | [differentiableAt_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/differentiableat-riemannzeta--f1fb5fc5391a92e177d781ea.md) | 341 | `result-track:f1fb5fc5391a92e177d781ea6f5ef18cb406bf5765efd681495128e49ce14f0c` |
| 23 | `theorem` | [riemannZeta_neg_two_mul_nat_add_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemannzeta-neg-two-mul-nat-add-one--99c38d6e765e5dfa623d57ee.md) | 417 | `result-track:99c38d6e765e5dfa623d57ee0175fa6c3d2e65d4a68118cf040533babf5e718a` |
| 24 | `def` | [RiemannHypothesis](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemannhypothesis--0a153a4f7ca5dbd1f42db33b.md) | 427 | `declaration-track:0a153a4f7ca5dbd1f42db33b4f6c470dd71faf03e74ee4347867ff167d05a04c` |
| 25 | `theorem` | [hasMellin_one_div_sqrt_Ioc](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/hasmellin-one-div-sqrt-ioc--85c7432f01256bbdd387f363.md) | 436 | `result-track:85c7432f01256bbdd387f3637339be059360fb9a290fc587fd1a1b19cc93ecf4` |
| 26 | `theorem` | [hasMellin_one_div_sqrt_sub_one_div_two_Ioc](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/hasmellin-one-div-sqrt-sub-one-div-two-ioc--1bfaec26750ea0f1571bbd8c.md) | 449 | `result-track:1bfaec26750ea0f1571bbd8cf86f5a6c40ef0fdf1ffbb89fec353f66e3d07738` |
| 27 | `theorem` | [mellin_zetaKernel₂_eq_of_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/mellin-zetakernel-eq-of-lt-re--991a1fe0792d1d61fc3184d6.md) | 468 | `result-track:991a1fe0792d1d61fc3184d65543aa669504344ddd2f11c23fbf37a4fdff0cc5` |
| 28 | `theorem` | [completed_zeta_eq_mellin_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/completed-zeta-eq-mellin-of-one-lt-re--8ea6084a34e7d975a5ea1192.md) | 477 | `result-track:8ea6084a34e7d975a5ea1192714fd3346097dec49e52bdb44f26b1399fef0226` |
| 29 | `theorem` | [integral_cpow_mul_exp_neg_pi_mul_sq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/integral-cpow-mul-exp-neg-pi-mul-sq--43d75ff622acb408fc7b375b.md) | 497 | `result-track:43d75ff622acb408fc7b375baa359cdf5e38e1ba61100aae1adbfa104ff6b658` |
| 30 | `theorem` | [mellin_zetaKernel₁_eq_tsum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/mellin-zetakernel-eq-tsum--86c2ee9c5d7781006c1e45a5.md) | 518 | `result-track:86c2ee9c5d7781006c1e45a50f35f88e0af90c71845c29e2a5a7710925437ea7` |
| 31 | `theorem` | [completed_zeta_eq_tsum_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/completed-zeta-eq-tsum-of-one-lt-re--a7c2333db4e49f880552e96b.md) | 564 | `result-track:a7c2333db4e49f880552e96b4d4aa89d7016b5da4906a4bb698ea78e543be75c` |
| 32 | `theorem` | [zeta_eq_tsum_one_div_nat_add_one_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/zeta-eq-tsum-one-div-nat-add-one-cpow--4159f4648f9e1628011f35ef.md) | 576 | `result-track:4159f4648f9e1628011f35ef80493b224c510de04d2c0a32dcf2f52e0757c163` |
| 33 | `theorem` | [zeta_eq_tsum_one_div_nat_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/zeta-eq-tsum-one-div-nat-cpow--2a82a4635243683e88892102.md) | 590 | `result-track:2a82a4635243683e88892102feaf9bab65348feabc000c2abddb48ccd8851e3e` |
| 34 | `theorem` | [zeta_nat_eq_tsum_of_gt_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/zeta-nat-eq-tsum-of-gt-one--a86c1b058ebe4cf9bd8afb83.md) | 605 | `result-track:a86c1b058ebe4cf9bd8afb83b0667a6243b01a9dba640259ff4bea22dbf2f4e3` |
| 35 | `theorem` | [riemannZeta_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemannzeta-two-mul-nat--24b5dfa485cc890ed553875d.md) | 617 | `result-track:24b5dfa485cc890ed553875dffb159c951d055154aae6da266556d907ee5f554` |
| 36 | `theorem` | [riemannZeta_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemannzeta-two--058cfe4cfe6ab265b9be2f1c.md) | 630 | `result-track:058cfe4cfe6ab265b9be2f1cfbdd856096aedde9e619dd1b35c43647dfdd20cc` |
| 37 | `theorem` | [riemannZeta_four](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemannzeta-four--44e7cfb48c7b3478db65e847.md) | 637 | `result-track:44e7cfb48c7b3478db65e8472da6180ba70c8813701a603ecbd7f2c430afd25a` |
| 38 | `theorem` | [riemannCompletedZeta₀_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemanncompletedzeta-one-sub--97125570706c920c5d45e292.md) | 652 | `result-track:97125570706c920c5d45e292a7788873c53a7dfb066c48ea3ef77aa129b7548e` |
| 39 | `theorem` | [riemannCompletedZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemanncompletedzeta-one-sub--f1db7ef6e9e39091f541d645.md) | 668 | `result-track:f1db7ef6e9e39091f541d645690b66978a5d9506e8612a9713ff45735e902c32` |
| 40 | `theorem` | [riemannZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemannzeta-one-sub--86aca3d4389d9f3f9ebaca7b.md) | 676 | `result-track:86aca3d4389d9f3f9ebaca7bb3993e45a8cf4e875e841cdbc77163d061c94f5d` |
| 41 | `theorem` | [riemannZeta_neg_nat_eq_bernoulli](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/declarations/riemannzeta-neg-nat-eq-bernoulli--97ecaedfefcdb5b5d671e2fc.md) | 737 | `result-track:97ecaedfefcdb5b5d671e2fc3d231ec1a44028a2c8f9fa1fefac8fe2588139dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
