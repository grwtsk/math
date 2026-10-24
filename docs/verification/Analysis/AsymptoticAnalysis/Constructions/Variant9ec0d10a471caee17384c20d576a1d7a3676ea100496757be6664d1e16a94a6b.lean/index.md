# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Constructions.Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8624eedf8a63c1e2c2a02575f65c916f49c5e583",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8624eedf8a63c1e2c2a02575f65c916f49c5e583`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean.json)

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
| 1 | `theorem` | [hasProd_pi_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hasprod-pi-single--ba1a291174de6e4075b602d1.md) | 38 | `result-track:ba1a291174de6e4075b602d12e873382b15501a9cac5a2712c3f58168dd5e9c7` |
| 2 | `theorem` | [tprod_pi_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/tprod-pi-single--d5e33690bb78bc836aba5342.md) | 43 | `result-track:d5e33690bb78bc836aba53422061512d8be61a69c11faaf11727464f98fe3827` |
| 3 | `lemma` | [tprod_setProd_singleton_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/tprod-setprod-singleton-left--855387da86dc390805a31c0a.md) | 49 | `result-track:855387da86dc390805a31c0a2194406f3777b49bced3bac0f6e3ded0e31a86a4` |
| 4 | `lemma` | [tprod_setProd_singleton_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/tprod-setprod-singleton-right--7db327c9a358c7988d39de00.md) | 54 | `result-track:7db327c9a358c7988d39de001ed755f40aa5370bc1bd9bbe2d1c8b8e6815ce71` |
| 5 | `theorem` | [Multipliable.prod_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-prod-symm--876eac9ad589f797967f5088.md) | 59 | `result-track:876eac9ad589f797967f5088d7f2089966c55ca1f71b2050867e8cebb881e909` |
| 6 | `theorem` | [HasProd.prodMk](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hasprod-prodmk--c86f9b3c6fcbe42b83a4b1da.md) | 70 | `result-track:c86f9b3c6fcbe42b83a4b1da1741360e9d30416b71f6e8a4628293ba7c2626c4` |
| 7 | `lemma` | [HasProd.sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hasprod-sum--385661355da14075e2d117fb.md) | 83 | `result-track:385661355da14075e2d117fb050ccf0ffa009394e3a5983d7960615ce32ae82c` |
| 8 | `lemma` | [Multipliable.tprod_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-tprod-sum--5b4f0401303d17b09eb03fd1.md) | 97 | `result-track:5b4f0401303d17b09eb03fd110530f1c826790df6500e1534e410739c68155d6` |
| 9 | `lemma` | [Multipliable.sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-sum--b87a895dfba2a2515a93814d.md) | 103 | `result-track:b87a895dfba2a2515a93814d97db1de44518109ee9a21cb1b0089b4dbb92b1e0` |
| 10 | `theorem` | [HasProd.sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hasprod-sigma--7b4f8e42876ca3c4a3f0f3e8.md) | 115 | `result-track:7b4f8e42876ca3c4a3f0f3e802739528a8ea35a9620dbd36e74dadb5e72be5a1` |
| 11 | `theorem` | [HasProd.prod_fiberwise](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hasprod-prod-fiberwise--c4ac4b89f60338f1e6013351.md) | 138 | `result-track:c4ac4b89f60338f1e601335148c2fe865db6700284078a44cbe1990646b366b7` |
| 12 | `theorem` | [Multipliable.sigma'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-sigma--b87e3b83606b623b0e68a10d.md) | 143 | `result-track:b87e3b83606b623b0e68a10d7b37e3800facebbc2dc2f222941e2a522a8c9bcb` |
| 13 | `theorem` | [HasProd.sigma_of_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hasprod-sigma-of-hasprod--37d149a335c7a04a45812b5b.md) | 154 | `result-track:37d149a335c7a04a45812b5b41bd0b79acc9238dbecb3cb849cb74b6c42fbf2c` |
| 14 | `theorem` | [Multipliable.tprod_sigma'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-tprod-sigma--5830d08389bd4ad26f9f2937.md) | 159 | `result-track:5830d08389bd4ad26f9f2937f63507117b4503e80ba0da5f945d298b2580173e` |
| 15 | `theorem` | [Multipliable.tprod_prod'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-tprod-prod--453ad2f3f7954f33f7df0e59.md) | 165 | `result-track:453ad2f3f7954f33f7df0e599b681f5b74c8eb00cb08347b2f8fe820c11fedbc` |
| 16 | `theorem` | [Multipliable.tprod_prod_uncurry](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-tprod-prod-uncurry--34bec2dee3a67ee0358cdabe.md) | 171 | `result-track:34bec2dee3a67ee0358cdabe10e7b2e18ea6cf8afa8ba70a29bb9780ab11a0a9` |
| 17 | `theorem` | [Multipliable.tprod_comm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-tprod-comm--38c4163ed50c463d0dfe2753.md) | 177 | `result-track:38c4163ed50c463d0dfe2753489d91c4bda4f2a96014975a6ee772a0fe288f98` |
| 18 | `theorem` | [HasProd.of_sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hasprod-of-sigma--3161292eb33c790fc9947e9e.md) | 193 | `result-track:3161292eb33c790fc9947e9e30921c55b201d361d367db0c359abe4bd36bafdc` |
| 19 | `theorem` | [Multipliable.sigma_factor](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-sigma-factor--4a793c8b845ca2c97b0a787f.md) | 221 | `result-track:4a793c8b845ca2c97b0a787f6a3761a259507f82bdf05d4fdaa67897339834f8` |
| 20 | `theorem` | [Multipliable.sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-sigma--6edf03abf1037233368e8a0a.md) | 227 | `result-track:6edf03abf1037233368e8a0ad3c1f29cca5c8ed4cc1e35379ecc95256532368e` |
| 21 | `theorem` | [Multipliable.prod_factor](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-prod-factor--70d94ca7a0645dfb58bd7af3.md) | 232 | `result-track:70d94ca7a0645dfb58bd7af3801b8bccefa689029b4191a091fe0578451cf357` |
| 22 | `lemma` | [Multipliable.prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-prod--7c9fb8f572b05e47bb38ce8c.md) | 237 | `result-track:7c9fb8f572b05e47bb38ce8ca51900b46d2b9933abaea416ffabfbef936a59e7` |
| 23 | `lemma` | [HasProd.tprod_fiberwise](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hasprod-tprod-fiberwise--291dfea0d043f5796e149e8a.md) | 242 | `result-track:291dfea0d043f5796e149e8ad6ac5e34fa93ae4f25501c39c5c4e71d3b617170` |
| 24 | `theorem` | [Multipliable.tprod_sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-tprod-sigma--708498022763f3adcfccccd8.md) | 252 | `result-track:708498022763f3adcfccccd87b37479dc1e688c91567fc5b802a8106dd2de54e` |
| 25 | `theorem` | [Multipliable.tprod_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-tprod-prod--60d7866ec3e451b74a9a0432.md) | 257 | `result-track:60d7866ec3e451b74a9a04326252575b13fa2df7fb2033e237fd9b1c33112182` |
| 26 | `theorem` | [Multipliable.tprod_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/multipliable-tprod-comm--a8b50333426dc78bcb01246d.md) | 262 | `result-track:a8b50333426dc78bcb01246d998064740d304a846341ef137794e6eb208b3976` |
| 27 | `theorem` | [Pi.hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/pi-hasprod--847a3359555217635dad8faf.md) | 277 | `result-track:847a3359555217635dad8faf37d2ea5c48feb4d476e1e64e4d29439965dc2682` |
| 28 | `theorem` | [Pi.multipliable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/pi-multipliable--a4ff1e4d4ea5f75d60134d58.md) | 283 | `result-track:a4ff1e4d4ea5f75d60134d58fd466ad071461c96364566d24cccb42da8f0fb57` |
| 29 | `theorem` | [Pi.tprod_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/pi-tprod-apply--9f69b496110752e544c5ac29.md) | 289 | `result-track:9f69b496110752e544c5ac291f4f9a9cd3107d919bf20e3bd0adbe2c34f77e0c` |
| 30 | `theorem` | [HasSum.op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hassum-op--3f8df55f965188496f6ecda1.md) | 304 | `result-track:3f8df55f965188496f6ecda1f2db1e5f0351de05c70e2d9ae13265683835d49c` |
| 31 | `theorem` | [Summable.op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/summable-op--f7242caaab50c06c3a3bcfc4.md) | 307 | `result-track:f7242caaab50c06c3a3bcfc47d68458954b657c285b94486776925c78ad584d1` |
| 32 | `theorem` | [HasSum.unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hassum-unop--511730fa5cddf6599947afe9.md) | 310 | `result-track:511730fa5cddf6599947afe916cd41df37a02db9bb4864763a044a4e7d694c34` |
| 33 | `theorem` | [Summable.unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/summable-unop--c60085752843e6c8484aa8cc.md) | 314 | `result-track:c60085752843e6c8484aa8cc181e0583580c3cf56e6d9e6e859838bcf811767a` |
| 34 | `theorem` | [hasSum_op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hassum-op--f8a3f55775b97aa40b8800a0.md) | 318 | `result-track:f8a3f55775b97aa40b8800a05beac81e9906769c3ba7bb9209080fcd8b8cc496` |
| 35 | `theorem` | [hasSum_unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hassum-unop--90b52488852d4d066dff8095.md) | 322 | `result-track:90b52488852d4d066dff809588aed34893f4ae8c6f34b0fc2560a4b8b7e23f14` |
| 36 | `theorem` | [summable_op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/summable-op--6e41439a9a970c66d122e721.md) | 327 | `result-track:6e41439a9a970c66d122e7218c5c77a948d1c2b9207b9b0d25f34bd1beb2202c` |
| 37 | `theorem` | [summable_unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/summable-unop--20258bd86edc1a57ecc777cf.md) | 330 | `result-track:20258bd86edc1a57ecc777cfa5d1839449e8ae6d06b126bc27aeaec97ddd7a41` |
| 38 | `theorem` | [tsum_op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/tsum-op--847485cb79e137b23779d96a.md) | 333 | `result-track:847485cb79e137b23779d96a8cd41228f1def230f77b11450520aa98130470db` |
| 39 | `theorem` | [tsum_unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/tsum-unop--9d3fc07c92ec7482ca2df57d.md) | 336 | `result-track:9d3fc07c92ec7482ca2df57d43fe4ba711d14d589a896828c986ad4dccd62db6` |
| 40 | `theorem` | [HasSum.star](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/hassum-star--e45bcc1c4b6fd670547109a2.md) | 348 | `result-track:e45bcc1c4b6fd670547109a2a5a291af31053239ca2563190aa9cbb4452fa186` |
| 41 | `theorem` | [Summable.star](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/summable-star--730617a8be5a760e39e521b5.md) | 351 | `result-track:730617a8be5a760e39e521b52cac8c4f074042804de96f2e98d9eb69a24945de` |
| 42 | `theorem` | [Summable.ofStar](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/summable-ofstar--f1ee489d8d5c4089b9489292.md) | 354 | `result-track:f1ee489d8d5c4089b94892924bf386cebb781b32e6fa42432dfc979429f50e7b` |
| 43 | `theorem` | [summable_star_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/summable-star-iff--f40866dde8543f670ada6ef5.md) | 358 | `result-track:f40866dde8543f670ada6ef5665e0054e2702ba730a6ed76272793a8337c8db6` |
| 44 | `theorem` | [summable_star_iff'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/summable-star-iff--a83dd16a3c4bb9a245d6f73a.md) | 362 | `result-track:a83dd16a3c4bb9a245d6f73a93d564fd49a855d4e9dcf2a67dcc68be4d17ac48` |
| 45 | `theorem` | [tsum_star](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/declarations/tsum-star--a9a25b1fd6792bb7146db1a9.md) | 365 | `result-track:a9a25b1fd6792bb7146db1a9c475c24500bfcd86b672790e52bd2df87649af25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
