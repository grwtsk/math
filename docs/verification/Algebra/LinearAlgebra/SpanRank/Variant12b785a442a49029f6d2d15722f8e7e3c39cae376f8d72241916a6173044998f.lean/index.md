# Verification target: GRWTSK.Algebra.LinearAlgebra.SpanRank.Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4b932cdeb4061e05dddb086faa5a76058b7df61",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4b932cdeb4061e05dddb086faa5a76058b7df61`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spanRank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanrank--0c119f511441af6c5e45fe87.md) | 61 | `declaration-track:0c119f511441af6c5e45fe877a423f89f227de405237f29b6971dcfd4fb4c0f4` |
| 2 | `def` | [spanFinrank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanfinrank--8177112933c9dba0f356ee92.md) | 65 | `declaration-track:8177112933c9dba0f356ee920deee5f0bb05d37b3fb18228763c9291ac7adf8c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/instance--183ce809e33996fe2321814c.md) | 67 | `declaration-track:183ce809e33996fe2321814c91cb5c58c1f015fc7a832a80b57e6b7b45b0ad6d` |
| 4 | `lemma` | [spanRank_toENat_eq_iInf_encard](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanrank-toenat-eq-iinf-encard--a17a68b7e4d7318137d2a0c1.md) | 69 | `result-track:a17a68b7e4d7318137d2a0c1b3e8f85b0fdbe6e92ee8d6a0d30747f802692965` |
| 5 | `lemma` | [spanRank_toENat_eq_iInf_finset_card](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanrank-toenat-eq-iinf-finset-card--f7a405ba5698a38629768e74.md) | 85 | `result-track:f7a405ba5698a38629768e74782b86d73998a9aa4a460c6311162d7caa230e6f` |
| 6 | `lemma` | [spanFinrank_eq_iInf](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanfinrank-eq-iinf--66e896fc1bbba51ccca4d66e.md) | 100 | `result-track:66e896fc1bbba51ccca4d66ee23d7054e5bf9ae982ac6e50f9e17294e5ae2cd6` |
| 7 | `lemma` | [spanRank_finite_iff_fg](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanrank-finite-iff-fg--6fd1484b651154440a399a85.md) | 106 | `result-track:6fd1484b651154440a399a8543abd1136c36e6719a03629406e8881f10e2017a` |
| 8 | `lemma` | [fg_iff_spanRank_eq_spanFinrank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/fg-iff-spanrank-eq-spanfinrank--63fff0e26afe6072394d6c9e.md) | 119 | `result-track:63fff0e26afe6072394d6c9ef860153258e5925c823eca53e47d569fc251d283` |
| 9 | `lemma` | [spanRank_span_le_card](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanrank-span-le-card--86151a93b658a7e216f8953a.md) | 123 | `result-track:86151a93b658a7e216f8953a1d0a385844a9aa30a590b09b938ee14690a2a5e3` |
| 10 | `lemma` | [spanFinrank_span_le_ncard_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanfinrank-span-le-ncard-of-finite--e23d1f411436ca03448a9dc1.md) | 128 | `result-track:e23d1f411436ca03448a9dc13b53a09b5e909f8d28bcef559d3efa2fe6c8adaa` |
| 11 | `theorem` | [exists_span_set_card_eq_spanRank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/exists-span-set-card-eq-spanrank--e6c41b70a5a06e79b0baf413.md) | 138 | `result-track:e6c41b70a5a06e79b0baf413183b36f1ce46481bbb7aef6ff3926eacbf4bd677` |
| 12 | `theorem` | [FG.exists_span_set_encard_eq_spanFinrank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/fg-exists-span-set-encard-eq-spanfinrank--1a03414bbac623a192d78be4.md) | 147 | `result-track:1a03414bbac623a192d78be40a23cfd225fb784298ff07908127d006922346d1` |
| 13 | `lemma` | [FG.spanRank_le_iff_exists_span_set_card_le](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/fg-spanrank-le-iff-exists-span-set-card-le--ce014fe3018d57fa6e1c28df.md) | 157 | `result-track:ce014fe3018d57fa6e1c28df097eb09725c652f5473abcb388b305ab9163113d` |
| 14 | `lemma` | [spanRank_eq_zero_iff_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanrank-eq-zero-iff-eq-bot--08f13f3a45813cedbd8e6de2.md) | 166 | `result-track:08f13f3a45813cedbd8e6de24f7f7edeea459895922f900da77bdf07f78b7bdb` |
| 15 | `lemma` | [spanRank_bot](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanrank-bot--cc7ce3befe53c106dc9c24d3.md) | 177 | `result-track:cc7ce3befe53c106dc9c24d3668afc1b78a58f5a6cd22ea8f25615d31da3d4bb` |
| 16 | `def` | [generators](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/generators--306ac616724da0477f35b955.md) | 180 | `declaration-track:306ac616724da0477f35b9554c34ffcb79d9db67ea462add43b91c1522ba9bef` |
| 17 | `lemma` | [generators_card](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/generators-card--046e174426c2b7c71215cda6.md) | 183 | `result-track:046e174426c2b7c71215cda64833dc80f7932894a00f392fbb55f28bd7ce05e5` |
| 18 | `lemma` | [FG.generators_ncard](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/fg-generators-ncard--72a77b7879934fceb7b3f431.md) | 186 | `result-track:72a77b7879934fceb7b3f431c452bd292171179b8a6ef5f197de790f9d8f7e9f` |
| 19 | `lemma` | [FG.finite_generators](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/fg-finite-generators--9cccde1c044d1e86013fc02e.md) | 192 | `result-track:9cccde1c044d1e86013fc02ea3c2de81f6971989b04b648ce4145a94b0135f11` |
| 20 | `lemma` | [span_generators](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/span-generators--c1af424c42ef2f3d9b2e6c50.md) | 198 | `result-track:c1af424c42ef2f3d9b2e6c5039e0617fa4de9d1a2a2b0d2c10589601bfb14695` |
| 21 | `lemma` | [FG.generators_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/fg-generators-mem--b9bdd9ea635a7eae9396fddc.md) | 202 | `result-track:b9bdd9ea635a7eae9396fddcdcb560bcf1b87bf4e17b2068e5ea1936d7d6c7cb` |
| 22 | `lemma` | [spanRank_sup_le_sum_spanRank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/spanrank-sup-le-sum-spanrank--581d2760a3bbe9027a5be2f9.md) | 206 | `result-track:581d2760a3bbe9027a5be2f99834ae31ee0fe773a57cffd739508197387fd448` |
| 23 | `lemma` | [Basis.mk_eq_spanRank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/basis-mk-eq-spanrank--fdec20bea5d3410066194eb3.md) | 223 | `result-track:fdec20bea5d3410066194eb330f98954da4d32500c699c2cd1ffc17f27e9e073` |
| 24 | `theorem` | [rank_eq_spanRank_of_free](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/rank-eq-spanrank-of-free--ae983edd7513212712a58895.md) | 229 | `result-track:ae983edd7513212712a58895ac26ee8efed71ddbc407d1a19cb029f71baa105d` |
| 25 | `theorem` | [rank_le_spanRank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variant12b785a442a49029f6d2d15722f8e7e3c39cae376f8d72241916a6173044998f.lean/declarations/rank-le-spanrank--8f69870bf36a3e0c3547f028.md) | 236 | `result-track:8f69870bf36a3e0c3547f028b8e15bf809d6c36863415665e2a0fa6ee0b2188a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
