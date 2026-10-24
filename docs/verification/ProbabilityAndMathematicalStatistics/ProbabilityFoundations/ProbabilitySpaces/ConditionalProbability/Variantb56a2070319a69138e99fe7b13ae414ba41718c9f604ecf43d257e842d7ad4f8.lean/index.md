# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ConditionalProbability.Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bb8eb72ab1d7c29eab784839c6443758daaac78",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bb8eb72ab1d7c29eab784839c6443758daaac78`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cond](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond--77bfaabe92779d829468cd19.md) | 70 | `declaration-track:77bfaabe92779d829468cd19e8b9340781caafd4f142bd3ac9d3cce51e34a14f` |
| 2 | `def` | [condUnexpander](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/condunexpander--34d0683b874a32f68223c4db.md) | 90 | `declaration-track:34d0683b874a32f68223c4db3e925b070ee03abe157f1cd7b8acc6efb7d66fcd` |
| 3 | `def` | [delabCondApplied](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/delabcondapplied--9dd9ef79ae1ab23ecf7206f3.md) | 100 | `declaration-track:9dd9ef79ae1ab23ecf7206f3035d7a9c92bb57d3580b920058a9a07986ac8bf5` |
| 4 | `theorem` | [cond_isProbabilityMeasure_of_finite](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-isprobabilitymeasure-of-finite--f0b7384adabff6b413bd3b1e.md) | 148 | `result-track:f0b7384adabff6b413bd3b1e1ba55d44e2d3b9a20703cf0d50c283ee9f64f598` |
| 5 | `theorem` | [cond_isProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-isprobabilitymeasure--a05a0b5f9e29ae7d7b37571f.md) | 158 | `result-track:a05a0b5f9e29ae7d7b37571f66a54fe41d68e6b501e2a112248e2760538dbe01` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/instance--ee6bfc342b4965af9bfc49a0.md) | 161 | `declaration-track:ee6bfc342b4965af9bfc49a0ff2cda3fb7fe9f203f896a8fc2bcb361b9833a5f` |
| 7 | `theorem` | [cond_toMeasurable_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-tomeasurable-eq--c21438de05a863880a0d433a.md) | 172 | `result-track:c21438de05a863880a0d433a04d40f5e89c54e2be21dae84d1dc8e27b7c65002` |
| 8 | `lemma` | [cond_absolutelyContinuous](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-absolutelycontinuous--34c257de588ccef6aadb9b4c.md) | 179 | `result-track:34c257de588ccef6aadb9b4ca355fcb2e4289fc5110f321f6c9c3e6bbff2f497` |
| 9 | `lemma` | [absolutelyContinuous_cond_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/absolutelycontinuous-cond-univ--9089194131d0ff78473b5358.md) | 182 | `result-track:9089194131d0ff78473b5358fe0f11fe938c30560979165139735d81c5ebeb89` |
| 10 | `lemma` | [ae_cond_mem₀](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/ae-cond-mem--b6f88cb5d8f1d8bb45c8f5df.md) | 187 | `result-track:b6f88cb5d8f1d8bb45c8f5dfdc5bcdfdeb050d60b832689d6a1f5d50880df6c4` |
| 11 | `lemma` | [ae_cond_mem](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/ae-cond-mem--f9a6f440f22b9cfafe1776d4.md) | 190 | `result-track:f9a6f440f22b9cfafe1776d4df227f42638a7b837602e597a1bf2978b24de8a4` |
| 12 | `lemma` | [cond_empty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-empty--82862bad28d2f1e184e9b4dd.md) | 196 | `result-track:82862bad28d2f1e184e9b4ddc5d4730dcd737edda3a4c96d1258e66fbf6c6b7b` |
| 13 | `lemma` | [cond_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-univ--a179bb04af4379d73927fac0.md) | 199 | `result-track:a179bb04af4379d73927fac075e2abd6efc2826f6c0999181e919a1bcee1dfe9` |
| 14 | `lemma` | [cond_eq_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-eq-zero--fedc610c306ff5d24076abd6.md) | 202 | `result-track:fedc610c306ff5d24076abd60a3eb5b2d44f6400e60f97b6a1a2e9248f6290e5` |
| 15 | `lemma` | [cond_eq_zero_of_meas_eq_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-eq-zero-of-meas-eq-zero--53276588dd0fda07a8f2dd54.md) | 204 | `result-track:53276588dd0fda07a8f2dd54a2e2d9f5b7ab384a873ee30c8c57c72fb15a0e2d` |
| 16 | `theorem` | [cond_apply](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-apply--9c345e11b714e36f789cd73c.md) | 207 | `result-track:9c345e11b714e36f789cd73c52d15f558fd2288f64e170830e044d7507ed6924` |
| 17 | `theorem` | [cond_apply'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-apply--84db28cbd931e4c8fea7b575.md) | 211 | `result-track:84db28cbd931e4c8fea7b5756a4c0121457d47c986ea5aff2589ae50ca31c7f8` |
| 18 | `lemma` | [cond_apply_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-apply-self--27432ff86830e72b5a455788.md) | 214 | `result-track:27432ff86830e72b5a455788b20fbd14322236831263fba5d6955b5acf583198` |
| 19 | `theorem` | [cond_inter_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-inter-self--10c5b5e8e5976564ada72095.md) | 217 | `result-track:10c5b5e8e5976564ada72095430dd375c430cfc0f88270163aafd08a848b189a` |
| 20 | `theorem` | [inter_pos_of_cond_ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/inter-pos-of-cond-ne-zero--f4a66a4c8c781d0d667ac0a5.md) | 221 | `result-track:f4a66a4c8c781d0d667ac0a51a08bbfbca4f9363b3dd5c409f85edddfd34d676` |
| 21 | `lemma` | [cond_pos_of_inter_ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-pos-of-inter-ne-zero--700f1f97ddc7e55abd07bc95.md) | 227 | `result-track:700f1f97ddc7e55abd07bc9537eb3ad66ffe8b6a112887cbdbd5d36801511c18` |
| 22 | `lemma` | [cond_cond_eq_cond_inter'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-cond-eq-cond-inter--eaa2628f09f44c447217dc6c.md) | 233 | `result-track:eaa2628f09f44c447217dc6c16b0c52ece1abe715b0e0c7681252811418c75af` |
| 23 | `theorem` | [cond_cond_eq_cond_inter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-cond-eq-cond-inter--03e23306976769a0de5fd7c5.md) | 247 | `result-track:03e23306976769a0de5fd7c5ac8f328c7e55d535ec6f6b7c44b69d4bd33724ce` |
| 24 | `theorem` | [cond_mul_eq_inter'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-mul-eq-inter--7e3530c9f9e0963d9133ddf2.md) | 251 | `result-track:7e3530c9f9e0963d9133ddf2bb34f10d430f33a332b0919df82819df56ee92a9` |
| 25 | `theorem` | [cond_mul_eq_inter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-mul-eq-inter--0e100a4eb045ec54cae2d56b.md) | 257 | `result-track:0e100a4eb045ec54cae2d56bc17ad1b0131703a40d7d30b38b4c5a03bfd428cf` |
| 26 | `theorem` | [cond_add_cond_compl_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-add-cond-compl-eq--9e9f8533a708bf9effec7fb3.md) | 261 | `result-track:9e9f8533a708bf9effec7fb328cff677b01fa9dc6dfaa5c8e947bd70c9067f31` |
| 27 | `theorem` | [cond_eq_inv_mul_cond_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/cond-eq-inv-mul-cond-mul--88514cce63941e75a1ee1481.md) | 268 | `result-track:88514cce63941e75a1ee1481f24a52f8bf912b3c1a668393da80c00b0f831262` |
| 28 | `lemma` | [comap_cond](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/comap-cond--bca713b20c2919db23c37fa7.md) | 274 | `result-track:bca713b20c2919db23c37fa76eb6364724312baef2bd765af9cbf36a6e8bc9a5` |
| 29 | `lemma` | [sum_meas_smul_cond_fiber](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/declarations/sum-meas-smul-cond-fiber--41436eb1492f748bf4e11628.md) | 294 | `result-track:41436eb1492f748bf4e11628bfd0b0f2ebf85fea1e4e14044d1a68fce9ab1fe0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
