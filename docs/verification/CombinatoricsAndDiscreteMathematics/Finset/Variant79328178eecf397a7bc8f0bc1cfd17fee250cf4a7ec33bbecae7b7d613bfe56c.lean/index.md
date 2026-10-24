# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b532f5792d3b2d6ecd1cfca83ed90697b4e07588",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b532f5792d3b2d6ecd1cfca83ed90697b4e07588`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ciSup_eq_ciSup_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/cisup-eq-cisup-finset--9200595c6aeae821f6478103.md) | 38 | `result-track:9200595c6aeae821f6478103bbacbdb1ced5290beafe46817f2fad80e94431a7` |
| 2 | `theorem` | [Finset.Nonempty.csSup_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/finset-nonempty-cssup-eq-max--e4e2464ef575f775a4447626.md) | 51 | `result-track:e4e2464ef575f775a44476269d3d5f7486223b45f31adf3b8b99c958691cdce5` |
| 3 | `theorem` | [Finset.Nonempty.csSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/finset-nonempty-cssup-mem--b64dd61ad0d8245fdc04aeff.md) | 55 | `result-track:b64dd61ad0d8245fdc04aeff0789fc0ae303cabc9c97f8e0228af59ece7866e8` |
| 4 | `theorem` | [Set.Nonempty.csSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/set-nonempty-cssup-mem--5334f540957bf2aa195b761c.md) | 60 | `result-track:5334f540957bf2aa195b761c292e83d3baf5b7e2e1a17290cac72278230e1853` |
| 5 | `theorem` | [Set.Nonempty.isGreatest_csSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/set-nonempty-isgreatest-cssup--8b65335393f6517811b1dc8f.md) | 65 | `result-track:8b65335393f6517811b1dc8f6c9b042f3e609dca2af517c2ec4cac985969f692` |
| 6 | `theorem` | [Finite.ciSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/finite-cisup-mem--40a759902b0642efa3ba6df3.md) | 70 | `result-track:40a759902b0642efa3ba6df3a41a14d906a8e01b1d1927020948519c9b9b97cb` |
| 7 | `theorem` | [Finite.isGreatest_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/finite-isgreatest-cisup--92e50033fe476fd71a267f96.md) | 74 | `result-track:92e50033fe476fd71a267f962f7e16d431d7caf752fe35af60127b6844abb540` |
| 8 | `theorem` | [Set.Finite.csSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/set-finite-cssup-lt-iff--d0cb7a81b1d940a6db761ee3.md) | 79 | `result-track:d0cb7a81b1d940a6db761ee3fc8760556c308fbe81c70124752d12a8b6630f27` |
| 9 | `theorem` | [Set.Finite.map_sSup_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/set-finite-map-ssup-of-monotone--c0de2974e60eb7d25eadf8fd.md) | 87 | `result-track:c0de2974e60eb7d25eadf8fd04543eb2ab496e7884f7c5ad799d481c39a1cab9` |
| 10 | `theorem` | [Finset.ciSup_eq_max'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/finset-cisup-eq-max-image--8af1225740b017fae7ef3be8.md) | 98 | `result-track:8af1225740b017fae7ef3be8198326e5dbbd480e63e1a7f0c1d66494c1d8e3cf` |
| 11 | `theorem` | [Finset.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/finset-cisup-mem-image--3eed96fdbc93359ebfe09047.md) | 117 | `result-track:3eed96fdbc93359ebfe09047db640da2b9552ca45ea579246a9324ba758ad328` |
| 12 | `theorem` | [Set.Finite.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/set-finite-cisup-mem-image--a16c121ced9c5c338cfc1e97.md) | 123 | `result-track:a16c121ced9c5c338cfc1e973fe2add7d036b532a99813d707bdfef0be78fb89` |
| 13 | `theorem` | [Set.Finite.ciSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/set-finite-cisup-lt-iff--01fe78181cace12ed7dcf007.md) | 130 | `result-track:01fe78181cace12ed7dcf0075b56e7d85f669ea90d89e0c6f40be61ee1331095` |
| 14 | `lemma` | [List.iSup_mem_map_of_exists_sSup_empty_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/list-isup-mem-map-of-exists-ssup-empty-le--c19a899d95251be19e8a713d.md) | 151 | `result-track:c19a899d95251be19e8a713db2ce582b1a2d88276cba7f383a4465166702824f` |
| 15 | `lemma` | [Multiset.iSup_mem_map_of_exists_sSup_empty_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/multiset-isup-mem-map-of-exists-ssup-empty-le--3af049e0da49a6fbb3305301.md) | 158 | `result-track:3af049e0da49a6fbb3305301e07de8ebbe81cf9e710930d608db7dbc5bf4910c` |
| 16 | `theorem` | [exists_eq_ciSup_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/exists-eq-cisup-of-finite--90e82ceb4791e407f0aa5463.md) | 165 | `result-track:90e82ceb4791e407f0aa54637abf6232a985f01ba4aba81132918ec13c82fad4` |
| 17 | `theorem` | [sSup_ne_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/ssup-ne-of-notmem--9ae783b3df699d20f4372de4.md) | 177 | `result-track:9ae783b3df699d20f4372de4264fdfb3ccef769e953d8b236ed4f9eb9e935ef7` |
| 18 | `theorem` | [sSup_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/ssup-ne-top--f3d65e3ec3dd9d71e663e840.md) | 184 | `result-track:f3d65e3ec3dd9d71e663e840c783e11f3bf5ef635d487f5b36b2113877cb5850` |
| 19 | `theorem` | [iSup_ne_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/isup-ne-of-notmem--e48dd2579291f74a35ca2d66.md) | 188 | `result-track:e48dd2579291f74a35ca2d66ffae515304acc002374f559fb5586c7c8f11a3fa` |
| 20 | `theorem` | [iSup_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/isup-ne-top--b8af991776cea876d904f37e.md) | 193 | `result-track:b8af991776cea876d904f37e8435621760ccb890b96701006fba605658cd2412` |
| 21 | `theorem` | [sup'_eq_csSup_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/sup-eq-cssup-image--1e2f90be452c73f9f0c98744.md) | 211 | `result-track:1e2f90be452c73f9f0c9874403b2896fc2e9e36f586282f6513ee4965b609dd8` |
| 22 | `theorem` | [sup'_id_eq_csSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/sup-id-eq-cssup--eabe1c1ea929d943c0a72a72.md) | 217 | `result-track:eabe1c1ea929d943c0a72a72b483823fa92e5dbc630f90993e25d491fc30aaf4` |
| 23 | `lemma` | [sup'_univ_eq_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/sup-univ-eq-cisup--2e7af375b0f19aeb1ccb0909.md) | 223 | `result-track:2e7af375b0f19aeb1ccb09090c5eb91650c2de9b18a2916d6c2e222ac37ad1d0` |
| 24 | `theorem` | [sup_eq_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/sup-eq-cisup--758e78ea2f0130edad06015e.md) | 231 | `result-track:758e78ea2f0130edad06015e42fcd09cf49493d9cdf9bca695a3d6852a090fea` |
| 25 | `lemma` | [sup_univ_eq_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/sup-univ-eq-cisup--9f8f644babdec54bbd1152d8.md) | 236 | `result-track:9f8f644babdec54bbd1152d862478f9868cc7fd941043628c87d696a9f0be89b` |
| 26 | `theorem` | [ciSup_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/cisup-union--6c60d4a1b99621167bb80710.md) | 239 | `result-track:6c60d4a1b99621167bb80710d8b135ff0dad9b01f60e195dd136a1c338580b74` |
| 27 | `theorem` | [Finset.Nonempty.ciSup_eq_max'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/finset-nonempty-cisup-eq-max-image--91830c5aefb6cdcc96719d1d.md) | 251 | `result-track:91830c5aefb6cdcc96719d1da8eae5f43dc3d47a6e610992df9bda71ba324850` |
| 28 | `theorem` | [Finset.Nonempty.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/finset-nonempty-cisup-mem-image--3302e5c904911a8fca59924f.md) | 256 | `result-track:3302e5c904911a8fca59924faf0ebb9a81b4a4da47fdf7aea741f3fc2e68515d` |
| 29 | `theorem` | [Set.Nonempty.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/set-nonempty-cisup-mem-image--b9567e952a907ac033285084.md) | 260 | `result-track:b9567e952a907ac03328508490b08e2613ad15fd494051c0b2cf81aa802c806c` |
| 30 | `theorem` | [Set.Nonempty.ciSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/set-nonempty-cisup-lt-iff--eb4a2681170b686d9c8e5b89.md) | 264 | `result-track:eb4a2681170b686d9c8e5b899106c1fb9f4bfb577b7eee94b91b7b0326a619a2` |
| 31 | `lemma` | [List.iSup_mem_map_of_ne_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/list-isup-mem-map-of-ne-nil--956a68d831f1c6f9a2580266.md) | 270 | `result-track:956a68d831f1c6f9a258026609b1c0d08e418ec5c9c695d69b66d453db579154` |
| 32 | `lemma` | [Multiset.iSup_mem_map_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant79328178eecf397a7bc8f0bc1cfd17fee250cf4a7ec33bbecae7b7d613bfe56c.lean/declarations/multiset-isup-mem-map-of-ne-zero--c9035fe16be6c12e5ebb41a2.md) | 274 | `result-track:c9035fe16be6c12e5ebb41a21a56c802d14bcddfc02f69bf0edf62817b2c810c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
