# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Init.Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf242421449fec473d805dcddb1bd0fd08e9b683",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf242421449fec473d805dcddb1bd0fd08e9b683`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Logic` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Init` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Notation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [neg_eq_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/neg-eq-neg--ad29582befb193acdfe534d5.md) | 38 | `result-track:ad29582befb193acdfe534d541241201bd282b8e23a7c5f1358f6805ff0d4a08` |
| 2 | `def` | [succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/succ--4f747e2650c93ee76ebf159a.md) | 45 | `declaration-track:4f747e2650c93ee76ebf159a26dad194e23861b75f2bff21658962cb8e3d3f04` |
| 3 | `def` | [pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/pred--978e360cc52b735ae9da05b5.md) | 48 | `declaration-track:978e360cc52b735ae9da05b53a5fa9c715914756bee678842a2fa835ea968fd6` |
| 4 | `lemma` | [pred_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/pred-succ--d0bc0389e0ec25c66117a2cc.md) | 50 | `result-track:d0bc0389e0ec25c66117a2cc900e21813ad814fa1b4a878f6596066839d63f42` |
| 5 | `lemma` | [succ_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/succ-pred--38bff06237c2c53593fddebd.md) | 52 | `result-track:38bff06237c2c53593fddebdc0dda240a69644a7c8762a6c6aa297d5a971c04b` |
| 6 | `lemma` | [neg_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/neg-succ--5992619f7cab635a8689f46e.md) | 54 | `result-track:5992619f7cab635a8689f46e72ec1039c167b750c7ce9a82d28275a93282cccf` |
| 7 | `lemma` | [succ_neg_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/succ-neg-succ--942fff35873e14b851203fc2.md) | 56 | `result-track:942fff35873e14b851203fc2ac39da4a794dbe34e919286b801584507697e5c9` |
| 8 | `lemma` | [neg_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/neg-pred--ed347ce61c76b8eba6992c94.md) | 58 | `result-track:ed347ce61c76b8eba6992c94243242266cbd1dacd502b3d11c50c23158aeb501` |
| 9 | `lemma` | [pred_neg_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/pred-neg-pred--846a9597cf7a28ac1e432f26.md) | 61 | `result-track:846a9597cf7a28ac1e432f26d66293cf83b5ac994207f6b44c541f74cab964aa` |
| 10 | `lemma` | [pred_nat_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/pred-nat-succ--f33e430df3c7eac2e2aa681c.md) | 63 | `result-track:f33e430df3c7eac2e2aa681c3ff678a0eddf9a8fb3f758ff5dedc0e91bee6a9f` |
| 11 | `lemma` | [neg_nat_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/neg-nat-succ--889edce7521f89c54db63a33.md) | 65 | `result-track:889edce7521f89c54db63a339a8c01aa1f4c76f8e3b66b8c7751fb6b575c0beb` |
| 12 | `lemma` | [succ_neg_natCast_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/succ-neg-natcast-succ--5c99e964d80979c49907522f.md) | 67 | `result-track:5c99e964d80979c49907522fcaf965d4b382ec8d350d3412282442ebd91b74a3` |
| 13 | `lemma` | [natCast_pred_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/natcast-pred-of-pos--31e25baa00634e9de23f5a95.md) | 69 | `result-track:31e25baa00634e9de23f5a9528273872af3c5e0bf49fbeb6d6c5b76d7aaafc02` |
| 14 | `lemma` | [lt_succ_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/lt-succ-self--22dcf8719f2f2284f8c2fc45.md) | 72 | `result-track:22dcf8719f2f2284f8c2fc4533f93980d2dcf35f1ca53c7d1594e1648f2f5f93` |
| 15 | `lemma` | [pred_self_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/pred-self-lt--b0e9923b07bd679bcd925e43.md) | 74 | `result-track:b0e9923b07bd679bcd925e4355a622a1dc9b9cd77d6195a6b926ba4d5dd0613e` |
| 16 | `lemma` | [induction_on](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/induction-on--87e2fb106b3127bef61f77f5.md) | 82 | `result-track:87e2fb106b3127bef61f77f592db4e0337d0fe1c619c6cc9fc77492994fe604b` |
| 17 | `def` | [inductionOn'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/inductionon--b7841a3b6464614bc0be92f5.md) | 102 | `declaration-track:b7841a3b6464614bc0be92f5427bd771451b31e1d5607c43ba1e3f77dcdb2295` |
| 18 | `lemma` | [inductionOn'_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/inductionon-self--3d98bb9d447f91a08f145228.md) | 123 | `result-track:3d98bb9d447f91a08f1452281d8b2d92ec17e9d140c9e4dc77987f6619aebe55` |
| 19 | `lemma` | [inductionOn'_sub_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/inductionon-sub-one--3d1d8b9ab9abe38d5fcfaa84.md) | 126 | `result-track:3d1d8b9ab9abe38d5fcfaa8447336b83b6deb67bcf913917b234054eb8014d8a` |
| 20 | `def` | [negInduction](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/neginduction--ba518b6bb23c0b6ebf901834.md) | 145 | `declaration-track:ba518b6bb23c0b6ebf90183493dec364c659b6d4b16e8452da5e7989105c3c54` |
| 21 | `lemma` | [le_induction](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/le-induction--98b11344dfaea83cc5310c4a.md) | 151 | `result-track:98b11344dfaea83cc5310c4a15d7b40f798921394c2a832d365071f9a3f7d452` |
| 22 | `theorem` | [le_induction_down](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/le-induction-down--d1443abfb2c6ab35f22ff310.md) | 162 | `result-track:d1443abfb2c6ab35f22ff31076e8b62e66a3523d58f81a3260c6252e373716a1` |
| 23 | `def` | [strongRec](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/strongrec--4baa7ca556067dfe061ab146.md) | 173 | `declaration-track:4baa7ca556067dfe061ab14675c5c86c64d5b3dcbd2de765ed203f8b6b121081` |
| 24 | `lemma` | [strongRec_of_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/strongrec-of-lt--1f6ec6bfff3f9c713e3cc567.md) | 180 | `result-track:1f6ec6bfff3f9c713e3cc567008b0c526070fe970d5daad26b5136727908f44f` |
| 25 | `theorem` | [sign_mul_self_eq_natAbs](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/sign-mul-self-eq-natabs--b219ad7e04fc13c6bdab1924.md) | 190 | `result-track:b219ad7e04fc13c6bdab192486c14ae28aa659baa22a8ec4e0c4b8a69609bf6c` |
| 26 | `lemma` | [natCast_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/natcast-div--d01d3777e535d80892bd802d.md) | 195 | `result-track:d01d3777e535d80892bd802dd10c7a52c692d9672ef9c355e0413f6359160017` |
| 27 | `lemma` | [ediv_of_neg_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/ediv-of-neg-of-pos--635f5549db90eb3f9ec759c6.md) | 197 | `result-track:635f5549db90eb3f9ec759c6f782a9bdf342b25f9723241db1a6534d919c8e3c` |
| 28 | `lemma` | [natCast_mod](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/natcast-mod--00b6e439820e0d66d75e3495.md) | 204 | `result-track:00b6e439820e0d66d75e34954e0ead8cd7dc4aa86d2148f145f39b60aa0032ab` |
| 29 | `lemma` | [div_le_iff_of_dvd_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-le-iff-of-dvd-of-pos--2c293a3c5a1c444252f9e8d2.md) | 208 | `result-track:2c293a3c5a1c444252f9e8d221001c3162445c4c937226bd387277d8e1c92943` |
| 30 | `lemma` | [div_le_iff_of_dvd_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-le-iff-of-dvd-of-neg--b6d4199710c4385e25e0d563.md) | 211 | `result-track:b6d4199710c4385e25e0d563ab2dc46df0b4b2d78f34a04c44bdf3a9fcaf44e6` |
| 31 | `lemma` | [div_lt_iff_of_dvd_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-lt-iff-of-dvd-of-pos--be2afb0f76ba551d45168a08.md) | 214 | `result-track:be2afb0f76ba551d45168a08776ae13c9ce6ee8df4b6be24db11fbb4329aa97a` |
| 32 | `lemma` | [div_lt_iff_of_dvd_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-lt-iff-of-dvd-of-neg--afaf0117aeaa61d38ec450f7.md) | 217 | `result-track:afaf0117aeaa61d38ec450f713dbd39c16e1c047ecae419faff6c5f84a13c6a3` |
| 33 | `lemma` | [le_div_iff_of_dvd_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/le-div-iff-of-dvd-of-pos--ed69338c5fb2d4ada9705b30.md) | 220 | `result-track:ed69338c5fb2d4ada9705b30ff1e9e3d64f8fbf28985b0592d097be00f2389b8` |
| 34 | `lemma` | [le_div_iff_of_dvd_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/le-div-iff-of-dvd-of-neg--8b6cd99e5b7560ad2a284904.md) | 223 | `result-track:8b6cd99e5b7560ad2a284904019e2605d74dc5433623088afe129d7e616c31fa` |
| 35 | `lemma` | [lt_div_iff_of_dvd_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/lt-div-iff-of-dvd-of-pos--9c20215b44e500b993c6292c.md) | 226 | `result-track:9c20215b44e500b993c6292c90ae4fcae979d916f2c93d1b6a4e605f3802ba29` |
| 36 | `lemma` | [lt_div_iff_of_dvd_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/lt-div-iff-of-dvd-of-neg--d45292b80cb64090885fa86d.md) | 229 | `result-track:d45292b80cb64090885fa86d09b9f291409bc7ddf4c856bfa68d62d9388e2d8c` |
| 37 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-le-div-iff-of-dvd-of-pos-of-pos--8ec3c4425ba6f6044fb9d36a.md) | 232 | `result-track:8ec3c4425ba6f6044fb9d36a748fc67b718898bbae94a482260812cf1ae1f8d4` |
| 38 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-le-div-iff-of-dvd-of-pos-of-neg--39cf8ecabc3723e0335628f3.md) | 236 | `result-track:39cf8ecabc3723e0335628f3baa035b83da05e358e63628990b3d0393b9f3680` |
| 39 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-le-div-iff-of-dvd-of-neg-of-pos--835f03f30ce6189b57efda7f.md) | 240 | `result-track:835f03f30ce6189b57efda7f7036324edceb0a569602d06a9fae783282552bc1` |
| 40 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-le-div-iff-of-dvd-of-neg-of-neg--e170613282740a0114b28e55.md) | 244 | `result-track:e170613282740a0114b28e55cf5854458bfb4c43b0fafada7c0c9f0a06501230` |
| 41 | `lemma` | [div_lt_div_iff_of_dvd_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-lt-div-iff-of-dvd-of-pos--0eff977c93580161e7b45214.md) | 248 | `result-track:0eff977c93580161e7b45214d5f66fbc346835d75d8bd1ffd53755909d52e5c2` |
| 42 | `lemma` | [div_lt_div_iff_of_dvd_of_pos_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-lt-div-iff-of-dvd-of-pos-of-neg--3dbb3d2daa6f006ad67f9bef.md) | 252 | `result-track:3dbb3d2daa6f006ad67f9bef357c5ea18e6c060265ca4b0223c1001b1a22dcfc` |
| 43 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-lt-div-iff-of-dvd-of-neg-of-pos--61c3622581da1b6193dd0623.md) | 256 | `result-track:61c3622581da1b6193dd0623c86c2b6fcf53827f2e45d19f5b1bf4f3bc19c5cf` |
| 44 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-lt-div-iff-of-dvd-of-neg-of-neg--473082fe9f29f7e68af6b3a3.md) | 260 | `result-track:473082fe9f29f7e68af6b3a3bc44d350a285de3aec6b2b9acba0348b77a33be7` |
| 45 | `lemma` | [emod_two_eq_zero_or_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/emod-two-eq-zero-or-one--e92a348dc05c4a7f8b1be1ab.md) | 266 | `result-track:e92a348dc05c4a7f8b1be1abe2da51114356358d1964cd1e6ab2b4517c8f755c` |
| 46 | `lemma` | [dvd_mul_of_div_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/dvd-mul-of-div-dvd--64e4185620b4656f1bc42fb0.md) | 271 | `result-track:64e4185620b4656f1bc42fb017da84cd9b11526e0dfe712130de8cc1f8fbb187` |
| 47 | `lemma` | [div_dvd_iff_dvd_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/div-dvd-iff-dvd-mul--0b1ff8008e259958281d0235.md) | 274 | `result-track:0b1ff8008e259958281d0235498e89487164c6637bc20c281242ae0152595c11` |
| 48 | `lemma` | [mul_dvd_of_dvd_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/mul-dvd-of-dvd-div--8674209fba274fc8e75bf679.md) | 277 | `result-track:8674209fba274fc8e75bf6794df826b5a31f434137e3829c3e018484899025f6` |
| 49 | `lemma` | [dvd_div_of_mul_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/dvd-div-of-mul-dvd--62727a72bc6716a9796a535d.md) | 280 | `result-track:62727a72bc6716a9796a535d3a04c028e8bd23a7a418f6f77610cc89df3e6808` |
| 50 | `lemma` | [dvd_div_iff_mul_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/dvd-div-iff-mul-dvd--bf0c1bee5fa67394acefedcf.md) | 283 | `result-track:bf0c1bee5fa67394acefedcfbafc173b348f808fbf4af287921469155aa12e77` |
| 51 | `lemma` | [exists_lt_and_lt_iff_not_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/exists-lt-and-lt-iff-not-dvd--3638868cd6529e4f97c26cf3.md) | 288 | `result-track:3638868cd6529e4f97c26cf34ec76f1cf59ac7fdd6e2d221c04ae00f607de486` |
| 52 | `lemma` | [eq_mul_div_of_mul_eq_mul_of_dvd_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/eq-mul-div-of-mul-eq-mul-of-dvd-left--1b7c9ab98f9c8473feab621c.md) | 292 | `result-track:1b7c9ab98f9c8473feab621c466438a9330ce3646bfaf6f1debca479bdf62e64` |
| 53 | `lemma` | [ofNat_add_negSucc_of_ge](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/ofnat-add-negsucc-of-ge--6e30ef4716c1f52aad6df3d2.md) | 298 | `result-track:6e30ef4716c1f52aad6df3d2094beb03f85889cb11009bf0d774a1bdc8561b4d` |
| 54 | `lemma` | [le_iff_pos_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/le-iff-pos-of-dvd--76151a14eaf7adec03e1fd06.md) | 305 | `result-track:76151a14eaf7adec03e1fd066f8b0bef4ac615afb5fdf094099e4acf0c343096` |
| 55 | `lemma` | [le_add_iff_lt_of_dvd_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/le-add-iff-lt-of-dvd-sub--5dcf7af2102e4285a6461e85.md) | 308 | `result-track:5dcf7af2102e4285a6461e8503781fde8034c09d7a4c233c8a5fe71700106675` |
| 56 | `lemma` | [sign_add_eq_of_sign_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/sign-add-eq-of-sign-eq--3830188cd4ae4a7f7af398ce.md) | 313 | `result-track:3830188cd4ae4a7f7af398ce7ddb042c0e1dc9a413fd5e9fbae49dfc4abc06c3` |
| 57 | `lemma` | [toNat_pred_coe_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/tonat-pred-coe-of-pos--6b948a9624661c6b64c34b0d.md) | 319 | `result-track:6b948a9624661c6b64c34b0d6fca69324dc9163eb84efef0caa0fc03946181f0` |
| 58 | `lemma` | [toNat_lt''](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/tonat-lt--7131dd9aef6e3687da428ad1.md) | 322 | `result-track:7131dd9aef6e3687da428ad12f2009a26e9d9c28278387b1b6515b89ece86ba3` |
| 59 | `def` | [natMod](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/natmod--881a64f2ea3ddf15ad485b74.md) | 325 | `declaration-track:881a64f2ea3ddf15ad485b74735e5fc67b375143ffeeca67e0fc8ac8b09da634` |
| 60 | `lemma` | [natMod_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/natmod-lt--bba51c12f6dca26355f49f3a.md) | 327 | `result-track:bba51c12f6dca26355f49f3a1c495d1a95d1ebd98fc7460ef83e117fd02621bd` |
| 61 | `lemma` | [pow_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/declarations/pow-eq--56574e4c027803e63d359b2b.md) | 331 | `result-track:56574e4c027803e63d359b2bdb7db5787343376d80c09be529b2642b826423e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
