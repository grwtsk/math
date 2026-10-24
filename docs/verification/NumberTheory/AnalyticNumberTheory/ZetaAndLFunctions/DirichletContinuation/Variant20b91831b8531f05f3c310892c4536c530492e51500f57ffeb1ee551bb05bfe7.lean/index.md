# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletContinuation.Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ede3211d8b863f8b9ccc841427cb4e967d92fdc3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ede3211d8b863f8b9ccc841427cb4e967d92fdc3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DirichletCharacter.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunction--fca1b3d93606862ba2ccedf1.md) | 57 | `declaration-track:fca1b3d93606862ba2ccedf115413cbc83d1866a13410f60f64d850343bcd882` |
| 2 | `lemma` | [LFunction_modOne_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunction-modone-eq--c80306d888f5698c664b6d37.md) | 63 | `result-track:c80306d888f5698c664b6d37834d253d938dbc2f6fcb2538f08799582ed129b4` |
| 3 | `lemma` | [LFunction_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunction-eq-lseries--a93c7445e9b9945f7e528f6f.md) | 71 | `result-track:a93c7445e9b9945f7e528f6fc04c0f324ca6cc03ad355d884150ea585a5260f8` |
| 4 | `lemma` | [deriv_LFunction_eq_deriv_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/deriv-lfunction-eq-deriv-lseries--2dbafca2c0c24eadd84710b4.md) | 75 | `result-track:2dbafca2c0c24eadd84710b442784eca3b530c5566f9b5e1782a347a7c73740b` |
| 5 | `lemma` | [differentiableAt_LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/differentiableat-lfunction--80bed3c079dd6d2531e38475.md) | 88 | `result-track:80bed3c079dd6d2531e384759d9a6202fa98da0cc45514476ae5515c5fb23aba` |
| 6 | `lemma` | [differentiable_LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/differentiable-lfunction--40b5f2527a65bb01208ccabf.md) | 94 | `result-track:40b5f2527a65bb01208ccabf13df89f06eb5cc1e9befdaaaedca2b17974a4889` |
| 7 | `lemma` | [Even.LFunction_neg_two_mul_nat_add_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/even-lfunction-neg-two-mul-nat-add-one--34ca43d266411e83cfbfc349.md) | 100 | `result-track:34ca43d266411e83cfbfc349cade0031fc11af5d66808a051cb5c243d17737ea` |
| 8 | `lemma` | [Even.LFunction_neg_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/even-lfunction-neg-two-mul-nat--c2cc35f9e86e65fd5a226924.md) | 106 | `result-track:c2cc35f9e86e65fd5a2269244877148a78195a18461ec565ecaa2e13867452ca` |
| 9 | `lemma` | [Odd.LFunction_neg_two_mul_nat_sub_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/odd-lfunction-neg-two-mul-nat-sub-one--3ff05b5452d3e44982a7e1e6.md) | 112 | `result-track:3ff05b5452d3e44982a7e1e64ad310cbfc05bb11fc0956115809f64087eb3a0a` |
| 10 | `lemma` | [LFunction_changeLevel_aux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunction-changelevel-aux--062535af40159e17250e6b7f.md) | 121 | `result-track:062535af40159e17250e6b7f3fc5888b713145434ee00c8b992dd6400fe4fc9e` |
| 11 | `lemma` | [LFunction_changeLevel](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunction-changelevel--adb8af2a3babbbb44471ff6f.md) | 146 | `result-track:adb8af2a3babbbb44471ff6f846761d077848da7f75e56913bb7505763ad0e24` |
| 12 | `abbrev` | [LFunctionTrivChar](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunctiontrivchar--45569d1c03d794e500713ae1.md) | 165 | `declaration-track:45569d1c03d794e500713ae1e2809fe1189f735c01b44b7b4adc5ee232df5147` |
| 13 | `lemma` | [LFunctionTrivChar_eq_mul_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunctiontrivchar-eq-mul-riemannzeta--0e58e9a1da9b39676b4fea59.md) | 170 | `result-track:0e58e9a1da9b39676b4fea59557f5fde31b7db8ab75c17a87ceb12010dc9265c` |
| 14 | `lemma` | [LFunctionTrivChar_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunctiontrivchar-residue-one--23fc80915fb9a947972071ee.md) | 178 | `result-track:23fc80915fb9a947972071eef2986bc7566b38ecb07751bf21ff7de8cdc46f16` |
| 15 | `def` | [gammaFactor](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/gammafactor--2c7f72e7d2e44912702e1615.md) | 203 | `declaration-track:2c7f72e7d2e44912702e16150b1e12b38d65eab88decfc37cbaa37472cedb7fc` |
| 16 | `lemma` | [Even.gammaFactor_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/even-gammafactor-def--34eca8e083a96c30a970c341.md) | 206 | `result-track:34eca8e083a96c30a970c341edd77a38f64d6535c12a4e02aa04f2afce0cbb46` |
| 17 | `lemma` | [Odd.gammaFactor_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/odd-gammafactor-def--b6ab3eaf5dbb64df83d3017c.md) | 210 | `result-track:b6ab3eaf5dbb64df83d3017c225af82f744c3ed0f35e85acf37166737f89839d` |
| 18 | `def` | [completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/completedlfunction--e6ecb3bda1e5a79766a95d7a.md) | 220 | `declaration-track:e6ecb3bda1e5a79766a95d7a8d16cfa5bf1efa24bacbbc329604a381e4e4507f` |
| 19 | `lemma` | [completedLFunction_modOne_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/completedlfunction-modone-eq--d7dc32a2a8ce2af5a854428e.md) | 227 | `result-track:d7dc32a2a8ce2af5a854428e52456106ac6e94065189908a5d42c2397fa28dfc` |
| 20 | `lemma` | [differentiableAt_completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/differentiableat-completedlfunction--e188b6f68584d6950e5d25ce.md) | 239 | `result-track:e188b6f68584d6950e5d25cef386dca04434e9c3eafadc23d224f518403e35a5` |
| 21 | `lemma` | [differentiable_completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/differentiable-completedlfunction--888d45733033b0901d51682b.md) | 246 | `result-track:888d45733033b0901d51682b17b0c4a401e9c18c44e04affbf370118eb47686a` |
| 22 | `lemma` | [LFunction_eq_completed_div_gammaFactor](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunction-eq-completed-div-gammafactor--25d9faed3ccc9c36c2199da9.md) | 255 | `result-track:25d9faed3ccc9c36c2199da9e0c7207d2c498a7dce725ef3008f0b4e5a2b0ee5` |
| 23 | `def` | [rootNumber](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/rootnumber--08fe38f8e688af8deca95986.md) | 268 | `declaration-track:08fe38f8e688af8deca95986ffa4440c8d09b0ff9fd5cfef7688875b98cdf57c` |
| 24 | `lemma` | [rootNumber_modOne](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/rootnumber-modone--0d232bd6dde0b687457f1186.md) | 272 | `result-track:0d232bd6dde0b687457f1186c0b6a9327a5c38720f08c316805c840de05b7e36` |
| 25 | `theorem` | [completedLFunction_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/completedlfunction-one-sub--4e6d9a17ad9814e5743df005.md) | 280 | `result-track:4e6d9a17ad9814e5743df005b4ab865e853194761690a3643845564c0451c7e3` |
| 26 | `abbrev` | [LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunctiontrivchar--e7eb1acd35088c1fec525f57.md) | 334 | `declaration-track:e7eb1acd35088c1fec525f57c18d37497cdf50cc0a17c57c524c76d2d992945e` |
| 27 | `lemma` | [LFunctionTrivChar₁_apply_one_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/lfunctiontrivchar-apply-one-ne-zero--7de78fb94520d3407ad94740.md) | 338 | `result-track:7de78fb94520d3407ad94740c028959ffe2272258c620730e4fdfe61cd4a36be` |
| 28 | `lemma` | [differentiable_LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/differentiable-lfunctiontrivchar--91ea37c27e43670b63e03fa6.md) | 344 | `result-track:91ea37c27e43670b63e03fa6479d303b0396972e939bdac2a319bf45e717c507` |
| 29 | `lemma` | [deriv_LFunctionTrivChar₁_apply_of_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/deriv-lfunctiontrivchar-apply-of-ne-one--6d65451ce04b5586b3d8a0b9.md) | 353 | `result-track:6d65451ce04b5586b3d8a0b99ada4a932e26aeaa10e9c7c6c1d82e88103b9599` |
| 30 | `lemma` | [continuousOn_neg_logDeriv_LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/continuouson-neg-logderiv-lfunctiontrivchar--05bd6626d7c1accbfde82a01.md) | 365 | `result-track:05bd6626d7c1accbfde82a01846b35147525c638bf0ccbe591b0d09ebdef8838` |
| 31 | `lemma` | [continuousOn_neg_logDeriv_LFunction_of_nontriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/declarations/continuouson-neg-logderiv-lfunction-of-nontriv--ab1046961972704366793a82.md) | 385 | `result-track:ab1046961972704366793a827620ace0d1a707c1e5e250c152b6f91d02722001` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
