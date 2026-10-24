# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "875959034908211184fa011d3f48f8d7c73a940e",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `875959034908211184fa011d3f48f8d7c73a940e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.FindPos` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Loop` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.IsEmpty` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SearchStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/searchstep--b1c832a96a28321bbf351a47.md) | 49 | `declaration-track:b1c832a96a28321bbf351a47175fb7f78e501aba0d4c5fb6ffd5111dd89b01ca` |
| 2 | `def` | [startPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/startpos--e0ac87a8a58974830dcc823c.md) | 64 | `declaration-track:e0ac87a8a58974830dcc823ce21fc123db926ac085c033e5a84e77b324ab7eac` |
| 3 | `theorem` | [startPos_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/startpos-rejected--8260d7edf07d713077c50e0b.md) | 70 | `result-track:8260d7edf07d713077c50e0bdf230972dac39342563dc50542fcaaab8931c434` |
| 4 | `theorem` | [startPos_matched](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/startpos-matched--abd839d4a21d2e85a60b3a39.md) | 73 | `result-track:abd839d4a21d2e85a60b3a39e3a94061026b191c1cc161455afd5de57fbaecf3` |
| 5 | `def` | [endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/endpos--369a6c624502d664b9201401.md) | 77 | `declaration-track:369a6c624502d664b9201401d30d418416e7e2d65647ba1459a95b00e7a6c5cb` |
| 6 | `theorem` | [endPos_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/endpos-rejected--6032289b5c6b4a14c95db989.md) | 83 | `result-track:6032289b5c6b4a14c95db98911a222b0c33894f948001d6efdbf2261431f0833` |
| 7 | `theorem` | [endPos_matched](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/endpos-matched--337cbf539260a6a8a543cd5d.md) | 86 | `result-track:337cbf539260a6a8a543cd5da94ae6099fd147d8b5427785bc2479cc1c7075ec` |
| 8 | `def` | [ofSliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/ofslicefrom--b9d346c235810f9c72400c45.md) | 92 | `declaration-track:b9d346c235810f9c72400c453588a15a500bd7b29ed09b266b1636a0269a456a` |
| 9 | `theorem` | [startPos_ofSliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/startpos-ofslicefrom--dfb914c7786995d495e25def.md) | 98 | `result-track:dfb914c7786995d495e25def4da288418387cdeed164172f1b28d9e3f1c354b3` |
| 10 | `theorem` | [endPos_ofSliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/endpos-ofslicefrom--cbb89ded8dfdec7ac3565003.md) | 103 | `result-track:cbb89ded8dfdec7ac35650034d15b09f7fbd7e9dd097580abbd3f70ea3ae05f5` |
| 11 | `def` | [cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/cast--6aaa8986038b301cda35b80f.md) | 112 | `declaration-track:6aaa8986038b301cda35b80f6c24fcee74846c7beda29e7d5f6f29b2af085560` |
| 12 | `theorem` | [cast_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/cast-rejected--4256b1f69e5b884bc092fa6a.md) | 117 | `result-track:4256b1f69e5b884bc092fa6a5603ace22a007f77469d3fce5bc70f2698bf0091` |
| 13 | `theorem` | [cast_matched](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/cast-matched--b8aec300f05e45e91dfcca4c.md) | 122 | `result-track:b8aec300f05e45e91dfcca4cac2665ba697125cbaebd3723c60f9418fd85f412` |
| 14 | `theorem` | [startPos_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/startpos-cast--ebacd1b7878f2406c56a2bbd.md) | 127 | `result-track:ebacd1b7878f2406c56a2bbd499d8e2ffff0a6131fe0974ef2f72a43e281608f` |
| 15 | `theorem` | [endPos_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/endpos-cast--42b47e6b0b9d4604c02e5337.md) | 132 | `result-track:42b47e6b0b9d4604c02e533729a8d6527869f84fa8ca7b1f07209f38bbfefbb9` |
| 16 | `theorem` | [cast_rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/cast-rfl--60ad96cae5a6ed9b1c895953.md) | 137 | `result-track:60ad96cae5a6ed9b1c89595352696e337a34a4a26ab08d59da1ad2e18d4fd80e` |
| 17 | `theorem` | [cast_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/cast-cast--e50dadca539cae8856a5f938.md) | 141 | `result-track:e50dadca539cae8856a5f9383458590fb8812ce583e5b7cfb408b9ee5cef62d5` |
| 18 | `class` | [ForwardPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/forwardpattern--63131a354945a26dd5d972ac.md) | 150 | `declaration-track:63131a354945a26dd5d972ac6be328f4142f5996f9c1af66e6b2361a67128662` |
| 19 | `def` | [ForwardPattern.dropPrefix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/forwardpattern-dropprefix--fd30620460953cad000baedf.md) | 167 | `declaration-track:fd30620460953cad000baedf254342d3f95141fd2c1cf42b5b729435b0d0cd24` |
| 20 | `class` | [LawfulForwardPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/lawfulforwardpattern--57e9f92e090e483729e4bbd6.md) | 183 | `declaration-track:57e9f92e090e483729e4bbd63951fa3986818cc09bc4086bffc0484803510e38` |
| 21 | `class` | [StrictForwardPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/strictforwardpattern--54de003397d4b3a2ff5f72d5.md) | 195 | `declaration-track:54de003397d4b3a2ff5f72d55185a0eee64cce49506669dc73eb2ef521e61670` |
| 22 | `class` | [ToForwardSearcher](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/toforwardsearcher--251d3b9a9d26a5fa1d9c08ea.md) | 215 | `declaration-track:251d3b9a9d26a5fa1d9c08eada236ec4b02f90b91a4b35ba4083c54f9a6cda0c` |
| 23 | `structure` | [DefaultForwardSearcher](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/defaultforwardsearcher--2a18cc537c08a936223828f9.md) | 225 | `declaration-track:2a18cc537c08a936223828f9e83751a65b96e3ce5d12f526cac429b8e0a161a0` |
| 24 | `def` | [iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/iter--6040644881e984b1d0f15bb2.md) | 234 | `declaration-track:6040644881e984b1d0f15bb2fbc8de51b237ecaeb6db40ed943995727bb205ff` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/instance--b6b8fc9d2534e5b64a0f9624.md) | 237 | `declaration-track:b6b8fc9d2534e5b64a0f9624ce9eb66df72f6ba41d17eeecfdca6054028896fe` |
| 26 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/finitenessrelation--5885944c3a3e72c3507fe4c5.md) | 262 | `declaration-track:5885944c3a3e72c3507fe4c5cc3c5ef911ce91a98ac215abb0fb222cdb287dfe` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/instance--26a4abe6d1f939ef2317407b.md) | 282 | `declaration-track:26a4abe6d1f939ef2317407b01630845b61c5c87bdadcfbd628f465a87ee59bc` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/instance--5118191b5af79b38c4ee5c9e.md) | 286 | `declaration-track:5118191b5af79b38c4ee5c9e969697cfa1177a77e4ab51404c7fb2179e75671c` |
| 29 | `def` | [defaultImplementation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/defaultimplementation--d74c7e51fa02c5a777fddb2c.md) | 299 | `declaration-track:d74c7e51fa02c5a777fddb2ca621c69358f113018d332d576bf2bef46a0a5730` |
| 30 | `def` | [memcmpStr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/memcmpstr--85bacc3272048647af1b2474.md) | 308 | `declaration-track:85bacc3272048647af1b24742f96d61bee3328527d6a864afd2a196dd3e851f2` |
| 31 | `def` | [memcmpSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/memcmpslice--5ad09e4ccbf329ca6bd23b42.md) | 333 | `declaration-track:5ad09e4ccbf329ca6bd23b42e5ab1851a76ec6d09402a21190b094b600b57473` |
| 32 | `class` | [BackwardPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/backwardpattern--89c3f46edde7f53320a290a4.md) | 360 | `declaration-track:89c3f46edde7f53320a290a46a0985ee86e81aa8c166e5488be86bb2c06d2d5e` |
| 33 | `class` | [LawfulBackwardPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/lawfulbackwardpattern--a590d1c22147ef27b1088e7f.md) | 389 | `declaration-track:a590d1c22147ef27b1088e7f5b3c25dd967432fd084943be0251463278bde896` |
| 34 | `class` | [StrictBackwardPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/strictbackwardpattern--1e586d6eb12de5a0aa9f9697.md) | 401 | `declaration-track:1e586d6eb12de5a0aa9f9697df2bb74cc8c585d61d6007e5334913e95d9455b2` |
| 35 | `class` | [ToBackwardSearcher](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/tobackwardsearcher--b2c4f427af8c1fcee10ab587.md) | 421 | `declaration-track:b2c4f427af8c1fcee10ab5870027831e1f61031c177b4bbf24b5ff5f642c5dc9` |
| 36 | `structure` | [DefaultBackwardSearcher](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/defaultbackwardsearcher--3871908c0d41d2d592fc00d6.md) | 431 | `declaration-track:3871908c0d41d2d592fc00d6f7eb48ebb8732cd9ea6fb668617a6286604a8c8a` |
| 37 | `def` | [iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/iter--9ba2bbfb4af5c5690d2e78e9.md) | 440 | `declaration-track:9ba2bbfb4af5c5690d2e78e96b76f3b08539250413f1de7ef8396bec793d0354` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/instance--6f34f7a8ba73d2a34de4d558.md) | 443 | `declaration-track:6f34f7a8ba73d2a34de4d55822dddf79449b30c8e027025920d47abe379c8611` |
| 39 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/finitenessrelation--e5f5ea91aa0d5b746282546f.md) | 468 | `declaration-track:e5f5ea91aa0d5b746282546fc0b44da067c16770825b3edc2214b07688ac2b33` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/instance--a2eab6815c16caf945f6bd4d.md) | 487 | `declaration-track:a2eab6815c16caf945f6bd4de1fc6a972cce87b0517a78fd46c363fb00f11823` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/instance--5cbdcbfc00e5e8371b7e6bb1.md) | 491 | `declaration-track:5cbdcbfc00e5e8371b7e6bb19f452cc3428ca9b88dbff3c1facddb66a31f7cf9` |
| 42 | `def` | [defaultImplementation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/declarations/defaultimplementation--225d96d1d401d7a5dc1b6284.md) | 504 | `declaration-track:225d96d1d401d7a5dc1b6284c8d845fe4a4dc4243ab3e3c32186a853f5960cb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
