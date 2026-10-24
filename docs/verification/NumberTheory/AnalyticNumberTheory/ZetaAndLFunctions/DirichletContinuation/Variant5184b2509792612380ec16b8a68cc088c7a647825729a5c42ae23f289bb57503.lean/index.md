# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletContinuation.Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa988fadb21e31fc33d9b06a1f1d2711f31a4cda",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa988fadb21e31fc33d9b06a1f1d2711f31a4cda`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunction--1642f8ba242c778ae8d93348.md) | 69 | `declaration-track:1642f8ba242c778ae8d93348ac94e6b6e8b6eaf8aaf6f4c54e812a2375ccf981` |
| 2 | `lemma` | [LFunction_modOne_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunction-modone-eq--add16703e13912fcffb52462.md) | 75 | `result-track:add16703e13912fcffb5246233960c5a90abfb03b1fb28c609088c5579354ccd` |
| 3 | `lemma` | [LFunction_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunction-eq-lseries--13ea089119074b8388fe998c.md) | 83 | `result-track:13ea089119074b8388fe998c6c9e306ca7277f320aa4e86144e3c17819f296f9` |
| 4 | `lemma` | [deriv_LFunction_eq_deriv_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/deriv-lfunction-eq-deriv-lseries--738d9ee8974fcbb4586a3811.md) | 87 | `result-track:738d9ee8974fcbb4586a3811b2170a33bcd84e770e6adf595ef90152eb16f6c9` |
| 5 | `lemma` | [differentiableAt_LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/differentiableat-lfunction--d77593e645087e775846ee73.md) | 100 | `result-track:d77593e645087e775846ee73baa8b914643566b8547c77eb7d115087fd0322fc` |
| 6 | `lemma` | [differentiable_LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/differentiable-lfunction--c4225d0078bfb96e42ca5f15.md) | 106 | `result-track:c4225d0078bfb96e42ca5f152a2c11579a280ec25f01f4d7e0dc5ea176777b07` |
| 7 | `lemma` | [Even.LFunction_neg_two_mul_nat_add_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/even-lfunction-neg-two-mul-nat-add-one--695808b20cbf52e0d415d45f.md) | 112 | `result-track:695808b20cbf52e0d415d45f159b36c662876201890d5f04371870a32e40ad71` |
| 8 | `lemma` | [Even.LFunction_neg_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/even-lfunction-neg-two-mul-nat--87b50a05013a6572fbef8287.md) | 118 | `result-track:87b50a05013a6572fbef828783d8ae6a9424ca35e9c987b5272f97c5c396e1a5` |
| 9 | `lemma` | [Odd.LFunction_neg_two_mul_nat_sub_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/odd-lfunction-neg-two-mul-nat-sub-one--868693d635580fa3af388eb4.md) | 124 | `result-track:868693d635580fa3af388eb4681db9c8fb19dca5fe2727b243c2f09538676aa6` |
| 10 | `lemma` | [LFunction_changeLevel_aux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunction-changelevel-aux--74d12eec7087c233279e5205.md) | 133 | `result-track:74d12eec7087c233279e520508dbf82708c88b65c0a66c836ff0473eafcc8e79` |
| 11 | `lemma` | [LFunction_changeLevel](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunction-changelevel--479ba9270edebba9835175eb.md) | 158 | `result-track:479ba9270edebba9835175eb97505bd3a1647af86100b262acaf3bc47d2c74df` |
| 12 | `abbrev` | [LFunctionTrivChar](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunctiontrivchar--5a96def4b42b321b0782e0b7.md) | 177 | `declaration-track:5a96def4b42b321b0782e0b7cbffccffefb5e140d6654ac97a51f927c0bed02a` |
| 13 | `lemma` | [LFunctionTrivChar_eq_mul_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunctiontrivchar-eq-mul-riemannzeta--1d8d8b460c975df2dd83b1d8.md) | 182 | `result-track:1d8d8b460c975df2dd83b1d8cdd0c01f95ac09ddb7596907af1c1f69d97bf0c8` |
| 14 | `lemma` | [LFunctionTrivChar_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunctiontrivchar-residue-one--305167802c291a50f59ac6c0.md) | 190 | `result-track:305167802c291a50f59ac6c097d02f8b8b786cdf0dadab42ec8bfdcba172ee60` |
| 15 | `def` | [gammaFactor](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/gammafactor--13c2bfdb799a08e2c1555dbf.md) | 215 | `declaration-track:13c2bfdb799a08e2c1555dbfcc5f0b222a54b37dfcebcbc8191858f280a743af` |
| 16 | `lemma` | [Even.gammaFactor_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/even-gammafactor-def--367005f3530d4108c882d625.md) | 218 | `result-track:367005f3530d4108c882d625589c9ccc17ab14dfc0bc350b193c672e09a4a802` |
| 17 | `lemma` | [Odd.gammaFactor_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/odd-gammafactor-def--a81acb0e3ff43d86e99fe66c.md) | 222 | `result-track:a81acb0e3ff43d86e99fe66c4441f1441e04a49694f24dc28c9670cda4613892` |
| 18 | `def` | [completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/completedlfunction--70a8147cccf929ce90efd8ae.md) | 232 | `declaration-track:70a8147cccf929ce90efd8ae5c84b9af6b2f006fd06c3e2ea55c29e00d6f0a99` |
| 19 | `lemma` | [completedLFunction_modOne_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/completedlfunction-modone-eq--303a6c8746bb8a321ad393f4.md) | 239 | `result-track:303a6c8746bb8a321ad393f4b0b9a82843dc0dd5de762f83dfaaadde7c1fcf84` |
| 20 | `lemma` | [differentiableAt_completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/differentiableat-completedlfunction--9bb54f004d570c948bbaee43.md) | 251 | `result-track:9bb54f004d570c948bbaee43600490ac906a47cc14139720acd92226d68ce43d` |
| 21 | `lemma` | [differentiable_completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/differentiable-completedlfunction--ef1fa10c8d85b061134782d4.md) | 258 | `result-track:ef1fa10c8d85b061134782d43ed824fad3f799999137dd2a97e31dd640231bf5` |
| 22 | `lemma` | [LFunction_eq_completed_div_gammaFactor](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunction-eq-completed-div-gammafactor--1da4409481cb2ba18c090e74.md) | 267 | `result-track:1da4409481cb2ba18c090e7450625a9d8225c4b85d6400e3bcb3c88412b0512b` |
| 23 | `def` | [rootNumber](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/rootnumber--d0b8df9facfbd067da0afca1.md) | 280 | `declaration-track:d0b8df9facfbd067da0afca1870bca41115e73e22953f15dc0c6c33d138686a8` |
| 24 | `lemma` | [rootNumber_modOne](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/rootnumber-modone--2d299c90023ec114033f2c13.md) | 284 | `result-track:2d299c90023ec114033f2c13ce02b544a76c5974c4b1f644fda40580c3ab2bfb` |
| 25 | `theorem` | [completedLFunction_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/completedlfunction-one-sub--33e7e886f377a32a87fb5228.md) | 292 | `result-track:33e7e886f377a32a87fb52288204ad1c85dc66a9006c317498d4cc037afbac71` |
| 26 | `abbrev` | [LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunctiontrivchar--3017b2cec90eb97275ef0f2e.md) | 346 | `declaration-track:3017b2cec90eb97275ef0f2e865b59fa9a9f71d17b98287f4e4f70ddbb169d32` |
| 27 | `lemma` | [LFunctionTrivChar₁_apply_one_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/lfunctiontrivchar-apply-one-ne-zero--aa50ccae56758d770fcc710d.md) | 350 | `result-track:aa50ccae56758d770fcc710d06cd6414431c45e64d8b415f657edcb1d3cd905d` |
| 28 | `lemma` | [differentiable_LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/differentiable-lfunctiontrivchar--600564a44d5a7805187f8690.md) | 356 | `result-track:600564a44d5a7805187f8690080965425e41f5f5986d2726e4821a8b21e9720e` |
| 29 | `lemma` | [deriv_LFunctionTrivChar₁_apply_of_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/deriv-lfunctiontrivchar-apply-of-ne-one--789b1b6b444631ab63095624.md) | 365 | `result-track:789b1b6b444631ab63095624c50009b93501da0588af5c6aa7d9fbdfe7217875` |
| 30 | `lemma` | [continuousOn_neg_logDeriv_LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/continuouson-neg-logderiv-lfunctiontrivchar--a946e00adef9015c74d7b0dd.md) | 377 | `result-track:a946e00adef9015c74d7b0dd1e9793e534c572b384b0043af9ea02c4a1c27337` |
| 31 | `lemma` | [continuousOn_neg_logDeriv_LFunction_of_nontriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/declarations/continuouson-neg-logderiv-lfunction-of-nontriv--d1d0ba258d13b0f47e716ac3.md) | 397 | `result-track:d1d0ba258d13b0f47e716ac31660cf6b6636177ca4116c922a23039f8166fd2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
