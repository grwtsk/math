# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**133 observed declarations and anonymous commands**, 111 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `850079f67d6ba4720fd9eb1b13a853cbfcbf4aab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [PatternModel](declarations/patternmodel--e1abf10d009af6d8cc2d778e.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [StrictPatternModel](declarations/strictpatternmodel--f5e01c003ba5196e22196e3a.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [not_matches_empty](declarations/not-matches-empty--d7541b82254cd61606b6b526.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [IsMatch](declarations/ismatch--a1f1c5e191466acbadfba8ab.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsMatch.ne_startPos](declarations/ismatch-ne-startpos--7c6bbf579fb324667d45fa64.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isMatch_iff](declarations/ismatch-iff--08854d56c6f2218c9379a54a.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isMatch_iff_exists_splits](declarations/ismatch-iff-exists-splits--055eba8be252e557bcb02713.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isMatch_cast_iff](declarations/ismatch-cast-iff--dbabeebe7fa0db323a7c231b.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isMatch_sliceTo_iff](declarations/ismatch-sliceto-iff--cc648b3e496d84b17723311c.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isMatch_ofSliceTo_iff](declarations/ismatch-ofsliceto-iff--f61e6ef193ebbc93441a87ae.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [IsRevMatch](declarations/isrevmatch--f15ed8c1325edccc9ae66ed1.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsRevMatch.ne_endPos](declarations/isrevmatch-ne-endpos--bf7052320487405efdea09ef.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isRevMatch_iff](declarations/isrevmatch-iff--65d08cac5e03b77592450667.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isRevMatch_iff_exists_splits](declarations/isrevmatch-iff-exists-splits--3dcff33e50505ef12b8f9470.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isRevMatch_cast_iff](declarations/isrevmatch-cast-iff--427b389a3d86af066a1eab2e.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isRevMatch_sliceFrom_iff](declarations/isrevmatch-slicefrom-iff--2cbe53e31b37621f12aeb3a7.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isRevMatch_ofSliceFrom_iff](declarations/isrevmatch-ofslicefrom-iff--4ed69b86628a93d14693e369.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [IsLongestMatch](declarations/islongestmatch--4e8ac18a37372479946412b4.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isLongestMatch_iff](declarations/islongestmatch-iff--7ddde49b2154bdf97617cd0e.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsLongestMatch.ne_startPos](declarations/islongestmatch-ne-startpos--a4b482859716c8493261bdff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [not_isLongestMatch_startPos](declarations/not-islongestmatch-startpos--d73d66ca58240180724aa7f9.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsLongestMatch.eq](declarations/islongestmatch-eq--314753de833d1d9e59995103.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsMatch.exists_isLongestMatch](declarations/ismatch-exists-islongestmatch--6dce3f5e49c1d00c834bbf01.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsLongestMatch.le_of_isMatch](declarations/islongestmatch-le-of-ismatch--e26a344b47a548cefe4ea4dd.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isLongestMatch_cast_iff](declarations/islongestmatch-cast-iff--7075373959b566251be21a48.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsLongestMatch.of_eq](declarations/islongestmatch-of-eq--6d6b89e96aaa0d7045699b53.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsLongestMatch.sliceTo](declarations/islongestmatch-sliceto--3ab09183e5c07ce09513bf8f.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isLongestMatch_of_ofSliceTo](declarations/islongestmatch-of-ofsliceto--808bdbda620c684e0a030a8b.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [IsLongestRevMatch](declarations/islongestrevmatch--e2712d61c49e88cc0e5cc830.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isLongestRevMatch_iff](declarations/islongestrevmatch-iff--35e0e30e51b0582478ff7015.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsLongestRevMatch.ne_endPos](declarations/islongestrevmatch-ne-endpos--eeef6e96775f2b5f27af93de.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [not_isLongestRevMatch_endPos](declarations/not-islongestrevmatch-endpos--9400631103972c05a01f35ea.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsLongestRevMatch.eq](declarations/islongestrevmatch-eq--cc6c4c79c5592cc33c3a1ed7.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsRevMatch.exists_isLongestRevMatch](declarations/isrevmatch-exists-islongestrevmatch--add76e77d4e2faefbbbee979.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsLongestRevMatch.le_of_isRevMatch](declarations/islongestrevmatch-le-of-isrevmatch--b64ce67abfc5dd05348e8579.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isLongestRevMatch_cast_iff](declarations/islongestrevmatch-cast-iff--f9d4a88b277ffb90f815d14c.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsLongestRevMatch.of_eq](declarations/islongestrevmatch-of-eq--d0a7c90eb5bd2d6e9201df96.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsLongestRevMatch.sliceFrom](declarations/islongestrevmatch-slicefrom--b437dc898d45e79c5f4dc619.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isLongestRevMatch_of_ofSliceFrom](declarations/islongestrevmatch-of-ofslicefrom--462e1d0db42e36647cbe7204.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `class` | [NoPrefixPatternModel](declarations/noprefixpatternmodel--3535a4875cdfb6245f737ffd.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [NoPrefixPatternModel.of_length_toList_eq](declarations/noprefixpatternmodel-of-length-tolist-eq--734cf66ea799f1bf50d60d2e.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isLongestMatch_iff_isMatch](declarations/islongestmatch-iff-ismatch--a25714a253495a1041a574b1.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `class` | [NoSuffixPatternModel](declarations/nosuffixpatternmodel--1bdda6aa1e885815bbbc46a2.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [NoSuffixPatternModel.of_length_toList_eq](declarations/nosuffixpatternmodel-of-length-tolist-eq--3776def0f50abe9e2d53cda9.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isLongestRevMatch_iff_isRevMatch](declarations/islongestrevmatch-iff-isrevmatch--98736961b694188b946fd5b6.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [IsLongestMatchAt](declarations/islongestmatchat--9a388944bb18e703c924694a.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isLongestMatchAt_iff](declarations/islongestmatchat-iff--674bc17d9d21d74586c8d330.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsLongestMatchAt.lt](declarations/islongestmatchat-lt--0a0a4a6c12a858ade4d9c5e0.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsLongestMatchAt.ne](declarations/islongestmatchat-ne--ec7a6919227770c2bfea252f.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [not_isLongestMatchAt_self](declarations/not-islongestmatchat-self--1ad851a6bea4dc43eaa768ad.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsLongestMatchAt.eq](declarations/islongestmatchat-eq--0207bb67c339a1fd0f5e9dbf.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isLongestMatch_of_eq](declarations/islongestmatch-of-eq--3a23b06b6cbecd8acdf4db07.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isLongestMatchAt_iff_isLongestMatchAt_ofSliceFrom](declarations/islongestmatchat-iff-islongestmatchat-ofslicefrom--98cd533e2d433b1979837824.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsLongestMatch.isLongestMatchAt_ofSliceFrom](declarations/islongestmatch-islongestmatchat-ofslicefrom--c6e2c27fe06ce42f634bb565.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isLongestMatchAt_startPos_iff](declarations/islongestmatchat-startpos-iff--07472ee19d737a1834294ab7.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isLongestMatch_iff_isLongestMatchAt_ofSliceFrom](declarations/islongestmatch-iff-islongestmatchat-ofslicefrom--7438f54e49f94c459caab903.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [IsLongestMatchAt.matches_slice](declarations/islongestmatchat-matches-slice--820b35590606b7adb3239446.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isLongestMatchAt_cast_iff](declarations/islongestmatchat-cast-iff--953ca06b61d053bb31b57a2d.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [IsLongestMatchAt.of_eq](declarations/islongestmatchat-of-eq--4d103f761d1f72f2a36f3884.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsLongestMatchAt.sliceTo](declarations/islongestmatchat-sliceto--ce7fc27296c8991aaf3e0c87.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isLongestMatchAt_of_ofSliceTo](declarations/islongestmatchat-of-ofsliceto--5e1228016ebb7a5bb98ab630.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `inductive` | [IsLongestMatchAtChain](declarations/islongestmatchatchain--cb5a3c828c84ed829ffd1769.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsLongestMatchAtChain.eq_of_isLongestMatchAt_self](declarations/islongestmatchatchain-eq-of-islongestmatchat-self--1b102196554c94bb2ba14b79.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsLongestMatchAtChain.le](declarations/islongestmatchatchain-le--ca2ad7ed1e03e69dfae67e48.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [IsLongestMatchAtChain.sliceTo](declarations/islongestmatchatchain-sliceto--eeb40a068b3ad08a5e38824f.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isLongestMatchAtChain_of_ofSliceTo](declarations/islongestmatchatchain-of-ofsliceto--5e45f0bf700f2a2aff06c951.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [IsLongestRevMatchAt](declarations/islongestrevmatchat--23bfb83e25f759324bd33de1.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isLongestRevMatchAt_iff](declarations/islongestrevmatchat-iff--1e7927eed6764345f4c14d62.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [IsLongestRevMatchAt.lt](declarations/islongestrevmatchat-lt--bbac275a48af0c3265c0b24d.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [IsLongestRevMatchAt.ne](declarations/islongestrevmatchat-ne--dff7b65ee37cf2300560b898.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [not_isLongestRevMatchAt_self](declarations/not-islongestrevmatchat-self--44484c09fb7faac45e4d44b1.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [IsLongestRevMatchAt.eq](declarations/islongestrevmatchat-eq--82654b00a9896d15158be633.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [isLongestRevMatch_of_eq](declarations/islongestrevmatch-of-eq--af1a6d763a71b3d5594d35b3.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [isLongestRevMatchAt_iff_isLongestRevMatchAt_ofSliceTo](declarations/islongestrevmatchat-iff-islongestrevmatchat-ofsliceto--0b21d730bbd7a2cff5d8ee9c.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [IsLongestRevMatch.isLongestRevMatchAt_ofSliceTo](declarations/islongestrevmatch-islongestrevmatchat-ofsliceto--e9640a8c616c4cae89f30248.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [isLongestRevMatchAt_endPos_iff](declarations/islongestrevmatchat-endpos-iff--2ec4e300f7965caafa363a14.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [isLongestRevMatch_iff_isLongestRevMatchAt_ofSliceTo](declarations/islongestrevmatch-iff-islongestrevmatchat-ofsliceto--ae41965978b7ccc660984238.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [IsLongestRevMatchAt.matches_slice](declarations/islongestrevmatchat-matches-slice--1fc03a9ea80ae6d0e4a385d7.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [isLongestRevMatchAt_cast_iff](declarations/islongestrevmatchat-cast-iff--bb74b21534bb4f689c426229.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [IsLongestRevMatchAt.of_eq](declarations/islongestrevmatchat-of-eq--02a2b7cda471457387b5b16a.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [IsLongestRevMatchAt.sliceFrom](declarations/islongestrevmatchat-slicefrom--78e018eda81ed3accaba544f.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [isLongestRevMatchAt_of_ofSliceFrom](declarations/islongestrevmatchat-of-ofslicefrom--efde5f151be0d91557c355c7.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `inductive` | [IsLongestRevMatchAtChain](declarations/islongestrevmatchatchain--b86352db2a0c48a0a2297e06.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [IsLongestRevMatchAtChain.eq_of_isLongestRevMatchAt_self](declarations/islongestrevmatchatchain-eq-of-islongestrevmatchat-self--94da998465bc75b3d453a6e8.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [IsLongestRevMatchAtChain.le](declarations/islongestrevmatchatchain-le--cf2596df9c36f31a1c8edbb1.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [IsLongestRevMatchAtChain.sliceFrom](declarations/islongestrevmatchatchain-slicefrom--3f4244a2293d0f17071f6d94.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [isLongestRevMatchAtChain_of_ofSliceFrom](declarations/islongestrevmatchatchain-of-ofslicefrom--fbfa54398528d7b349bbbede.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `structure` | [MatchesAt](declarations/matchesat--8f30f7316cd8f479beb74bb6.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [matchesAt_iff_exists_isLongestMatchAt](declarations/matchesat-iff-exists-islongestmatchat--d77815b79bd1d8075d534997.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [matchesAt_iff_exists_isLongestMatch](declarations/matchesat-iff-exists-islongestmatch--9a9f12fae1bf20c32801db7c.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [matchesAt_iff_exists_isMatch](declarations/matchesat-iff-exists-ismatch--dfea3a8f730c232e4a925535.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [not_matchesAt_endPos](declarations/not-matchesat-endpos--c7241116e5f86e16c1a96bad.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [matchesAt_iff_matchesAt_ofSliceFrom](declarations/matchesat-iff-matchesat-ofslicefrom--4ec2973ac92902988032627f.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [IsLongestMatchAt.matchesAt](declarations/islongestmatchat-matchesat--0a742b10fad895fb76708a3b.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [matchesAt_cast_iff](declarations/matchesat-cast-iff--85701af16838468729b461bf.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `structure` | [RevMatchesAt](declarations/revmatchesat--4b4cf50976bb66a441007c34.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [revMatchesAt_iff_exists_isLongestRevMatchAt](declarations/revmatchesat-iff-exists-islongestrevmatchat--d293b0372b7798bfcdc44ffb.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [revMatchesAt_iff_exists_isLongestRevMatch](declarations/revmatchesat-iff-exists-islongestrevmatch--ae4a4be9d8dd7ae16538b78e.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [revMatchesAt_iff_exists_isRevMatch](declarations/revmatchesat-iff-exists-isrevmatch--ecd9ea68086db825ec02ac96.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [not_revMatchesAt_startPos](declarations/not-revmatchesat-startpos--b80d5c0421b504d5c3a6cbd5.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [revMatchesAt_iff_revMatchesAt_ofSliceTo](declarations/revmatchesat-iff-revmatchesat-ofsliceto--9965139f7ff5be5f9ded0725.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [IsLongestRevMatchAt.revMatchesAt](declarations/islongestrevmatchat-revmatchesat--95f22c2ddff682f97224e380.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [revMatchesAt_cast_iff](declarations/revmatchesat-cast-iff--e998742571d210826b04a0cc.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [matchAt?](declarations/matchat--a050a1ae44860b25cc29fb01.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [matchAt?_eq_some_iff](declarations/matchat-eq-some-iff--3300b7dc38dd88b95645c3dc.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [matchAt?_eq_none_iff](declarations/matchat-eq-none-iff--70f984abd7768cf667098ba8.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lt_of_matchAt?_eq_some](declarations/lt-of-matchat-eq-some--f9643ee60e6b65db6a66474c.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [matchAt?_cast](declarations/matchat-cast--0a49b3323089a4fe99de2757.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [revMatchAt?](declarations/revmatchat--482eaa2c6f1e955197f6e139.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [revMatchAt?_eq_some_iff](declarations/revmatchat-eq-some-iff--62f3574bb2ff1ec15b691b71.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [revMatchAt?_eq_none_iff](declarations/revmatchat-eq-none-iff--17c6778b8b73788f0169e667.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [lt_of_revMatchAt?_eq_some](declarations/lt-of-revmatchat-eq-some--f7605e89de00f17cfc013057.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [revMatchAt?_cast](declarations/revmatchat-cast--5f18ef8a5b6784f620709de4.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `class` | [LawfulForwardPatternModel](declarations/lawfulforwardpatternmodel--f952e121e58892125bc755b8.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [LawfulForwardPatternModel.skipPrefix?_sliceFrom_eq_none_iff](declarations/lawfulforwardpatternmodel-skipprefix-slicefrom-eq-none-iff--43393215cd91d9fa50ec35e5.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [LawfulForwardPatternModel.skipPrefix?_eq_none_iff](declarations/lawfulforwardpatternmodel-skipprefix-eq-none-iff--93a0576efe1e4f0291b27e65.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `class` | [LawfulBackwardPatternModel](declarations/lawfulbackwardpatternmodel--20e988ff541e6aed33ce3d85.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [LawfulBackwardPatternModel.skipSuffix?_sliceTo_eq_none_iff](declarations/lawfulbackwardpatternmodel-skipsuffix-sliceto-eq-none-iff--28325bb7771be30ba9359a10.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [LawfulBackwardPatternModel.skipSuffix?_eq_none_iff](declarations/lawfulbackwardpatternmodel-skipsuffix-eq-none-iff--f8e6e4e78eef3ab6c3d02262.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `inductive` | [IsValidSearchFrom](declarations/isvalidsearchfrom--5c1cf8badde2dd270c179537.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [IsValidSearchFrom.matched_of_eq](declarations/isvalidsearchfrom-matched-of-eq--95e9ccf53bda2a4a781abdba.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [IsValidSearchFrom.mismatched_of_eq](declarations/isvalidsearchfrom-mismatched-of-eq--ae12c1984162f8da07a2e26d.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [IsValidSearchFrom.endPos_of_eq](declarations/isvalidsearchfrom-endpos-of-eq--f746b336db46099606040f47.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [isValidSearchFrom_cast_iff](declarations/isvalidsearchfrom-cast-iff--3862c070b285b84741c14854.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `class` | [LawfulToForwardSearcherModel](declarations/lawfultoforwardsearchermodel--16ae61f57744ebc9d6e18780.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [LawfulToForwardSearcherModel.defaultImplementation](declarations/lawfultoforwardsearchermodel-defaultimplementation--4ca075b28c20aa0821560c28.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `inductive` | [IsValidRevSearchFrom](declarations/isvalidrevsearchfrom--379af9c460c906e6116e33ae.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [IsValidRevSearchFrom.matched_of_eq](declarations/isvalidrevsearchfrom-matched-of-eq--b889400a7298c87e9b106e7d.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [IsValidRevSearchFrom.mismatched_of_eq](declarations/isvalidrevsearchfrom-mismatched-of-eq--efacf6eccc340b896515c429.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [IsValidRevSearchFrom.startPos_of_eq](declarations/isvalidrevsearchfrom-startpos-of-eq--a03007a4afdf103ac127e60d.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [isValidRevSearchFrom_cast_iff](declarations/isvalidrevsearchfrom-cast-iff--9187a98b5386377f9978d8b8.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `class` | [LawfulToBackwardSearcherModel](declarations/lawfultobackwardsearchermodel--9576494d7a96245fedfe7893.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [LawfulToBackwardSearcherModel.defaultImplementation](declarations/lawfultobackwardsearchermodel-defaultimplementation--917fe6a405d46121d11db58a.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
