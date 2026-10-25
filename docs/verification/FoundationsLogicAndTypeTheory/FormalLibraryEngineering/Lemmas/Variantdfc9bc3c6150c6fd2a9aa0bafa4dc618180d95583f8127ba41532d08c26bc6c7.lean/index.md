# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6fde284bbafe7fc0bd0913c608209fa2812188a",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6fde284bbafe7fc0bd0913c608209fa2812188a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Nat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Div` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Algebra.Functions` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_mul_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/eq-zero-of-mul-eq-zero--5f75ef054cce926c4dd2aad8.md) | 77 | `result-track:5f75ef054cce926c4dd2aad8224fc66bf5728276802a54da3c01991021b88027` |
| 2 | `theorem` | [lt_of_le_and_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/lt-of-le-and-ne--4b0f701e5c009dca1ecf14da.md) | 114 | `result-track:4b0f701e5c009dca1ecf14da1c0f6758fa9ec9aeaf501fd087673f3f1a622ab5` |
| 3 | `instance` | [linearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/linearorder--4748331f72502ea3b94092b1.md) | 120 | `declaration-track:4748331f72502ea3b94092b122ebb44d5084a037726dec9f025c62904fbccffe` |
| 4 | `def` | [ltGeByCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/ltgebycases--30fbab59baf3e1a51cf89254.md) | 207 | `declaration-track:30fbab59baf3e1a51cf892546f18de31fe0ac859443a5f7280efc79c1f7c994d` |
| 5 | `def` | [ltByCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/ltbycases--ff20df63a6f0eb700023f0a6.md) | 211 | `declaration-track:ff20df63a6f0eb700023f0a6486375076fd1c468f6b8f66aec14b9a8bca25ad5` |
| 6 | `theorem` | [bit1_eq_succ_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit1-eq-succ-bit0--3e529e630335613abeea6a35.md) | 239 | `result-track:3e529e630335613abeea6a352f8b50c6cbd7c69500c66825c837957fd072beb7` |
| 7 | `theorem` | [bit1_succ_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit1-succ-eq--11ce9c396d1af2c3fc3d87ef.md) | 243 | `result-track:11ce9c396d1af2c3fc3d87ef99cbdc5c8e29fb8a218f7f0f9d459c1a41af15f5` |
| 8 | `theorem` | [bit1_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit1-ne-one--61c51a82cdace4028ae867da.md) | 247 | `result-track:61c51a82cdace4028ae867da8a9e5afa3707047f229fe26746bc117e801b4c3b` |
| 9 | `theorem` | [bit0_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit0-ne-one--6c63eeabc52224b3330b88e9.md) | 252 | `result-track:6c63eeabc52224b3330b88e99dfe55ccc52306af689fec2d8d3d05431a8d7424` |
| 10 | `theorem` | [bit1_ne_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit1-ne-bit0--1d40abf1f2d3fbe32160858c.md) | 261 | `result-track:1d40abf1f2d3fbe32160858ca63cae6c0ca01ef3ced7a0425313787a24b2cbcc` |
| 11 | `theorem` | [bit0_ne_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit0-ne-bit1--8c67c057a7c7aeab60322dbb.md) | 273 | `result-track:8c67c057a7c7aeab60322dbb48677897ebd9f6a48f17451af95c30762ff496fb` |
| 12 | `theorem` | [bit0_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit0-inj--f0d9669f05b26a5b729aef19.md) | 277 | `result-track:f0d9669f05b26a5b729aef19eb3ba0ecdbf18de0b2dcf2eae2fd416ee4a379eb` |
| 13 | `theorem` | [bit1_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit1-inj--91ab744b548e3410439c2bba.md) | 290 | `result-track:91ab744b548e3410439c2bbad16782f9afcce1a5f8f5772a3ff2942004592430` |
| 14 | `theorem` | [bit0_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit0-ne--1ac0e1172aeaa075404b0b1e.md) | 296 | `result-track:1ac0e1172aeaa075404b0b1e926bb3ba219d3d299572bbecd2cebce597adae86` |
| 15 | `theorem` | [bit1_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit1-ne--4a87e4f53e0324b1cbccb5a6.md) | 300 | `result-track:4a87e4f53e0324b1cbccb5a6d3e2d846ffff551eac590c4a43d26e1349b5632e` |
| 16 | `theorem` | [zero_ne_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/zero-ne-bit0--d2d549cbf6bf3f0caaabbdf8.md) | 304 | `result-track:d2d549cbf6bf3f0caaabbdf8bca95839f016ef72a17ef4b391cbcaefabed5cc5` |
| 17 | `theorem` | [zero_ne_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/zero-ne-bit1--8c58a2bac3d49974e6555ae7.md) | 307 | `result-track:8c58a2bac3d49974e6555ae79ed3a96de0be4068d6515e495c7130b13f5d2ad5` |
| 18 | `theorem` | [one_ne_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/one-ne-bit0--e5e133c7a96abe69a9277700.md) | 311 | `result-track:e5e133c7a96abe69a9277700448d9f41615306ef2e1b1adb3f34ad63c40d6645` |
| 19 | `theorem` | [one_ne_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/one-ne-bit1--c0a9b50c8514938ad8e9e9e9.md) | 315 | `result-track:c0a9b50c8514938ad8e9e9e9a7c1f448347bdb1c99871bea1f40334327b1c939` |
| 20 | `theorem` | [one_lt_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/one-lt-bit1--b552c09ff03d7817ec3b7c2e.md) | 318 | `result-track:b552c09ff03d7817ec3b7c2ec9b7b5ab31539d1e803b7c7fd00ba61340d993c5` |
| 21 | `theorem` | [one_lt_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/one-lt-bit0--46929b74702c112a2e7b24bf.md) | 326 | `result-track:46929b74702c112a2e7b24bfdafb3445e74e5e96e8914739f5bba975e229f6bb` |
| 22 | `theorem` | [bit0_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit0-lt--955502327d984c2dc1610636.md) | 334 | `result-track:955502327d984c2dc161063676d37475641181e5c2e6899f3d2d7e4cd22f720d` |
| 23 | `theorem` | [bit1_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit1-lt--9602eb6ba8019b07148041c3.md) | 338 | `result-track:9602eb6ba8019b07148041c37826d45a9db0951d59cd91b8af6c2021f9a9d015` |
| 24 | `theorem` | [bit0_lt_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit0-lt-bit1--6fb26499b5ff4aef1460f81a.md) | 342 | `result-track:6fb26499b5ff4aef1460f81a62b25b58b246e9d10faf8555b0ae9060cbc7e3a6` |
| 25 | `theorem` | [bit1_lt_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/bit1-lt-bit0--bb7b9dbe4c8c06fb3c223734.md) | 346 | `result-track:bb7b9dbe4c8c06fb3c2237349ebafce0b7c42385736e828f9278bc05b5b0e41b` |
| 26 | `theorem` | [one_le_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/one-le-bit1--ebb81b4b143d2924110c4ab6.md) | 355 | `result-track:ebb81b4b143d2924110c4ab60bce8135074f4e529a8e43e39d89aad75895cecc` |
| 27 | `theorem` | [one_le_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/one-le-bit0--c97f9b5bbc6adf874f89d2b1.md) | 359 | `result-track:c97f9b5bbc6adf874f89d2b1c9883ee9d5af293d1993d6c03ab6f7c1abb29429` |
| 28 | `def` | [discriminate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/discriminate--04b12ff075bf4ac239e7318f.md) | 380 | `declaration-track:04b12ff075bf4ac239e7318fa698430c07db637db9c90b3fd282e21242d9252c` |
| 29 | `theorem` | [one_eq_succ_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/one-eq-succ-zero--a919703143b6d546727b4fda.md) | 386 | `result-track:a919703143b6d546727b4fda53bcd322d924dcdbac2918e6130190ca7a168c7f` |
| 30 | `theorem` | [le_sub_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/le-sub-iff-right--f2b9ca39f0428204df2589ae.md) | 424 | `result-track:f2b9ca39f0428204df2589ae6c9b71229baaea7ef55c41297350737d2ae65c7e` |
| 31 | `theorem` | [sub.right_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/sub-right-comm--cc477789999978d050b9b693.md) | 456 | `result-track:cc477789999978d050b9b6931059164ffaeba779f0a53bd7dae35e2cde443b36` |
| 32 | `def` | [twoStepInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/twostepinduction--820f9495bdbd3d7506ffb790.md) | 497 | `declaration-track:820f9495bdbd3d7506ffb790fa2ffd50d296ceae65bd929c97883c92db188f95` |
| 33 | `def` | [subInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/subinduction--86e85b477aa8ae2262e733bf.md) | 504 | `declaration-track:86e85b477aa8ae2262e733bfb22fa70fc444d289bde5889548d71d92625b2361` |
| 34 | `theorem` | [strong_induction_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/strong-induction-on--301d4145fa31f3f649e901ee.md) | 515 | `result-track:301d4145fa31f3f649e901eed51d8e3d6bae687650402296a3f81a89cba96b6d` |
| 35 | `theorem` | [case_strong_induction_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/case-strong-induction-on--f43cce3b2c885ef7a59f846b.md) | 520 | `result-track:f43cce3b2c885ef7a59f846b4f30fc4ebbbb1d3ec294dc5003fe139db16e1233` |
| 36 | `theorem` | [cond_decide_mod_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/cond-decide-mod-two--ce856691ec6f415b530e6fa8.md) | 566 | `result-track:ce856691ec6f415b530e6fa8f31c03b1c65c87f83d1af9c5aa02e29eda2e7c21` |
| 37 | `theorem` | [mul_div_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/mul-div-mul--dbfa68403f613def974309be.md) | 631 | `result-track:dbfa68403f613def974309bee341f67c230dae68387eac4435e0f5d49bdb9e1e` |
| 38 | `instance` | [decidableDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/decidabledvd--f3a510d4137c8ffdc0c5c3d6.md) | 670 | `declaration-track:f3a510d4137c8ffdc0c5c3d6a6fa7167a1ae77d89bfea3e4d1ec5fce1e20d357` |
| 39 | `def` | [iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/iterate--8fab75ef87660b896c936c23.md) | 687 | `declaration-track:8fab75ef87660b896c936c232031231475e568a80f224e34a33af6281bbf3173` |
| 40 | `def` | [lbp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/lbp--a8fae31aa552a35fd6fd427e.md) | 701 | `declaration-track:a8fae31aa552a35fd6fd427e1319b8776d8c60c0621004d3c2bc0836ce905969` |
| 41 | `def` | [wf_lbp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/wf-lbp--ff08d04358f92c9503108664.md) | 706 | `declaration-track:ff08d04358f92c95031086648f1382b8fd93a1734f7a238a1e31e5215b324b97` |
| 42 | `def` | [findX](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/findx--784c28b2e7bd51b323fc12a4.md) | 720 | `declaration-track:784c28b2e7bd51b323fc12a475d8db2a40feb0a9799202306992760b330f532d` |
| 43 | `def` | [find](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/find--7c7c296406a57beb60bcd82f.md) | 742 | `declaration-track:7c7c296406a57beb60bcd82fa1317db8965549b4acaac23c05a8cb7c1c93e9e2` |
| 44 | `theorem` | [find_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/find-spec--bfdfc49437d663c4db5db4fd.md) | 746 | `result-track:bfdfc49437d663c4db5db4fd0e0cf0bc70f23cb7e222fa510f289129db94dc82` |
| 45 | `theorem` | [find_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/find-min--08b4205ff24763686d0a8cba.md) | 750 | `result-track:08b4205ff24763686d0a8cba006b29b6f0f0a2dbaf65146f6a35f448d5e59cde` |
| 46 | `theorem` | [find_min'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/find-min--555a532df72d2f194058137d.md) | 754 | `result-track:555a532df72d2f194058137dc84ce2c2a184841dffd0b611afa909636f3fc1be` |
| 47 | `lemma` | [to_digits_core_lens_eq_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/to-digits-core-lens-eq-aux--0df17270cc115c986e7dc9b9.md) | 758 | `result-track:0df17270cc115c986e7dc9b9fbf0a7cb6e80a6fadc5e3fe82b67887c675341d0` |
| 48 | `lemma` | [to_digits_core_lens_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/to-digits-core-lens-eq--12b5d3b16d3005f2e43e28d1.md) | 772 | `result-track:12b5d3b16d3005f2e43e28d1536cf5febcd3353516b6810d7b8d2f4e59c6f949` |
| 49 | `lemma` | [nat_repr_len_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/nat-repr-len-aux--2e498467a2fc996c0b1dffe9.md) | 788 | `result-track:2e498467a2fc996c0b1dffe9a9427b9946affb9e6c4fb9f5b13840257fb381bd` |
| 50 | `lemma` | [to_digits_core_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/to-digits-core-length--aafddd0668dba16970024814.md) | 795 | `result-track:aafddd0668dba169700248146eba3f299b0f69385dd615fe6f704e0daabe99ce` |
| 51 | `lemma` | [repr_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/declarations/repr-length--69f1442eac40a3c7b151ba8e.md) | 823 | `result-track:69f1442eac40a3c7b151ba8e89bd073e1213e0ae5fbccdfdce162e566ee588c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
