# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LinearLocallyFinite.Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e8100fdb58f703d1b1ba2feb76e29892752e498",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e8100fdb58f703d1b1ba2feb76e29892752e498`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Archimedean` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/instance--466ea1772f9e9f9f460d4b68.md) | 73 | `declaration-track:466ea1772f9e9f9f460d4b684946f15e71ff2ee97f54e9d7baa8971512afeac6` |
| 2 | `instance` | [isSuccArchimedean_of_isPredArchimedean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/issuccarchimedean-of-ispredarchimedean--51954fa3b266fa63217e538d.md) | 93 | `declaration-track:51954fa3b266fa63217e538d9f44ce7942505362f11dab506c949d7b9dc2f23c` |
| 3 | `theorem` | [isSuccArchimedean_iff_isPredArchimedean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/issuccarchimedean-iff-ispredarchimedean--1487761c0b076638361bdea6.md) | 98 | `result-track:1487761c0b076638361bdea6389905eb1a3954cfccbb476402c45667313763fa` |
| 4 | `def` | [succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/succfn--8245b1072ea7a970b492e6b8.md) | 108 | `declaration-track:8245b1072ea7a970b492e6b86249417bfce0ed3f6df950d901796747df2a2177` |
| 5 | `theorem` | [succFn_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/succfn-spec--57f0b59e30f1e827c7ae2228.md) | 111 | `result-track:57f0b59e30f1e827c7ae22285a9418dee1aaf957e1311226ebd5857b792df5f9` |
| 6 | `theorem` | [le_succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/le-succfn--c4c03b6b95c0ef1a9843637c.md) | 114 | `result-track:c4c03b6b95c0ef1a9843637ca2f607c438a207430ea97ce45510c7af0b145ba4` |
| 7 | `theorem` | [isGLB_Ioc_of_isGLB_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/isglb-ioc-of-isglb-ioi--daf5610066f75609cfd5df42.md) | 118 | `result-track:daf5610066f75609cfd5df42969274b38b30c48ddf5394b072816b71ed6128d2` |
| 8 | `theorem` | [isMax_of_succFn_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/ismax-of-succfn-le--d1e534b7ba3333e35cd9bb76.md) | 127 | `result-track:d1e534b7ba3333e35cd9bb76479f1b2ed63aa1077f2f98b9fa10eb8fadfdeb70` |
| 9 | `theorem` | [succFn_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/succfn-le-of-lt--94f3fb1bdade22e918d0c026.md) | 141 | `result-track:94f3fb1bdade22e918d0c0260cc7d8212adffb74ba2d9916413675bd31d44739` |
| 10 | `theorem` | [le_of_lt_succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/le-of-lt-succfn--3789b3fa467fc67c4e13f7e3.md) | 146 | `result-track:3789b3fa467fc67c4e13f7e3aa183b0894e4fada4fa8d531935b8a5be90c4c37` |
| 11 | `def` | [succOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/succorder--35d5aa8a2be88542466559ad.md) | 156 | `declaration-track:35d5aa8a2be88542466559adc35a61dce5652306b09c35765f5f475dfc748523` |
| 12 | `def` | [predOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/predorder--7e3ffe71f553c54143717a18.md) | 166 | `declaration-track:7e3ffe71f553c54143717a18dd6d8b0c03e41e2b7f518c4fc0bb68acdb43a6ec` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/instance--8cd770831208638bd26da837.md) | 170 | `declaration-track:8cd770831208638bd26da8371e38f78bc9bab685eb544a7b043af5fc3ee949c0` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/instance--4e9afc761a4415daaca0f2a7.md) | 199 | `declaration-track:4e9afc761a4415daaca0f2a7615001c96b9c9531a24b238936ed4b96f433781e` |
| 15 | `def` | [toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz--3d28d095b9ed8d504b49bfd7.md) | 214 | `declaration-track:3d28d095b9ed8d504b49bfd77d49ab70442dd2211e8e2ca65501d51ec29de5eb` |
| 16 | `theorem` | [toZ_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-of-ge--e12b47dedafad2fd68cf609a.md) | 218 | `result-track:e12b47dedafad2fd68cf609a3753de2e9438eda65a57cdc80abf697d6f8e5af5` |
| 17 | `theorem` | [toZ_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-of-lt--b2a81cef38f1dcc702945854.md) | 221 | `result-track:b2a81cef38f1dcc7029458548946f56f870937e191fd7d7d205aadca3dd70b76` |
| 18 | `theorem` | [toZ_of_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-of-eq--81ee3f600720334ae23d8882.md) | 226 | `result-track:81ee3f600720334ae23d888268c8a4321f4f97acb81ce9ae30c644a974fbe966` |
| 19 | `theorem` | [iterate_succ_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/iterate-succ-toz--c1c12e979a58f1ccfa46ca6e.md) | 232 | `result-track:c1c12e979a58f1ccfa46ca6e0490f3b5120daafb9d6112dcadefd47fe6f9a799` |
| 20 | `theorem` | [iterate_pred_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/iterate-pred-toz--d7f6b03fb02c39bda1b54a30.md) | 236 | `result-track:d7f6b03fb02c39bda1b54a303ec03d89e47f6d252c066b5f9ea070e8aca03fe8` |
| 21 | `lemma` | [toZ_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-nonneg--1427960ba9b7125e18fff31b.md) | 240 | `result-track:1427960ba9b7125e18fff31bcd7e588f53b08e9e50f7c042317a05d9a6ce92d4` |
| 22 | `theorem` | [toZ_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-neg--7d5ae72f68de781d8c6575c7.md) | 242 | `result-track:7d5ae72f68de781d8c6575c7cf0751acd0252eaa3dd3276f6916c099fb219641` |
| 23 | `theorem` | [toZ_iterate_succ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-iterate-succ-le--792b23bd397f361cffb43bd0.md) | 251 | `result-track:792b23bd397f361cffb43bd0f750a3034c20d338ba566205e401715b131860e7` |
| 24 | `theorem` | [toZ_iterate_pred_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-iterate-pred-ge--5b6954e371ae119eb1a029b6.md) | 256 | `result-track:5b6954e371ae119eb1a029b6d27655f1fa6f97f6fe1ff080a03db133dc2845d4` |
| 25 | `theorem` | [toZ_iterate_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-iterate-succ-of-not-ismax--814227da47448caf4a4db078.md) | 266 | `result-track:814227da47448caf4a4db07834da210541e6f5dcc9771c92bf11d2be62dfdea3` |
| 26 | `theorem` | [toZ_iterate_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-iterate-pred-of-not-ismin--93ead2bd4d9919d846348c18.md) | 277 | `result-track:93ead2bd4d9919d846348c1870a7d0602bff6656d598647bfc7fc6949d815dab` |
| 27 | `theorem` | [le_of_toZ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/le-of-toz-le--649eb01a55082d9df6390b59.md) | 296 | `result-track:649eb01a55082d9df6390b59016e156578aaaa66399463a9202f2c9bb6039780` |
| 28 | `theorem` | [toZ_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-mono--f2805d89f804ce30d4be3d44.md) | 306 | `result-track:f2805d89f804ce30d4be3d441a8718cf22158e0496ddd3abc3e294658fb01757` |
| 29 | `theorem` | [toZ_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-le-iff--5ee47d4b1ecf3b82587f8a72.md) | 354 | `result-track:5ee47d4b1ecf3b82587f8a72391020794ce4761c2a0680433c6bdbff1b06465b` |
| 30 | `theorem` | [toZ_iterate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-iterate-succ--ab1ca7ac1378c3360a4b5cb0.md) | 357 | `result-track:ab1ca7ac1378c3360a4b5cb01a61572032eda8de64957874de73f02c6ca55248` |
| 31 | `theorem` | [toZ_iterate_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/toz-iterate-pred--4a12d5f6a14c825b9b970022.md) | 360 | `result-track:4a12d5f6a14c825b9b9700221ba375616ef6595655ca11fd4b2319c31177d26f` |
| 32 | `theorem` | [injective_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/injective-toz--8b2cee277f4380e2252e09ab.md) | 363 | `result-track:8b2cee277f4380e2252e09ab412f6e2352761542c85c7d233b7b9f7a18c1d8f8` |
| 33 | `def` | [orderIsoRangeToZOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/orderisorangetozoflinearsuccpredarch--3ac27e7b18fb80c95b11c71f.md) | 373 | `declaration-track:3ac27e7b18fb80c95b11c71f0697982310863e22989834691b70c7fb85f32535` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/instance--04478d12109ea86432a35f2e.md) | 378 | `declaration-track:04478d12109ea86432a35f2edb40acc7acbc93f6bc324402fe417a43feb2d1a0` |
| 35 | `def` | [orderIsoIntOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/orderisointoflinearsuccpredarch--3a5727fabbae522e2ee68bf7.md) | 384 | `declaration-track:3a5727fabbae522e2ee68bf770f513ce8f79b5c2e5df62a886c90de117b17650` |
| 36 | `def` | [orderIsoNatOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/orderisonatoflinearsuccpredarch--ca91031837cf911cb144d2c6.md) | 407 | `declaration-track:ca91031837cf911cb144d2c6317b39c7f9165cc9465d072832a3000a2e9ee293` |
| 37 | `def` | [orderIsoRangeOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/orderisorangeoflinearsuccpredarch--b9461e5629d5a5a9b97b4a05.md) | 424 | `declaration-track:b9461e5629d5a5a9b97b4a05c9db6ea0cef63baf24028e9d9ce994edc2937756` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/declarations/instance--24bc8fc4912a09dd35a6defb.md) | 450 | `declaration-track:24bc8fc4912a09dd35a6defb8b74fa107f0a7c56e7ffd03e1bbfd31f56b98c17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
