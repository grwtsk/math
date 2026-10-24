# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fold.Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c8556afb0cb00dc5ba7bf3a4070b22d06a9bcce",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c8556afb0cb00dc5ba7bf3a4070b22d06a9bcce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Image` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold--22252374db94088b1229c378.md) | 33 | `declaration-track:22252374db94088b1229c37898e24839ed07e7521370e9cbe7fd42218c5c2e84` |
| 2 | `theorem` | [fold_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-empty--850a506ff83109ef92e6a730.md) | 39 | `result-track:850a506ff83109ef92e6a7300b225c7cfa8a46f4ec410c5ad078cf758a585723` |
| 3 | `theorem` | [fold_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-cons--7f1b66b267995943d99e124f.md) | 43 | `result-track:7f1b66b267995943d99e124f9cc23c51c9c72e470a6c1c83f39a82a25e46c4a8` |
| 4 | `theorem` | [fold_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-insert--3501fb5cffc1146b807c6d1e.md) | 48 | `result-track:3501fb5cffc1146b807c6d1e9890756623db386a16e38e75a3b73e60c5fb664a` |
| 5 | `theorem` | [fold_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-singleton--c0130a15390bf6da999153db.md) | 54 | `result-track:c0130a15390bf6da999153db923e55ccf5535ed40aad8f9ac4f7e5d2d1d80fe9` |
| 6 | `theorem` | [fold_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-map--934830167a6174c4774d7000.md) | 58 | `result-track:934830167a6174c4774d7000a02dcf45697bbb081fbf01daa91739d300e9fc74` |
| 7 | `theorem` | [fold_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-image--bf6d8f1ad64b6088e6db40ed.md) | 62 | `result-track:bf6d8f1ad64b6088e6db40edd9da17fe7f0c69f1b100ddded7fa4ac3ea092f63` |
| 8 | `theorem` | [fold_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-congr--ba10350a04943c77026ec28a.md) | 67 | `result-track:ba10350a04943c77026ec28a7df72b1c5e9672f7f8e03f35d827116c7db13ceb` |
| 9 | `theorem` | [fold_op_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-op-distrib--44da09693dda09228fd928f1.md) | 70 | `result-track:44da09693dda09228fd928f19d7d68396ec6ff8c0215276f90b3b91b8909764f` |
| 10 | `theorem` | [fold_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-const--c669b09e0bc4fe6bb1f3f3c9.md) | 74 | `result-track:c669b09e0bc4fe6bb1f3f3c96f0888e4c3e077b28a541b182b0389fb3cf08633` |
| 11 | `theorem` | [fold_hom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-hom--bed90135d3a32ee52580c791.md) | 84 | `result-track:bed90135d3a32ee52580c791eeba60b2141082f439a81f22b656671be3b7af38` |
| 12 | `theorem` | [fold_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-disjunion--db77220e90148a42a3c90a20.md) | 90 | `result-track:db77220e90148a42a3c90a20e3fe93a4b7ecd31091aea2ff07922381e2da70bd` |
| 13 | `theorem` | [fold_union_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-union-inter--de21fe8ba02f87a3e7cbcb6b.md) | 94 | `result-track:de21fe8ba02f87a3e7cbcb6bf741deaa01442146e47f69ec304aebefb33d3900` |
| 14 | `theorem` | [fold_insert_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-insert-idem--1f00dd726c9dd97d568e9891.md) | 101 | `result-track:1f00dd726c9dd97d568e9891047cd6959c3ca43c177c9bd7f70f8fa640429aae` |
| 15 | `theorem` | [fold_image_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-image-idem--6c84fabfc798da2fb910b6f7.md) | 108 | `result-track:6c84fabfc798da2fb910b6f723e6542212db635e4e24d326f477b7853044d6ca` |
| 16 | `theorem` | [fold_ite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-ite--976846981e8d5e8eb7f37ad5.md) | 119 | `result-track:976846981e8d5e8eb7f37ad5467e8b1b75d552506b67591c303610fdc916f5ba` |
| 17 | `theorem` | [fold_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-ite--73cec7357aef6106d217668e.md) | 136 | `result-track:73cec7357aef6106d217668ec62223159c9898d4963d5d4a88496e039237fef7` |
| 18 | `theorem` | [fold_op_rel_iff_and](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-op-rel-iff-and--be65d4c18185329cd476a4c9.md) | 141 | `result-track:be65d4c18185329cd476a4c9fe7b1abd703277a0d2784b5401f0e9f53d091165` |
| 19 | `theorem` | [fold_op_rel_iff_or](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-op-rel-iff-or--2b9ec1ac0eb23a0981f2a418.md) | 158 | `result-track:2b9ec1ac0eb23a0981f2a418e6b6a07aad6024d60ebd963062f6f7e51ea0b849` |
| 20 | `theorem` | [fold_union_empty_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-union-empty-singleton--5db589e1be1de793a6cf45c0.md) | 174 | `result-track:5db589e1be1de793a6cf45c0124e5161085ad0577fcfad9dbb7266e2a50181e2` |
| 21 | `theorem` | [fold_sup_bot_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-sup-bot-singleton--722b45b905a909ca79898b40.md) | 180 | `result-track:722b45b905a909ca79898b40f4a6f1d1f04a06bfd3b31e77ee10d958d340ccfc` |
| 22 | `theorem` | [le_fold_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/le-fold-min--4e9abcdda18df82d680f7f32.md) | 188 | `result-track:4e9abcdda18df82d680f7f321ac2a291da52cc564ec6e9262fa52708511c87c3` |
| 23 | `theorem` | [fold_min_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-min-le--b497553617bd9df7a5822d10.md) | 191 | `result-track:b497553617bd9df7a5822d1027ce80e20d62a36c187217cae1544ab6f7406f10` |
| 24 | `theorem` | [lt_fold_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/lt-fold-min--cf1f3b9aa69b33c8021ceeec.md) | 198 | `result-track:cf1f3b9aa69b33c8021ceeec9b6ae6759eab848b222e5f6140c80418e603e172` |
| 25 | `theorem` | [fold_min_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-min-lt--17d1510bd2fd129fabcdb666.md) | 201 | `result-track:17d1510bd2fd129fabcdb66670ee766e15889ac62af2c8174364d3f0395d709a` |
| 26 | `theorem` | [fold_max_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-max-le--c5ea7ec333f22c9153b1e46e.md) | 208 | `result-track:c5ea7ec333f22c9153b1e46e01c97bd15ad971a94f6d63888fa19de705ee9c46` |
| 27 | `theorem` | [le_fold_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/le-fold-max--651a2743a8e90d6fab88fba7.md) | 215 | `result-track:651a2743a8e90d6fab88fba72e15b27555fe85a33e15fd2d1fa9a93a36912455` |
| 28 | `theorem` | [fold_max_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/fold-max-lt--32b2e606e29b2ec9a62a11a3.md) | 218 | `result-track:32b2e606e29b2ec9a62a11a39d80ea4598c1ac35f97e5a2bd6546bccb0b7ed22` |
| 29 | `theorem` | [lt_fold_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant577171d64abf900347882e408914488d7d078f7f0033c8e1116bba5267cb6d31.lean/declarations/lt-fold-max--430bfcb5e427ca46554b239e.md) | 225 | `result-track:430bfcb5e427ca46554b239e89d242095998f949d0635b668a277d5d482fad5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
