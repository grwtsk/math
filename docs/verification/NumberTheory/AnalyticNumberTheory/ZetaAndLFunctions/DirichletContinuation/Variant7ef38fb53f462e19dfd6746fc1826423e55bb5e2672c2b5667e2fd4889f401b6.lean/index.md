# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletContinuation.Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c72580697983d86706cff17ccbea2cee6475a3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c72580697983d86706cff17ccbea2cee6475a3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean.json)

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
| 1 | `def` | [LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunction--51055488d9cd150b4468944e.md) | 61 | `declaration-track:51055488d9cd150b4468944e189dfa598d835c89dc9cd2127066585eb225aa13` |
| 2 | `lemma` | [LFunction_modOne_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunction-modone-eq--22f277c744059faae032ff8f.md) | 67 | `result-track:22f277c744059faae032ff8f7f1afc41dd8592f66de42da1a24e894b0c8de1c4` |
| 3 | `lemma` | [LFunction_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunction-eq-lseries--02f970fd408a81378cae7213.md) | 75 | `result-track:02f970fd408a81378cae7213977b420b38594dbb94e8da9060f347e35cc0a93f` |
| 4 | `lemma` | [deriv_LFunction_eq_deriv_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/deriv-lfunction-eq-deriv-lseries--8286247ee81753e854089856.md) | 79 | `result-track:8286247ee81753e85408985685e3bedfe82162e10d7fdf92226fc8b5c06f7667` |
| 5 | `lemma` | [differentiableAt_LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/differentiableat-lfunction--4481fcaaa2f0ca84f63ed931.md) | 92 | `result-track:4481fcaaa2f0ca84f63ed9310a2acb09b5039d9709af61c751e44e28e6c880e4` |
| 6 | `lemma` | [differentiable_LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/differentiable-lfunction--1919323da29c6086e174b0a8.md) | 98 | `result-track:1919323da29c6086e174b0a87d0dac364a58991047479d4bccee99731d24aeeb` |
| 7 | `lemma` | [Even.LFunction_neg_two_mul_nat_add_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/even-lfunction-neg-two-mul-nat-add-one--adb0caf349206a26f6a41969.md) | 104 | `result-track:adb0caf349206a26f6a41969358bdb0c555ac76cf25b8ff9010542e382cd939c` |
| 8 | `lemma` | [Even.LFunction_neg_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/even-lfunction-neg-two-mul-nat--88fc832e7a4016553291de55.md) | 110 | `result-track:88fc832e7a4016553291de5541054c97dad516136e37422ca6299ff3256879de` |
| 9 | `lemma` | [Odd.LFunction_neg_two_mul_nat_sub_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/odd-lfunction-neg-two-mul-nat-sub-one--c510b37f20519447c0edad73.md) | 116 | `result-track:c510b37f20519447c0edad730ea79393b6566a7201b82f55eb3dbe5e1978fc47` |
| 10 | `lemma` | [LFunction_changeLevel_aux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunction-changelevel-aux--b6cfea047bf37ed3c02cb3a7.md) | 125 | `result-track:b6cfea047bf37ed3c02cb3a748406b13d6541279d3aaadccc04f22972a9675dc` |
| 11 | `lemma` | [LFunction_changeLevel](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunction-changelevel--9403dd45b4730652f245faac.md) | 150 | `result-track:9403dd45b4730652f245faaca69de338c2051acfb48b8aec25ed4c669d81ae4f` |
| 12 | `abbrev` | [LFunctionTrivChar](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunctiontrivchar--00c4f5ea6a7c0b118fef42b7.md) | 169 | `declaration-track:00c4f5ea6a7c0b118fef42b78930a16e7f4dcea322dc8e5f59be92d2a2c87303` |
| 13 | `lemma` | [LFunctionTrivChar_eq_mul_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunctiontrivchar-eq-mul-riemannzeta--c3e166999beb3ad1a33fedd5.md) | 174 | `result-track:c3e166999beb3ad1a33fedd5983549bd35116d9739e4ef802c1830e8c7d20987` |
| 14 | `lemma` | [LFunctionTrivChar_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunctiontrivchar-residue-one--1be4270495a78c3ed3e905aa.md) | 182 | `result-track:1be4270495a78c3ed3e905aad44279277800a4e0779a36ffc389d4b32096288e` |
| 15 | `def` | [gammaFactor](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/gammafactor--a25cebac9384c640b675a55c.md) | 207 | `declaration-track:a25cebac9384c640b675a55c03cd0148ef775b61b1ecd6152bb7bf194edee6fa` |
| 16 | `lemma` | [Even.gammaFactor_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/even-gammafactor-def--22c0c5e7bda30cf129edc6ae.md) | 210 | `result-track:22c0c5e7bda30cf129edc6ae18beaf3d43795aaf30728b2fc32579b1075ad56e` |
| 17 | `lemma` | [Odd.gammaFactor_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/odd-gammafactor-def--50343ec927be3ddcf747d44c.md) | 214 | `result-track:50343ec927be3ddcf747d44c3c8664f5da9530d5d5341664d73f70f48302486b` |
| 18 | `def` | [completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/completedlfunction--3cb7048c86e3a71b742a0d3c.md) | 224 | `declaration-track:3cb7048c86e3a71b742a0d3c0b5935808171d944d316192c560229b0e3887e1b` |
| 19 | `lemma` | [completedLFunction_modOne_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/completedlfunction-modone-eq--75db968bdd6b4ab380aef0bd.md) | 231 | `result-track:75db968bdd6b4ab380aef0bd63ec1648413d129630cd9751240652ca1039a3d8` |
| 20 | `lemma` | [differentiableAt_completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/differentiableat-completedlfunction--dbbc256ecaf693ab5a2da45a.md) | 243 | `result-track:dbbc256ecaf693ab5a2da45aaf31696537d70691c02ad575102d04bb50b1517d` |
| 21 | `lemma` | [differentiable_completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/differentiable-completedlfunction--421397df3126ceedfa61dd58.md) | 250 | `result-track:421397df3126ceedfa61dd58209bd93b4b6ff5a7a82f826c0dd3eae56b5f2c9e` |
| 22 | `lemma` | [LFunction_eq_completed_div_gammaFactor](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunction-eq-completed-div-gammafactor--576a72c4ea1c5de2dff987a3.md) | 259 | `result-track:576a72c4ea1c5de2dff987a3cbc3cca013393317f9cf79f3f0beb91529af529d` |
| 23 | `def` | [rootNumber](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/rootnumber--68e2a04f798d758d3c0c7df6.md) | 272 | `declaration-track:68e2a04f798d758d3c0c7df6759f40cd63e073ca7114b03cfab9824aa6ec3252` |
| 24 | `lemma` | [rootNumber_modOne](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/rootnumber-modone--6bc2895b5cdd4e1a09eec9c5.md) | 276 | `result-track:6bc2895b5cdd4e1a09eec9c57ecb73cfa8279a15f91b9c10db23f366413545cb` |
| 25 | `theorem` | [completedLFunction_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/completedlfunction-one-sub--4aa4ba271220dff47f74b9bd.md) | 284 | `result-track:4aa4ba271220dff47f74b9bd3b773fa32ea428c6f54d0b63ddfe4900add51925` |
| 26 | `abbrev` | [LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunctiontrivchar--ed2613e778303325412e684f.md) | 338 | `declaration-track:ed2613e778303325412e684fd75f89e9ec78c5566c415121f025f67a2a16ba3a` |
| 27 | `lemma` | [LFunctionTrivChar₁_apply_one_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/lfunctiontrivchar-apply-one-ne-zero--7330f675ad5cff7f02b731b9.md) | 342 | `result-track:7330f675ad5cff7f02b731b9feffd675b6becdd39ffea2eac614950cc64bb1fe` |
| 28 | `lemma` | [differentiable_LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/differentiable-lfunctiontrivchar--27337570544e2dec259b8d5a.md) | 348 | `result-track:27337570544e2dec259b8d5aa8ac7e980f605c2371a267249e2e83372d0ada11` |
| 29 | `lemma` | [deriv_LFunctionTrivChar₁_apply_of_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/deriv-lfunctiontrivchar-apply-of-ne-one--eb798609e48bcf8f17fe0a1c.md) | 357 | `result-track:eb798609e48bcf8f17fe0a1c0f008ea554a0248a8a3ee8867ee23e375a329977` |
| 30 | `lemma` | [continuousOn_neg_logDeriv_LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/continuouson-neg-logderiv-lfunctiontrivchar--e1da5101a67313e0036bb3ad.md) | 369 | `result-track:e1da5101a67313e0036bb3ad6aa5526cb03839e33f239b2da029af5a139e48c6` |
| 31 | `lemma` | [continuousOn_neg_logDeriv_LFunction_of_nontriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/declarations/continuouson-neg-logderiv-lfunction-of-nontriv--1d4f659be2b6971eb48d17e6.md) | 389 | `result-track:1d4f659be2b6971eb48d17e630f3dfd007d8ff7bce5305533d77148cd9a0d6dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
