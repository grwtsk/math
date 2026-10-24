# Verification target: GRWTSK.Analysis.ComplexAnalysis.TrailingCoefficient.Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83ddc065af2aa54cff11436693db6cdad84a4928",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83ddc065af2aa54cff11436693db6cdad84a4928`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean.json)

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
| 1 | `def` | [meromorphicTrailingCoeffAt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat--af8f3a1858d00f624e2511d9.md) | 46 | `declaration-track:af8f3a1858d00f624e2511d9b22ad78ae547ed75ca048b978b0dd6d20b300b4f` |
| 2 | `lemma` | [meromorphicTrailingCoeffAt_of_not_MeromorphicAt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-of-not-meromorphicat--4378d4fc9b34f1c6dc3a5364.md) | 56 | `result-track:4378d4fc9b34f1c6dc3a5364e0a88b12c6805f43b92d3d7785cdbd378b00fd6c` |
| 3 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_of_order_eq_top](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-of-order-eq-top--1fcb8b0569551daa8c0d56c7.md) | 62 | `result-track:1fcb8b0569551daa8c0d56c728aa51c6e2354cc29d775f6334e7e1bf2a63c0be` |
| 4 | `lemma` | [AnalyticAt.meromorphicTrailingCoeffAt_of_eq_nhdsNE](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/analyticat-meromorphictrailingcoeffat-of-eq-nhdsne--8ded65af5efb97b7c4203dce.md) | 74 | `result-track:8ded65af5efb97b7c4203dcedb5f40d3807e48818e4f0ec05ab8e85421882ef9` |
| 5 | `lemma` | [AnalyticAt.meromorphicTrailingCoeffAt_of_ne_zero_of_eq_nhdsNE](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/analyticat-meromorphictrailingcoeffat-of-ne-zero-of-eq-nhdsne--77d322a7a2808758ad2b68e3.md) | 100 | `result-track:77d322a7a2808758ad2b68e3b787def6178676c612503ba89ee6eec5893de1e7` |
| 6 | `lemma` | [AnalyticAt.meromorphicTrailingCoeffAt_of_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/analyticat-meromorphictrailingcoeffat-of-ne-zero--6a6cb6ca54c05a3232453f34.md) | 116 | `result-track:6a6cb6ca54c05a3232453f3499cfdab380139b6ee5103cb21cb3c3d558430d44` |
| 7 | `lemma` | [MeromorphicAt.tendsto_nhds_meromorphicTrailingCoeffAt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-tendsto-nhds-meromorphictrailingcoeffat--2160a00e8cf8fafa5bae9541.md) | 126 | `result-track:2160a00e8cf8fafa5bae9541f2066c1df85f3ea06d5e25882dd47bbf4c9887ca` |
| 8 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-ne-zero--fd610ab1f247d0777f35e30a.md) | 153 | `result-track:fd610ab1f247d0777f35e30a3d4a038fdd4db5a7162abd79f0cfbaece6e7948b` |
| 9 | `theorem` | [meromorphicTrailingCoeffAt_const](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-const--75d864598383c0e8eaaf1834.md) | 163 | `result-track:75d864598383c0e8eaaf1834f9d00e46134aa014d8538fd36f36a758e61ef6cb` |
| 10 | `theorem` | [meromorphicTrailingCoeffAt_id_sub_const](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-id-sub-const--db5affa32c1fd3ed68e287e7.md) | 176 | `result-track:db5affa32c1fd3ed68e287e7c663a55a26ca978b0964a07a886f7ecc9d46170d` |
| 11 | `lemma` | [meromorphicTrailingCoeffAt_congr_nhdsNE](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-congr-nhdsne--2e4911a8735d531290527cab.md) | 194 | `result-track:2e4911a8735d531290527cab99a71a5b00c5b7a03b45daf8ff4384a675d47657` |
| 12 | `theorem` | [meromorphicTrailingCoeffAt_neg](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-neg--211cbc4de1d53b82e612c858.md) | 212 | `result-track:211cbc4de1d53b82e612c8587eda338e0286cb01f1ff4ed59be96cc03b59960d` |
| 13 | `theorem` | [meromorphicTrailingCoeffAt_fun_neg](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-fun-neg--9f1c39f6dac2a48135ba15d5.md) | 230 | `result-track:9f1c39f6dac2a48135ba15d5b5258798442e4195eab6758c6ec8fc45bae22209` |
| 14 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_add_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-add-eq-left-of-lt--5e2028759468b43298748daf.md) | 238 | `result-track:5e2028759468b43298748daf24c0756a8e3e5b16ed65c65e2d0890a630544e32` |
| 15 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_add_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-add-eq-left-of-lt--50a1181a43e60c320005242b.md) | 277 | `result-track:50a1181a43e60c320005242be57c5dfc7125ccb3db43b758b3aeab4f2ec1f54b` |
| 16 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_sub_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-sub-eq-left-of-lt--f231ee7061ebd892bb3762a2.md) | 286 | `result-track:f231ee7061ebd892bb3762a2d58482ff29e0538643ad7000540d3b661da1e567` |
| 17 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_sub_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-sub-eq-left-of-lt--a941f4691ad9aad9e325b7c0.md) | 297 | `result-track:a941f4691ad9aad9e325b7c0bef8a7ba9a1eaad58a00b9dd5b254300962d3cb8` |
| 18 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_add_eq_add](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-add-eq-add--691d638c51c205b4e65e348f.md) | 306 | `result-track:691d638c51c205b4e65e348f52c79b79ab1cf1223649b23477e9992d406282e4` |
| 19 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_add_eq_add](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-add-eq-add--45b151d61e02162719e2963a.md) | 335 | `result-track:45b151d61e02162719e2963a3c906985c9dc003f2dd71ec7e40611b8408a46db` |
| 20 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_sub_eq_sub](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-sub-eq-sub--c961b35d57555735b13613d2.md) | 347 | `result-track:c961b35d57555735b13613d22e906cca8322f77d35e8f7b1d5f8acb50f2b2706` |
| 21 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_sub_eq_sub](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-sub-eq-sub--2d4c671f8eb8bdc6dcd67053.md) | 362 | `result-track:2d4c671f8eb8bdc6dcd67053f86c30dea8d3559606d77e2abe46fc5fda7122f0` |
| 22 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_smul](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-smul--b64b14175fe80f14a04646be.md) | 373 | `result-track:b64b14175fe80f14a04646be1de14fa232a66882917bcf2131fd5303051e0951` |
| 23 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_smul](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-smul--389cd8e407c3f2dd08bfc54d.md) | 396 | `result-track:389cd8e407c3f2dd08bfc54da0bd750a52cd8622d701d389c59911f3be188c77` |
| 24 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_mul](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-mul--7abe0ab04954573a97e5a170.md) | 405 | `result-track:7abe0ab04954573a97e5a17031d59be0c21cd8eb451e45286a4e738010980ead` |
| 25 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_mul](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-mul--fc690dc3aa29ee3f06eb8576.md) | 414 | `result-track:fc690dc3aa29ee3f06eb857686f6f2524e85d75c16737a3ff3ae0192233dfb51` |
| 26 | `theorem` | [meromorphicTrailingCoeffAt_prod](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-prod--8da0ad5a6295d2cf5900f4a2.md) | 423 | `result-track:8da0ad5a6295d2cf5900f4a21ed2a79c77e84dd07359e10da86f277dec0b5e16` |
| 27 | `theorem` | [meromorphicTrailingCoeffAt_fun_prod](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-fun-prod--8fa414382d4690613a5c7468.md) | 441 | `result-track:8fa414382d4690613a5c7468b986ce1dbe811ef4cf150dea850c19ec4aa4b48c` |
| 28 | `lemma` | [meromorphicTrailingCoeffAt_inv](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-inv--22ee0724fa652c13991c40bb.md) | 451 | `result-track:22ee0724fa652c13991c40bb4c10ceb7395014c33e7f5d8c6af3221bcb76dbe7` |
| 29 | `lemma` | [meromorphicTrailingCoeffAt_fun_inv](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-fun-inv--a584f6734dac6cc295242a1c.md) | 470 | `result-track:a584f6734dac6cc295242a1c94e99ca6cf31a0ff716ed09a2030460c60860324` |
| 30 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_zpow](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-zpow--fe94b8d63cf8e9a8be667682.md) | 477 | `result-track:fe94b8d63cf8e9a8be6676829b094a2c70c95bdd84d3da60cb505a0afa821a84` |
| 31 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_zpow](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-zpow--96be537395598b9e2ab46288.md) | 497 | `result-track:96be537395598b9e2ab46288b8eb8fc982b8c0bf1f50e170ff39805529991140` |
| 32 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_pow](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-pow--6d77ed8157604ddd2f47d8ed.md) | 505 | `result-track:6d77ed8157604ddd2f47d8edb56d621989ea1c90c954fadcb4bf4302b8e30c8a` |
| 33 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_pow](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-pow--356dc29cec454f5a567bacd7.md) | 513 | `result-track:356dc29cec454f5a567bacd7dd9e2f227c1e7c8a8e5f4c5b50fe60c71361bdf8` |
| 34 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_comp](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphicat-meromorphictrailingcoeffat-comp--fc1e2954a9eab1511576c810.md) | 526 | `result-track:fc1e2954a9eab1511576c81050335c9cff22961df21f437cf586b31160ce4432` |
| 35 | `theorem` | [meromorphicTrailingCoeffAt_comp_add_const_eq_meromorphicTrailingCoeffAt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-comp-add-const-eq-meromorphictrailingcoeffat--793898aa29ba283197d3a37d.md) | 551 | `result-track:793898aa29ba283197d3a37de477970fe91552f5614158492c0fc5f97f46e988` |
| 36 | `theorem` | [meromorphicTrailingCoeffAt_comp_sub_const_eq_meromorphicTrailingCoeffAt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/declarations/meromorphictrailingcoeffat-comp-sub-const-eq-meromorphictrailingcoeffat--747383b5d3551b3511a5965c.md) | 562 | `result-track:747383b5d3551b3511a5965cfe479e06895aa8a3e796ce3a7ac16315e5e556f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
