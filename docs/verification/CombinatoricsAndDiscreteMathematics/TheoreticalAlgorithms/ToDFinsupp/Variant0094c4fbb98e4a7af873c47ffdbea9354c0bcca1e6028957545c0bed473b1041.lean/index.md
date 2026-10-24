# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToDFinsupp.Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd90157cd3671a1a47359b051d855058a36bc713",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd90157cd3671a1a47359b051d855058a36bc713`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finsupp.toDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/finsupp-todfinsupp--f6de3b66996e285fc504ce81.md) | 81 | `declaration-track:f6de3b66996e285fc504ce8153d80bb8e419898b4acb9ab8b03e911cd274b3e3` |
| 2 | `theorem` | [Finsupp.toDFinsupp_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/finsupp-todfinsupp-coe--8758f63f618f693c1c6f09c4.md) | 88 | `result-track:8758f63f618f693c1c6f09c49b136d6a286928d1bc187e5cdb24f4a96a916951` |
| 3 | `theorem` | [Finsupp.toDFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/finsupp-todfinsupp-single--5ef4b727751c2de4da18f136.md) | 96 | `result-track:5ef4b727751c2de4da18f136225315b7b5f1548fc896eff597788ea807a77fe3` |
| 4 | `theorem` | [toDFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/todfinsupp-support--00e8a2f356c346f0c7da7ec9.md) | 104 | `result-track:00e8a2f356c346f0c7da7ec943ffa3b720bc77bad58c5dbeb4895940d7e576b9` |
| 5 | `def` | [DFinsupp.toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/dfinsupp-tofinsupp--23f7eb8c86806e16668efa38.md) | 113 | `declaration-track:23f7eb8c86806e16668efa385dca637debc6d19157911ab2b814f11f79f14ed7` |
| 6 | `theorem` | [DFinsupp.toFinsupp_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/dfinsupp-tofinsupp-coe--a232d6f19f7b7aab5e44c0ff.md) | 117 | `result-track:a232d6f19f7b7aab5e44c0ff2c9b603fa20f77c3f5d5e8c706b412c39dccd9d6` |
| 7 | `theorem` | [DFinsupp.toFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/dfinsupp-tofinsupp-support--2ae5e8d7833ae229a4457468.md) | 121 | `result-track:2ae5e8d7833ae229a44574681912a1255c01edafd959983de91e265cc7a010f6` |
| 8 | `theorem` | [DFinsupp.toFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/dfinsupp-tofinsupp-single--aa821a181eeca5bbcb31887a.md) | 126 | `result-track:aa821a181eeca5bbcb31887acd5986386193e07c89d6bed41bfe319083ceee59` |
| 9 | `theorem` | [Finsupp.toDFinsupp_toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/finsupp-todfinsupp-tofinsupp--dedcfd83fabc1d87f1b401d2.md) | 132 | `result-track:dedcfd83fabc1d87f1b401d2613198fddd4375f0416eb2b181173d00ae2036a6` |
| 10 | `theorem` | [DFinsupp.toFinsupp_toDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/dfinsupp-tofinsupp-todfinsupp--0ee8035a39cce5019ecbe4b1.md) | 136 | `result-track:0ee8035a39cce5019ecbe4b1f53f809472c68c8e1dd04532bf1cf30ce40ec5d2` |
| 11 | `theorem` | [toDFinsupp_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/todfinsupp-zero--2654cb8f0b11cca3dbbdb452.md) | 151 | `result-track:2654cb8f0b11cca3dbbdb45286531bc33466aaf7c3c18b7e7c2b07eecc35ffaa` |
| 12 | `theorem` | [toDFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/todfinsupp-add--5187b6da2ec7e3e5526906d7.md) | 155 | `result-track:5187b6da2ec7e3e5526906d7ec7dbec0ba19f0ba4b98c0443f7bfaa35e6ea74d` |
| 13 | `theorem` | [toDFinsupp_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/todfinsupp-neg--6bfd03a579390192c938ec3a.md) | 160 | `result-track:6bfd03a579390192c938ec3a29be4865ddff35c44b5ccca1c2f0a2afbfa8ac3b` |
| 14 | `theorem` | [toDFinsupp_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/todfinsupp-sub--5e83362bef28a614e4a4d7dc.md) | 164 | `result-track:5e83362bef28a614e4a4d7dc23bf7c87a99c0a2153a084b64168d8d99bb03bca` |
| 15 | `theorem` | [toDFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/todfinsupp-smul--8edc2c2c637d4696637c8780.md) | 169 | `result-track:8edc2c2c637d4696637c87802f362d3b10a57540e93933a1172cf4d50946a558` |
| 16 | `theorem` | [toFinsupp_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/tofinsupp-zero--e2d75687c87fd839bb4a1bfe.md) | 180 | `result-track:e2d75687c87fd839bb4a1bfe70a87fdb883687311bf816dcb3c001828e6c1da4` |
| 17 | `theorem` | [toFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/tofinsupp-add--de37095b7760fe47fa74e254.md) | 184 | `result-track:de37095b7760fe47fa74e25406ae6a5cba799b95bec31a8f9b22f708ad4b32d7` |
| 18 | `theorem` | [toFinsupp_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/tofinsupp-neg--f84717d0b30d689f393a8e2f.md) | 189 | `result-track:f84717d0b30d689f393a8e2ffe5f68c8798de03c3cfe6994436d351cc076364b` |
| 19 | `theorem` | [toFinsupp_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/tofinsupp-sub--c93ebf5d271aa9ac8690e44a.md) | 194 | `result-track:c93ebf5d271aa9ac8690e44a31857d1c6a6fdc269ab65c5ad5e78fe5194bdd54` |
| 20 | `theorem` | [toFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/tofinsupp-smul--9fdabb2a37d496d6e30bb51b.md) | 199 | `result-track:9fdabb2a37d496d6e30bb51bffa712eef30432f3f6672e40f3026d817976a5c1` |
| 21 | `def` | [finsuppEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/finsuppequivdfinsupp--008098d8d45b235544980e6d.md) | 214 | `declaration-track:008098d8d45b235544980e6d8b2d7775928447fb6d787de8cbe14c7d97da272d` |
| 22 | `def` | [finsuppAddEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/finsuppaddequivdfinsupp--0f1d2a9cc5e2d3ee70d42efd.md) | 224 | `declaration-track:0f1d2a9cc5e2d3ee70d42efddbfa5a07433f93ceb36767c1cd3d8275c9b9825f` |
| 23 | `def` | [finsuppLequivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/finsupplequivdfinsupp--c0da0ff5eb75f42efbe52eb3.md) | 235 | `declaration-track:c0da0ff5eb75f42efbe52eb35fe03e0cc0f3718aaff002fc2b03a0c7ff9461e5` |
| 24 | `theorem` | [finsuppLequivDFinsupp_apply_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/finsupplequivdfinsupp-apply-apply--b3ef9e71882ae27622506172.md) | 244 | `result-track:b3ef9e71882ae276225061721a41c540d1e343d48bc9bf04ff6aca1a88244bb5` |
| 25 | `theorem` | [finsuppLequivDFinsupp_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/finsupplequivdfinsupp-symm-apply--3a32f562b3ab127bfbd96fef.md) | 249 | `result-track:3a32f562b3ab127bfbd96fefdce0a52542143647645c042734557c5fec92fd63` |
| 26 | `def` | [sigmaFinsuppEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/sigmafinsuppequivdfinsupp--49b0dcba880c3195e7235421.md) | 264 | `declaration-track:49b0dcba880c3195e7235421d390b89bee9782eef536a79aeacacd0d65270896` |
| 27 | `theorem` | [sigmaFinsuppEquivDFinsupp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/sigmafinsuppequivdfinsupp-apply--69994f5b94867631329c7fae.md) | 283 | `result-track:69994f5b94867631329c7faeec9c3b90a2788e092da4cf32a47779e4403bf371` |
| 28 | `theorem` | [sigmaFinsuppEquivDFinsupp_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/sigmafinsuppequivdfinsupp-symm-apply--fa31880c30e4f39823184599.md) | 288 | `result-track:fa31880c30e4f398231845995a1664f34434a077f57dc78eedf9e3c488df2b73` |
| 29 | `theorem` | [sigmaFinsuppEquivDFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/sigmafinsuppequivdfinsupp-support--42f45c14ff47cbda01eec6b1.md) | 293 | `result-track:42f45c14ff47cbda01eec6b14fb529415993045d5db458a05e90804f83130c3a` |
| 30 | `theorem` | [sigmaFinsuppEquivDFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/sigmafinsuppequivdfinsupp-single--abc1ff1f1839138d012da39c.md) | 301 | `result-track:abc1ff1f1839138d012da39c3ae3f7d15bfb7d61f1d117530fca871aa5e46776` |
| 31 | `theorem` | [sigmaFinsuppEquivDFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/sigmafinsuppequivdfinsupp-add--cb16abede2df35bbd1ebd398.md) | 318 | `result-track:cb16abede2df35bbd1ebd39866e0fcee193487e495a4b632bf8cfd1452fe3780` |
| 32 | `def` | [sigmaFinsuppAddEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/sigmafinsuppaddequivdfinsupp--8eaf3e8f7672e61fcae3400d.md) | 326 | `declaration-track:8eaf3e8f7672e61fcae3400d81cdab10d2b20b2e96299832c22540e86ca05b53` |
| 33 | `theorem` | [sigmaFinsuppEquivDFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/sigmafinsuppequivdfinsupp-smul--447588b0ca800527b7ee8f3e.md) | 335 | `result-track:447588b0ca800527b7ee8f3e88b2f73082607daf14d8a4dfbfc9d39210fe6127` |
| 34 | `def` | [sigmaFinsuppLequivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/declarations/sigmafinsupplequivdfinsupp--5b25783410eb7d4365687003.md) | 345 | `declaration-track:5b25783410eb7d436568700367989f26194e1f942641e30c721e4897e5e54efb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
