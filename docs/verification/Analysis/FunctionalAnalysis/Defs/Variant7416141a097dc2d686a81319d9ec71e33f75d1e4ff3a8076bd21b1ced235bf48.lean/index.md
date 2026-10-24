# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Defs.Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e52275982c4e008c8b44ea460ffe569b865e9705",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e52275982c4e008c8b44ea460ffe569b865e9705`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.QuadraticDiscriminant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Inner](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner--6ac920bddd8562fc4db91960.md) | 82 | `declaration-track:6ac920bddd8562fc4db919600f9b99bce314887701abf9acd1958b792081cc48` |
| 2 | `class` | [InnerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/innerproductspace--da18ac2f2e2b3c800e784187.md) | 109 | `declaration-track:da18ac2f2e2b3c800e784187420414e303bbc099a1f5d8314e4ad8a3bfa8c25a` |
| 3 | `structure` | [PreInnerProductSpace.Core](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/preinnerproductspace-core--f9aa10f8bb7f9fdf4bb642da.md) | 139 | `declaration-track:f9aa10f8bb7f9fdf4bb642da22568fcbdec4cf0e98e150739ed418af05b2e1a3` |
| 4 | `structure` | [InnerProductSpace.Core](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/innerproductspace-core--b51c04a0af552c1ebdd8817f.md) | 160 | `declaration-track:b51c04a0af552c1ebdd8817f7376e8f9ad46f4425ec201c29f01296097356eac` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/instance--4feeaf0061cc585541380e05.md) | 170 | `declaration-track:4feeaf0061cc585541380e0518b08fc676bb7e066ce1d8e86149545478e83edb` |
| 6 | `def` | [PreInnerProductSpace.toCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/preinnerproductspace-tocore--d3b1a91a82dab5cf04c7b94a.md) | 182 | `declaration-track:d3b1a91a82dab5cf04c7b94a90113f6fd8532491298473e9b711417338fbafac` |
| 7 | `def` | [InnerProductSpace.toCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/innerproductspace-tocore--cb37146b1b3b879cdd3fae5b.md) | 191 | `declaration-track:cb37146b1b3b879cdd3fae5b97f36533778d22b0b97538f3814eb2272a0395df` |
| 8 | `def` | [toPreInner'](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/topreinner--5c59a2bf4e739aa61d1f45c0.md) | 218 | `declaration-track:5c59a2bf4e739aa61d1f45c0f352a8fe465f389166c4459dce6dce12925932fe` |
| 9 | `def` | [normSq](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/normsq--5916c7db5c6f028a9e6f961c.md) | 224 | `declaration-track:5916c7db5c6f028a9e6f961c7ae1149e92d44f877fffae19eb3021e43a71b400` |
| 10 | `theorem` | [inner_conj_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-conj-symm--8d49c783041e96ed4db1f213.md) | 230 | `result-track:8d49c783041e96ed4db1f213cead611b35bc51c8f1640f801ddde3a5d2af4761` |
| 11 | `theorem` | [inner_self_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-self-nonneg--08e5f8baba5e01ca98a3cd5f.md) | 233 | `result-track:08e5f8baba5e01ca98a3cd5f2523a6170dbb085433d30c27b73793af5160c8df` |
| 12 | `theorem` | [inner_self_im](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-self-im--7e47f30a1d1fef4a66b7224a.md) | 236 | `result-track:7e47f30a1d1fef4a66b7224a1831f0d86a79b7f721d4b5c754017cfed71ba833` |
| 13 | `theorem` | [inner_add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-add-left--aeff16c9ce5e1a502b5b8f80.md) | 240 | `result-track:aeff16c9ce5e1a502b5b8f80d018a05238ec8a8526d5d7449a55886c6a00c951` |
| 14 | `theorem` | [inner_add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-add-right--776411fefde357f28f868af0.md) | 243 | `result-track:776411fefde357f28f868af099e8d6a6460d84037504756f604815b659497ada` |
| 15 | `theorem` | [ofReal_normSq_eq_inner_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/ofreal-normsq-eq-inner-self--d0391bd2f69d805c9f435d14.md) | 246 | `result-track:d0391bd2f69d805c9f435d14d134702a769761436ee535a0467db7df22eaa93f` |
| 16 | `theorem` | [inner_re_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-re-symm--10e6ea6554a438566641c3c0.md) | 250 | `result-track:10e6ea6554a438566641c3c0b13acd52612fdfeb67e684e61b1bc9e50c342646` |
| 17 | `theorem` | [inner_im_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-im-symm--1e4f6899105fad4ced0bd8e2.md) | 252 | `result-track:1e4f6899105fad4ced0bd8e29e39f28cd069a130c83eaafbd194b0a6747fd7d5` |
| 18 | `theorem` | [inner_smul_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-smul-left--1b2872f4b8d4119243c7f56a.md) | 254 | `result-track:1b2872f4b8d4119243c7f56abb6b02d06ee2dc3ffde0a8c01b1de40c00b50eb1` |
| 19 | `theorem` | [inner_smul_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-smul-right--f9f5553fc72c65b353ca5656.md) | 257 | `result-track:f9f5553fc72c65b353ca565610fc537cfc3f1099d1c81c20de9df293dd08791d` |
| 20 | `theorem` | [inner_zero_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-zero-left--af963bda2424e97cb64f3246.md) | 261 | `result-track:af963bda2424e97cb64f32464f592061a8406b5db67de48b8d4c7250898d1805` |
| 21 | `theorem` | [inner_zero_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-zero-right--9ae99183d7774c8d57b645cd.md) | 265 | `result-track:9ae99183d7774c8d57b645cd4ef1cf3d410413325c08e8a90a00a6f537afee59` |
| 22 | `theorem` | [inner_self_of_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-self-of-eq-zero--c89673b78abf6b59bdcd541d.md) | 268 | `result-track:c89673b78abf6b59bdcd541d3fdf54c7974e26dd044d604b8e5363c303d2b6f2` |
| 23 | `theorem` | [normSq_eq_zero_of_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/normsq-eq-zero-of-eq-zero--6bd74c9bfba7f4a6406ab05a.md) | 272 | `result-track:6bd74c9bfba7f4a6406ab05ad5eeae5af5f041e3d2ca9f6abfca94077003792e` |
| 24 | `theorem` | [ne_zero_of_inner_self_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/ne-zero-of-inner-self-ne-zero--c4272bc7b8dccc9f3ae6ee21.md) | 276 | `result-track:c4272bc7b8dccc9f3ae6ee217699ae443e40b9fb3af86d55d7bb56fde6888806` |
| 25 | `theorem` | [inner_self_ofReal_re](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-self-ofreal-re--ef6cbe15aa5dda71477ca03f.md) | 278 | `result-track:ef6cbe15aa5dda71477ca03f9eb897dd1f9474cb06f44750386cf0732e8b5c78` |
| 26 | `theorem` | [norm_inner_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/norm-inner-symm--4d3f390a6866078266e51421.md) | 281 | `result-track:4d3f390a6866078266e51421036811db6d56d1356d8938a01f02273bf97bf4a5` |
| 27 | `theorem` | [inner_neg_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-neg-left--5438147398420865f1f639e8.md) | 283 | `result-track:5438147398420865f1f639e88f81572d715cfd41678bd00a08d0e2bfb3a703fe` |
| 28 | `theorem` | [inner_neg_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-neg-right--f46d9b9d20bc6ddc1889fb6b.md) | 287 | `result-track:f46d9b9d20bc6ddc1889fb6bc4fddb388fb41dffa8e909e777a876c3f6c58bc2` |
| 29 | `theorem` | [inner_sub_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-sub-left--0dc7407b5da43d6f0a4c0761.md) | 290 | `result-track:0dc7407b5da43d6f0a4c0761090ea14bea9dcede42e4cc3ed29e5c5d934662e5` |
| 30 | `theorem` | [inner_sub_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-sub-right--993cf2879ac47761a4c6963d.md) | 293 | `result-track:993cf2879ac47761a4c6963d8ff4052de5adfc4dd33e38e1aaa612dc91011e3d` |
| 31 | `theorem` | [inner_mul_symm_re_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-mul-symm-re-eq-norm--3cc91e08fb4716ce9794cc19.md) | 296 | `result-track:3cc91e08fb4716ce9794cc1911e7438b260ad045383832b7607161ee7f9ad46e` |
| 32 | `theorem` | [inner_add_add_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-add-add-self--aecb97624be48bd6a660cbfe.md) | 301 | `result-track:aecb97624be48bd6a660cbfe03f209d3d9bfa7696df9370632fac74eef2a9149` |
| 33 | `theorem` | [inner_sub_sub_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-sub-sub-self--a5082da576dad05bf4d7db98.md) | 305 | `result-track:a5082da576dad05bf4d7db98cbd835e6a580983c9ad34f0c24ba0f06db1bf231` |
| 34 | `theorem` | [inner_smul_ofReal_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-smul-ofreal-left--663a9cc104a9d5226d88ca25.md) | 308 | `result-track:663a9cc104a9d5226d88ca25ab4ee3268df8f6e1eaf0091b976a2addca14e1dc` |
| 35 | `theorem` | [inner_smul_ofReal_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-smul-ofreal-right--038cf837d4d74f36849cb5b6.md) | 311 | `result-track:038cf837d4d74f36849cb5b6f594d54a7c9e0ee5ccc8c5e9d0efe2948c2856b2` |
| 36 | `theorem` | [re_inner_smul_ofReal_smul_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/re-inner-smul-ofreal-smul-self--3f8f84541d6ef1c2c2b9f5a9.md) | 314 | `result-track:3f8f84541d6ef1c2c2b9f5a9bdc45c341c74d0677a4a72d36a17317e443fd1b9` |
| 37 | `lemma` | [cauchy_schwarz_aux'](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/cauchy-schwarz-aux--b3a7aba8304b8299605678ea.md) | 321 | `result-track:b3a7aba8304b8299605678eaf15ff4685c825fe345f4b2a753cc8a3844025bda` |
| 38 | `theorem` | [cauchy_schwarz_aux](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/cauchy-schwarz-aux--1525d678de0df7efbb88b1f8.md) | 341 | `result-track:1525d678de0df7efbb88b1f829d3ae1d5a45e4f8d0e7b4994058515f4c531d4b` |
| 39 | `theorem` | [inner_mul_inner_self_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-mul-inner-self-le--b2fc67c9bdd0be83ca1bc3de.md) | 357 | `result-track:b2fc67c9bdd0be83ca1bc3de3a6fa41284720a35696d9c34b47c6ba61dfcf356` |
| 40 | `def` | [toNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/tonorm--9299c9de7257d340924ebb88.md) | 381 | `declaration-track:9299c9de7257d340924ebb8875d38bcc87b069e2d6eae0396b346e3aa235bc94` |
| 41 | `theorem` | [norm_eq_sqrt_re_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/norm-eq-sqrt-re-inner--b3f2146d2069653a8869b1d4.md) | 385 | `result-track:b3f2146d2069653a8869b1d48ad7dd82f0dd870c2058277341c7e17c0baa94fb` |
| 42 | `theorem` | [inner_self_eq_norm_mul_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-self-eq-norm-mul-norm--b0cc7e92c93764668abace1a.md) | 389 | `result-track:b0cc7e92c93764668abace1a639ea0cb866242444bd33f199bee7880d652fb68` |
| 43 | `theorem` | [sqrt_normSq_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/sqrt-normsq-eq-norm--2e7300aed2678413013a741f.md) | 392 | `result-track:2e7300aed2678413013a741fa9c942b0ffee9dd8acd68c958520803d59f0aabd` |
| 44 | `theorem` | [norm_inner_le_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/norm-inner-le-norm--80ac98d47312e562b4901acc.md) | 395 | `result-track:80ac98d47312e562b4901acc69282bee4d44ea1c57cf4330cb080e0c0f9a1716` |
| 45 | `def` | [toSeminormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/toseminormedaddcommgroup--c0c23f63b4ec0a555821685a.md) | 403 | `declaration-track:c0c23f63b4ec0a555821685a621661e0dc2563dfac4c355ad467c01db1ec5c3d` |
| 46 | `def` | [toSeminormedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/toseminormedspace--29b50beb3978a359689f5830.md) | 422 | `declaration-track:29b50beb3978a359689f58305573c4a19d6797fee3b18f645472b990a44f4ffb` |
| 47 | `def` | [toInner'](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/toinner--cfed7c6d804008024fc20541.md) | 443 | `declaration-track:cfed7c6d804008024fc2054190968f9b821e1b156b0095d7cdb9c85be41fcdd3` |
| 48 | `theorem` | [inner_self_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-self-eq-zero--8a94ad25acc574bdb7a1e754.md) | 450 | `result-track:8a94ad25acc574bdb7a1e754b1441f0b144e73f6d631ad4a13de53e92f29e3f4` |
| 49 | `theorem` | [normSq_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/normsq-eq-zero--7013c7dc1fcc78b59867f9d1.md) | 453 | `result-track:7013c7dc1fcc78b59867f9d1b0e5a0af301ef4fca32b8c72519e2e72b910c09c` |
| 50 | `theorem` | [inner_self_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/inner-self-ne-zero--d584373eb6bfffea09931cdc.md) | 458 | `result-track:d584373eb6bfffea09931cdc8ebb83aafbd68b02522581318e56a1c20d5200bb` |
| 51 | `def` | [toNormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/tonormedaddcommgroup--cf65af45fcc1a6c68ba3a15a.md) | 464 | `declaration-track:cf65af45fcc1a6c68ba3a15ab3802e3a02979ff45a2e1d9854970333c15f9a16` |
| 52 | `def` | [toNormedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/tonormedspace--9fea2bacedd1443a5a44d6f5.md) | 484 | `declaration-track:9fea2bacedd1443a5a44d6f5195f45e7885749fe40d0bde067b3f1a6ed628d14` |
| 53 | `def` | [InnerProductSpace.ofCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/innerproductspace-ofcore--876caa0768d9aad75b333b2b.md) | 503 | `declaration-track:876caa0768d9aad75b333b2b5d3bf296e2c37f42ca0f7c6053fb006274d58867` |
| 54 | `structure` | [HilbertSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/declarations/hilbertspace--0b30b610163981fc6d5319d1.md) | 516 | `declaration-track:0b30b610163981fc6d5319d11e2e10a9802108c942dd1b852c6fae87faf8a0bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
