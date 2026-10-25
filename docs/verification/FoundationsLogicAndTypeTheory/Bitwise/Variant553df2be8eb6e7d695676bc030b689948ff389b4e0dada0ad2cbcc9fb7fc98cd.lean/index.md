# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Bitwise.Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4883bdbf3c6ad75ad0bc3373a00b481e3ecdac3e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4883bdbf3c6ad75ad0bc3373a00b481e3ecdac3e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bit_false](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/bit-false--daf6223bca49df4a1706e1b9.md) | 48 | `result-track:daf6223bca49df4a1706e1b9ae8a25bbe6a7fc56d8f8651d921631f067d3c0fa` |
| 2 | `theorem` | [bit_true](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/bit-true--f342d50b8493d2fd6ff9bb04.md) | 53 | `result-track:f342d50b8493d2fd6ff9bb0417fa1ac9dd47be7cd65c56641f306def70da8b18` |
| 3 | `theorem` | [bit_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/bit-eq-zero--c52e896015751833939a25b9.md) | 58 | `result-track:c52e896015751833939a25b9bf8077634a796815ea0a1ca78a28fd026c90aa29` |
| 4 | `theorem` | [zero_of_testBit_eq_false](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/zero-of-testbit-eq-false--02c3f44e201881d6833801bc.md) | 62 | `result-track:02c3f44e201881d6833801bc69a358482cd05b8ad6f639ebaec680b79d074fdd` |
| 5 | `theorem` | [zero_testBit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/zero-testbit--a4487678c3a9c25f9143a104.md) | 70 | `result-track:a4487678c3a9c25f9143a1043b9d0be6fb3f7c32e9fb798e859635d7f2b26830` |
| 6 | `theorem` | [testBit_eq_inth](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/testbit-eq-inth--2a8b1bf7192559c20bc0122e.md) | 75 | `result-track:2a8b1bf7192559c20bc0122ee864e9d301eb416f31f1921f3a6ebd889c4d3fbd` |
| 7 | `theorem` | [eq_of_testBit_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/eq-of-testbit-eq--3ddff58466a4033471fcfd88.md) | 84 | `result-track:3ddff58466a4033471fcfd88fcc079c906f5b0d82d243e9f1a39b0bb80f88730` |
| 8 | `theorem` | [exists_most_significant_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/exists-most-significant-bit--f83847a86ad55b65e83949e6.md) | 96 | `result-track:f83847a86ad55b65e83949e678dd8df346003126f6692307470e22b40d727fde` |
| 9 | `theorem` | [lt_of_testBit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lt-of-testbit--1562e37abab22c4ea6d0d6ed.md) | 114 | `result-track:1562e37abab22c4ea6d0d6ed74b4a681a882db1c6ffb5ca66a97d7c6162ec4c0` |
| 10 | `theorem` | [testBit_two_pow_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/testbit-two-pow-self--88c9d1422031125157418bf2.md) | 140 | `result-track:88c9d1422031125157418bf2d3449d918234e19fcae3d4ae8c45d16c695b5e43` |
| 11 | `theorem` | [testBit_two_pow_of_ne](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/testbit-two-pow-of-ne--e601af90b72dd85a7b06f1ad.md) | 144 | `result-track:e601af90b72dd85a7b06f1ad0604ae093d685e1e6c395dd815ceb73b92f4e81e` |
| 12 | `theorem` | [testBit_two_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/testbit-two-pow--f52cb35f46f896fc565f64f6.md) | 156 | `result-track:f52cb35f46f896fc565f64f69d386857ac2f58cbf491eb4b4582f4b77cbacb4d` |
| 13 | `theorem` | [bitwise'_comm](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/bitwise-comm--e714ae4908f84f241b1a2422.md) | 166 | `result-track:e714ae4908f84f241b1a24220929b1af9c97a687beb7db7281d0b388668f40ed` |
| 14 | `theorem` | [lor'_comm](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lor-comm--7b323781bdc2ef2e6105936b.md) | 174 | `result-track:7b323781bdc2ef2e6105936b854fd0c726aa7fb6c206325293e2975e00574bf5` |
| 15 | `theorem` | [land'_comm](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/land-comm--e298495e5e53402109ebbc41.md) | 178 | `result-track:e298495e5e53402109ebbc41ec71aff8b87a7521615bf5f7e141a75c578ebcdc` |
| 16 | `theorem` | [lxor'_comm](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-comm--b0a9b9d4943f03f699e418c9.md) | 182 | `result-track:b0a9b9d4943f03f699e418c9a2eceffc49070dbd057bc39124ab3efa766a18cf` |
| 17 | `theorem` | [zero_lxor'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/zero-lxor--c5cc355c9ed68e93df0b643b.md) | 187 | `result-track:c5cc355c9ed68e93df0b643b0cbc0428102aeab50cafe92c9ab32bae88b1123b` |
| 18 | `theorem` | [lxor'_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-zero--6e15b8265a3ceb52b2c2cec9.md) | 192 | `result-track:6e15b8265a3ceb52b2c2cec9c781fd058be2fe89017e8fc5929b3d1a3b3f2e67` |
| 19 | `theorem` | [zero_land'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/zero-land--2a7c616bd32269e4c94063bf.md) | 196 | `result-track:2a7c616bd32269e4c94063bf03d106de9d86cce4a2a5fd7436ce8e6c9da3c1b8` |
| 20 | `theorem` | [land'_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/land-zero--741a3dc2b0fdc2f0fa3e2f73.md) | 201 | `result-track:741a3dc2b0fdc2f0fa3e2f737a2503ab929bf80edb809aff4677462827da152a` |
| 21 | `theorem` | [zero_lor'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/zero-lor--f347d6526ca6aede2921ca6e.md) | 205 | `result-track:f347d6526ca6aede2921ca6ef6166fed2adffe1e0d4728db45153b86b24a8e54` |
| 22 | `theorem` | [lor'_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lor-zero--78dc0ac208f2fe523ce62b49.md) | 210 | `result-track:78dc0ac208f2fe523ce62b4912d19c45a242a64560b31ee79b922182bef538d0` |
| 23 | `macro` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/macro--49ea5f61ba24abebd08f2da0.md) | 216 | `declaration-track:49ea5f61ba24abebd08f2da02373fdc92de54fc7dbdfc8d7178bf1d4c2049a02` |
| 24 | `theorem` | [lxor'_assoc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-assoc--3435581ff50418b41afc8c88.md) | 226 | `result-track:3435581ff50418b41afc8c88273be2a5297bba999d39a8410edb125fdee1f316` |
| 25 | `theorem` | [land'_assoc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/land-assoc--79b5076ecb229576f3b23198.md) | 229 | `result-track:79b5076ecb229576f3b23198950fbc3395915d7f92fe12afbda3bbe31b6ca2f3` |
| 26 | `theorem` | [lor'_assoc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lor-assoc--ded0907f44a75e8a000ef705.md) | 232 | `result-track:ded0907f44a75e8a000ef7051bb974390ba1f7b995cdbcb42ab7e148572ede35` |
| 27 | `theorem` | [lxor'_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-self--9ea0138bde9d8d29ad14e6ab.md) | 236 | `result-track:9ea0138bde9d8d29ad14e6abd0ce854ab6c366d8a6be8fca8254a9cedbbcecfa` |
| 28 | `theorem` | [lxor_cancel_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-cancel-right--81884e74f7b6ad2384f4668d.md) | 241 | `result-track:81884e74f7b6ad2384f4668d97c7e224b38361e40557b5055c243b2bdf03966e` |
| 29 | `theorem` | [lxor'_cancel_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-cancel-left--854452e7ec160c42c0197cbf.md) | 245 | `result-track:854452e7ec160c42c0197cbf96979fbc453ae3ce783a698c96ea58b1daf46469` |
| 30 | `theorem` | [lxor'_right_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-right-injective--eb38d593a06b50dad31cd1fb.md) | 249 | `result-track:eb38d593a06b50dad31cd1fbda5f32f4c0bc6eb26cfad37c81f16a3aa1c65521` |
| 31 | `theorem` | [lxor'_left_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-left-injective--249459c272b944ea18ca29b2.md) | 253 | `result-track:249459c272b944ea18ca29b227dba56214de5f9bc5b352da73a262e9e1d1efb0` |
| 32 | `theorem` | [lxor'_right_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-right-inj--e3beb38af61439f0420d57ea.md) | 259 | `result-track:e3beb38af61439f0420d57eaaefb2945d01ac904a89bc423c3af48c7b79a26b1` |
| 33 | `theorem` | [lxor'_left_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-left-inj--df60559aa9cc23ad703aeab8.md) | 264 | `result-track:df60559aa9cc23ad703aeab8efb2f582ae29bcd1807638dc58e16ea814cf7614` |
| 34 | `theorem` | [lxor'_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-eq-zero--7b9c7a8d7ee500d20bda951e.md) | 269 | `result-track:7b9c7a8d7ee500d20bda951e9c38c02765349a71e041c86a8dde9876e6c25d04` |
| 35 | `theorem` | [lxor'_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-ne-zero--b9f454293d62534d72cef293.md) | 273 | `result-track:b9f454293d62534d72cef293ca441eb6b684118363634ab11f2abec08cc9c478` |
| 36 | `theorem` | [lxor'_trichotomy](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lxor-trichotomy--55fd6642fa6ca485a917cfed.md) | 277 | `result-track:55fd6642fa6ca485a917cfed4133a6fdf74d61a927121ab37ec723330fe727e3` |
| 37 | `theorem` | [lt_lxor'_cases](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/declarations/lt-lxor-cases--4ea26047cc4f053595f18f90.md) | 317 | `result-track:4ea26047cc4f053595f18f903bf577f2ed9c505755e35900e5e3155ee15b409a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
