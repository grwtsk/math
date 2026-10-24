# Verification target: GRWTSK.Analysis.FunctionalAnalysis.MeanInequalitiesPow.Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9a9d66478fec1cc87ce306165fa388dfefc4a68",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9a9d66478fec1cc87ce306165fa388dfefc4a68`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Jensen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/macro-rules--6b48189bc233b69de4fd41b9.md) | 62 | `declaration-track:6b48189bc233b69de4fd41b92784342d08819f94ff4fb6687cc07000488f8e94` |
| 2 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/pow-arith-mean-le-arith-mean-pow--ae0d3f183eebc361358aaac8.md) | 68 | `result-track:ae0d3f183eebc361358aaac89cbc29324b23c3f37de2ec811f50612a72c61039` |
| 3 | `theorem` | [pow_arith_mean_le_arith_mean_pow_of_even](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/pow-arith-mean-le-arith-mean-pow-of-even--eb73990d85105ea6e605d9f7.md) | 74 | `result-track:eb73990d85105ea6e605d9f7858b56b9865f2890e3057eb4e4af5c2c2957bc4c` |
| 4 | `theorem` | [pow_sum_div_card_le_sum_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/pow-sum-div-card-le-sum-pow--cb0eae1d65e27083dd87ae18.md) | 81 | `result-track:cb0eae1d65e27083dd87ae18d63af166b2612d4ed820a097c9ab19620211eca0` |
| 5 | `theorem` | [zpow_arith_mean_le_arith_mean_zpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/zpow-arith-mean-le-arith-mean-zpow--a03c2bfa2fd039b658b19178.md) | 98 | `result-track:a03c2bfa2fd039b658b19178f30938aee30da015d79f3d99c0aceaeb0d83aed1` |
| 6 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--47bd1c2d6786a60423df9403.md) | 104 | `result-track:47bd1c2d6786a60423df9403dad706ad2ef789735a1030e2d2b8544da8236b48` |
| 7 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/arith-mean-le-rpow-mean--57855c0ce9e8428ccafd5ac3.md) | 110 | `result-track:57855c0ce9e8428ccafd5ac3db6cdcabb701fdd0c362e0af4264f71c4aeb54d9` |
| 8 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/pow-arith-mean-le-arith-mean-pow--dc38b0a7b56244fb12bce07a.md) | 128 | `result-track:dc38b0a7b56244fb12bce07a38c0c44dd02f2980282dd8b22e39ad690759d89a` |
| 9 | `theorem` | [pow_sum_div_card_le_sum_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/pow-sum-div-card-le-sum-pow--bbd19233040832516da052c1.md) | 135 | `result-track:bbd19233040832516da052c14faa993e1ed0c17aee47ac2d6049d892d3fa2505` |
| 10 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--f9d0c4decbdcce420efd7e1d.md) | 143 | `result-track:f9d0c4decbdcce420efd7e1d79364d72c6dcb71f74e65265651fc257a43ed0e8` |
| 11 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--b6547c56b28097b8dacd5b31.md) | 151 | `result-track:b6547c56b28097b8dacd5b3184738242698e56c88af4017e704035cbea1eddf9` |
| 12 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-add-le-mul-rpow-add-rpow--35de91d5c8cd43618475f073.md) | 159 | `result-track:35de91d5c8cd43618475f073906b6f1060bf9f71de9b37f38cde047be4bed0bd` |
| 13 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/arith-mean-le-rpow-mean--2f927291ee86fa3fe788d18c.md) | 174 | `result-track:2f927291ee86fa3fe788d18c99a7acff08461799a2dc87587411f4fc2928c1f5` |
| 14 | `theorem` | [add_rpow_le_one_of_add_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/add-rpow-le-one-of-add-le-one--9e7176078632985b65438bf3.md) | 181 | `result-track:9e7176078632985b65438bf3f3205814392cf069cb467baf8e28e9a39964f7d4` |
| 15 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/add-rpow-le-rpow-add--ceddd53b0cd640edc38c98bf.md) | 188 | `result-track:ceddd53b0cd640edc38c98bfa1989874d710db19b13ab8a157874b28fa622c67` |
| 16 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-add-rpow-le-add--c4e0b387705b3286f4759033.md) | 205 | `result-track:c4e0b387705b3286f4759033cdf6aba170c17a7586d4e0583d5a4b616a883b99` |
| 17 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-add-rpow-le--a9688f9d9531f3d4249bf822.md) | 212 | `result-track:a9688f9d9531f3d4249bf822d410de679ee9b395b4bff325c5b80a7cad0b3cb3` |
| 18 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-add-le-add-rpow--d513a5a6b53c8a9e317fb9f8.md) | 226 | `result-track:d513a5a6b53c8a9e317fb9f82a44a63e6506628e025e34693049a1cecf225861` |
| 19 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--4b8d03a2adb9572faf42e14c.md) | 242 | `result-track:4b8d03a2adb9572faf42e14c910734e40f2c8b3e0b25ff8e5d592a9104138158` |
| 20 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--e8ad5cda4b53b5c706d96331.md) | 292 | `result-track:e8ad5cda4b53b5c706d96331af55c1f0558f3d55876f1fc9d3e1a2e60a0cf7ca` |
| 21 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-add-le-mul-rpow-add-rpow--2d48317b9596a958f07dc747.md) | 300 | `result-track:2d48317b9596a958f07dc747b283da93eac099e32d6309051225d78f3c19098d` |
| 22 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/add-rpow-le-rpow-add--77ba1b4706935a9516aec94f.md) | 313 | `result-track:77ba1b4706935a9516aec94f1b5bbf98fdad86ba705468b3ea615425be488775` |
| 23 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-add-rpow-le-add--8b8c97adecf631292a556c74.md) | 326 | `result-track:8b8c97adecf631292a556c7440dce922096eed82501b2843e31cafd204d3a257` |
| 24 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-add-rpow-le--e33dfb09484e4f9e550563ed.md) | 333 | `result-track:e33dfb09484e4f9e550563ede6c1698fc86bc78435ec2fde3a5a0f6a9853169e` |
| 25 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/declarations/rpow-add-le-add-rpow--9efab8d964bd7408b7d7e7b5.md) | 346 | `result-track:9efab8d964bd7408b7d7e7b5503ef0098e7d6a3b9fb0e233316387978dd51845` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
