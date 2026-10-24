# Verification target: GRWTSK.Algebra.Basic.Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dda4a72d32e3af50005b49613d390269e6ecbca8",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dda4a72d32e3af50005b49613d390269e6ecbca8`.

Source path: `GRWTSK/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean.json)

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
| 1 | `class` | [FaithfullyFlat](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/faithfullyflat--1680758c9f67ea3b25c34c74.md) | 63 | `declaration-track:1680758c9f67ea3b25c34c74b65988521435f8570d8f605eb58ab5177d668580` |
| 2 | `instance` | [self](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/self--eff3471877648158391c5f35.md) | 67 | `declaration-track:eff3471877648158391c5f35d992ed018d24058f3c57918e93e646be109cf808` |
| 3 | `lemma` | [iff_flat_and_proper_ideal](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/iff-flat-and-proper-ideal--ea2390de8fa065a6773f06e2.md) | 73 | `result-track:ea2390de8fa065a6773f06e262c0b435a178902a31e1adbb1f02a48a70514b77` |
| 4 | `lemma` | [iff_flat_and_ideal_smul_eq_top](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/iff-flat-and-ideal-smul-eq-top--8c397c79969b7d7c89c3f932.md) | 81 | `result-track:8c397c79969b7d7c89c3f932501726643660cf07e2eb2e35c0f8c24c52153f87` |
| 5 | `instance` | [rTensor_nontrivial](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/rtensor-nontrivial--2f540755a9d4c16c5f782167.md) | 91 | `declaration-track:2f540755a9d4c16c5f7821678094f091a0bf1da3fe0287dd5f7094a7e4f36ae4` |
| 6 | `instance` | [lTensor_nontrivial](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/ltensor-nontrivial--b7517c2dfc301bf9b3e35ec4.md) | 114 | `declaration-track:b7517c2dfc301bf9b3e35ec4a409dcf0d51ad4ef2440c14b16b5d3c0eab8cfd2` |
| 7 | `lemma` | [rTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/rtensor-reflects-triviality--10dadd929b90f9a25d75f2aa.md) | 119 | `result-track:10dadd929b90f9a25d75f2aa01bbaaf58dd5163bf4b9e9b449090fbbd123bf25` |
| 8 | `lemma` | [lTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/ltensor-reflects-triviality--87affd28020e16d560485fed.md) | 126 | `result-track:87affd28020e16d560485fed35e323cc7030ba39593f5f6fe155f77b98fd1fc8` |
| 9 | `lemma` | [iff_flat_and_rTensor_faithful](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/iff-flat-and-rtensor-faithful--968a1039762d081a6ce727b7.md) | 134 | `result-track:968a1039762d081a6ce727b701c511a319bcf32ff11a5558d5cdc71e81078bf3` |
| 10 | `lemma` | [iff_flat_and_rTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/iff-flat-and-rtensor-reflects-triviality--d96361e0328b622c9e17967b.md) | 149 | `result-track:d96361e0328b622c9e17967b235f2aeb8717e81abdc054bf11f5f64b908a4e34` |
| 11 | `lemma` | [iff_flat_and_lTensor_faithful](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/iff-flat-and-ltensor-faithful--41058254a55a6f9687fe41f1.md) | 158 | `result-track:41058254a55a6f9687fe41f1941cf2847e5f98ef4f87a466603d11764a708fa5` |
| 12 | `lemma` | [iff_flat_and_lTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/iff-flat-and-ltensor-reflects-triviality--2d6cd1cf358f1daac05258a9.md) | 169 | `result-track:2d6cd1cf358f1daac05258a95080f999348172b20df77cc4764ba6d58146c1f5` |
| 13 | `lemma` | [of_linearEquiv](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/of-linearequiv--80c0e09ab5fedd2da260d6fe.md) | 182 | `result-track:80c0e09ab5fedd2da260d6feeb35764e6b4b087a5f5dfc677db393f6d9b081e5` |
| 14 | `instance` | [directSum](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/directsum--021987150d6f029ec79b6610.md) | 191 | `declaration-track:021987150d6f029ec79b661066113f8ff90a7b7d5aa147ab430024a24a47a116` |
| 15 | `instance` | [finsupp](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/finsupp--72f04e0643fa856d56711bad.md) | 203 | `declaration-track:72f04e0643fa856d56711bad612b362b5b49e7f0350b6869646f09e33486968f` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/instance--6d92f86e641f228c0b4c18a8.md) | 209 | `declaration-track:6d92f86e641f228c0b4c18a8c6974afa0d3f198e14c7678fee7a946683f092b3` |
| 17 | `lemma` | [subsingleton_tensorProduct_iff_right](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/subsingleton-tensorproduct-iff-right--a90272c20784c0b87242bbe4.md) | 217 | `result-track:a90272c20784c0b87242bbe452d5d6d024f9c713a6aada9e816f00747a6543c9` |
| 18 | `lemma` | [subsingleton_tensorProduct_iff_left](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/subsingleton-tensorproduct-iff-left--208d9bf96bc981408c65d579.md) | 222 | `result-track:208d9bf96bc981408c65d57903ddf62dc74171091a67c5819a56066d34ad3987` |
| 19 | `lemma` | [nontrivial_tensorProduct_iff_right](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/nontrivial-tensorproduct-iff-right--10d21c22f3171f183753a440.md) | 227 | `result-track:10d21c22f3171f183753a4404e424db55939871198c3bee0adb3b82233aef1ec` |
| 20 | `lemma` | [nontrivial_tensorProduct_iff_left](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/nontrivial-tensorproduct-iff-left--e7958bb23bb1f7d36f6f43d6.md) | 232 | `result-track:e7958bb23bb1f7d36f6f43d6bd5f223aa45074c6790382749f042c23861ec191` |
| 21 | `lemma` | [range_le_ker_of_exact_rTensor](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/range-le-ker-of-exact-rtensor--e50f45bb6345f79ab66dcf82.md) | 276 | `result-track:e50f45bb6345f79ab66dcf820e0491bc799596c0ea1e11aef1e690e8eedc8eec` |
| 22 | `lemma` | [rTensor_reflects_exact](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/rtensor-reflects-exact--9b6aa0c5469f53e8dcf72b81.md) | 318 | `result-track:9b6aa0c5469f53e8dcf72b81b8c0748971c75822d492e842880ec8b7e44d4559` |
| 23 | `lemma` | [lTensor_reflects_exact](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/ltensor-reflects-exact--d3c32199fb50f6830fbc9024.md) | 361 | `result-track:d3c32199fb50f6830fbc90240da42e810f20942e1b0ced76cbaebd3bd469352f` |
| 24 | `lemma` | [rTensor_exact_iff_exact](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/rtensor-exact-iff-exact--d96ac0f771831aaec94d2b4c.md) | 369 | `result-track:d96ac0f771831aaec94d2b4c01b4a546f8924afcc3efe68f1691233230d774d6` |
| 25 | `lemma` | [lTensor_exact_iff_exact](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/ltensor-exact-iff-exact--de421f057ad0885aac9f8268.md) | 374 | `result-track:de421f057ad0885aac9f826864ecaedb1f15d9301c237b867261d3a87a4d9703` |
| 26 | `lemma` | [lTensor_injective_iff_injective](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/ltensor-injective-iff-injective--f0d30927536eddaaf95a2e22.md) | 384 | `result-track:f0d30927536eddaaf95a2e224e5435e5eabf16e3f4fdd336e8eda469f1588a4a` |
| 27 | `lemma` | [lTensor_surjective_iff_surjective](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/ltensor-surjective-iff-surjective--430ec9f27090ce109ec5f11e.md) | 391 | `result-track:430ec9f27090ce109ec5f11ee394602e8e27597f2e2e5d943411c62eb93b778c` |
| 28 | `lemma` | [lTensor_bijective_iff_bijective](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/ltensor-bijective-iff-bijective--b5b977dd04380deb3f00c6a8.md) | 399 | `result-track:b5b977dd04380deb3f00c6a86d78a4d602d95d22a7a6b8a42c29ebe8c33b9d9b` |
| 29 | `lemma` | [iff_exact_iff_rTensor_exact](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/iff-exact-iff-rtensor-exact--a92438bf05b464ae04133814.md) | 409 | `result-track:a92438bf05b464ae04133814388d3b6e4a76f37794c25c4fe3b9786457631786` |
| 30 | `lemma` | [iff_exact_iff_lTensor_exact](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/iff-exact-iff-ltensor-exact--6a44bcdf2ed74c17e536495c.md) | 423 | `result-track:6a44bcdf2ed74c17e536495cc11a3f5e80fe19088cfb46554530a3d8e385c3ed` |
| 31 | `lemma` | [zero_iff_lTensor_zero](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/zero-iff-ltensor-zero--76e7f5960acca924c55a4a0e.md) | 453 | `result-track:76e7f5960acca924c55a4a0ed7ee39531e7acd60c0af082d592ee4642947a9e5` |
| 32 | `lemma` | [zero_iff_rTensor_zero](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/zero-iff-rtensor-zero--4b83b6a4b9d0a3d6a6b24710.md) | 468 | `result-track:4b83b6a4b9d0a3d6a6b24710467e7b5e07ca655258c921c06b1a0676fce94477` |
| 33 | `theorem` | [one_tmul_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/one-tmul-eq-zero-iff--6644a23fda5e7aed8042706f.md) | 481 | `result-track:6644a23fda5e7aed8042706f12a428a53c53a2ff61b521a3c3878033bab739d9` |
| 34 | `lemma` | [iff_zero_iff_lTensor_zero](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/iff-zero-iff-ltensor-zero--b4af56b37973ec943e601cb7.md) | 501 | `result-track:b4af56b37973ec943e601cb70b412b6059d1359570573a08b4d6e42ad0e2fbab` |
| 35 | `lemma` | [iff_zero_iff_rTensor_zero](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/iff-zero-iff-rtensor-zero--707b6c2dfd9d4242d08a758a.md) | 516 | `result-track:707b6c2dfd9d4242d08a758ab93f579f6c281ccdb9b70fdc74e069229f23d662` |
| 36 | `theorem` | [trans](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/trans--aea04a607273d646be020892.md) | 544 | `result-track:aea04a607273d646be0208929f2857577a71c7e6fe9edb3f762f639cf439c069` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/instance--8fc9c0db539b7378cc803328.md) | 558 | `declaration-track:8fc9c0db539b7378cc80332829424f0950379b8efd181fcd05666b74b79f0bc9` |
| 38 | `theorem` | [_root_.IsBaseChange.map_smul_top_ne_top_iff_of_faithfullyFlat](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/root-isbasechange-map-smul-top-ne-top-iff-of-faithfullyflat--fc518abf379b2a09a1e89b3c.md) | 572 | `result-track:fc518abf379b2a09a1e89b3c319ddbc42675231ec7632abd01a2549524ca42b6` |
| 39 | `lemma` | [Flat.of_flat_tensorProduct](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/flat-of-flat-tensorproduct--abe02fb9992897c972719e0d.md) | 587 | `result-track:abe02fb9992897c972719e0d1e121b8e5e3275acd4905e47ee3aae00c7ddcc9a` |
| 40 | `lemma` | [Flat.iff_flat_tensorProduct](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/flat-iff-flat-tensorproduct--534507b6f87cf5f5f7c71853.md) | 600 | `result-track:534507b6f87cf5f5f7c71853e8735f4486ed6f428a44864f92d5c6086f895116` |
| 41 | `theorem` | [baseChange_le_iff](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/basechange-le-iff--95e27433d11e345d561706f3.md) | 614 | `result-track:95e27433d11e345d561706f31fde4d31a7466655addf6ef939b41bbdf789468b` |
| 42 | `theorem` | [baseChange_inj](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/basechange-inj--91f11b8a08235db8f06b3716.md) | 619 | `result-track:91f11b8a08235db8f06b3716c89166192cbd3b165b93e9cb02a6512ced07f7f8` |
| 43 | `theorem` | [baseChange_injective](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/basechange-injective--3bf8e1d136e1ebd75d961b07.md) | 622 | `result-track:3bf8e1d136e1ebd75d961b07d58035ed29cf7f8682ecca3f37ac83f0473c4ec9` |
| 44 | `def` | [baseChangeOrderEmbedding](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/basechangeorderembedding--47e4bd84ac82e7d1b20180f6.md) | 628 | `declaration-track:47e4bd84ac82e7d1b20180f6506b3ba003f107900339cba1f4117f5ceabb591c` |
| 45 | `theorem` | [IsNoetherian.of_isNoetherian_tensorProduct_of_faithfullyFlat](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/isnoetherian-of-isnoetherian-tensorproduct-of-faithfullyflat--4c5557da49d3bed2514eda59.md) | 633 | `result-track:4c5557da49d3bed2514eda591d83f041f054526e3e38138fd550edd648b1cdfa` |
| 46 | `theorem` | [IsArtinian.of_isArtinian_tensorProduct_of_faithfullyFlat](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/isartinian-of-isartinian-tensorproduct-of-faithfullyflat--9112a09b7a97bd4e027c8cf6.md) | 638 | `result-track:9112a09b7a97bd4e027c8cf6e588e051ab92d048492ee4aee2b376ceaa804076` |
| 47 | `theorem` | [Module.Basis.span_repr_one_eq_top](../../../../mathematics/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/declarations/module-basis-span-repr-one-eq-top--2bac47d23e52180b062a2dd6.md) | 646 | `result-track:2bac47d23e52180b062a2dd68ade3020f3eb4f7293578b13a4d07b9a6612d0ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
