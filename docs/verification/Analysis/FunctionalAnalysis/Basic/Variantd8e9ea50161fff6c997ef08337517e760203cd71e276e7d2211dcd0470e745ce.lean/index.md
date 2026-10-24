# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Basic.Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d92fd8b01fa28068f068c152d2c6a9882cacd4a",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d92fd8b01fa28068f068c152d2c6a9882cacd4a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.StrongTopology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.ContinuousLinearMap` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_image_of_norm_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/norm-image-of-norm-zero--50a061efe749c89434d97edf.md) | 60 | `result-track:50a061efe749c89434d97edfa76d2b8aec106d031219fbe6efe2248b6e07f6f7` |
| 2 | `theorem` | [SemilinearMapClass.bound_of_shell_semi_normed](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/semilinearmapclass-bound-of-shell-semi-normed--e20766e4e65bcfa06feb0319.md) | 69 | `result-track:e20766e4e65bcfa06feb03197a05f5700efdda5c2f9d5cae76e22906946be9fe` |
| 3 | `theorem` | [SemilinearMapClass.bound_of_continuous](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/semilinearmapclass-bound-of-continuous--13c8387a9ca4c17ca468b570.md) | 80 | `result-track:13c8387a9ca4c17ca468b570bc12049f82535b80956278f6e0435938c35a31ee` |
| 4 | `theorem` | [bound](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/bound--488b9d417e57e60b79ab424e.md) | 89 | `result-track:488b9d417e57e60b79ab424eac6cef3fc795e9cf5921b4431c4de6685d546589` |
| 5 | `def` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.NormImageOfNormZero.Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.LinearIsometry.toSpanSingleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/root-grwtsk-analysis-functionalanalysis-normimageofnormzero-variant4b8d7--040e22fa88566ad024451e43.md) | 100 | `declaration-track:040e22fa88566ad024451e4382b424a21df6c105351b0d7d4f206fa3f6003b54` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.NormImageOfNormZero.Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.LinearIsometry.toSpanSingleton_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/root-grwtsk-analysis-functionalanalysis-normimageofnormzero-variant4b8d7--119af2b71b2f0ddda845e521.md) | 106 | `result-track:119af2b71b2f0ddda845e521ff725a4e8dc872414fdbb6c548226d7dc93dac2d` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.NormImageOfNormZero.Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.LinearIsometry.coe_toSpanSingleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/root-grwtsk-analysis-functionalanalysis-normimageofnormzero-variant4b8d7--4587ecf89f216b397706028f.md) | 111 | `result-track:4587ecf89f216b397706028f5fe0f731bb8ace21f97540ecf65d5a20526d88f6` |
| 8 | `def` | [opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm--823ea0ce3d7cd6767f7359b2.md) | 122 | `declaration-track:823ea0ce3d7cd6767f7359b2af279b0d8b7cf6f62d37343d7e0ca8168ad4e3c1` |
| 9 | `instance` | [hasOpNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/hasopnorm--cc1451dfbbe068b3e76c7ffa.md) | 125 | `declaration-track:cc1451dfbbe068b3e76c7ffa3459083b1abc69b61ba55ba2ba7bbb815ad44076` |
| 10 | `theorem` | [norm_def](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/norm-def--c179df35f949d85ec4b667fb.md) | 128 | `result-track:c179df35f949d85ec4b667fb9edcd4f673a69743673c1c9ecdb0381861cec033` |
| 11 | `theorem` | [bounds_nonempty](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/bounds-nonempty--ce3891f3635a8ee35c2c1f08.md) | 133 | `result-track:ce3891f3635a8ee35c2c1f08f1af6048d8735977d035f9d8a8f057fdce00027c` |
| 12 | `theorem` | [bounds_bddBelow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/bounds-bddbelow--4f4276db9b795d4f3886ea33.md) | 138 | `result-track:4f4276db9b795d4f3886ea335b815977f4aa19fa91bae4b056c5e283d5e76a09` |
| 13 | `theorem` | [isLeast_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/isleast-opnorm--9750f61b4971b98a509078bf.md) | 141 | `result-track:9750f61b4971b98a509078bf3d21e776084f6b536567d70cc4bf075aa6ca3e83` |
| 14 | `theorem` | [opNorm_le_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-le-bound--65dd69eb56e3b0dccfc4d557.md) | 149 | `result-track:65dd69eb56e3b0dccfc4d5571795ae496a5a90be1ff418a212668fa2ed7d1a27` |
| 15 | `theorem` | [opNorm_le_bound'](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-le-bound--05032778d7f3ad613313901e.md) | 155 | `result-track:05032778d7f3ad613313901e1e2c74c0b85651bcf60ee224bd66d00d114d51bf` |
| 16 | `theorem` | [opNorm_le_of_lipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-le-of-lipschitz--25601f36c94388b0ad7523a2.md) | 162 | `result-track:25601f36c94388b0ad7523a2cb8d62a3e7254cbb55aedc343ae140f053399685` |
| 17 | `theorem` | [opNorm_eq_of_bounds](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-eq-of-bounds--8bb2a8824986747fc61c8a5b.md) | 167 | `result-track:8bb2a8824986747fc61c8a5bbd81ec90526c685fd563d7c47639c4779c605885` |
| 18 | `theorem` | [opNorm_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-neg--99c32867a93355e0e50c613e.md) | 175 | `result-track:99c32867a93355e0e50c613e58eb8175bf62faad8b82a6fe71355b99033b7aaf` |
| 19 | `theorem` | [opNorm_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-nonneg--a7a4e8412b9198b6317147ce.md) | 178 | `result-track:a7a4e8412b9198b6317147cea0933bb1b6d331fc8daf0195e8bc8592f2944fe1` |
| 20 | `theorem` | [opNorm_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-zero--e451a1b2847fa6c618dd077d.md) | 183 | `result-track:e451a1b2847fa6c618dd077df8e577d2d387f84c7ae8830000ccc6fb457c3c05` |
| 21 | `theorem` | [norm_id_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/norm-id-le--07c03edc2debba064578d3ad.md) | 189 | `result-track:07c03edc2debba064578d3adb2d27609b7233bf18880115cf148fc02eca0d385` |
| 22 | `theorem` | [le_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/le-opnorm--7a2be3f59f778320e6b4654f.md) | 198 | `result-track:7a2be3f59f778320e6b4654ff2f7eae30ac02a0f3819df35353708aa00d4a3d3` |
| 23 | `theorem` | [dist_le_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/dist-le-opnorm--5add77b30750299c35818963.md) | 200 | `result-track:5add77b30750299c358189639150dc030b2e8491b01550b2cb5bb30a26bdb0c5` |
| 24 | `theorem` | [le_of_opNorm_le_of_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/le-of-opnorm-le-of-le--d1d8961615d7230f8286dcc2.md) | 204 | `result-track:d1d8961615d7230f8286dcc22e22b8da83590d801fb19ee865573de9b16227d5` |
| 25 | `theorem` | [le_opNorm_of_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/le-opnorm-of-le--9ff3e8719256ba55f189e8d3.md) | 209 | `result-track:9ff3e8719256ba55f189e8d3b2968961cbc11ad4d086682ccb264b1112098076` |
| 26 | `theorem` | [le_of_opNorm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/le-of-opnorm-le--554b09dc11de1767bbe2759b.md) | 213 | `result-track:554b09dc11de1767bbe2759b165f5594861844e634e16d353ea77dd4cf5ab3e4` |
| 27 | `theorem` | [opNorm_le_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-le-iff--c4963bbf6c3d017c76742827.md) | 217 | `result-track:c4963bbf6c3d017c76742827904c931c5cf468e5bf1e7580b034bacabfdcfb9e` |
| 28 | `theorem` | [ratio_le_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/ratio-le-opnorm--15664762ba0ae2a38ebfa62e.md) | 222 | `result-track:15664762ba0ae2a38ebfa62e9996863a0373b1588ace325438a630fcc8957c32` |
| 29 | `theorem` | [unit_le_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/unit-le-opnorm--13f228b67fe6958a953c52af.md) | 227 | `result-track:13f228b67fe6958a953c52aff0ede99393933d3f386124849cfea76ba42d3209` |
| 30 | `theorem` | [opNorm_le_of_shell](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-le-of-shell--c6569e4f2013917693337cfe.md) | 231 | `result-track:c6569e4f2013917693337cfe40886a1242c5b21b390187ba0f99b601f84ce817` |
| 31 | `theorem` | [opNorm_le_of_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-le-of-ball--50f9dae25cbb1d2a4ede2bdd.md) | 236 | `result-track:50f9dae25cbb1d2a4ede2bddf7a16557251a2f2f0aeafb2d728605b54be510ad` |
| 32 | `theorem` | [opNorm_le_of_nhds_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-le-of-nhds-zero--da2d9c64b067b6414d53808b.md) | 243 | `result-track:da2d9c64b067b6414d53808bf36bf26ab34fc5d39460351e7f29e9ec88a3d91f` |
| 33 | `theorem` | [opNorm_le_of_shell'](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-le-of-shell--afff28919ddad1cd13882e6c.md) | 249 | `result-track:afff28919ddad1cd13882e6c5c6b4ff3892a6772d3d70a6b2a07e2fd15c60905` |
| 34 | `theorem` | [opNorm_le_of_unit_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-le-of-unit-norm--bd0a2efff3d989e04fa4070d.md) | 262 | `result-track:bd0a2efff3d989e04fa4070d016e04faa48188d1d84c9c56a431167f355e7fb6` |
| 35 | `theorem` | [opNorm_add_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-add-le--f250d0fc92a46d7c19dfed63.md) | 272 | `result-track:f250d0fc92a46d7c19dfed6338580cf7e2a0dbcd6af7b392694b3364ae5c0253` |
| 36 | `theorem` | [norm_id_of_nontrivial_seminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/norm-id-of-nontrivial-seminorm--8c596eb0ff32e26ca1745ca1.md) | 279 | `result-track:8c596eb0ff32e26ca1745ca1e21eb7e7278a65268d9c2fd855819a63260ce9e0` |
| 37 | `theorem` | [opNorm_smul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-smul-le--3b404784581ff862b2618629.md) | 285 | `result-track:3b404784581ff862b26186299957706b10b74c5379596bbcd9d78e91df5fbee6` |
| 38 | `def` | [seminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/seminorm--d92b6b9383d9cd6eead057ef.md) | 297 | `declaration-track:d92b6b9383d9cd6eead057ef652123ec72c2e137b3c55722311db7fafb182444` |
| 39 | `lemma` | [uniformity_eq_seminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/uniformity-eq-seminorm--39949f632f5812410456e705.md) | 300 | `result-track:39949f632f5812410456e7058158dfac0c56b8f19f2e248d4002cc9470afcea5` |
| 40 | `instance` | [toPseudoMetricSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/topseudometricspace--5b0c88aaa5e51ba280e6a38f.md) | 320 | `declaration-track:5b0c88aaa5e51ba280e6a38ff37524732a818862d3362442a7423faa1172d559` |
| 41 | `instance` | [toSeminormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/toseminormedaddcommgroup--5b394c1b9902ffa1a1b340c1.md) | 325 | `declaration-track:5b394c1b9902ffa1a1b340c1b5c9e9070bd9f5be319a7865636dc49272ddec7b` |
| 42 | `instance` | [toNormedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/tonormedspace--fafb305d979eeba973b273ce.md) | 327 | `declaration-track:fafb305d979eeba973b273ce076d2260a93fd456d875bdee29d38701983ca854` |
| 43 | `theorem` | [opNorm_comp_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-comp-le--472c21fb0106e5f81e6885c2.md) | 332 | `result-track:472c21fb0106e5f81e6885c2139fc83631915e6c7b2c463cf46c961ca250a14e` |
| 44 | `instance` | [toSeminormedRing](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/toseminormedring--749b5ce9c1c1eddbddf355f4.md) | 338 | `declaration-track:749b5ce9c1c1eddbddf355f4e0737c1880244c18f4a355f01a6ca971b78fe86c` |
| 45 | `instance` | [toNormedAlgebra](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/tonormedalgebra--00c1ad2462a70d36c986564e.md) | 343 | `declaration-track:00c1ad2462a70d36c986564eef99bc965406dad04bbff6a984f37709c3ff2394` |
| 46 | `theorem` | [opNorm_subsingleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/opnorm-subsingleton--2959bf26c075ccde9eae0f0d.md) | 350 | `result-track:2959bf26c075ccde9eae0f0d8ac7269c026308d40d148829a530c460bdc44329` |
| 47 | `lemma` | [le_opNorm_enorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/le-opnorm-enorm--86a77a28b78f24b421da38ae.md) | 358 | `result-track:86a77a28b78f24b421da38ae1a4ab744dbaf40b1f96e6d4d414d83fec28bf6ec` |
| 48 | `theorem` | [norm_restrictScalars](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/norm-restrictscalars--f0426f17244d85cb8734c206.md) | 373 | `result-track:f0426f17244d85cb8734c2063671b09f89bc473a8889ace6934fc8f80c359134` |
| 49 | `def` | [restrictScalarsIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/restrictscalarsisometry--1adce0a19d0cdc242d4c64b6.md) | 382 | `declaration-track:1adce0a19d0cdc242d4c64b670b212f627a4ce77f9dfc7238f51418398f3384e` |
| 50 | `theorem` | [coe_restrictScalarsIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/coe-restrictscalarsisometry--9c046e3f191ed1da7e163d4f.md) | 388 | `result-track:9c046e3f191ed1da7e163d4f0cd97b554edb59f773b297c5c54636e43f4c3482` |
| 51 | `theorem` | [restrictScalarsIsometry_toLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/restrictscalarsisometry-tolinearmap--4c35b86458d9f899ba614197.md) | 393 | `result-track:4c35b86458d9f899ba6141974c0be784e9a52e14666929897a60ccfea9fe5011` |
| 52 | `lemma` | [norm_pi_le_of_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/norm-pi-le-of-le--b75e7f3493abbd53a72ebd87.md) | 399 | `result-track:b75e7f3493abbd53a72ebd8727379bfa2ec3f6a4e71a346c0e30b59ae470ab84` |
| 53 | `theorem` | [mkContinuous_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/mkcontinuous-norm-le--380cf7e71bdb962806963d9b.md) | 413 | `result-track:380cf7e71bdb962806963d9bc77cb10319e79214de20fa404bac24a58af8597c` |
| 54 | `theorem` | [mkContinuous_norm_le'](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/mkcontinuous-norm-le--3be00c5255e1593e819645f1.md) | 419 | `result-track:3be00c5255e1593e819645f1474d3158d2daee5647d0be379da2530610befd9a` |
| 55 | `theorem` | [norm_toContinuousLinearMap_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/norm-tocontinuouslinearmap-le--804951ff78cb36c5afd74742.md) | 428 | `result-track:804951ff78cb36c5afd74742d0093fcfaa532317fb2d6ee3cc8f442aebefd7b0` |
| 56 | `theorem` | [norm_subtypeL_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/declarations/norm-subtypel-le--6d52b8dee89c3c97987d8e46.md) | 435 | `result-track:6d52b8dee89c3c97987d8e46901ced6d331daab118c417a2a3cccff471da5bc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
