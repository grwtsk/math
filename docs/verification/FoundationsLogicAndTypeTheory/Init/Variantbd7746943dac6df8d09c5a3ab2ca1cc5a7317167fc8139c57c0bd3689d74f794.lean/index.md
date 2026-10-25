# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Init.Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "349f86795102c1cae76a6a03901e769fecc18c3c",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `349f86795102c1cae76a6a03901e769fecc18c3c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Logic` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Init` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [neg_eq_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/neg-eq-neg--2cead1ec8130ca385cef3e85.md) | 30 | `result-track:2cead1ec8130ca385cef3e859c7af1cb7e3a0820552bcbda596f711cda8cef6f` |
| 2 | `def` | [succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/succ--94fc26370909d7a43016bec3.md) | 37 | `declaration-track:94fc26370909d7a43016bec3d08027327850cdf8001f54e28267f0dfa911d682` |
| 3 | `def` | [pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/pred--6211346cb185bc56965d5eb3.md) | 40 | `declaration-track:6211346cb185bc56965d5eb3020f38c23873c5906d93f21ec33f7831b5cad6dc` |
| 4 | `lemma` | [pred_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/pred-succ--9629d4492bd9eda166f4940d.md) | 42 | `result-track:9629d4492bd9eda166f4940d6a38a7f3fb4eb128e4b3b4f75cc4f960203083ef` |
| 5 | `lemma` | [succ_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/succ-pred--3547baf6570156a772c93a48.md) | 44 | `result-track:3547baf6570156a772c93a48f04bcff19597e5e6fdb44b0a1fc0c3b522aaa27a` |
| 6 | `lemma` | [neg_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/neg-succ--4e09a02f1fd4f02cf0ed9d46.md) | 46 | `result-track:4e09a02f1fd4f02cf0ed9d4653426d0094b305caba7374874df3466beeab5a24` |
| 7 | `lemma` | [succ_neg_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/succ-neg-succ--0764ba70e117b68c697837c1.md) | 48 | `result-track:0764ba70e117b68c697837c158d92a29634aba7f44c20b48179e7ec5480d5912` |
| 8 | `lemma` | [neg_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/neg-pred--506cdedb74db9761d9666787.md) | 50 | `result-track:506cdedb74db9761d9666787cf9352f87ba4fcf4885681695ba791b01cbf2512` |
| 9 | `lemma` | [pred_neg_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/pred-neg-pred--d86aba126c91a3c22427721d.md) | 53 | `result-track:d86aba126c91a3c22427721d5cfc866e6d3460d8d83573680f121c793d7fd027` |
| 10 | `lemma` | [pred_nat_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/pred-nat-succ--d9045ca73a774f4e92369120.md) | 55 | `result-track:d9045ca73a774f4e92369120de1facf422c96b5622a06517ecc02ec2cb177e1a` |
| 11 | `lemma` | [neg_nat_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/neg-nat-succ--f8051e0369dabc6dcc823347.md) | 57 | `result-track:f8051e0369dabc6dcc8233471796c39ffe0df39e36b451047f1ddbfb6e917279` |
| 12 | `lemma` | [succ_neg_natCast_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/succ-neg-natcast-succ--0db9935b0e3a9a2fba0088eb.md) | 59 | `result-track:0db9935b0e3a9a2fba0088eb83e16b36f9751c8c7252e751af928ac991f927a9` |
| 13 | `lemma` | [natCast_pred_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/natcast-pred-of-pos--4c04a8159436eb25c7313507.md) | 61 | `result-track:4c04a8159436eb25c7313507bed147c3b85e9fc8f41b412608505ecce6ae263b` |
| 14 | `lemma` | [lt_succ_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/lt-succ-self--9c8f0458c87f7ff817974abd.md) | 64 | `result-track:9c8f0458c87f7ff817974abd2d85802b74b1676311b55442531a904719153eb7` |
| 15 | `lemma` | [pred_self_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/pred-self-lt--d2ca6f62e6c48bd24449803a.md) | 66 | `result-track:d2ca6f62e6c48bd24449803a4173cedc5bdceab69fcf5dd46f991456e5bb9c5b` |
| 16 | `lemma` | [induction_on](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/induction-on--1c97c362d03d159ad8efd306.md) | 74 | `result-track:1c97c362d03d159ad8efd306fa7b0de9353950325876ddf42d8e79a2e8762cb2` |
| 17 | `def` | [inductionOn'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/inductionon--83bf32af839ff9bcbfc79b1d.md) | 94 | `declaration-track:83bf32af839ff9bcbfc79b1d2278f75a5be6bb3eb58603adb1ceda714bfd2c8f` |
| 18 | `lemma` | [inductionOn'_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/inductionon-self--d331b1fd3ed8faf6b4e0e6e0.md) | 115 | `result-track:d331b1fd3ed8faf6b4e0e6e095d0259bfd97388a4022bf4ebee813afea4cad8f` |
| 19 | `lemma` | [inductionOn'_sub_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/inductionon-sub-one--8c72af069a5b19be1b8da0e5.md) | 118 | `result-track:8c72af069a5b19be1b8da0e5841b0245beee1446e0bcffcc34ee7bf61a17a458` |
| 20 | `def` | [negInduction](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/neginduction--46073686ea5c630d3d872adf.md) | 137 | `declaration-track:46073686ea5c630d3d872adf53d92e587fa82078ae059d7140c27479a10e2746` |
| 21 | `lemma` | [le_induction](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/le-induction--88e41429d817bbc7ef2a2075.md) | 143 | `result-track:88e41429d817bbc7ef2a2075234232d3f099bf567fe7b518408ef6a313ba7e4a` |
| 22 | `theorem` | [le_induction_down](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/le-induction-down--d1900135ff350a50d104b7d6.md) | 154 | `result-track:d1900135ff350a50d104b7d6820aaf81d53d1443bb1f53900d6caba56b1525ff` |
| 23 | `def` | [strongRec](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/strongrec--b9bda2fc9ff99b5349d96561.md) | 165 | `declaration-track:b9bda2fc9ff99b5349d96561601d6afa33154570fc2bd31c7b61bc7015f4d787` |
| 24 | `lemma` | [strongRec_of_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/strongrec-of-lt--775d362245f7ebd39b37fefa.md) | 172 | `result-track:775d362245f7ebd39b37fefae8610de9d65e4bc48f0acbcda0c2e0b2d464b5e7` |
| 25 | `theorem` | [sign_mul_self_eq_natAbs](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/sign-mul-self-eq-natabs--fc76227ef87137730f92667d.md) | 182 | `result-track:fc76227ef87137730f92667d76eb9f93ecda790f515c0016520e53338f2d2bc8` |
| 26 | `lemma` | [natCast_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/natcast-div--e02089696ce5295bd75be6e9.md) | 187 | `result-track:e02089696ce5295bd75be6e90c9439c8155fe3c96545bbfafe944f6edd6fd418` |
| 27 | `lemma` | [ediv_of_neg_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/ediv-of-neg-of-pos--b653755f4b009b7168d4ac64.md) | 189 | `result-track:b653755f4b009b7168d4ac64a8f1787a8c2a1f0a5a6a69f0317cf9f4a45b91af` |
| 28 | `lemma` | [natCast_mod](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/natcast-mod--d83db1b5e9a375864da92b47.md) | 196 | `result-track:d83db1b5e9a375864da92b4784215f6e9784204020d3cd5d2a3c393ee4558718` |
| 29 | `lemma` | [div_le_iff_of_dvd_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-le-iff-of-dvd-of-pos--0a4d573dad0467483c30c43a.md) | 200 | `result-track:0a4d573dad0467483c30c43a5419d0188aa49c22592f72b7913c61d0b64a00d0` |
| 30 | `lemma` | [div_le_iff_of_dvd_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-le-iff-of-dvd-of-neg--70b22f8e5796ef6e5d4ddfd1.md) | 203 | `result-track:70b22f8e5796ef6e5d4ddfd108d4eb99d4f8cf3246f1d25fbdd23e62ddca43e2` |
| 31 | `lemma` | [div_lt_iff_of_dvd_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-lt-iff-of-dvd-of-pos--6cb4f854e8cf8eaf1950dee2.md) | 206 | `result-track:6cb4f854e8cf8eaf1950dee2b405754c2b0bef4ad062abc0ea5945bb34062772` |
| 32 | `lemma` | [div_lt_iff_of_dvd_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-lt-iff-of-dvd-of-neg--d148da01fbfbcb48c64f1d69.md) | 209 | `result-track:d148da01fbfbcb48c64f1d69f6eaa0d230b6e56b53b800299670fea83fc9e82c` |
| 33 | `lemma` | [le_div_iff_of_dvd_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/le-div-iff-of-dvd-of-pos--cc5e7e842e85c1e2690ae1c1.md) | 212 | `result-track:cc5e7e842e85c1e2690ae1c160e4a8b1b1dac070ab8686d6fdfb79d9dfcb808c` |
| 34 | `lemma` | [le_div_iff_of_dvd_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/le-div-iff-of-dvd-of-neg--a09fdca5a9a2bfb6564fc93e.md) | 215 | `result-track:a09fdca5a9a2bfb6564fc93e5e8936a437cd7f26cef01d38ec87c0e92f86f747` |
| 35 | `lemma` | [lt_div_iff_of_dvd_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/lt-div-iff-of-dvd-of-pos--42f94b6d7ab1f73a9cc7c596.md) | 218 | `result-track:42f94b6d7ab1f73a9cc7c596764695b93aa7abce700e47a5a41efb045969a937` |
| 36 | `lemma` | [lt_div_iff_of_dvd_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/lt-div-iff-of-dvd-of-neg--c70a21ba1f43428cb8beaa15.md) | 221 | `result-track:c70a21ba1f43428cb8beaa1536ab0e9220ea1dd15debb8269de3ba604336af18` |
| 37 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-le-div-iff-of-dvd-of-pos-of-pos--a16ddeab964b993e4ab42a0e.md) | 224 | `result-track:a16ddeab964b993e4ab42a0e50b94635c0d631d1fe0523881ef240e75b24a6a9` |
| 38 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-le-div-iff-of-dvd-of-pos-of-neg--1b1386435517786bf942d227.md) | 228 | `result-track:1b1386435517786bf942d227cedec03cffcbe4eb88f046de937473c5e8e9778f` |
| 39 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-le-div-iff-of-dvd-of-neg-of-pos--c315d48c384d8bef90efc3ed.md) | 232 | `result-track:c315d48c384d8bef90efc3ed7e6b4ab1e0d4e19a3de33312ba8a2df8933646f3` |
| 40 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-le-div-iff-of-dvd-of-neg-of-neg--2e5bdf53eb7316ea4c64ed35.md) | 236 | `result-track:2e5bdf53eb7316ea4c64ed35315405e83481296f409860706757d104e48ee78f` |
| 41 | `lemma` | [div_lt_div_iff_of_dvd_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-lt-div-iff-of-dvd-of-pos--cc67497c4a2ab5e432f99026.md) | 240 | `result-track:cc67497c4a2ab5e432f99026f413a481be6f04d853e96723d51a320d12ce25a3` |
| 42 | `lemma` | [div_lt_div_iff_of_dvd_of_pos_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-lt-div-iff-of-dvd-of-pos-of-neg--048f3da4e6b4e33cde758ea0.md) | 244 | `result-track:048f3da4e6b4e33cde758ea01251c8a89a939e7c711462264a4e587cd54ef167` |
| 43 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-lt-div-iff-of-dvd-of-neg-of-pos--71d2187b936a9c72acb93e1d.md) | 248 | `result-track:71d2187b936a9c72acb93e1d95006c2eb37b8593e507ba6fcf84f70bb48b815b` |
| 44 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-lt-div-iff-of-dvd-of-neg-of-neg--38050353719edba09b634769.md) | 252 | `result-track:38050353719edba09b6347695832039ad8838e80c8af8ca6d4223e171baba120` |
| 45 | `lemma` | [emod_two_eq_zero_or_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/emod-two-eq-zero-or-one--febd6e081e745ffffc1fcc53.md) | 258 | `result-track:febd6e081e745ffffc1fcc53e959bfb84cfb9e58ab017e9abdd96d601460004f` |
| 46 | `lemma` | [dvd_mul_of_div_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/dvd-mul-of-div-dvd--0a7e14080575cea055ab284c.md) | 263 | `result-track:0a7e14080575cea055ab284cccd324e890151b619c9d786242e4d09ccea3773d` |
| 47 | `lemma` | [div_dvd_iff_dvd_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/div-dvd-iff-dvd-mul--2d61f0b7b4563337735d7b46.md) | 266 | `result-track:2d61f0b7b4563337735d7b46806461c14d225ffafa389e46cd64cde0a0796899` |
| 48 | `lemma` | [mul_dvd_of_dvd_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/mul-dvd-of-dvd-div--b7527e4dc0a65479c081b839.md) | 269 | `result-track:b7527e4dc0a65479c081b839659df9013e37652283df0e2044c074607a93dc14` |
| 49 | `lemma` | [dvd_div_of_mul_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/dvd-div-of-mul-dvd--14c991df6a402ec0a5f4d38e.md) | 272 | `result-track:14c991df6a402ec0a5f4d38e0e9c19fe3f62992090fad4fb7fd960457239486b` |
| 50 | `lemma` | [dvd_div_iff_mul_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/dvd-div-iff-mul-dvd--8bbf970d3100d1789880e0d6.md) | 275 | `result-track:8bbf970d3100d1789880e0d679e101ecba2c01afee13acd8dfda2b26b9ebb362` |
| 51 | `lemma` | [exists_lt_and_lt_iff_not_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/exists-lt-and-lt-iff-not-dvd--ca9b3cca84e29194eecdec2e.md) | 280 | `result-track:ca9b3cca84e29194eecdec2e937a09a5e0860923e2d3eb665f0f08e9080816df` |
| 52 | `lemma` | [eq_mul_div_of_mul_eq_mul_of_dvd_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/eq-mul-div-of-mul-eq-mul-of-dvd-left--215f823684fbcd98ce0d3a3a.md) | 284 | `result-track:215f823684fbcd98ce0d3a3a07ea1b35aa833b434b3c4842d3880857c9acd12c` |
| 53 | `lemma` | [ofNat_add_negSucc_of_ge](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/ofnat-add-negsucc-of-ge--a2f7f3b8e0654ce6fcc65991.md) | 290 | `result-track:a2f7f3b8e0654ce6fcc65991cba51ae898f71af8168f02c39288e702d1459157` |
| 54 | `lemma` | [le_iff_pos_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/le-iff-pos-of-dvd--47b4ebaa056f58f1c80beae5.md) | 297 | `result-track:47b4ebaa056f58f1c80beae579ffec01aeab12be70f6ab2ec64b40f2e065051b` |
| 55 | `lemma` | [le_add_iff_lt_of_dvd_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/le-add-iff-lt-of-dvd-sub--633b12b7c3bb74a76fdeaf1b.md) | 300 | `result-track:633b12b7c3bb74a76fdeaf1b92420ca963200a889f2ff406156fe01bd82a8f92` |
| 56 | `lemma` | [sign_add_eq_of_sign_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/sign-add-eq-of-sign-eq--53ca18c0b05d6b656d7fccbe.md) | 305 | `result-track:53ca18c0b05d6b656d7fccbebc48862d6c052d701c8d6000b04ae1a0406342b7` |
| 57 | `lemma` | [toNat_pred_coe_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/tonat-pred-coe-of-pos--b6a2d93035fe4379480c8b7c.md) | 311 | `result-track:b6a2d93035fe4379480c8b7cab92292b1042798c37ad052b9832e0fcd6a763fe` |
| 58 | `lemma` | [toNat_lt''](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/tonat-lt--49f79d14ba51d569a7a9672e.md) | 314 | `result-track:49f79d14ba51d569a7a9672e6fa2c131a820542ef3165b3b7de80521ffe60052` |
| 59 | `def` | [natMod](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/natmod--bd924ba7de725dd36bc8e4f2.md) | 317 | `declaration-track:bd924ba7de725dd36bc8e4f25475e806fefd60cfff9906087f6308a6057326e4` |
| 60 | `lemma` | [natMod_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/natmod-lt--8ba6241b1193eab92bd3ad16.md) | 319 | `result-track:8ba6241b1193eab92bd3ad163a6038f88b97cc7e34e32e29c62979e90c64f69f` |
| 61 | `lemma` | [pow_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/declarations/pow-eq--addbc4aaa7f8f662310b01e1.md) | 323 | `result-track:addbc4aaa7f8f662310b01e1621f26b147e55e114da2e5d58c2aa31922074ced` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
