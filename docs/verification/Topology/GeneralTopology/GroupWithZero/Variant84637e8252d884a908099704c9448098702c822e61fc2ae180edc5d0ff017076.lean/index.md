# Verification target: GRWTSK.Topology.GeneralTopology.GroupWithZero.Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c077fbea6cded50ee848a09830538d5566134fb",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c077fbea6cded50ee848a09830538d5566134fb`.

Source path: `GRWTSK/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Monoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.Tendsto.div_const](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/filter-tendsto-div-const--bce8dfd4042483cf3c87fc76.md) | 60 | `result-track:bce8dfd4042483cf3c87fc763bdbbdd829ac59b502b508f9995ac42e55363664` |
| 2 | `theorem` | [ContinuousAt.div_const](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuousat-div-const--de86ad1c31da7c644a833df9.md) | 67 | `result-track:de86ad1c31da7c644a833df97aa45054b38be000d2f3caeabbca0f37cbf5b001` |
| 3 | `theorem` | [ContinuousWithinAt.div_const](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouswithinat-div-const--7766e821393426575e77ee54.md) | 72 | `result-track:7766e821393426575e77ee549b108fc8a36dbfa8450ed90a4b079350665f85c4` |
| 4 | `theorem` | [ContinuousOn.div_const](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouson-div-const--43849183d045ef7383ebc5c4.md) | 77 | `result-track:43849183d045ef7383ebc5c4f76b269d5285df992d486eb45fa288e209c2f86a` |
| 5 | `theorem` | [Continuous.div_const](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuous-div-const--019b68b76c23f2a1adf05d1b.md) | 83 | `result-track:019b68b76c23f2a1adf05d1bb5eddd16abc378d52c1be857492566ce6e6af4c0` |
| 6 | `class` | [HasContinuousInv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/hascontinuousinv--10f6cb61952a996b5e749132.md) | 91 | `declaration-track:10f6cb61952a996b5e749132bfc34d211940176e74ebba5a160bd228eb92952c` |
| 7 | `theorem` | [tendsto_inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/tendsto-inv--49b892af6d0874aa5299b794.md) | 111 | `result-track:49b892af6d0874aa5299b7948ffc7f20b1e2ba1d2a3038989344741c639844f1` |
| 8 | `theorem` | [continuousOn_inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouson-inv--d77c1a8447c02bf6ea1755b0.md) | 115 | `result-track:d77c1a8447c02bf6ea1755b08e06ebab94a8318e79474c47ccd60cbd6a503a2e` |
| 9 | `theorem` | [Filter.Tendsto.inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/filter-tendsto-inv--b0208c3e3c793d6f1fef5122.md) | 122 | `result-track:b0208c3e3c793d6f1fef51220ec06201ff1473a3a5af3fced8d816a07c2550e2` |
| 10 | `theorem` | [ContinuousWithinAt.inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouswithinat-inv--d61a8475e3c3e88768e9540b.md) | 129 | `result-track:d61a8475e3c3e88768e9540b415636844beb5688d151a0feeaea65d74ec371aa` |
| 11 | `theorem` | [ContinuousAt.inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuousat-inv--11ab0e3540dc04721c38216d.md) | 134 | `result-track:11ab0e3540dc04721c38216d55971e58d41ca2afe3a32c9ab027048160a94c26` |
| 12 | `theorem` | [Continuous.inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuous-inv--4fcca9767f6259c5c84dd0ff.md) | 140 | `result-track:4fcca9767f6259c5c84dd0ff9b5d71385c2352ef7d63bce39433fcdd4d1bbb3d` |
| 13 | `theorem` | [ContinuousOn.inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouson-inv--a172471977f7487b897c8e02.md) | 144 | `result-track:a172471977f7487b897c8e0233e1a0b1a669ad2128dd3adfd139a668a6e981ae` |
| 14 | `theorem` | [Units.embedding_val₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/units-embedding-val--cfabea0079cf904b288c5168.md) | 152 | `result-track:cfabea0079cf904b288c5168e4990c4d4adfefb4e96d46323b45fae0e8aedae8` |
| 15 | `theorem` | [Filter.Tendsto.div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/filter-tendsto-div--cbee808b60be4df0508fd370.md) | 169 | `result-track:cbee808b60be4df0508fd3706ace3bc1e43ed25e243a87bb70fd4f428068140a` |
| 16 | `theorem` | [Filter.tendsto_mul_iff_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/filter-tendsto-mul-iff-of-ne-zero--fb72c74205526805f4bdbb0e.md) | 174 | `result-track:fb72c74205526805f4bdbb0e822836620a28eba1d445f09a3caec9a4e552d2a4` |
| 17 | `theorem` | [ContinuousWithinAt.div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouswithinat-div--40e97eaa2f1c539cc96e6148.md) | 185 | `result-track:40e97eaa2f1c539cc96e61481084a485db4f11e37e00ae46909d0332d22122c3` |
| 18 | `theorem` | [ContinuousOn.div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouson-div--361a8fe52bd11b55a609e89a.md) | 190 | `result-track:361a8fe52bd11b55a609e89a16842d4b05c51662174e1a71a663e24bcf2c0346` |
| 19 | `theorem` | [ContinuousAt.div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuousat-div--a0ca5b322863019a8dcf6216.md) | 196 | `result-track:a0ca5b322863019a8dcf6216b1d17032cbe54ab0017a2c9960becde6c840e903` |
| 20 | `theorem` | [Continuous.div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuous-div--78d106ce123818b9b62e69b8.md) | 202 | `result-track:78d106ce123818b9b62e69b825ce9c80200167518624a7411af81ba49f650e08` |
| 21 | `theorem` | [continuousOn_div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouson-div--2b9dd0548e745c139772e0e6.md) | 206 | `result-track:2b9dd0548e745c139772e0e631e178a5dfd43af39747fed3d8d71a14f3930498` |
| 22 | `theorem` | [ContinuousAt.comp_div_cases](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuousat-comp-div-cases--d926fb80c2e448bf6055a347.md) | 215 | `result-track:d926fb80c2e448bf6055a347f9c10df77a0f26e630da026e413c0e82a7b1b7d0` |
| 23 | `theorem` | [Continuous.comp_div_cases](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuous-comp-div-cases--a6209c2abed4d23d7b84f9e5.md) | 229 | `result-track:a6209c2abed4d23d7b84f9e5137be63ae8713ac15067e009427de4b457c0d93b` |
| 24 | `def` | [mulLeft₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/mulleft--23e177cfb557f65d300b4d10.md) | 248 | `declaration-track:23e177cfb557f65d300b4d10a06b35a667bf66b945f8db20fd7b8a1354dd7093` |
| 25 | `def` | [mulRight₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/mulright--8cf302d6ae1734dd8ec77d21.md) | 256 | `declaration-track:8cf302d6ae1734dd8ec77d21533adcb13b8d7bbc59720081bc488c862eb3d8c4` |
| 26 | `theorem` | [coe_mulLeft₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/coe-mulleft--25df0fe0c7899d53c8a0b67a.md) | 263 | `result-track:25df0fe0c7899d53c8a0b67a55e28a19421e38ff19da74c13ceb0e76c22fd72d` |
| 27 | `theorem` | [mulLeft₀_symm_apply](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/mulleft-symm-apply--144e2d2fbe996364219516f3.md) | 268 | `result-track:144e2d2fbe996364219516f30f5b18fa73656e43c9a4b213cdf5d3039a665894` |
| 28 | `theorem` | [coe_mulRight₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/coe-mulright--8fe7b77476a018d714423e4f.md) | 274 | `result-track:8fe7b77476a018d714423e4fd2d137ca15adfebaa709b09096c0e7a2ac85ada5` |
| 29 | `theorem` | [mulRight₀_symm_apply](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/mulright-symm-apply--16322a3980579d88a83f44c5.md) | 279 | `result-track:16322a3980579d88a83f44c59f16e6d88d54edcac646f289357f6e2081d65ea0` |
| 30 | `theorem` | [map_mul_left_nhds₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/map-mul-left-nhds--fcee64d18f0f6af146efc4d9.md) | 290 | `result-track:fcee64d18f0f6af146efc4d959c88b5725f87817cbab9e00503761ba7d487e8f` |
| 31 | `theorem` | [map_mul_left_nhds_one₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/map-mul-left-nhds-one--bb8a7ef15add3281e81fe082.md) | 293 | `result-track:bb8a7ef15add3281e81fe082fced4d283a284f8339cd9f258c51b14321d41c76` |
| 32 | `theorem` | [map_mul_right_nhds₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/map-mul-right-nhds--1ae7837c83bba3811055ed2d.md) | 296 | `result-track:1ae7837c83bba3811055ed2d6382a01ff81ca947f6e2ff13621cebd5990b0dad` |
| 33 | `theorem` | [map_mul_right_nhds_one₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/map-mul-right-nhds-one--e7fe35b4d68212f56a263f9a.md) | 299 | `result-track:e7fe35b4d68212f56a263f9a0479c7e9733313647fe2598147396888c15b3b1f` |
| 34 | `theorem` | [nhds_translation_mul_inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/nhds-translation-mul-inv--9ff33aacd5dc23a5c5d8fc46.md) | 302 | `result-track:9ff33aacd5dc23a5c5d8fc4674fb21a9173457cead88a5076811108a7f78e1e6` |
| 35 | `theorem` | [HasContinuousInv₀.of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/hascontinuousinv-of-nhds-one--d8e37f9b48335191889d3c02.md) | 307 | `result-track:d8e37f9b48335191889d3c0285e81e5c299f5361f5283e97e3068da24f7cb41c` |
| 36 | `theorem` | [continuousAt_zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuousat-zpow--5155e6f2ded9d6af60c69a39.md) | 321 | `result-track:5155e6f2ded9d6af60c69a3949f5090fcda38eaf135ac0a54a15bc5b9d299120` |
| 37 | `theorem` | [continuousOn_zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouson-zpow--80c9941711969d10b4f3feb5.md) | 330 | `result-track:80c9941711969d10b4f3feb5631ef3a56da6584e82be99eecdfdc9980d2b0b2d` |
| 38 | `theorem` | [Filter.Tendsto.zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/filter-tendsto-zpow--aa28a29bbb77789f8391a550.md) | 334 | `result-track:aa28a29bbb77789f8391a5500fc3d88559a39fcb76d44f829e626201afed6600` |
| 39 | `theorem` | [ContinuousAt.zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuousat-zpow--684879ff10073faa2470516c.md) | 341 | `result-track:684879ff10073faa2470516c84daf8d130f755174ee678f436e8b1babfde90d8` |
| 40 | `theorem` | [ContinuousWithinAt.zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouswithinat-zpow--323d2b72d81a8bdc01964d19.md) | 346 | `result-track:323d2b72d81a8bdc01964d195b637117817a0a91c86abb837fa5b736bc3c9598` |
| 41 | `theorem` | [ContinuousOn.zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuouson-zpow--e924b20d09f331a3a2923745.md) | 351 | `result-track:e924b20d09f331a3a292374515865764144032a05905102aa0884dc984c212e2` |
| 42 | `theorem` | [Continuous.zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/declarations/continuous-zpow--33d1e3f703dfb6329c89e80a.md) | 356 | `result-track:33d1e3f703dfb6329c89e80a39ba4fb5b98fb61575dbf9c163563f9640da5452` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
