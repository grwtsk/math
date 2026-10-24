# Verification target: GRWTSK.Analysis.ComplexAnalysis.Order.Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e26856a812c459c1a98898931497116f1648d6d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e26856a812c459c1a98898931497116f1648d6d`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithTop.Untop0` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [meromorphicOrderAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat--b6ad523a00b63d1e9b5420e7.md) | 44 | `declaration-track:b6ad523a00b63d1e9b5420e7eb135d7d7c02e16f8f977b08e55bfd029b7ba862` |
| 2 | `lemma` | [meromorphicOrderAt_of_not_meromorphicAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-of-not-meromorphicat--f5c94955bf00e3ae245085a7.md) | 52 | `result-track:f5c94955bf00e3ae245085a7cff0ca3cf941478bfa9439f91efd85d13a13897e` |
| 3 | `lemma` | [meromorphicAt_of_meromorphicOrderAt_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicat-of-meromorphicorderat-ne-zero--caf816d28cf8ca36ef404893.md) | 56 | `result-track:caf816d28cf8ca36ef404893c0dc248bda976826da643749a4064c4bdb4b2861` |
| 4 | `lemma` | [meromorphicOrderAt_eq_top_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-eq-top-iff--9369ad2bc3e3e11923395424.md) | 63 | `result-track:9369ad2bc3e3e11923395424e657e3744fa33df42f39353ef2322832cee663cb` |
| 5 | `lemma` | [meromorphicOrderAt_eq_int_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-eq-int-iff--9ce27c12297abf66967e884d.md) | 91 | `result-track:9ce27c12297abf66967e884dfe46b27a9d4804d126d894af8f4553a3fefba856` |
| 6 | `theorem` | [meromorphicOrderAt_ne_top_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-ne-top-iff--8a3a5feaa650ddaaa6e74327.md) | 126 | `result-track:8a3a5feaa650ddaaa6e74327045e97d83b8ee1a297e693a5cb65b6b60733bf5a` |
| 7 | `theorem` | [meromorphicOrderAt_ne_top_iff_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-ne-top-iff-eventually-ne-zero--d782f8ec0c5c657c4b36174b.md) | 140 | `result-track:d782f8ec0c5c657c4b36174b42ac1a023cae473c1190a0af8a7d76371809529a` |
| 8 | `lemma` | [tendsto_cobounded_of_meromorphicOrderAt_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/tendsto-cobounded-of-meromorphicorderat-neg--aef7bfb00bf2f7974ded8a45.md) | 155 | `result-track:aef7bfb00bf2f7974ded8a455392a5fcd961e4d44bfd2036e794c1140b77506b` |
| 9 | `lemma` | [tendsto_ne_zero_of_meromorphicOrderAt_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/tendsto-ne-zero-of-meromorphicorderat-eq-zero--752b45961cc9e5295a91fc0f.md) | 182 | `result-track:752b45961cc9e5295a91fc0f0528dd5f2eecb953647999ee1ec90162514e92b7` |
| 10 | `lemma` | [tendsto_zero_of_meromorphicOrderAt_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/tendsto-zero-of-meromorphicorderat-pos--b63f852a8e20157d90add96f.md) | 195 | `result-track:b63f852a8e20157d90add96f0e2a7d139a6082a553f27f41c50da3048c930f65` |
| 11 | `lemma` | [tendsto_nhds_of_meromorphicOrderAt_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/tendsto-nhds-of-meromorphicorderat-nonneg--ccc6aa664bd59c411e173097.md) | 218 | `result-track:ccc6aa664bd59c411e173097ad3eba17b2d32d944c210c951a5241d4caaed5d0` |
| 12 | `lemma` | [tendsto_cobounded_iff_meromorphicOrderAt_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/tendsto-cobounded-iff-meromorphicorderat-neg--db4c682f80be60b76f536b03.md) | 230 | `result-track:db4c682f80be60b76f536b03bd3aaf07a32496e978216b8238fe8affa3b10a6b` |
| 13 | `lemma` | [tendsto_nhds_iff_meromorphicOrderAt_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/tendsto-nhds-iff-meromorphicorderat-nonneg--9eb851ef6cd67fd97c239c0a.md) | 242 | `result-track:9eb851ef6cd67fd97c239c0ab7416471c93cc0f37099599b94cf1b827ae5fc15` |
| 14 | `lemma` | [tendsto_ne_zero_iff_meromorphicOrderAt_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/tendsto-ne-zero-iff-meromorphicorderat-eq-zero--bb795c0cf675afaab5fe9d90.md) | 256 | `result-track:bb795c0cf675afaab5fe9d90b39a950d326436d622e24650eb2e2ca216648b0c` |
| 15 | `lemma` | [tendsto_zero_iff_meromorphicOrderAt_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/tendsto-zero-iff-meromorphicorderat-pos--957e89a16c56f4c698b6a9fa.md) | 273 | `result-track:957e89a16c56f4c698b6a9fad14ad9b2767d69e51acd1c4922df3d28027d9abc` |
| 16 | `theorem` | [meromorphicOrderAt_congr](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-congr--30735767c777b6cc1afdb6b7.md) | 292 | `result-track:30735767c777b6cc1afdb6b7b22c087ca9e4f753fc81655b69c802f1019d0572` |
| 17 | `lemma` | [AnalyticAt.meromorphicOrderAt_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/analyticat-meromorphicorderat-eq--4efe2f54c210029f84b1376e.md) | 313 | `result-track:4efe2f54c210029f84b1376ee4eeb99d85037f23247aaba9a0b2042e40b9b89b` |
| 18 | `theorem` | [AnalyticAt.meromorphicOrderAt_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/analyticat-meromorphicorderat-nonneg--8c81f355c9a0445b451efa23.md) | 328 | `result-track:8c81f355c9a0445b451efa23a7cece003827f4089b5acfc3631c4f43bd187fb1` |
| 19 | `theorem` | [MeromorphicAt.analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicat-analyticat--912ef73a1c632b0d3cec1d05.md) | 336 | `result-track:912ef73a1c632b0d3cec1d05063edef3ce54544adbcb04692180f5e22d2dd7e2` |
| 20 | `theorem` | [meromorphicOrderAt_smul](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-smul--0f25d7b9423d5eb3ddfa0411.md) | 369 | `result-track:0f25d7b9423d5eb3ddfa04112d4145bf981109fb759eff48637f45b14cf2d28a` |
| 21 | `theorem` | [meromorphicOrderAt_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-mul--85067ed0b00144c7c43a88e8.md) | 394 | `result-track:85067ed0b00144c7c43a88e8dd321484e143c9e9f3a804a640103fa99e71b14d` |
| 22 | `theorem` | [meromorphicOrderAt_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-pow--33544df61fd1d42908727a36.md) | 402 | `result-track:33544df61fd1d42908727a36b036a17783909b1b76be59c9d5819347aa58ca28` |
| 23 | `theorem` | [meromorphicOrderAt_zpow](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-zpow--8a210d99b70515f73626f83c.md) | 423 | `result-track:8a210d99b70515f73626f83c305d46cb24f28c75e7bcf4af7b5d651a6889a271` |
| 24 | `theorem` | [meromorphicOrderAt_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-inv--e510cc2f3eeea23da1d435c2.md) | 455 | `result-track:e510cc2f3eeea23da1d435c28a67228eede1d75e35528d1ded956eaa3d75be09` |
| 25 | `theorem` | [meromorphicOrderAt_add](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-add--2f8cf1f3e41e33c06ae92c45.md) | 483 | `result-track:2f8cf1f3e41e33c06ae92c454236c02c89d6a5ec6b922a8b14a31792bc88644d` |
| 26 | `lemma` | [meromorphicOrderAt_add_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-add-eq-left-of-lt--ac4224453e7e20710efc02e3.md) | 521 | `result-track:ac4224453e7e20710efc02e3642c5b9aba3373f6eff7f8a5ebd8a33e93d493ba` |
| 27 | `lemma` | [meromorphicOrderAt_add_eq_right_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-add-eq-right-of-lt--5ed7700752f290fc29f17bb2.md) | 554 | `result-track:5ed7700752f290fc29f17bb2ced01e4dd6d13529afe2c1ba6c11cccfc7287b7c` |
| 28 | `theorem` | [meromorphicOrderAt_add_of_ne](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-add-of-ne--e50540a306c25037b85b7ca3.md) | 564 | `result-track:e50540a306c25037b85b7ca31e4f40e5f1bc2a982635f8ee918ecdf24e1450b7` |
| 29 | `theorem` | [isClopen_setOf_meromorphicOrderAt_eq_top](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/isclopen-setof-meromorphicorderat-eq-top--20c43d520ea858edd326ff62.md) | 588 | `result-track:20c43d520ea858edd326ff620ebca9cf68ea9134b14442fac7e4d5aff9b71267` |
| 30 | `theorem` | [exists_meromorphicOrderAt_ne_top_iff_forall](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/exists-meromorphicorderat-ne-top-iff-forall--34427f21586f45bba5086c4c.md) | 640 | `result-track:34427f21586f45bba5086c4c4df8d1e5bd86e839ee37b4f243a304f5874ddbb8` |
| 31 | `theorem` | [meromorphicOrderAt_ne_top_of_isPreconnected](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/meromorphicorderat-ne-top-of-ispreconnected--fdf2edbe53878fdd5c152b36.md) | 663 | `result-track:fdf2edbe53878fdd5c152b365dde352bc3c97fbe4ca8e1b8f698bd6ea23fe50d` |
| 32 | `theorem` | [eventually_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/eventually-analyticat--08afc07932ee699ff7110bcc.md) | 675 | `result-track:08afc07932ee699ff7110bcc1b5cb85188c65e68491ec1e54065d2092f82bc32` |
| 33 | `theorem` | [eventually_analyticAt_or_mem_compl](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/eventually-analyticat-or-mem-compl--cc159c690e78162763658c60.md) | 686 | `result-track:cc159c690e78162763658c606b9839712994076ce9476213d65dac337b9e0a45` |
| 34 | `theorem` | [analyticAt_mem_codiscreteWithin](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/analyticat-mem-codiscretewithin--d8c04860eca81ed118ec5c92.md) | 696 | `result-track:d8c04860eca81ed118ec5c921366947d76d51edc9ec2f898abcda01db42e2c2f` |
| 35 | `theorem` | [codiscrete_setOf_meromorphicOrderAt_eq_zero_or_top](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/declarations/codiscrete-setof-meromorphicorderat-eq-zero-or-top--1c9facf77a51adf8a47d59e0.md) | 707 | `result-track:1c9facf77a51adf8a47d59e09085cd50f2411c5f19729a0aee78e0410eaf5698` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
