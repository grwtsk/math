# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivativeTest.Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72104ad17098b03b48952f53e52cd894e9999582",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72104ad17098b03b48952f53e52cd894e9999582`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [continuousOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/continuouson-ioc--c5e5f9a2c0a3a51caa099e3d.md) | 66 | `result-track:c5e5f9a2c0a3a51caa099e3d57d7f91734783e093b81ec391a5ad9bfb35302d7` |
| 2 | `lemma` | [continuousOn_Ico](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/continuouson-ico--3adfef8ce528a6b59d3183e4.md) | 74 | `result-track:3adfef8ce528a6b59d3183e4df58fcff222717eed81c945b9f44ab5f307c0d56` |
| 3 | `lemma` | [continuousOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/continuouson-icc--93718d3bbce23de1b5d93630.md) | 82 | `result-track:93718d3bbce23de1b5d93630d95ffe49157714d5f2286537a8765be667c18a9e` |
| 4 | `lemma` | [continuousOn_Iic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/continuouson-iic--2eb3b331dc3fe766160c7507.md) | 90 | `result-track:2eb3b331dc3fe766160c75075729792e40b43cbbb269171ac0d98d5323de04fb` |
| 5 | `lemma` | [continuousOn_Ici](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/continuouson-ici--346231137d954e343e2f2447.md) | 97 | `result-track:346231137d954e343e2f24476e11d88cfc214c01ddde86689c835db6600a043b` |
| 6 | `lemma` | [isMaxOn_Ioo_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/ismaxon-ioo-of-deriv--ec3c49dad4adbc3700d00b3e.md) | 104 | `result-track:ec3c49dad4adbc3700d00b3e277115f96775475891a303f04cf6db62ca92ee57` |
| 7 | `lemma` | [isMaxOn_Ioc_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/ismaxon-ioc-of-deriv--9c5f890cf5a10d3ba1bf7943.md) | 114 | `result-track:9c5f890cf5a10d3ba1bf7943d1c7f0cc7ed771e10664cd0ab34ceb58553a10fa` |
| 8 | `lemma` | [isMaxOn_Ico_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/ismaxon-ico-of-deriv--0e7756faa314808a18acd668.md) | 124 | `result-track:0e7756faa314808a18acd668d02256dd41dd8d79bccbb09be0f60db07f477c86` |
| 9 | `lemma` | [isMaxOn_Icc_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/ismaxon-icc-of-deriv--139796b08c1afcad74e9f85d.md) | 134 | `result-track:139796b08c1afcad74e9f85dc01dc5c7ea529a83118abaf3858d8be5eb718cb0` |
| 10 | `lemma` | [isMaxOn_Ioi_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/ismaxon-ioi-of-deriv--8fb2f2c6ea409e3ca48cc461.md) | 144 | `result-track:8fb2f2c6ea409e3ca48cc4619918fa783dec93de5e84c38b23f38c157de53f25` |
| 11 | `lemma` | [isMaxOn_Ici_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/ismaxon-ici-of-deriv--d5435836016c1a84efd4dbdc.md) | 154 | `result-track:d5435836016c1a84efd4dbdc9fd94b4b284de43fc6806d57e615fdc2ad6bb6f0` |
| 12 | `lemma` | [isMaxOn_Iio_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/ismaxon-iio-of-deriv--ac28ed32555e93a4bd478706.md) | 164 | `result-track:ac28ed32555e93a4bd4787061a8a9f082a1ea4ff402147c282c75ac607174d5c` |
| 13 | `lemma` | [isMaxOn_Iic_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/ismaxon-iic-of-deriv--76f1ae4a50a71a7e2a901b4d.md) | 174 | `result-track:76f1ae4a50a71a7e2a901b4de6f13c6635d83dbe64f49c11ea122e50138ef1f2` |
| 14 | `lemma` | [isMaxOn_univ_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/ismaxon-univ-of-deriv--75e5cdb47cff09527f0f25b6.md) | 184 | `result-track:75e5cdb47cff09527f0f25b65d6c27ec8d93f3d517bd69f23dbec1a1a9dbca7a` |
| 15 | `lemma` | [isLocalMax_of_deriv_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/islocalmax-of-deriv-ioo--b73db005339f4c95fea1c573.md) | 195 | `result-track:b73db005339f4c95fea1c5738173d839e6107c386ea1f4da2748b7dd322dee58` |
| 16 | `lemma` | [isMinOn_Ioo_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/isminon-ioo-of-deriv--e2701f1c5c3da9e436c6ad0b.md) | 203 | `result-track:e2701f1c5c3da9e436c6ad0b7f2048c9a6ff62dadf5ecdc36fc5cd1f047522db` |
| 17 | `lemma` | [isMinOn_Ioc_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/isminon-ioc-of-deriv--1023ffa0278d1f90325cce4a.md) | 213 | `result-track:1023ffa0278d1f90325cce4a8e4c4ec9e5d4552b43378e98de429ee3cf1b8030` |
| 18 | `lemma` | [isMinOn_Ico_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/isminon-ico-of-deriv--be4ae28e4406dd51929a117a.md) | 223 | `result-track:be4ae28e4406dd51929a117aad0a59ec3c1e514d2b3aef1ab270e3b23a1f2efe` |
| 19 | `lemma` | [isMinOn_Icc_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/isminon-icc-of-deriv--9de7565a4e51c525fac48c20.md) | 233 | `result-track:9de7565a4e51c525fac48c20797d92f9df9ba349fde0d0eb83e6252c8e5d51e9` |
| 20 | `lemma` | [isMinOn_Ioi_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/isminon-ioi-of-deriv--842caf4fa8a2389555eb1ab4.md) | 243 | `result-track:842caf4fa8a2389555eb1ab4a7553065bdb3f65eb8bd3b6de340b2c7ff5f01b4` |
| 21 | `lemma` | [isMinOn_Ici_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/isminon-ici-of-deriv--5924ca581819a2c6575ab398.md) | 253 | `result-track:5924ca581819a2c6575ab398da20e1bff179462be6295b7523d9ba5f7ba621e0` |
| 22 | `lemma` | [isMinOn_Iio_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/isminon-iio-of-deriv--5944807be973062ebedd54f9.md) | 263 | `result-track:5944807be973062ebedd54f9cfe2b5b75736a8badc982c093925ff4124456afd` |
| 23 | `lemma` | [isMinOn_Iic_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/isminon-iic-of-deriv--2797f40711b733e7916b2d54.md) | 273 | `result-track:2797f40711b733e7916b2d5426b3289160edda2ed24842bef8ba81c74aee8183` |
| 24 | `lemma` | [isMinOn_univ_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/isminon-univ-of-deriv--bd9c78d4ed24602a780b4ed4.md) | 283 | `result-track:bd9c78d4ed24602a780b4ed4ebae5d74bb8cd99018a9f1f370c524ec535bce93` |
| 25 | `lemma` | [isLocalMin_of_deriv_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/islocalmin-of-deriv-ioo--7a134b6abe92bd4b7887d5bd.md) | 292 | `result-track:7a134b6abe92bd4b7887d5bdade4a307340ef41ec5191ee1e1a4f0ec54661c1f` |
| 26 | `lemma` | [isLocalMax_of_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/islocalmax-of-deriv--33d4fda4f96057b15b6ded69.md) | 300 | `result-track:33d4fda4f96057b15b6ded6948705473541977b07efa6461afebadd0a8c7adb3` |
| 27 | `lemma` | [isLocalMin_of_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/islocalmin-of-deriv--65ef4b3b27c3be2c57a08bba.md) | 313 | `result-track:65ef4b3b27c3be2c57a08bba7746ee8012915245195d24e332587e848238c88f` |
| 28 | `theorem` | [isLocalMax_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/islocalmax-of-deriv--9e16451f9021ae213a64f9e5.md) | 325 | `result-track:9e16451f9021ae213a64f9e5e2fdac98f8c1415599347ac2e754ea28f1bdd888` |
| 29 | `theorem` | [isLocalMin_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/islocalmin-of-deriv--3794be620ef7864479bf197a.md) | 332 | `result-track:3794be620ef7864479bf197a58e630c2b5792edf109461658462525202734e0e` |
| 30 | `lemma` | [eventually_nhdsWithin_sign_eq_of_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/eventually-nhdswithin-sign-eq-of-deriv-pos--5a1dda2daebc932dd235f3b0.md) | 346 | `result-track:5a1dda2daebc932dd235f3b02605d25cb1ec1f2149a19f9bb96e7ef9fe937b5d` |
| 31 | `lemma` | [eventually_nhdsWithin_sign_eq_of_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/eventually-nhdswithin-sign-eq-of-deriv-neg--cef9f63e74e65d9c36a25bdf.md) | 361 | `result-track:cef9f63e74e65d9c36a25bdf34ee827db43954ee3419480576e97837c201b36b` |
| 32 | `lemma` | [deriv_neg_left_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/deriv-neg-left-of-sign-deriv--433b52831ebbedd376b05bad.md) | 367 | `result-track:433b52831ebbedd376b05badcd40c199fe33dffe8f4009dee218b8570c27a754` |
| 33 | `lemma` | [deriv_neg_right_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/deriv-neg-right-of-sign-deriv--ab082d9ba39c0fbe9d88a50f.md) | 373 | `result-track:ab082d9ba39c0fbe9d88a50fa411b16dd3db105d76e55a28f40b704408625149` |
| 34 | `lemma` | [deriv_pos_right_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/deriv-pos-right-of-sign-deriv--7d58acf12392a60c708d24ae.md) | 379 | `result-track:7d58acf12392a60c708d24aeb18a8925561748e6006ea5cc51df33478644f6ce` |
| 35 | `lemma` | [deriv_pos_left_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/deriv-pos-left-of-sign-deriv--082693db5011cbe6d67472ec.md) | 385 | `result-track:082693db5011cbe6d67472ece5c60f54a5f67bc79829cd99b98821ce614e86e0` |
| 36 | `theorem` | [isLocalMax_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/islocalmax-of-sign-deriv--dda790ab7ef661f8cbb33617.md) | 392 | `result-track:dda790ab7ef661f8cbb336176d186920ef4ac50164e86a2ee5f6676a7efff1e8` |
| 37 | `theorem` | [isLocalMin_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/islocalmin-of-sign-deriv--98178066ba99057aa339018f.md) | 403 | `result-track:98178066ba99057aa339018f7b3ef6329517d0651d4f674e04014641877ab7e1` |
| 38 | `theorem` | [isLocalMin_of_deriv_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/islocalmin-of-deriv-deriv-pos--938dc95db47016c9ec742537.md) | 412 | `result-track:938dc95db47016c9ec742537b07f063aff185dcd8ab8ce833cc006ead1d9c829` |
| 39 | `theorem` | [isLocalMax_of_deriv_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/declarations/islocalmax-of-deriv-deriv-neg--c0cbf3a5f2caa70bd90eb0b0.md) | 418 | `result-track:c0cbf3a5f2caa70bd90eb0b0e786d40c4c29def8329b6c229c7bf41ede9540a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
