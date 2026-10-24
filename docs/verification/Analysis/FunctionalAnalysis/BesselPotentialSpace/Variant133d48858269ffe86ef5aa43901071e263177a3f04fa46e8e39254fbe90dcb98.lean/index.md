# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BesselPotentialSpace.Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4be79a4bcb54a29c7257cde05b02d6438719dac",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4be79a4bcb54a29c7257cde05b02d6438719dac`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean.json)

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
| 1 | `structure` | [BesselPotentialSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/besselpotentialspace--48c208a716c5f3e096679ef7.md) | 47 | `declaration-track:48c208a716c5f3e096679ef79efd765ab3e4ff3c53491ea9496f6f258c177905` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--d7669bd647cc51bff2698077.md) | 70 | `declaration-track:d7669bd647cc51bff2698077ebb9ac8e36c527576382b9ae7356e9575fff6500` |
| 3 | `theorem` | [ext'](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/ext--821fdcc331afd764da7018b3.md) | 73 | `result-track:821fdcc331afd764da7018b395f04ffad5fd3272859b60fdb2ee4d8332d62b14` |
| 4 | `theorem` | [memSobolev_toDistr](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/memsobolev-todistr--5f20aba834addf94ceea5f9c.md) | 77 | `result-track:5f20aba834addf94ceea5f9ccc7839e0a7f91b321b9da55ee6f0c248990b9e0b` |
| 5 | `theorem` | [besselPotential_neg_toLp_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/besselpotential-neg-tolp-eq--4bc485ebc79cf500adc05848.md) | 81 | `result-track:4bc485ebc79cf500adc05848fa154b4b68fbfb9e6ff5ca46588db4cecd3e8762` |
| 6 | `theorem` | [ext](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/ext--4d35ca9ced78204f8ddd89de.md) | 86 | `result-track:4d35ca9ced78204f8ddd89defa1f134ac1c6a9090df8a99fbd24e4b6e8cce3dc` |
| 7 | `def` | [copy](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/copy--d1468567cbab32b40d82e9e4.md) | 94 | `declaration-track:d1468567cbab32b40d82e9e482c37992120d1e379bc49ff5c4c97f13ed475d0a` |
| 8 | `theorem` | [toDistr_copy](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/todistr-copy--d68029d6f07770b768d0c9ce.md) | 102 | `result-track:d68029d6f07770b768d0c9ce79bfa54109235300de75935672be67c53bc2e04f` |
| 9 | `theorem` | [toLp_copy](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp-copy--30cefea4d3c37a6f385091c9.md) | 106 | `result-track:30cefea4d3c37a6f385091c963dd49d6c1cb1059a2ccbc4f3e43bf5555bb60a8` |
| 10 | `theorem` | [injective_toLp](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/injective-tolp--ed82e74bbb9813f9919ed35d.md) | 110 | `result-track:ed82e74bbb9813f9919ed35d95e43436a8473a244c51aca531a1c95f286ea33e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--080649ee31ced726245694b9.md) | 119 | `declaration-track:080649ee31ced726245694b9c844b28ed25b55589e3d18efa0cacedd3ec1453e` |
| 12 | `theorem` | [toDistr_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/todistr-zero--d3fa335b5a5da26fd1f1da5c.md) | 126 | `result-track:d3fa335b5a5da26fd1f1da5c94df40eef366d830d0f47d76151fc081b03ab84f` |
| 13 | `theorem` | [toLp_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp-zero--f94da1b535b512fcad420660.md) | 129 | `result-track:f94da1b535b512fcad420660b2a12cee8e79c31df319bfa0bd8b87d9bf69b257` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--8c328430051efff55fa0f8d8.md) | 131 | `declaration-track:8c328430051efff55fa0f8d8d67d54b29ab070170d7d500351f897eaeebd921d` |
| 15 | `theorem` | [toDistr_add](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/todistr-add--ed65d1030b3a9616fe8fdca3.md) | 139 | `result-track:ed65d1030b3a9616fe8fdca3335a08f90b92fde5514fbc5f84dd67c7afdfe127` |
| 16 | `theorem` | [toLp_add](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp-add--9ad8df9636e0917ac161be03.md) | 142 | `result-track:9ad8df9636e0917ac161be03a0fcc2b14c09f662d76b31b278741d951d506287` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--cf22d70e5176feacf1d2e370.md) | 144 | `declaration-track:cf22d70e5176feacf1d2e37027f3b68d84bd0d606a18510dc3645f545553b737` |
| 18 | `theorem` | [toDistr_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/todistr-sub--d8e24763d5a499ac052be92a.md) | 152 | `result-track:d8e24763d5a499ac052be92ae2acb6a48dfd74a938969f455f9a3d5d929badc5` |
| 19 | `theorem` | [toLp_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp-sub--f678224ed9448277c1e8133a.md) | 155 | `result-track:f678224ed9448277c1e8133abb764fcdbb2ba08a78886b5d1f744d9290a04a84` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--d119bf424eca837ed4f31a53.md) | 157 | `declaration-track:d119bf424eca837ed4f31a53d83e957091e8f2b3d992250866bc5c0402a955a5` |
| 21 | `theorem` | [toDistr_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/todistr-neg--f8920c681f091a00e11518db.md) | 165 | `result-track:f8920c681f091a00e11518db1eb0086389d470a3bb382b2373df40527fcddcf5` |
| 22 | `theorem` | [toLp_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp-neg--01b4e9d0db6e30b8531c1dd5.md) | 168 | `result-track:01b4e9d0db6e30b8531c1dd5ce8c9b13f1a4e6b5395eb261c27789d85100bbb0` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--84bd63e781a1ce59cfd4444f.md) | 174 | `declaration-track:84bd63e781a1ce59cfd4444f34fac4e762f61a20d14b1ad7c466df24b376ac1e` |
| 24 | `theorem` | [toDistr_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/todistr-smul--b57e2454e8dc4f80fae0b2bc.md) | 182 | `result-track:b57e2454e8dc4f80fae0b2bc61f4cd2c429cbd5c6cf1f49f43ee6e77eaa5a291` |
| 25 | `theorem` | [toLp_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp-smul--a96cf58a0801043504455479.md) | 185 | `result-track:a96cf58a0801043504455479429e15e516fc599258387b1ae281536fc371ee12` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--39a3e7197a8f23b19842ce33.md) | 187 | `declaration-track:39a3e7197a8f23b19842ce33f17774042aa6d458de070ba53c92beea0ff6b8d6` |
| 27 | `def` | [coeAddMonoidHom](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/coeaddmonoidhom--5020a416fcb20af9e5a568f8.md) | 193 | `declaration-track:5020a416fcb20af9e5a568f8570566d6e93574bfe29fcf4365cebc4a5ad73482` |
| 28 | `theorem` | [coeAddMonoidHom_injective](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/coeaddmonoidhom-injective--bd8e531bb9d9b9313caf4527.md) | 198 | `result-track:bd8e531bb9d9b9313caf4527a44fe5dae1b90cb6482b1934e23a8ea2c6bbe2c8` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--115bb02ae052b32ebe9ff755.md) | 201 | `declaration-track:115bb02ae052b32ebe9ff755e14496dcdecd01e4e74d8dd99da44703ce577f57` |
| 30 | `def` | [toLpₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp--fe16bad7fc26d5e3ec19d546.md) | 208 | `declaration-track:fe16bad7fc26d5e3ec19d54624da18202a20ba4bb8ba44141dfdb74e7fcc4e42` |
| 31 | `def` | [ofLp](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/oflp--631ea18dc063ed97e9bfda7c.md) | 215 | `declaration-track:631ea18dc063ed97e9bfda7c868c8074cb673e55a20452208bb2c2d1abf07e32` |
| 32 | `theorem` | [toLp_ofLp](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp-oflp--53abd623d75eb979e76bbe67.md) | 221 | `result-track:53abd623d75eb979e76bbe677ef131ca083c17e2900a11cd8efc464c25fb53c9` |
| 33 | `theorem` | [toDistr_ofLp](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/todistr-oflp--21dc2111d646d49dfa38fa4e.md) | 225 | `result-track:21dc2111d646d49dfa38fa4ed10b305fa599b2363125353b8b66286d7967f050` |
| 34 | `theorem` | [ofLp_toLp](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/oflp-tolp--15f1e3b42a711b79798ea18f.md) | 229 | `result-track:15f1e3b42a711b79798ea18fb5ae1e4cd2c03259282d27f4af7bf53b856ce12f` |
| 35 | `theorem` | [toLpₗ_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp-apply--1ddefe11304bc1a550f44e55.md) | 234 | `result-track:1ddefe11304bc1a550f44e557946e174f049a8a9b1a471e26989e86099b5f154` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--1eddc76084bee0da730667b9.md) | 237 | `declaration-track:1eddc76084bee0da730667b95e0694cb4d983e0f79753995ffdbb5d861b8567a` |
| 37 | `theorem` | [norm_toLp_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/norm-tolp-eq--71951552e3ac939c977c7210.md) | 242 | `result-track:71951552e3ac939c977c7210fa81d892a862286bd389a8112307cb669c5f1969` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--b787cf6a9ebd754b1454ed9c.md) | 244 | `declaration-track:b787cf6a9ebd754b1454ed9c2aafedd1cbb3e9b804c349f9a88c11e4beac1360` |
| 39 | `def` | [toLpₗᵢ](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp--7a22b5eaccbca76eb0e31e6a.md) | 250 | `declaration-track:7a22b5eaccbca76eb0e31e6ab77c2c0168cc368873bd8e0a304dd6c23e4c2720` |
| 40 | `theorem` | [toLpₗᵢ_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp-apply--d536456b52802264230db2ca.md) | 258 | `result-track:d536456b52802264230db2cafff66275538035ecc9f4fb08b2c086cc79674ff2` |
| 41 | `theorem` | [toLpₗᵢ_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/tolp-symm-apply--fafdb245d5c099eb5095ac31.md) | 262 | `result-track:fafdb245d5c099eb5095ac31863b79912a4ab6e17b5566e8126e2c92f3b295a8` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--1196dca82aee3977698f30e7.md) | 265 | `declaration-track:1196dca82aee3977698f30e7f9b005a39e185b60a64ea4bcab2c3184a45cd314` |
| 43 | `theorem` | [norm_fourier_toLp_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/norm-fourier-tolp-eq--f60c41e5abeaf2ec5e239cf9.md) | 276 | `result-track:f60c41e5abeaf2ec5e239cf9721f61d4976b80f5f17344909b31b4fb1ed890ff` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/instance--783668777c12c9143495f8d3.md) | 279 | `declaration-track:783668777c12c9143495f8d3bbc7470e08df4d2d1de5c5cde2e467493292ebf2` |
| 45 | `def` | [MemSobolev.toBesselPotentialSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/memsobolev-tobesselpotentialspace--f532fa9aa3ea4a7bb402e06e.md) | 299 | `declaration-track:f532fa9aa3ea4a7bb402e06e4c78ba1a032d7ca5a2fcc6eb0ea5382b4c228205` |
| 46 | `theorem` | [MemSobolev.toBesselPotentialSpace_toDistr](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/memsobolev-tobesselpotentialspace-todistr--e6d2f825f00e836cd43f2d07.md) | 305 | `result-track:e6d2f825f00e836cd43f2d0741f756be48e87685d380dd451a3b9f1f5d24638f` |
| 47 | `theorem` | [MemSobolev.toBesselPotentialSpace_injective](../../../../../mathematics/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/declarations/memsobolev-tobesselpotentialspace-injective--c90b3554888b2211cbeac6ed.md) | 308 | `result-track:c90b3554888b2211cbeac6ed1470779035a03e012aebe034b508a8758e64a8ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
