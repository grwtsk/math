# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.OneVariable.Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b97109d242791963454dc4d7a8385049595fa6a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b97109d242791963454dc4d7a8385049595fa6a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.JacobiTheta.TwoVariable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/jacobitheta--be51fc7066d4cb2576486915.md) | 25 | `declaration-track:be51fc7066d4cb25764869159c15f7f10d93507a059c3609aff048c56bb85bbf` |
| 2 | `lemma` | [jacobiTheta_eq_jacobiTheta₂](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/jacobitheta-eq-jacobitheta--8672fc6a7b5796cad84e698d.md) | 27 | `result-track:8672fc6a7b5796cad84e698dfe18241764bc64264bedb5c5e104bd1f73ebafce` |
| 3 | `theorem` | [jacobiTheta_two_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/jacobitheta-two-add--85099aa5d75d32bb1e10ed6d.md) | 30 | `result-track:85099aa5d75d32bb1e10ed6d46d1b606dea49671c637cb75315bc1684eec7059` |
| 4 | `theorem` | [jacobiTheta_T_sq_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/jacobitheta-t-sq-smul--0538634e56cbaff9761f0741.md) | 33 | `result-track:0538634e56cbaff9761f074117757eb021a2d03dc7b3f2e8f2359fd45d04fe86` |
| 5 | `theorem` | [jacobiTheta_S_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/jacobitheta-s-smul--44f992b6f7ba3dfa7f3094c6.md) | 39 | `result-track:44f992b6f7ba3dfa7f3094c62813636ab74283721ee9be42aab23bb1dc8ad30b` |
| 6 | `theorem` | [norm_exp_mul_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/norm-exp-mul-sq-le--6ac137d31ccc6082263ea52f.md) | 51 | `result-track:6ac137d31ccc6082263ea52f6c4f730ab3ff9a43ba001cb478f92cf2620a5e90` |
| 7 | `theorem` | [hasSum_nat_jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/hassum-nat-jacobitheta--3786f94b7d08279f71043412.md) | 67 | `result-track:3786f94b7d08279f71043412a3cfa3a658d2fb57186d613ceeb5733a5b1a2439` |
| 8 | `theorem` | [jacobiTheta_eq_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/jacobitheta-eq-tsum-nat--5a602befbd1acd19087eead5.md) | 80 | `result-track:5a602befbd1acd19087eead56c979f0aca6ea327f8030e09c24f627699eed809` |
| 9 | `theorem` | [norm_jacobiTheta_sub_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/norm-jacobitheta-sub-one-le--18216eb37b16c9da18fae821.md) | 86 | `result-track:18216eb37b16c9da18fae8213f3be856b136cba6b791fd056187233d64e2bba6` |
| 10 | `theorem` | [isBigO_at_im_infty_jacobiTheta_sub_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/isbigo-at-im-infty-jacobitheta-sub-one--8c390fa2b1ee1ca2cd3dbc62.md) | 108 | `result-track:8c390fa2b1ee1ca2cd3dbc62a517c757b63190d282b587f1c6ceb9c49a01be2d` |
| 11 | `theorem` | [differentiableAt_jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/differentiableat-jacobitheta--c52dc7952566d1a567d06e9a.md) | 117 | `result-track:c52dc7952566d1a567d06e9a00249f12308d22fb674321377b77dacd0fd8bb82` |
| 12 | `theorem` | [continuousAt_jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/declarations/continuousat-jacobitheta--98bfafbd4ce868b7b58be6bb.md) | 122 | `result-track:98bfafbd4ce868b7b58be6bbaeeb21b317540668e57ea23738850695f3f7da17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
