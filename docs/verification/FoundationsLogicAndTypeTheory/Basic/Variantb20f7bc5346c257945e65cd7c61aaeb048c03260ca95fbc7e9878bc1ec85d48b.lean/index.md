# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9a76270917cdc41ac89c955046861da523608a8",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9a76270917cdc41ac89c955046861da523608a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose--1d4495c91d42145e2fb90313.md) | 46 | `declaration-track:1d4495c91d42145e2fb903130c0a2485634a9e3e5cdd2c45d4a0da58637bdd6c` |
| 2 | `theorem` | [choose_zero_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-zero-right--5850cde1088d8881c90e4488.md) | 53 | `result-track:5850cde1088d8881c90e44883e1e8bae401ff3bfff3d19e202e534bf05381959` |
| 3 | `theorem` | [choose_zero_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-zero-succ--c955077973e08c05499d0c0d.md) | 57 | `result-track:c955077973e08c05499d0c0dbcb7b6d532d48a4110648dc08bf5e45f6ad1b7b3` |
| 4 | `theorem` | [choose_succ_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-succ-succ--6d57272ce2aa7c3a418b8a42.md) | 61 | `result-track:6d57272ce2aa7c3a418b8a42722cf668c038528cb64b8743f591f995da89028c` |
| 5 | `theorem` | [choose_succ_succ'](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-succ-succ--fc7e25aa0422711d2936e2c0.md) | 65 | `result-track:fc7e25aa0422711d2936e2c0383462638a0ef28d56bb418c5b418072b57a5fde` |
| 6 | `theorem` | [choose_eq_zero_of_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-eq-zero-of-lt--cb59e0c1247b5b7cb8e8054e.md) | 68 | `result-track:cb59e0c1247b5b7cb8e8054e7fbe501a1db2dc98e32319ce183da5f5a31e78f6` |
| 7 | `theorem` | [choose_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-self--1252a46e78db7285c505ba12.md) | 78 | `result-track:1252a46e78db7285c505ba123481be0032c624df511fae8d99f8d442f1508445` |
| 8 | `theorem` | [choose_succ_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-succ-self--8483eb356195f68f7be982ca.md) | 83 | `result-track:8483eb356195f68f7be982ca6d58a33e9ccaa6b43bc6cf43da07f5a953938d60` |
| 9 | `theorem` | [choose_one_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-one-right--f27e10004c57fad1dc370f68.md) | 88 | `result-track:f27e10004c57fad1dc370f68f07257d25020d1bfb986348bf22a51ff6679d113` |
| 10 | `theorem` | [triangle_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/triangle-succ--08d80359d24c2c4db6e2ae7b.md) | 92 | `result-track:08d80359d24c2c4db6e2ae7b99f35798c7eab81568c2a40451aac94e8cdbb737` |
| 11 | `theorem` | [choose_two_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-two-right--8930d2e9ea32ecb24037516f.md) | 98 | `result-track:8930d2e9ea32ecb24037516f845ed83087f52eeec35f0a92722e352f2f9fa40e` |
| 12 | `theorem` | [choose_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-pos--1599cef9b3f606ec2ae85273.md) | 105 | `result-track:1599cef9b3f606ec2ae852735c835c4bf9b48b47ab48a772ee89e00ae22996b0` |
| 13 | `theorem` | [choose_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-eq-zero-iff--046344b00ec8b5e63b4de176.md) | 113 | `result-track:046344b00ec8b5e63b4de176231e7219133b60f7e42b6ff1738477bd0c61fce4` |
| 14 | `theorem` | [succ_mul_choose_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/succ-mul-choose-eq--2d5d465f23d87a1a4073c93e.md) | 117 | `result-track:2d5d465f23d87a1a4073c93e486e646fc7199ffb3584ab6f72da96f3a9bd6f3f` |
| 15 | `theorem` | [choose_mul_factorial_mul_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-mul-factorial-mul-factorial--a663d1c49817396d0aecd71e.md) | 126 | `result-track:a663d1c49817396d0aecd71e2f081b80f3b7cc45218884239c18b0ce6b190c87` |
| 16 | `theorem` | [choose_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-mul--05b62e494cffd4d24e240887.md) | 146 | `result-track:05b62e494cffd4d24e2408872391c7b6ff345b73178c47b104587303b954972f` |
| 17 | `theorem` | [choose_eq_factorial_div_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-eq-factorial-div-factorial--cd6dc2607d3b14392696cf28.md) | 165 | `result-track:cd6dc2607d3b14392696cf28400b2fd9777af528544f8a6f3296d42b3bbaa3e0` |
| 18 | `theorem` | [add_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/add-choose--5389c266adcd7b5a2eb5d76f.md) | 171 | `result-track:5389c266adcd7b5a2eb5d76f9545522d9748af9368fd9c6d1af6b75795dcdd78` |
| 19 | `theorem` | [add_choose_mul_factorial_mul_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/add-choose-mul-factorial-mul-factorial--91c7ccb43786c797220f83a6.md) | 175 | `result-track:91c7ccb43786c797220f83a6cb502b2feab67ed4059beca408011440b8aad488` |
| 20 | `theorem` | [factorial_mul_factorial_dvd_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/factorial-mul-factorial-dvd-factorial--f1c53331c95dc0666698d350.md) | 181 | `result-track:f1c53331c95dc0666698d3509668e70637ada30703658627f20c3f8170c910d7` |
| 21 | `theorem` | [factorial_mul_factorial_dvd_factorial_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/factorial-mul-factorial-dvd-factorial-add--00b3b520c74480edf5baa180.md) | 185 | `result-track:00b3b520c74480edf5baa180fef1e96200467355b3968fd9dfc8a24b2592f66e` |
| 22 | `theorem` | [choose_symm](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-symm--e75ea424043ae8db85b84286.md) | 192 | `result-track:e75ea424043ae8db85b84286f0060a7e672942b76733c511e951671dc9b85347` |
| 23 | `theorem` | [choose_symm_of_eq_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-symm-of-eq-add--39d1ca927254e385a05fecdb.md) | 197 | `result-track:39d1ca927254e385a05fecdb0e28a4a13ddfe1db81afb025963f8629a0c25e17` |
| 24 | `theorem` | [choose_symm_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-symm-add--0082e45835c802cc76af3fd1.md) | 203 | `result-track:0082e45835c802cc76af3fd18896e8ca0df269b224a10087d19a4145321def12` |
| 25 | `theorem` | [choose_symm_half](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-symm-half--afc6a94053ee334d6cf8d2cd.md) | 207 | `result-track:afc6a94053ee334d6cf8d2cd26ac262d702a3caeac2dc8bec56a20ea5f9d9ea6` |
| 26 | `theorem` | [choose_succ_right_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-succ-right-eq--85b093843235377951d761d4.md) | 212 | `result-track:85b093843235377951d761d418e9fdb5b102806a223a02bb2851a8107d1dd0cd` |
| 27 | `theorem` | [choose_succ_self_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-succ-self-right--1fb0d7c7dc8bf0221e939fb6.md) | 219 | `result-track:1fb0d7c7dc8bf0221e939fb6fc4cef7736755a7cfc81439040529e48f383a5c1` |
| 28 | `theorem` | [choose_mul_succ_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-mul-succ-eq--bf4561b065662e8ef43cf786.md) | 224 | `result-track:bf4561b065662e8ef43cf78607775552c84aab2df74d751f59f187277d068355` |
| 29 | `theorem` | [ascFactorial_eq_factorial_mul_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/ascfactorial-eq-factorial-mul-choose--6c517d9b4fd80b4fd43ab988.md) | 235 | `result-track:6c517d9b4fd80b4fd43ab98815ab830fd220f85e3263cf138c06e126093d9135` |
| 30 | `theorem` | [factorial_dvd_ascFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/factorial-dvd-ascfactorial--2604080af8407642e3cfeba6.md) | 244 | `result-track:2604080af8407642e3cfeba6f2948e981cca089be3e38b59234e41b3691bac26` |
| 31 | `theorem` | [choose_eq_asc_factorial_div_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-eq-asc-factorial-div-factorial--ce60aecba999c52f1cdbeaf7.md) | 248 | `result-track:ce60aecba999c52f1cdbeaf75a08d1ba0fba976ed7b1ce4e7e8e3fd82ec18c87` |
| 32 | `theorem` | [descFactorial_eq_factorial_mul_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/descfactorial-eq-factorial-mul-choose--8b14cec1a850b13a687472d7.md) | 255 | `result-track:8b14cec1a850b13a687472d7aa4e52760320d93c5da53764474b987a40ecbd01` |
| 33 | `theorem` | [factorial_dvd_descFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/factorial-dvd-descfactorial--19e89e1754a8498fb0998a22.md) | 263 | `result-track:19e89e1754a8498fb0998a224b380e39f6562542a24e5ca4b733a4dfdc64d1b9` |
| 34 | `theorem` | [choose_eq_descFactorial_div_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-eq-descfactorial-div-factorial--79dbe8d20aaf99077bf15431.md) | 267 | `result-track:79dbe8d20aaf99077bf15431b0ba49fc44f89140bd2c413555df220b1eca0115` |
| 35 | `def` | [fast_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/fast-choose--3371aa1539d929cda7928c3a.md) | 275 | `declaration-track:3371aa1539d929cda7928c3a7a95ba6212d809ffb0370906acb52f8e440c9d0c` |
| 36 | `lemma` | [choose_eq_fast_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-eq-fast-choose--1e125f4d71807ca31da32ccf.md) | 277 | `result-track:1e125f4d71807ca31da32ccf566d19d23cedd9539726d7600a2928dd18efa987` |
| 37 | `theorem` | [choose_le_succ_of_lt_half_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-le-succ-of-lt-half-left--25fc1a34acd9360d3be6df93.md) | 285 | `result-track:25fc1a34acd9360d3be6df937af84f1ffb7da8aa30f1ebf119a0cf2711ee398a` |
| 38 | `theorem` | [choose_le_middle_of_le_half_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-le-middle-of-le-half-left--fff0770b11a7f7bf8b67b059.md) | 295 | `result-track:fff0770b11a7f7bf8b67b059a13232126dc0ae5cd124b8515c3716f1fa8ec671` |
| 39 | `theorem` | [choose_le_middle](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-le-middle--4d5eed44123e117a95212ef3.md) | 304 | `result-track:4d5eed44123e117a95212ef3cdbc0b01e1ee2f0fcd8cdce39aef3f2364247417` |
| 40 | `theorem` | [choose_le_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-le-succ--4f8f76695729dcec85182449.md) | 321 | `result-track:4f8f76695729dcec85182449af9e3aa58074d4f6f546c6aefcd3436155b57a64` |
| 41 | `theorem` | [choose_le_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-le-add--6d46eb49e2b2425402acb501.md) | 325 | `result-track:6d46eb49e2b2425402acb501aba61c8f173e4024d57479efafc03496156ce165` |
| 42 | `theorem` | [choose_le_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-le-choose--9c9dc4b93a234fff92844658.md) | 331 | `result-track:9c9dc4b93a234fff92844658304545b0a3f504aeb36495361c3e096474464ddc` |
| 43 | `theorem` | [choose_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/choose-mono--58282f579803529839649a6b.md) | 335 | `result-track:58282f579803529839649a6b5d4b174c5ab40ee32d203cec27bed67ad6854e74` |
| 44 | `def` | [multichoose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/multichoose--28c568b5d38779b0426f6bcd.md) | 360 | `declaration-track:28c568b5d38779b0426f6bcdddb5674c97e5018b14a45237d06c8b197a454e55` |
| 45 | `theorem` | [multichoose_zero_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/multichoose-zero-right--37d2e9df76f7bd53dbde7fc0.md) | 369 | `result-track:37d2e9df76f7bd53dbde7fc027e6587beb21045e95205eac0f2411240b1b5cb0` |
| 46 | `theorem` | [multichoose_zero_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/multichoose-zero-succ--83b5ec4d64fb2e2ebe01e237.md) | 373 | `result-track:83b5ec4d64fb2e2ebe01e23709130cb87a2aa150748fa7b4f6473b20a2fcfc0a` |
| 47 | `theorem` | [multichoose_succ_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/multichoose-succ-succ--5d252279c529fd7a5453726b.md) | 376 | `result-track:5d252279c529fd7a5453726ba1729d98a005273d4773248e23202c6db0dc2c1c` |
| 48 | `theorem` | [multichoose_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/multichoose-one--b68ad1f3f29e0a7be901d7ec.md) | 382 | `result-track:b68ad1f3f29e0a7be901d7ec9c7ee7699a92c0f28deb8d692ae6617858401af6` |
| 49 | `theorem` | [multichoose_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/multichoose-two--b49f0f6281066419c7df902f.md) | 388 | `result-track:b49f0f6281066419c7df902fc64407c2341540cd6a932907b041b5676d1490ac` |
| 50 | `theorem` | [multichoose_one_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/multichoose-one-right--a64c36e0a8c67847dfd1c2c7.md) | 395 | `result-track:a64c36e0a8c67847dfd1c2c7d658d741e6b53033dbeea94387631fa3cbc82129` |
| 51 | `theorem` | [multichoose_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/declarations/multichoose-eq--6f568f9ce0734b416aa4bf96.md) | 400 | `result-track:6f568f9ce0734b416aa4bf966a31921682081c0f917188980ecf96844e294ba1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
