# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc47b3f83d6881078b30ec874568b2a44dd5bf5a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc47b3f83d6881078b30ec874568b2a44dd5bf5a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Fin` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [graph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/graph--84ef5ff047d41e44592f48f1.md) | 45 | `declaration-track:84ef5ff047d41e44592f48f1dbab31fa35216fdfb7cefe5cb8b938c05160a001` |
| 2 | `def` | [graph.proj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/graph-proj--83e91b5d59bfa0aefc3c937e.md) | 51 | `declaration-track:83e91b5d59bfa0aefc3c937e2c90975b82ff78cadafbfb87095c18446a6b227e` |
| 3 | `theorem` | [graph.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/graph-card--04dfb032127e3d198e7b6000.md) | 54 | `result-track:04dfb032127e3d198e7b60008e76b1c6e04de2bad9f16093591a6c528e955d06` |
| 4 | `def` | [graphEquiv₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/graphequiv--6492d551b9260e30699c0e59.md) | 64 | `declaration-track:6492d551b9260e30699c0e59ff7e05d7c72e56317658db2a379956d3aa5373f2` |
| 5 | `theorem` | [proj_equiv₁'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/proj-equiv--7b05484f7d99d9b2080e4e8b.md) | 76 | `result-track:7b05484f7d99d9b2080e4e8b2c985a6c68bcee16f2721e40a244bf9ffb4ece33` |
| 6 | `def` | [graphEquiv₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/graphequiv--a3ca322cc430f3d606111d11.md) | 81 | `declaration-track:a3ca322cc430f3d606111d1167ae8e428a42fdffea6da7df137e40c175d681b2` |
| 7 | `def` | [sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/sort--286fd4f0a099b03ff126571f.md) | 85 | `declaration-track:286fd4f0a099b03ff126571ff5d2eaf93605ce82c8f364c41654a2b7662576b4` |
| 8 | `theorem` | [graphEquiv₂_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/graphequiv-apply--bac10297626232cac5217f7d.md) | 88 | `result-track:bac10297626232cac5217f7d76129b966fa646390653da46ab4365e74e52f36b` |
| 9 | `theorem` | [self_comp_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/self-comp-sort--89d848cc58b50505831cd7e3.md) | 92 | `result-track:89d848cc58b50505831cd7e385621b4398868c7f69399354cf0b84d1e9c5038e` |
| 10 | `theorem` | [monotone_proj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/monotone-proj--891d3f88681288c3516922b1.md) | 95 | `result-track:891d3f88681288c3516922b1fa7a9c260904fb21d9e7a19c56b3bc891d9765b9` |
| 11 | `theorem` | [monotone_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/monotone-sort--3a4091727d0de063b6c8bde2.md) | 100 | `result-track:3a4091727d0de063b6c8bde24131e3e457c2db4e5b0ffb659a36fa5e9a8c4f59` |
| 12 | `theorem` | [lt_card_le_iff_apply_le_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/lt-card-le-iff-apply-le-of-monotone--c5d6cda1c65ef249a647570c.md) | 114 | `result-track:c5d6cda1c65ef249a647570c896f601440586f4c82a98785400b6666e4be14a5` |
| 13 | `theorem` | [lt_card_ge_iff_apply_ge_of_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/lt-card-ge-iff-apply-ge-of-antitone--4aa24e4bad76e8245843ba0f.md) | 141 | `result-track:4aa24e4bad76e8245843ba0f45dc6c96cd416deb2cb073ee772adc04ff144acf` |
| 14 | `theorem` | [unique_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/unique-monotone--3b8d94f81df9269c72c20aa7.md) | 147 | `result-track:3b8d94f81df9269c72c20aa7f1222259099870648699e6ccf22de0e4d010ef28` |
| 15 | `theorem` | [unique_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/unique-antitone--1f5f1ebb988427d976c62b60.md) | 154 | `result-track:1f5f1ebb988427d976c62b60137382ae9cfcfc2a55e885894bf8ebebd04898ac` |
| 16 | `theorem` | [eq_sort_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/eq-sort-iff--45feabcd9a0c5d6e71910dd5.md) | 164 | `result-track:45feabcd9a0c5d6e71910dd571e983a8eb85c4687387dce41d9a91070cec790e` |
| 17 | `theorem` | [eq_sort_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/eq-sort-iff--e3d5914e0a418e6a236818e9.md) | 175 | `result-track:e3d5914e0a418e6a236818e9e7d2dcfc4bbae906a700218911b6f0df42c45683` |
| 18 | `theorem` | [sort_eq_refl_iff_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/sort-eq-refl-iff-monotone--1f6d404e43ff39807b046ea5.md) | 184 | `result-track:1f6d404e43ff39807b046ea5a343aa3b710a3d4cbe81a104d1b7910c942136ab` |
| 19 | `theorem` | [comp_sort_eq_comp_iff_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/comp-sort-eq-comp-iff-monotone--6a17e3105254290745eba3b3.md) | 190 | `result-track:6a17e3105254290745eba3b336252fddc8e778b1816ad064445bbba1c84ae21b` |
| 20 | `theorem` | [comp_perm_comp_sort_eq_comp_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/comp-perm-comp-sort-eq-comp-sort--00dec7f2e7a5146c0c92b2be.md) | 194 | `result-track:00dec7f2e7a5146c0c92b2be079d02c4782f55e7bdb517108fef6dbaae6ae025` |
| 21 | `theorem` | [antitone_pair_of_not_sorted'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/antitone-pair-of-not-sorted--0ead9a18365a7c3d3a726cc7.md) | 200 | `result-track:0ead9a18365a7c3d3a726cc76856585467d96083596334d2ea8fb844a39c78c1` |
| 22 | `theorem` | [antitone_pair_of_not_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/declarations/antitone-pair-of-not-sorted--e0d5985c51c507f8349f0b70.md) | 207 | `result-track:e0d5985c51c507f8349f0b70eee1e7515ce5f8ca23f92d55b0d8ce1aee37ecef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
