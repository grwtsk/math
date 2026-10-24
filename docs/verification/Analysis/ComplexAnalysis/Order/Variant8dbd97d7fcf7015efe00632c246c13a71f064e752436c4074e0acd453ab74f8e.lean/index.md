# Verification target: GRWTSK.Analysis.ComplexAnalysis.Order.Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ace2447fe9662ea6c0b2f7078d2d3402604e1035",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ace2447fe9662ea6c0b2f7078d2d3402604e1035`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithTop.Untop0` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [meromorphicOrderAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat--7b6b6d3c1852db7acbba50c7.md) | 52 | `declaration-track:7b6b6d3c1852db7acbba50c7d5e5b48219d0d5afe166787f29cc5779988baaf2` |
| 2 | `lemma` | [meromorphicOrderAt_of_not_meromorphicAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-of-not-meromorphicat--c7d7d9175f1bf1141ac7a252.md) | 60 | `result-track:c7d7d9175f1bf1141ac7a252c267716e0a888b7dfed18aee0804b084656bfcb6` |
| 3 | `lemma` | [meromorphicAt_of_meromorphicOrderAt_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicat-of-meromorphicorderat-ne-zero--ce21f3b8cd94f39a1235643c.md) | 64 | `result-track:ce21f3b8cd94f39a1235643cf4f7a3c8bc1e847cb5bc6f3c7fac4fdcebaad516` |
| 4 | `lemma` | [meromorphicOrderAt_eq_top_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-eq-top-iff--a542bca449c70fb94a3fd675.md) | 71 | `result-track:a542bca449c70fb94a3fd675e99667f2f6ed81eef5e208bbfd6808ad6765c21e` |
| 5 | `lemma` | [meromorphicOrderAt_eq_int_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-eq-int-iff--7d16be7439e6e002a697a8cf.md) | 99 | `result-track:7d16be7439e6e002a697a8cf82230c4cfef158751cfe96893605abf35d9f8bdd` |
| 6 | `theorem` | [meromorphicOrderAt_ne_top_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-ne-top-iff--1c2f84edd4cfdcbf417e7cea.md) | 134 | `result-track:1c2f84edd4cfdcbf417e7cea8c0cbcf354d157e17463ac417a778712c643581a` |
| 7 | `theorem` | [meromorphicOrderAt_ne_top_iff_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-ne-top-iff-eventually-ne-zero--9e816776a3eb5405ee2460ef.md) | 148 | `result-track:9e816776a3eb5405ee2460ef660dca69648aefc504a236fa5598c83f03c10be5` |
| 8 | `lemma` | [tendsto_cobounded_of_meromorphicOrderAt_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/tendsto-cobounded-of-meromorphicorderat-neg--89600d6228ce0de231cbb325.md) | 163 | `result-track:89600d6228ce0de231cbb325ef160ab86ba136dac9b5970e01ae19bfe2faec0c` |
| 9 | `lemma` | [tendsto_ne_zero_of_meromorphicOrderAt_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/tendsto-ne-zero-of-meromorphicorderat-eq-zero--c556c768144467393d831eb9.md) | 190 | `result-track:c556c768144467393d831eb9ae2b815621db883e6ce5ab9161505a85f74d104d` |
| 10 | `lemma` | [tendsto_zero_of_meromorphicOrderAt_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/tendsto-zero-of-meromorphicorderat-pos--b0db9dfd29b7cf3e2453a040.md) | 203 | `result-track:b0db9dfd29b7cf3e2453a040682dc18b2498a20c5bf05003dc4cb7398b66702c` |
| 11 | `lemma` | [tendsto_nhds_of_meromorphicOrderAt_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/tendsto-nhds-of-meromorphicorderat-nonneg--443b93e1fd6eb8529e18a4e6.md) | 226 | `result-track:443b93e1fd6eb8529e18a4e6627f9619c9f56ae2f0bb6e5026f964776e4521b5` |
| 12 | `lemma` | [tendsto_cobounded_iff_meromorphicOrderAt_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/tendsto-cobounded-iff-meromorphicorderat-neg--33ead70eef90290ddcfabdd8.md) | 238 | `result-track:33ead70eef90290ddcfabdd8c76c67e9f3dc3e6615a11cb99801378b04d4f4d7` |
| 13 | `lemma` | [tendsto_nhds_iff_meromorphicOrderAt_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/tendsto-nhds-iff-meromorphicorderat-nonneg--5910e6c4722eed3c01f1670d.md) | 250 | `result-track:5910e6c4722eed3c01f1670d71532e8e72a4f80668660db4cfa8a4e7f45eb6fd` |
| 14 | `lemma` | [tendsto_ne_zero_iff_meromorphicOrderAt_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/tendsto-ne-zero-iff-meromorphicorderat-eq-zero--e731fb285d2ae53aa1981353.md) | 264 | `result-track:e731fb285d2ae53aa1981353ebaeb21a05a0f2bd23241cc61e10584d45dc610b` |
| 15 | `lemma` | [tendsto_zero_iff_meromorphicOrderAt_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/tendsto-zero-iff-meromorphicorderat-pos--9dd3883cba8aacdb7c0b4e1c.md) | 281 | `result-track:9dd3883cba8aacdb7c0b4e1c5f9d4a79780fae9d9cea770f28ca22687a1f0f07` |
| 16 | `theorem` | [meromorphicOrderAt_congr](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-congr--4315d08baaa26259f41b193b.md) | 300 | `result-track:4315d08baaa26259f41b193b0c98ad03befea41612e1a06cc7b1ae286c10d77e` |
| 17 | `lemma` | [AnalyticAt.meromorphicOrderAt_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/analyticat-meromorphicorderat-eq--43590fc7afaf48779cd5b036.md) | 321 | `result-track:43590fc7afaf48779cd5b03611b050c4df1c3b834c2cd4b166709d946bc41e67` |
| 18 | `theorem` | [AnalyticAt.meromorphicOrderAt_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/analyticat-meromorphicorderat-nonneg--cc93a8d8841e404686aac2cf.md) | 336 | `result-track:cc93a8d8841e404686aac2cfae61b83d82ec0c018f96952469aa36cc78b0d83f` |
| 19 | `theorem` | [MeromorphicAt.analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicat-analyticat--8e9890942b96a5a3776e5dd4.md) | 344 | `result-track:8e9890942b96a5a3776e5dd4be25bdbbddd3a3b3651f7f6a51283ebf495790cb` |
| 20 | `theorem` | [meromorphicOrderAt_smul](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-smul--6e9692e5ac66ab44bc6d1f73.md) | 377 | `result-track:6e9692e5ac66ab44bc6d1f73daac3c6a0cab34ad3c9a4c0bad16778013914c4d` |
| 21 | `theorem` | [meromorphicOrderAt_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-mul--d16d4b5f6276624076f274bd.md) | 402 | `result-track:d16d4b5f6276624076f274bd7d2d2e7d311f669798d4386609422cfd095f55ef` |
| 22 | `theorem` | [meromorphicOrderAt_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-pow--90799416bc7790ba6ed016c2.md) | 410 | `result-track:90799416bc7790ba6ed016c2a56a41bee4abe9d6229b76d274b03c1afe3abdf6` |
| 23 | `theorem` | [meromorphicOrderAt_zpow](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-zpow--77b9c803e0157cb197defdaf.md) | 431 | `result-track:77b9c803e0157cb197defdaf72eb6feea8e4261cd7ef5031929f7f0d29403067` |
| 24 | `theorem` | [meromorphicOrderAt_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-inv--03b245325054d72b80fc04c2.md) | 463 | `result-track:03b245325054d72b80fc04c223871046d9eeedd529f655b8ab5287ec7bc233df` |
| 25 | `theorem` | [meromorphicOrderAt_add](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-add--8f91bb706ff2a350d656d8e8.md) | 491 | `result-track:8f91bb706ff2a350d656d8e89822fb39571f5c439e34b8b1e44651ef3fff7d72` |
| 26 | `lemma` | [meromorphicOrderAt_add_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-add-eq-left-of-lt--41060def0d10c10bb87e8716.md) | 529 | `result-track:41060def0d10c10bb87e8716fa229c0a57170349a46791c7644e5fc12b88c323` |
| 27 | `lemma` | [meromorphicOrderAt_add_eq_right_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-add-eq-right-of-lt--a370176fa7d6018770a83d80.md) | 562 | `result-track:a370176fa7d6018770a83d807751a64343301c0e03d15ed26837d23218c78bdf` |
| 28 | `theorem` | [meromorphicOrderAt_add_of_ne](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-add-of-ne--ebd80b3d6b6a437490c217f2.md) | 572 | `result-track:ebd80b3d6b6a437490c217f243992f8a9860d30dd11aa5e1104d8b3c8cc01ec4` |
| 29 | `theorem` | [isClopen_setOf_meromorphicOrderAt_eq_top](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/isclopen-setof-meromorphicorderat-eq-top--5e5669e02bc1389c34a258fe.md) | 596 | `result-track:5e5669e02bc1389c34a258fedbb228c067affd8f587d0ddec74c04b4f2522d16` |
| 30 | `theorem` | [exists_meromorphicOrderAt_ne_top_iff_forall](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/exists-meromorphicorderat-ne-top-iff-forall--8c716754f95890a5e4f3eb39.md) | 648 | `result-track:8c716754f95890a5e4f3eb393e148fe34727e0724a180a761d68e4d64a8570c5` |
| 31 | `theorem` | [meromorphicOrderAt_ne_top_of_isPreconnected](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/meromorphicorderat-ne-top-of-ispreconnected--c2c01d741203c6152c219043.md) | 671 | `result-track:c2c01d741203c6152c2190439a9b7b914abfebf1f49674497b70fd5e62614696` |
| 32 | `theorem` | [eventually_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/eventually-analyticat--a6cf2fd7ae26cf1fac3da5c6.md) | 683 | `result-track:a6cf2fd7ae26cf1fac3da5c60097df3851fd8da3f59bea5b18c2117518d58a7b` |
| 33 | `theorem` | [eventually_analyticAt_or_mem_compl](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/eventually-analyticat-or-mem-compl--2c36b6d79ac375fbd9279e97.md) | 694 | `result-track:2c36b6d79ac375fbd9279e974b0ca29c90df2df7f8910a8912c3dc62b4d38383` |
| 34 | `theorem` | [analyticAt_mem_codiscreteWithin](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/analyticat-mem-codiscretewithin--f6d6f3a7c551eecd79f7185b.md) | 704 | `result-track:f6d6f3a7c551eecd79f7185b9ce259eed0129cb012cc60b482ce26381e353f3a` |
| 35 | `theorem` | [codiscrete_setOf_meromorphicOrderAt_eq_zero_or_top](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/declarations/codiscrete-setof-meromorphicorderat-eq-zero-or-top--128612754a340c798383746e.md) | 715 | `result-track:128612754a340c798383746ede2bfcf6235b7662234e9a32950a9ccb0c9c256d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
