# Verification target: GRWTSK.Analysis.Inverse.Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ae15ddb4cf94b1c6b5aab91380f75e505ebcd68",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ae15ddb4cf94b1c6b5aab91380f75e505ebcd68`.

Source path: `GRWTSK/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftInv](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/leftinv--48954a879b26fd8eb38d7abb.md) | 66 | `declaration-track:48954a879b26fd8eb38d7abb6c71c13b4b15bf5c0a4b3b2d9bc0626037ee71ac` |
| 2 | `theorem` | [leftInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/leftinv-coeff-zero--bf9068eedac5d79666bd5cb7.md) | 76 | `result-track:bf9068eedac5d79666bd5cb7baaeaff08bc9ef2e743f93cbd688226d1e057aab` |
| 3 | `theorem` | [leftInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/leftinv-coeff-one--f34cce4fb1626f6dd78faa93.md) | 80 | `result-track:f34cce4fb1626f6dd78faa93216bdc2d5d63d5c8b6a76c83da1a05bf9adac240` |
| 4 | `theorem` | [leftInv_removeZero](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/leftinv-removezero--6134393c687e3809f82bbecc.md) | 85 | `result-track:6134393c687e3809f82bbeccdfaf7c9442cd2b50ee092d431ba7c7f492d6c8db` |
| 5 | `theorem` | [leftInv_comp](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/leftinv-comp--d3e3095a85b6ae731c2135c5.md) | 101 | `result-track:d3e3095a85b6ae731c2135c52287f50899b8dff1e5e4d1ff9b3bcfe005e27778` |
| 6 | `def` | [rightInv](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/rightinv--ce5af38e3e6f35c27d3cb8d0.md) | 169 | `declaration-track:ce5af38e3e6f35c27d3cb8d045babe244a19e34cec75d077067ff2120c419f4e` |
| 7 | `theorem` | [rightInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/rightinv-coeff-zero--e32acbfb093c3d858eb8b704.md) | 178 | `result-track:e32acbfb093c3d858eb8b7041d3171262eebcb6e269d72d8b19fdf5afd5d226b` |
| 8 | `theorem` | [rightInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/rightinv-coeff-one--740fff8f7fa9e2139650c0ed.md) | 182 | `result-track:740fff8f7fa9e2139650c0eda1d024880a11318eaa004ef6b23ef6c739966047` |
| 9 | `theorem` | [rightInv_removeZero](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/rightinv-removezero--702e12e5f750484a99d92024.md) | 188 | `result-track:702e12e5f750484a99d920248aa69ec30d046f9a708653cfbd0da32294f23d7a` |
| 10 | `theorem` | [comp_rightInv_aux1](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/comp-rightinv-aux1--014e566dafb77b9900d93b4b.md) | 201 | `result-track:014e566dafb77b9900d93b4ba22806318e4d7ccab0e678c39f09cf44456dd6fb` |
| 11 | `theorem` | [comp_rightInv_aux2](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/comp-rightinv-aux2--209133e18f6de43574a9e9cc.md) | 228 | `result-track:209133e18f6de43574a9e9cc350d74975594cce279933722ca826110cfa35484` |
| 12 | `theorem` | [comp_rightInv](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/comp-rightinv--49a2523addaffcc273f154be.md) | 245 | `result-track:49a2523addaffcc273f154be29e01c2e74f3458d0b5b1a2f674e9d123c92dd5b` |
| 13 | `theorem` | [rightInv_coeff](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/rightinv-coeff--57d0ad93e6026b3422c7f6c0.md) | 263 | `result-track:57d0ad93e6026b3422c7f6c02405625968aa04274793d1878867d23e442ed2e6` |
| 14 | `theorem` | [leftInv_eq_rightInv](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/leftinv-eq-rightinv--7bc8de10b9a16b5bb98083f4.md) | 283 | `result-track:7bc8de10b9a16b5bb98083f4f356ade7f0cd139e54f0fa8da16225e96d3fa3b7` |
| 15 | `theorem` | [radius_right_inv_pos_of_radius_pos_aux1](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/radius-right-inv-pos-of-radius-pos-aux1--a4f676463e59401c76b1c2b1.md) | 366 | `result-track:a4f676463e59401c76b1c2b1ad29f0cd0389ed73afabc9bf9b919a562a4f356e` |
| 16 | `theorem` | [radius_rightInv_pos_of_radius_pos_aux2](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/radius-rightinv-pos-of-radius-pos-aux2--8a63997afcad6fabeb2ecf16.md) | 428 | `result-track:8a63997afcad6fabeb2ecf164cb6a33f8b9b7dd7507a4c582a3397e70c8d6d25` |
| 17 | `theorem` | [radius_rightInv_pos_of_radius_pos](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/radius-rightinv-pos-of-radius-pos--da32ccf9419bcaf01f39cd23.md) | 482 | `result-track:da32ccf9419bcaf01f39cd230a7e0abbe39228edaad1a7a5a7d5a766fa34b01e` |
| 18 | `theorem` | [radius_leftInv_pos_of_radius_pos](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/radius-leftinv-pos-of-radius-pos--530f5e8568676fd4e98857fc.md) | 553 | `result-track:530f5e8568676fd4e98857fc3769031e2e4b83eb3c5b156fbe30b7fa203a0643` |
| 19 | `lemma` | [HasFPowerSeriesAt.tendsto_partialSum_prod_of_comp](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/hasfpowerseriesat-tendsto-partialsum-prod-of-comp--6c2750c3010370dd8ddd2e73.md) | 568 | `result-track:6c2750c3010370dd8ddd2e73cbcdd793f6cfc59a08a61e5aac874aba3699e364` |
| 20 | `lemma` | [HasFPowerSeriesAt.eventually_hasSum_of_comp](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/hasfpowerseriesat-eventually-hassum-of-comp--4a68e6d0d84e93c9fbf3257f.md) | 615 | `result-track:4a68e6d0d84e93c9fbf3257f1254bd33cc338a23e592d58adc7cb82458a6c4e8` |
| 21 | `theorem` | [OpenPartialHomeomorph.hasFPowerSeriesAt_symm](../../../../mathematics/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/declarations/openpartialhomeomorph-hasfpowerseriesat-symm--0cbd70e175a7a5a12d3631d7.md) | 656 | `result-track:0cbd70e175a7a5a12d3631d766b7fe99d3b92900e9d6e8d3a48674e286bba8db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
