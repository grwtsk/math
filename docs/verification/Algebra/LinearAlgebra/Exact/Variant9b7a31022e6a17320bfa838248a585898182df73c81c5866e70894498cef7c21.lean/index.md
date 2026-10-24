# Verification target: GRWTSK.Algebra.LinearAlgebra.Exact.Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87c5ac5d98da72e128ac79f7e5dec1c508397f1a",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87c5ac5d98da72e128ac79f7e5dec1c508397f1a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Range` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact--15e501a075919e73f04b1e63.md) | 47 | `declaration-track:15e501a075919e73f04b1e63f640929a6e06cb5b20bea4e22f1fffd7995c2fd9` |
| 2 | `lemma` | [apply_apply_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/apply-apply-eq-zero--ee8f2edbfc44ad35d2be0c85.md) | 53 | `result-track:ee8f2edbfc44ad35d2be0c850f842d4a0e1215af45f5f795efd8ae857c0d62d3` |
| 3 | `lemma` | [comp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/comp-eq-zero--d979807cddae6af0887808b7.md) | 56 | `result-track:d979807cddae6af0887808b7336507bab59b177d2089364449e7e9ae6f6bf63b` |
| 4 | `lemma` | [of_comp_of_mem_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/of-comp-of-mem-range--0a164f93076ed452ce762370.md) | 59 | `result-track:0a164f93076ed452ce7623705f24d97c6809e1b5ef9acf3ee799caf52a1e606b` |
| 5 | `lemma` | [comp_injective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/comp-injective--d3bbddbee008e46aa5acdf34.md) | 64 | `result-track:d3bbddbee008e46aa5acdf3430e3b3cf12aefd6199ee66e3a657f893a55a48f5` |
| 6 | `lemma` | [of_comp_eq_zero_of_ker_in_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/of-comp-eq-zero-of-ker-in-range--49f6f5abd2e41b0bebad9289.md) | 72 | `result-track:49f6f5abd2e41b0bebad928942e3dd6660ce69347149b400a5b0ddcbf23ac753` |
| 7 | `lemma` | [iff_rangeFactorization](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/iff-rangefactorization--1b13cf34788848e4344788a3.md) | 82 | `result-track:1b13cf34788848e4344788a3c84c0cb4b11b83652e7af2b78347fd7ad2b2a2ba` |
| 8 | `lemma` | [rangeFactorization](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/rangefactorization--e4570c721be2810bc06aad37.md) | 94 | `result-track:e4570c721be2810bc06aad37c44bfc1b468554baa381376105887322e8484d40` |
| 9 | `lemma` | [exact_iff](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-iff--8e21a034ae8d1e8adae7d898.md) | 111 | `result-track:8e21a034ae8d1e8adae7d89857733e9dc783ad3e529b697a8af849535d2f4e3a` |
| 10 | `lemma` | [exact_of_comp_eq_zero_of_ker_le_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-of-comp-eq-zero-of-ker-le-range--90371bff421f4a8905d2fcf7.md) | 115 | `result-track:90371bff421f4a8905d2fcf7abb2803542baec57599efa033d83cacee4e08c58` |
| 11 | `lemma` | [exact_of_comp_of_mem_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-of-comp-of-mem-range--1aa69dd194e9bd6c086b087c.md) | 119 | `result-track:1aa69dd194e9bd6c086b087c4e9f8f158f071cd23b374bc80522073e482e0fe8` |
| 12 | `lemma` | [exact_iff_of_surjective_of_bijective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-iff-of-surjective-of-bijective-of-injective--4d76826e8a4bc2a6a203bc44.md) | 128 | `result-track:4d76826e8a4bc2a6a203bc4467707180685177989102d74d506a79d5f188c7a1` |
| 13 | `lemma` | [addMonoidHom_ker_eq](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/addmonoidhom-ker-eq--714bc017818c9b4ac2568ed1.md) | 167 | `result-track:714bc017818c9b4ac2568ed15bda3d082c776517addadedce4d65c6b1535a238` |
| 14 | `lemma` | [addMonoidHom_comp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/addmonoidhom-comp-eq-zero--fe98d59a12d9b56d54493070.md) | 171 | `result-track:fe98d59a12d9b56d54493070ef151cd8683b113808996d4d2109c20ead05e37b` |
| 15 | `lemma` | [iff_of_ladder_addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/iff-of-ladder-addequiv--6b96c3f11b99f37d8ab0ebf2.md) | 181 | `result-track:6b96c3f11b99f37d8ab0ebf2a011b17ab21587e247d0db1a3bc38771b0d29c1b` |
| 16 | `lemma` | [of_ladder_addEquiv_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/of-ladder-addequiv-of-exact--a8a1a8952cb35573b23011ba.md) | 186 | `result-track:a8a1a8952cb35573b23011bab56954ce554a8cfa975e87c581306331e0701d0d` |
| 17 | `lemma` | [of_ladder_addEquiv_of_exact'](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/of-ladder-addequiv-of-exact--1d60dc6958f87f9b2b5020b2.md) | 190 | `result-track:1d60dc6958f87f9b2b5020b28e5777c7f833436a2947d316efeee1bac1054605` |
| 18 | `lemma` | [iff_addMonoidHom_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/iff-addmonoidhom-rangerestrict--17e74ef608ebc754a43bc75a.md) | 198 | `result-track:17e74ef608ebc754a43bc75a5c2c9da8fd9a8ddea3bea92ac67816a413bcabbb` |
| 19 | `lemma` | [exact_iff](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-iff--54336aba5a8391249c2f5cc0.md) | 220 | `result-track:54336aba5a8391249c2f5cc030327d2662f828082e199b23b8a9fa12e5ea3c24` |
| 20 | `lemma` | [exact_of_comp_eq_zero_of_ker_le_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-of-comp-eq-zero-of-ker-le-range--d869105cc2a6cfaebb052b5e.md) | 224 | `result-track:d869105cc2a6cfaebb052b5e174b4062746f5bf1c0b028bcdeb458d1f474ed55` |
| 21 | `lemma` | [exact_of_comp_of_mem_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-of-comp-of-mem-range--a7969f7b6bb186cca46e0708.md) | 228 | `result-track:a7969f7b6bb186cca46e0708bdbf7198f542132efc704b43457e0a1e83a25b9e` |
| 22 | `lemma` | [exact_subtype_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-subtype-mkq--41784eaf26fcb6d068134b9d.md) | 237 | `result-track:41784eaf26fcb6d068134b9d8ecc0e4c4e8c3df7a1d7c87cfee3265a84f2d495` |
| 23 | `lemma` | [exact_map_mkQ_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-map-mkq-range--700dda95d84d9d7ee973cfe5.md) | 241 | `result-track:700dda95d84d9d7ee973cfe5912b378ff164b350e38c534ffa17c852d84d5b8d` |
| 24 | `lemma` | [exact_subtype_ker_map](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-subtype-ker-map--09fe5b252a0f05ee80a914b9.md) | 245 | `result-track:09fe5b252a0f05ee80a914b9406bf074dc91c8c741a261cbf69c526ee3ba87fa` |
| 25 | `lemma` | [exact_zero_iff_injective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-zero-iff-injective--cf951398a1f6beeccd6c2aca.md) | 250 | `result-track:cf951398a1f6beeccd6c2acafc5279d4b273c068f8636b163170a51289489b62` |
| 26 | `lemma` | [exact_zero_iff_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-zero-iff-surjective--af68d27482cc989ca8e7d890.md) | 259 | `result-track:af68d27482cc989ca8e7d890e90d465e494d16aca375ed254a84add6c1cd00b2` |
| 27 | `lemma` | [LinearEquiv.conj_exact_iff_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/linearequiv-conj-exact-iff-exact--b254fba7171128b5ce4200e7.md) | 268 | `result-track:b254fba7171128b5ce4200e7f602fe692d6aa36e7e8809c018d1c7e2bffe00bb` |
| 28 | `lemma` | [Exact.linearMap_ker_eq](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-linearmap-ker-eq--c5c3f54b1a8d10f9419874d3.md) | 277 | `result-track:c5c3f54b1a8d10f9419874d385403d45d84880186dafb15ef360fb675ce1f407` |
| 29 | `lemma` | [Exact.linearMap_comp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-linearmap-comp-eq-zero--ea212c94ad5832e8bd66fc06.md) | 280 | `result-track:ea212c94ad5832e8bd66fc06851f968cfd9f7696ae1c42655abb8f76ed2cd09a` |
| 30 | `lemma` | [Surjective.comp_exact_iff_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/surjective-comp-exact-iff-exact--007e1bd57bd25445c59ae318.md) | 283 | `result-track:007e1bd57bd25445c59ae31807a3a206fa141fb73c11934e77e2330b9cce1552` |
| 31 | `lemma` | [Injective.comp_exact_iff_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/injective-comp-exact-iff-exact--f7481ce695634e75755dbc11.md) | 288 | `result-track:f7481ce695634e75755dbc11ca84ebeeddb3431105f7338571731a97c8644147` |
| 32 | `lemma` | [iff_of_ladder_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/iff-of-ladder-linearequiv--3bb041a07845ffdbf54d7f59.md) | 298 | `result-track:3bb041a07845ffdbf54d7f59d47b5718dcef174b3fefa091d80b5c8956d537af` |
| 33 | `lemma` | [of_ladder_linearEquiv_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/of-ladder-linearequiv-of-exact--839a36c0580e78a9261628a1.md) | 305 | `result-track:839a36c0580e78a9261628a1253d9d38f851ec9f49d53abb482b12f3bd8bb3e1` |
| 34 | `lemma` | [iff_linearMap_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/iff-linearmap-rangerestrict--dea1dc3e30c81ed5c2616cd4.md) | 312 | `result-track:dea1dc3e30c81ed5c2616cd4a8a7a3d3c874f54dd1f7ca232e242d6baf87d69d` |
| 35 | `def` | [Exact.splitSurjectiveEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-splitsurjectiveequiv--638c143f03f98e9b9ba84a67.md) | 337 | `declaration-track:638c143f03f98e9b9ba84a67ec9b725ebb23878e30d2b964c952ef26dcd65a84` |
| 36 | `def` | [Exact.splitInjectiveEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-splitinjectiveequiv--f0adbeebadc294de7604bf97.md) | 373 | `declaration-track:f0adbeebadc294de7604bf97194453b2c68ef87dc3991d4111cc3b51de7cf0e8` |
| 37 | `theorem` | [Exact.split_tfae'](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-split-tfae--66d4984b01a26f505a43f1fa.md) | 406 | `result-track:66d4984b01a26f505a43f1fa86254df414f5b0e4a2b74080955de3f121794f89` |
| 38 | `theorem` | [Exact.split_tfae](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-split-tfae--ee020ae3ef7c37c8f7b40a36.md) | 426 | `result-track:ee020ae3ef7c37c8f7b40a3668975b4991ef87233088a2ef29a96e1f5ce057dd` |
| 39 | `lemma` | [Exact.inr_fst](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-inr-fst--4cdfdee25d9f055293cacef5.md) | 446 | `result-track:4cdfdee25d9f055293cacef5dfc2749e75dabee8f7d93400f0188de6fa06908d` |
| 40 | `lemma` | [Exact.inl_snd](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-inl-snd--d4c776509089fd7acd3f1597.md) | 451 | `result-track:d4c776509089fd7acd3f15975abb3c4cd9cfb361ce2eb2f6c152ff304f22edf7` |
| 41 | `lemma` | [Exact.exact_mapQ_iff](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-exact-mapq-iff--82252f116fdccf8bde5024c6.md) | 471 | `result-track:82252f116fdccf8bde5024c6649c49ade4041bb61c9ee0183119ae07d1107d9c` |
| 42 | `lemma` | [exact_iff_of_surjective_of_bijective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/exact-iff-of-surjective-of-bijective-of-injective--965df113c2043d85785323b3.md) | 490 | `result-track:965df113c2043d85785323b38498235245564e030415664739a765b9441092d8` |
| 43 | `lemma` | [surjective_range_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/surjective-range-liftq--02cdb294a419e62dbd89dbda.md) | 505 | `result-track:02cdb294a419e62dbd89dbda683a3f39703c491e4e9c945e4baffe2c7ed14172` |
| 44 | `lemma` | [ker_eq_bot_range_liftQ_iff](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/ker-eq-bot-range-liftq-iff--3e9058c106baf9f43cdbd4b8.md) | 511 | `result-track:3e9058c106baf9f43cdbd4b8a723b8a305943943db4b3d9331cd34db0a060bc3` |
| 45 | `lemma` | [injective_range_liftQ_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/injective-range-liftq-of-exact--b75fd8d4bf73fa1e55439d8c.md) | 521 | `result-track:b75fd8d4bf73fa1e55439d8c84a6883044fbfa80086f6391e64575bdc3f0863b` |
| 46 | `def` | [Function.Exact.linearEquivOfSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/declarations/function-exact-linearequivofsurjective--b94f8cdccee73c05ba335ca8.md) | 530 | `declaration-track:b94f8cdccee73c05ba335ca87144d5a8ce42c650637c845251fb9b3f8b855a13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
