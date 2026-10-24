# Verification target: GRWTSK.Topology.GeneralTopology.Order.Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea1553211913832c6702fc10a2eeaff0d9794270",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea1553211913832c6702fc10a2eeaff0d9794270`.

Source path: `GRWTSK/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Isometric` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousSqrt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cfc_tsub](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/cfc-tsub--a48e7c4e22c88133cba9062f.md) | 43 | `result-track:a48e7c4e22c88133cba9062fd535951e5588f0a1bf0209bfe9d4e73849d80eed` |
| 2 | `theorem` | [cfcₙ_tsub](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/cfc-tsub--9b0a970a0cdf9408837090b1.md) | 61 | `result-track:9b0a970a0cdf9408837090b19248b399cc73705ec58d713f3136be37496c4529` |
| 3 | `instance` | [instPartialOrder](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/instpartialorder--ffa49c54f777c428258bcb5f.md) | 83 | `declaration-track:ffa49c54f777c428258bcb5f4ef5f15b5d0e04a14a23965bc0872a69b23d90c9` |
| 4 | `instance` | [instStarOrderedRing](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/inststarorderedring--03107459eda347070dfe7a22.md) | 86 | `declaration-track:03107459eda347070dfe7a22ba0a722d646c99300db50139e1b8557ad3fe542d` |
| 5 | `lemma` | [inr_le_iff](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/inr-le-iff--d56fb10dfd6c500e69514a63.md) | 89 | `result-track:d56fb10dfd6c500e69514a638f9fed1eb8b7d43655760cdcbc5bf7845e00a34e` |
| 6 | `lemma` | [inr_nonneg_iff](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/inr-nonneg-iff--a67bc7a64be8d2e3f6e19d8f.md) | 98 | `result-track:a67bc7a64be8d2e3f6e19d8f4e9260601c0be06f4668de6812929cef7758c108` |
| 7 | `lemma` | [nnreal_cfcₙ_eq_cfc_inr](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/nnreal-cfc-eq-cfc-inr--90319c557dbdb0a36d79ac9e.md) | 106 | `result-track:90319c557dbdb0a36d79ac9e2094e120a1a9a9f8b34e7529a8bfa5b0bce943fb` |
| 8 | `lemma` | [cfc_nnreal_le_iff](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/cfc-nnreal-le-iff--ac53a884fe398efd41f6cbf0.md) | 114 | `result-track:ac53a884fe398efd41f6cbf0c18ce510d8eafea728a28d8bf7e848573948c26e` |
| 9 | `lemma` | [CFC.exists_pos_algebraMap_le_iff](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/cfc-exists-pos-algebramap-le-iff--867209688a7da6dfb69d3912.md) | 131 | `result-track:867209688a7da6dfb69d39129e501a5f63dca4d92edc19d76e8f3260236ded0d` |
| 10 | `lemma` | [IsSelfAdjoint.le_algebraMap_norm_self](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/isselfadjoint-le-algebramap-norm-self--b98e8e722e96a813efc1ac39.md) | 152 | `result-track:b98e8e722e96a813efc1ac39e77c679ee138ebf10bab8c6c227d02c8f737c9eb` |
| 11 | `lemma` | [IsSelfAdjoint.neg_algebraMap_norm_le_self](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/isselfadjoint-neg-algebramap-norm-le-self--45ea75a0f65952bfe75f1a0f.md) | 161 | `result-track:45ea75a0f65952bfe75f1a0fccee175b1949918e80625e77a46a7df5ce81d424` |
| 12 | `lemma` | [CStarAlgebra.mul_star_le_algebraMap_norm_sq](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/cstaralgebra-mul-star-le-algebramap-norm-sq--901674be8943b3a2106bb780.md) | 168 | `result-track:901674be8943b3a2106bb7809e1697e91f9af72a1d60e06f994f980d0fe3116f` |
| 13 | `lemma` | [CStarAlgebra.star_mul_le_algebraMap_norm_sq](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/cstaralgebra-star-mul-le-algebramap-norm-sq--c662d67651db08c0f53812e4.md) | 173 | `result-track:c662d67651db08c0f53812e48c971ac68cf1b888788baba9d90dad807c95b377` |
| 14 | `lemma` | [IsSelfAdjoint.toReal_spectralRadius_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/isselfadjoint-toreal-spectralradius-eq-norm--7c049401f26fa12a066de761.md) | 180 | `result-track:7c049401f26fa12a066de7617631df02f73f8e6e2ffd75ababff482f7d302c90` |
| 15 | `lemma` | [norm_or_neg_norm_mem_spectrum](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/norm-or-neg-norm-mem-spectrum--fab69bca812eb1cbf928ec08.md) | 186 | `result-track:fab69bca812eb1cbf928ec08f5b1661e3173a526782b9426133e6973df112536` |
| 16 | `lemma` | [nnnorm_mem_spectrum_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/nnnorm-mem-spectrum-of-nonneg--706ab777d072ab63f12066ea.md) | 194 | `result-track:706ab777d072ab63f12066eaa7a5c7b955d87f054810126425db19ecd5130283` |
| 17 | `lemma` | [norm_mem_spectrum_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/norm-mem-spectrum-of-nonneg--c2199a93cbad968881c2fd90.md) | 201 | `result-track:c2199a93cbad968881c2fd9084713bf32deb03c34fc0172acdefa5e17e111b58` |
| 18 | `lemma` | [norm_le_iff_le_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/norm-le-iff-le-algebramap--525d44b9d41e34f6539ce03e.md) | 205 | `result-track:525d44b9d41e34f6539ce03e026ca3461f0f64dbea56ab1984207f7c75c8d70f` |
| 19 | `lemma` | [nnnorm_le_iff_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/nnnorm-le-iff-of-nonneg--069b1b92db41d4b244a96598.md) | 213 | `result-track:069b1b92db41d4b244a96598572bd9b8c9b69f19a6c089b8363b31b186cbd9e1` |
| 20 | `lemma` | [norm_le_one_iff_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/norm-le-one-iff-of-nonneg--6e4c36548c0064c3722e04a6.md) | 218 | `result-track:6e4c36548c0064c3722e04a69d7a21fc6329a6665197dc71deb8618f1c4018ea` |
| 21 | `lemma` | [nnnorm_le_one_iff_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/nnnorm-le-one-iff-of-nonneg--16f8a296835b3b216cc23d6c.md) | 222 | `result-track:16f8a296835b3b216cc23d6cd1f4bf16bb2488cf7b9cc08563a613a28ba0f71c` |
| 22 | `lemma` | [norm_le_natCast_iff_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/norm-le-natcast-iff-of-nonneg--8035a1d335aeaca385eb197d.md) | 227 | `result-track:8035a1d335aeaca385eb197d2f07f60dc23bf1437d20e5186ebc7eb422f11d5c` |
| 23 | `lemma` | [nnnorm_le_natCast_iff_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/nnnorm-le-natcast-iff-of-nonneg--e70bfcc4f0b36accbeca9277.md) | 231 | `result-track:e70bfcc4f0b36accbeca9277aa22fd275dbe7cb3eb0f20af6388e6e7a6ccb5b7` |
| 24 | `lemma` | [mem_Icc_algebraMap_iff_norm_le](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/mem-icc-algebramap-iff-norm-le--8cbc4faf6dd364b1f639ca2d.md) | 240 | `result-track:8cbc4faf6dd364b1f639ca2d22545bc44771951bde1c006bb89e0b018af221a3` |
| 25 | `lemma` | [mem_Icc_algebraMap_iff_nnnorm_le](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/mem-icc-algebramap-iff-nnnorm-le--b62d4c4c09c732558dbf8ed0.md) | 245 | `result-track:b62d4c4c09c732558dbf8ed033b39ad0e82a2cc92bec10b30bf9898d0674e4b8` |
| 26 | `lemma` | [mem_Icc_iff_norm_le_one](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/mem-icc-iff-norm-le-one--0cd416f5cae04b8d51ff76b7.md) | 249 | `result-track:0cd416f5cae04b8d51ff76b7cdd58cc8a741392c321b5db799649bccf1b6e69c` |
| 27 | `lemma` | [mem_Icc_iff_nnnorm_le_one](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/mem-icc-iff-nnnorm-le-one--dd7f396ef3dab5595f38dc5c.md) | 253 | `result-track:dd7f396ef3dab5595f38dc5c63e5a140c75155fd2191f2074c4a5f68814ebc43` |
| 28 | `lemma` | [CFC.conjugate_rpow_neg_one_half](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/cfc-conjugate-rpow-neg-one-half--cf21458abb03f2ed8821183f.md) | 269 | `result-track:cf21458abb03f2ed8821183f3e96834705d9df6c25a9aa191d17c3837b2d83a8` |
| 29 | `lemma` | [CStarAlgebra.isUnit_of_le](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/cstaralgebra-isunit-of-le--489bec39bf56e06d43f72999.md) | 279 | `result-track:489bec39bf56e06d43f729992e03c73821a88b8d62faf6e096fed752a5c08f9e` |
| 30 | `lemma` | [le_iff_norm_sqrt_mul_rpow](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/le-iff-norm-sqrt-mul-rpow--02c73ce7416e11030acc6d14.md) | 289 | `result-track:02c73ce7416e11030acc6d14ead729fda93b094b06cae247c18c0aff9a928659` |
| 31 | `lemma` | [le_iff_norm_sqrt_mul_sqrt_inv](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/le-iff-norm-sqrt-mul-sqrt-inv--51f7e7b8c1248d7424e12472.md) | 316 | `result-track:51f7e7b8c1248d7424e1247263990683d066541f7f3110633941ab47a901c5c7` |
| 32 | `lemma` | [inv_le_inv](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/inv-le-inv--b8607c9fc2b9c19d394645ef.md) | 325 | `result-track:b8607c9fc2b9c19d394645ef077bad2cab4cc35f106685901c980401b4b4b76d` |
| 33 | `lemma` | [inv_le_inv_iff](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/inv-le-inv-iff--d5366f24932f29dba744e7d9.md) | 339 | `result-track:d5366f24932f29dba744e7d9aacea85806af3804a63b63bdd3f0094aa9589293` |
| 34 | `lemma` | [inv_le_iff](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/inv-le-iff--4e7d71ffe39f9343f5ae9809.md) | 343 | `result-track:4e7d71ffe39f9343f5ae9809df483ba525ed1526bcf315d21adba726e141e64a` |
| 35 | `lemma` | [le_inv_iff](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/le-inv-iff--7402bf0e4b8b6e6feff7a9da.md) | 347 | `result-track:7402bf0e4b8b6e6feff7a9da296790403268ae43164324fb43b1887a2a22db5e` |
| 36 | `lemma` | [one_le_inv_iff_le_one](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/one-le-inv-iff-le-one--0e3ac94e9f3d906198b3dc3f.md) | 351 | `result-track:0e3ac94e9f3d906198b3dc3f24cd43b280bc662cfbd09991c86a981da13929aa` |
| 37 | `lemma` | [inv_le_one_iff_one_le](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/inv-le-one-iff-one-le--1af9cb8f3e28dd61ba823ae7.md) | 355 | `result-track:1af9cb8f3e28dd61ba823ae7fd94c2857e46c1a078a87ebc2408018e419555af` |
| 38 | `lemma` | [inv_le_one](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/inv-le-one--1ab9144dab9fb48b4234cd8e.md) | 359 | `result-track:1ab9144dab9fb48b4234cd8efdacb8b5ec6e3c149147ef18286cfb81d814d060` |
| 39 | `lemma` | [le_one_of_one_le_inv](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/le-one-of-one-le-inv--5a6e22e403c05f239b453b3d.md) | 362 | `result-track:5a6e22e403c05f239b453b3d8b43a7ed62580fa4b7fe009f4aa238b8285a2c77` |
| 40 | `lemma` | [rpow_neg_one_le_rpow_neg_one](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/rpow-neg-one-le-rpow-neg-one--fb8f0d2fa8f33eec1012a98f.md) | 365 | `result-track:fb8f0d2fa8f33eec1012a98f7fce485c521996d9f608a3f34b84ada69c90a802` |
| 41 | `lemma` | [rpow_neg_one_le_one](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/rpow-neg-one-le-one--174104f9e6d0b47257e971e5.md) | 372 | `result-track:174104f9e6d0b47257e971e563fa5b1a8d215aa255c11ad3c34e070e8504d2d5` |
| 42 | `instance` | [instNonnegSpectrumClassComplexNonUnital](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/instnonnegspectrumclasscomplexnonunital--c1987984bd11126ad4346c1c.md) | 390 | `declaration-track:c1987984bd11126ad4346c1c9c69e0c7d7ce60fddfe43a33bf8a932b588d6f40` |
| 43 | `lemma` | [norm_le_norm_of_nonneg_of_le](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/norm-le-norm-of-nonneg-of-le--08c70676a1e8c7cf99894999.md) | 395 | `result-track:08c70676a1e8c7cf99894999486082c712df6f5635ec24c4bc90307f1b8546ad` |
| 44 | `theorem` | [nnnorm_le_nnnorm_of_nonneg_of_le](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/nnnorm-le-nnnorm-of-nonneg-of-le--ab112a1bd922d842f3c608e8.md) | 416 | `result-track:ab112a1bd922d842f3c608e84928aba66812af7ee59fd6a80bb58ced30eca125` |
| 45 | `lemma` | [conjugate_le_norm_smul](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/conjugate-le-norm-smul--af1cd60f03a6b524c05896be.md) | 420 | `result-track:af1cd60f03a6b524c05896beebbd5867255f9c713759099423ecb43d565e12a0` |
| 46 | `lemma` | [conjugate_le_norm_smul'](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/conjugate-le-norm-smul--8cb62f0f14d585e5c2c16d6c.md) | 431 | `result-track:8cb62f0f14d585e5c2c16d6c48e27a32afae47c5feb04a2bc4b32cec0f077815` |
| 47 | `lemma` | [isClosed_nonneg](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/isclosed-nonneg--0b18d518a478c231a10d1d9a.md) | 439 | `result-track:0b18d518a478c231a10d1d9ad8f8cfdedff7308c0ec9116803d42a41a59a502e` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/instance--f94127df1b60521a9b9bc3f8.md) | 452 | `declaration-track:f94127df1b60521a9b9bc3f8f0817ef9d70b31d63160fd2d13399aa19a429fc7` |
| 49 | `lemma` | [inr_mem_Icc_iff_norm_le](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/inr-mem-icc-iff-norm-le--c4f2860f68637f7a51ec7fde.md) | 459 | `result-track:c4f2860f68637f7a51ec7fde5298cdd9bf236296646f284797b25ae1bc9e2483` |
| 50 | `lemma` | [inr_mem_Icc_iff_nnnorm_le](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/inr-mem-icc-iff-nnnorm-le--0fc7e70fb2b90c7cedcfcad7.md) | 465 | `result-track:0fc7e70fb2b90c7cedcfcad7360a4e7425b0b61491a0bbb510c61b232c9ea43b` |
| 51 | `lemma` | [preimage_inr_Icc_zero_one](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/preimage-inr-icc-zero-one--98e6345d6fbccc69f1068ef6.md) | 469 | `result-track:98e6345d6fbccc69f1068ef6b68a6e1c7b1799bc0218dbdf9a4b62bee13885d5` |
| 52 | `lemma` | [pow_nonneg](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/pow-nonneg--f76d1838950a7a98f2820398.md) | 487 | `result-track:f76d1838950a7a98f2820398687756752d225e111f7cf6f8ada39d6bf73f481f` |
| 53 | `lemma` | [pow_monotone](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/pow-monotone--b433bf5eb404e74010a55698.md) | 491 | `result-track:b433bf5eb404e74010a556987a9b2461b1e5136eb503c3878e6a67acc9532763` |
| 54 | `lemma` | [pow_antitone](../../../../../mathematics/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/declarations/pow-antitone--088fa2a21f905428300ffe3f.md) | 500 | `result-track:088fa2a21f905428300ffe3fbd51d8281fd8d965098b4b9f2925c71879c54514` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
