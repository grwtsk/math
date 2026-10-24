# Verification target: GRWTSK.Algebra.IntegralRestrict.Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "012aab7f2177cc7a5a89df17667654c8b42c5bb2",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `012aab7f2177cc7a5a89df17667654c8b42c5bb2`.

Source path: `GRWTSK/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean.json)

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
| 1 | `def` | [galRestrict'](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galrestrict--c26e46cebbf8c8546514f002.md) | 55 | `declaration-track:c26e46cebbf8c8546514f0029002c6aba61b1d2f7debc89b049f1bc6b96df39a` |
| 2 | `lemma` | [algebraMap_galRestrict'_apply](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebramap-galrestrict-apply--4502b0777326fe036c999c7d.md) | 62 | `result-track:4502b0777326fe036c999c7dba651039fa6a9d6c83a7038bf911aaf67c8d6bc8` |
| 3 | `theorem` | [galRestrict'_id](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galrestrict-id--7d2653818e53f6780f78ad30.md) | 67 | `result-track:7d2653818e53f6780f78ad3053b898c95a1bb8e147badecb56f10060b43f8a7c` |
| 4 | `theorem` | [galRestrict'_comp](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galrestrict-comp--87a42c772dc01c8bd778d6dd.md) | 73 | `result-track:87a42c772dc01c8bd778d6dd4f3518038702effafcfb50ce2cf22b14dd373285` |
| 5 | `def` | [galLift](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/gallift--2fa0bde8b22e4210160affae.md) | 90 | `declaration-track:2fa0bde8b22e4210160affaefcbf64c70f3e473536924426266f0d120a97fd86` |
| 6 | `theorem` | [galLift_algebraMap_apply](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/gallift-algebramap-apply--eab24671481f5908af63ddb2.md) | 111 | `result-track:eab24671481f5908af63ddb27ca8c925a81dfdfe104285d611d6d8c2227c075b` |
| 7 | `theorem` | [galLift_id](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/gallift-id--3f212e599d5a53f9c7f7c25a.md) | 116 | `result-track:3f212e599d5a53f9c7f7c25a1197c76422d712d7d398585607f2122d3097afc1` |
| 8 | `theorem` | [galLift_comp](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/gallift-comp--c9490583faae33d829049589.md) | 120 | `result-track:c9490583faae33d829049589055f072223178c0a0d8ec3abcac2a21dcc713056` |
| 9 | `theorem` | [galLift_galRestrict'](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/gallift-galrestrict--08e04b780c306c58ab12faba.md) | 129 | `result-track:08e04b780c306c58ab12faba7a4084aa4d15707d184396bcb1fa18d907756736` |
| 10 | `theorem` | [galRestrict'_galLift](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galrestrict-gallift--3e5ce2b568cdd344cfe2a529.md) | 137 | `result-track:3e5ce2b568cdd344cfe2a529ecbb474a3888f78b2f6fe262af2fd1169974d40e` |
| 11 | `def` | [galLiftEquiv](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galliftequiv--c309b4721a2b64cb9a12405f.md) | 149 | `declaration-track:c309b4721a2b64cb9a12405f8833cc5936fd96f5c76afb487f820c14027067cf` |
| 12 | `theorem` | [galLiftEquiv_algebraMap_apply](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galliftequiv-algebramap-apply--b20bdaaef58ed3649a7b8ea5.md) | 153 | `result-track:b20bdaaef58ed3649a7b8ea57a91e6dbb989fb75ba22e1e78380f1572197fa45` |
| 13 | `def` | [galRestrictHom](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galrestricthom--17b049fd1e0c24721adf348d.md) | 163 | `declaration-track:17b049fd1e0c24721adf348d0da48955c96a6b6e4fd4c9a23b6c6deb26debf5c` |
| 14 | `lemma` | [algebraMap_galRestrictHom_apply](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebramap-galrestricthom-apply--d9407a474c3dd787ab7cb07b.md) | 171 | `result-track:d9407a474c3dd787ab7cb07b52d9e9842ccf7a8f16f271ea5bcf3ca39f75d6b5` |
| 15 | `lemma` | [galRestrictHom_symm_algebraMap_apply](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galrestricthom-symm-algebramap-apply--776786e60ead3b7fb2c1b194.md) | 176 | `result-track:776786e60ead3b7fb2c1b194073adf613a6861c73a99c07c677f4992c9738a08` |
| 16 | `def` | [galRestrict](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galrestrict--9ed9ff2b0d90eef178c6679d.md) | 182 | `declaration-track:9ed9ff2b0d90eef178c6679d8a5115c7c0c460bb5148b856579bb105d8158e54` |
| 17 | `lemma` | [coe_galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/coe-galrestrict-apply--1bc2dbb15d09e2c3f07139e1.md) | 188 | `result-track:1bc2dbb15d09e2c3f07139e161e41041086bb930beeb61c7099dc85d70895cf2` |
| 18 | `lemma` | [galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galrestrict-apply--9311f0d4899a78bcddc4a3e0.md) | 193 | `result-track:9311f0d4899a78bcddc4a3e028492ba9eea3dd23f89a8acff46c80be68571261` |
| 19 | `lemma` | [algebraMap_galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebramap-galrestrict-apply--b0322822c486253c530bb1bd.md) | 196 | `result-track:b0322822c486253c530bb1bd60e2abaabdf44eae5c3d3423a2e91e2c215383c0` |
| 20 | `lemma` | [galRestrict_symm_algebraMap_apply](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/galrestrict-symm-algebramap-apply--2bd132fab2d1e58443ad6564.md) | 201 | `result-track:2bd132fab2d1e58443ad6564b95f1920e6ee052399cc10d513f8e2106b0aa85c` |
| 21 | `lemma` | [prod_galRestrict_eq_norm](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/prod-galrestrict-eq-norm--04f5a9983b7bf15badcfa10c.md) | 209 | `result-track:04f5a9983b7bf15badcfa10c5a6202920462e0c51c9a5d9d4c95844efbac1348` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/instance--942166c1b496940cb9a5c323.md) | 221 | `declaration-track:942166c1b496940cb9a5c3238edec5ef97ab838fa1355be658ec251b61e1f08a` |
| 23 | `def` | [Algebra.intTraceAux](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-inttraceaux--ae4cad38d62903b669139658.md) | 243 | `declaration-track:ae4cad38d62903b669139658532e62dd447e08d7b1a063acc72d3ea408489182` |
| 24 | `lemma` | [Algebra.map_intTraceAux](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-map-inttraceaux--0a4a25287600b3b9a7dc9cbc.md) | 253 | `result-track:0a4a25287600b3b9a7dc9cbc1cebf1cb36e4ee6ea4aaf7b7987ffd86dddb961f` |
| 25 | `def` | [Algebra.intTrace](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-inttrace--116d8e73aad9f1223863a5bd.md) | 264 | `declaration-track:116d8e73aad9f1223863a5bd4d0cbf9a140999d8ead12cd184d158013d309acc` |
| 26 | `lemma` | [Algebra.algebraMap_intTrace](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-algebramap-inttrace--2b9fee95fc976703cff91149.md) | 277 | `result-track:2b9fee95fc976703cff91149d5c9221a65c13edddf3021819dd06b1338950f74` |
| 27 | `lemma` | [Algebra.algebraMap_intTrace_fractionRing](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-algebramap-inttrace-fractionring--3f081dc31ad3ffcaf67aa458.md) | 296 | `result-track:3f081dc31ad3ffcaf67aa458196da30ea049ad0791b4de1c8c9510ce73df4051` |
| 28 | `lemma` | [Algebra.intTrace_eq_trace](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-inttrace-eq-trace--5331db218276c2ae5688497c.md) | 311 | `result-track:5331db218276c2ae5688497cd18b03d6df1e8eceecffc33cf96e56efb3e28f02` |
| 29 | `lemma` | [Algebra.intTrace_eq_of_isLocalization](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-inttrace-eq-of-islocalization--f0266eee9a1119a8506cb080.md) | 330 | `result-track:f0266eee9a1119a8506cb08089a4206f039694cce7ddd5a02d05eb01080d47ad` |
| 30 | `def` | [Algebra.intNormAux](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-intnormaux--f3219a07b00bccd73ba6e08e.md) | 383 | `declaration-track:f3219a07b00bccd73ba6e08ee2cd76e6e471868e12536a3e54286474daf45a6f` |
| 31 | `lemma` | [Algebra.map_intNormAux](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-map-intnormaux--c20fd16f635d3db1df543cbe.md) | 394 | `result-track:c20fd16f635d3db1df543cbe47e33a1a1d774137e1563b2fbb045bf2e25b3149` |
| 32 | `def` | [Algebra.intNorm](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-intnorm--b88de99c0eb14a5668208dd5.md) | 406 | `declaration-track:b88de99c0eb14a5668208dd558441307bf585145c435a24deac7811f94fa14f6` |
| 33 | `lemma` | [Algebra.algebraMap_intNorm](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-algebramap-intnorm--17cff12eb0ffd83c467ed79f.md) | 410 | `result-track:17cff12eb0ffd83c467ed79fb0b95682768c67b85673a648c0ab3e1125be75b8` |
| 34 | `lemma` | [Algebra.algebraMap_intNorm_fractionRing](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-algebramap-intnorm-fractionring--9de9f2e738df48380f871190.md) | 422 | `result-track:9de9f2e738df48380f871190543627b15a572ce81ea539b4651e89deccf75ed8` |
| 35 | `theorem` | [Algebra.intNorm_intNorm](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-intnorm-intnorm--9f88067af26f0c8e45e04845.md) | 429 | `result-track:9f88067af26f0c8e45e04845188010587035b5ea7a1a8510c12d99c2026abafa` |
| 36 | `lemma` | [Algebra.intNorm_eq_norm](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-intnorm-eq-norm--b65c77fcfc364bbf5b095e4b.md) | 437 | `result-track:b65c77fcfc364bbf5b095e4b1ecbc386e78bf32ccfd81a6be9403d614f222f96` |
| 37 | `lemma` | [Algebra.intNorm_zero](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-intnorm-zero--21f21bbc96ecc28a8f929a93.md) | 446 | `result-track:21f21bbc96ecc28a8f929a935cffaa9458cac512d7a17c7b199c1cad92caa0f7` |
| 38 | `theorem` | [Algebra.intNorm_map_algEquiv](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-intnorm-map-algequiv--df2441a3fe7cb08b1e8c7976.md) | 458 | `result-track:df2441a3fe7cb08b1e8c7976a3db0be1b9e6575397beab8a613e66e423eea967` |
| 39 | `lemma` | [Algebra.intNorm_eq_zero](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-intnorm-eq-zero--540fe6ab276cf0a64a3df3c0.md) | 468 | `result-track:540fe6ab276cf0a64a3df3c0f54ca850069ede109aa107d520621073da4ac144` |
| 40 | `lemma` | [Algebra.intNorm_ne_zero](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-intnorm-ne-zero--810ede762d7feaab96ee97d7.md) | 474 | `result-track:810ede762d7feaab96ee97d7437d2c72c8a3ff57c8c2f4b9ca6b035ac5d21e9d` |
| 41 | `lemma` | [Algebra.intNorm_eq_of_isLocalization](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-intnorm-eq-of-islocalization--e4b5b31801eb9bc8d7c30056.md) | 482 | `result-track:e4b5b31801eb9bc8d7c300568084ae49c13550389b186ff2c14cb2893e48d3ef` |
| 42 | `lemma` | [Algebra.algebraMap_intNorm_of_isGalois](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-algebramap-intnorm-of-isgalois--b8ee231999473736aa27e31b.md) | 523 | `result-track:b8ee231999473736aa27e31b69d5cae354f672b11309ab733e575990711fdd8a` |
| 43 | `theorem` | [Algebra.dvd_algebraMap_intNorm_self](../../../../mathematics/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/declarations/algebra-dvd-algebramap-intnorm-self--53b88cf09c987880373ce8cc.md) | 531 | `result-track:53b88cf09c987880373ce8cc228f60891114f1c8c54ee844accff06f71e05e3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
