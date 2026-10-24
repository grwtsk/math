# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bitwise.Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a86c953f4dbc19270c3527ee9e15033e7330734",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a86c953f4dbc19270c3527ee9e15033e7330734`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Even` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.GetD` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bits` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [bitwise_zero_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bitwise-zero-left--560f1a2cd4b1c1c37650f014.md) | 48 | `result-track:560f1a2cd4b1c1c37650f01498ef0b656cc30d2325a39adb80b9825fc56efb6b` |
| 2 | `lemma` | [bitwise_zero_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bitwise-zero-right--9efe1b309b0702f771a90ea3.md) | 52 | `result-track:9efe1b309b0702f771a90ea3e8e2bc9df8c76f10be5ce38249c61c8254d08668` |
| 3 | `lemma` | [bitwise_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bitwise-zero--a7c479ba57dba5da19afc08b.md) | 58 | `result-track:a7c479ba57dba5da19afc08b13dcd500ed3246ddb94347ac8567046bc5d80a36` |
| 4 | `lemma` | [bitwise_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bitwise-of-ne-zero--b28f89a5bbdaf1a61914969a.md) | 61 | `result-track:b28f89a5bbdaf1a61914969a7648126581acd4e07225e0cdcc81d5d01b19e8f4` |
| 5 | `theorem` | [binaryRec_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/binaryrec-of-ne-zero--d3c7514e2a81b3af41654b57.md) | 68 | `result-track:d3c7514e2a81b3af41654b5780e256f04d23b30bfe9ace261d06e6e411623223` |
| 6 | `lemma` | [bitwise_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bitwise-bit--9dbab823ee58f4c47febee4a.md) | 79 | `result-track:9dbab823ee58f4c47febee4ad1d13f927a82c12ecfd4f10602548607045b5df1` |
| 7 | `lemma` | [bit_mod_two_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bit-mod-two-eq-zero-iff--529f3dd11b8432fd5e5a490d.md) | 87 | `result-track:529f3dd11b8432fd5e5a490d2fb5433b10d88c6e71a41591751b9971929cd7b6` |
| 8 | `lemma` | [bit_mod_two_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bit-mod-two-eq-one-iff--dc65226af108fac05cced4aa.md) | 91 | `result-track:dc65226af108fac05cced4aad75e034f19d779fa76207a3cfcaf322988b4767d` |
| 9 | `theorem` | [lor_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/lor-bit--e1927692de388a44bbcfdc29.md) | 96 | `result-track:e1927692de388a44bbcfdc290259fb681af6d01df1b595b4f7e3fb3ae0e4fbd1` |
| 10 | `theorem` | [land_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/land-bit--747d0a69c8f75fd1400758bf.md) | 100 | `result-track:747d0a69c8f75fd1400758bf07457cc4207ec8a599f7d4f70abda07807b42fe6` |
| 11 | `theorem` | [ldiff_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/ldiff-bit--c73444e4d6e2e69cdd49dd1a.md) | 104 | `result-track:c73444e4d6e2e69cdd49dd1a7a303ed81ea52c1dbd426223d4479045d07dccb1` |
| 12 | `theorem` | [xor_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-bit--8b9a7332863477ce74ebb935.md) | 108 | `result-track:8b9a7332863477ce74ebb935922be47cb7fb360491eecef7dc7b491c90157f8b` |
| 13 | `theorem` | [testBit_lor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/testbit-lor--0ec43de2fb2e69b59ffe3362.md) | 113 | `result-track:0ec43de2fb2e69b59ffe3362d4b6c75db37fc2bec5f089366db2bb1dd72100cf` |
| 14 | `theorem` | [testBit_land](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/testbit-land--ac65e585cd6b47da976a81bf.md) | 116 | `result-track:ac65e585cd6b47da976a81bf6be555c61132aa35b914d447cb409144e20560ed` |
| 15 | `theorem` | [testBit_ldiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/testbit-ldiff--8d8f7453b4606819b374b883.md) | 120 | `result-track:8d8f7453b4606819b374b883065e9778e7e517324fe996e77885f9c86087b202` |
| 16 | `theorem` | [bit_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bit-false--b850bcf44410ce61fd775c1b.md) | 128 | `result-track:b850bcf44410ce61fd775c1bf47f535fabd5ccfd1fe16c020237b1c1485439c4` |
| 17 | `theorem` | [bit_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bit-true--70f7463a157794fdb37a9196.md) | 132 | `result-track:70f7463a157794fdb37a9196d140f30dcd07a3cfdcdb9c21525900f7df170c12` |
| 18 | `theorem` | [bit_ne_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bit-ne-zero-iff--bf8eb71eea822710ce9bff9c.md) | 135 | `result-track:bf8eb71eea822710ce9bff9c9dc4ba5801e5d952b63312e2c249e465c3cee666` |
| 19 | `lemma` | [bitwise_bit'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bitwise-bit--10fa766681e7e5c4b3da06c8.md) | 141 | `result-track:10fa766681e7e5c4b3da06c8b832c383e082216a3d5ec6afec8f9a90c648e441` |
| 20 | `lemma` | [bitwise_eq_binaryRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bitwise-eq-binaryrec--e17187c651b7f86a9e511110.md) | 150 | `result-track:e17187c651b7f86a9e5111104e628693b37ddf000e045307821d7dfdbaffa196` |
| 21 | `theorem` | [zero_of_testBit_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/zero-of-testbit-eq-false--1bf21eb83c681a2dd11eff68.md) | 167 | `result-track:1bf21eb83c681a2dd11eff68276b303a0114bfa09b6b32dca62567d82d879fb5` |
| 22 | `theorem` | [testBit_eq_false_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/testbit-eq-false-of-lt--e7c336f8886996119eae01b1.md) | 172 | `result-track:e7c336f8886996119eae01b1406dd73251e8d2e1d97ac63cee3981f43de6cd6b` |
| 23 | `theorem` | [testBit_eq_inth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/testbit-eq-inth--787f3a39843457bfe436b3c1.md) | 176 | `result-track:787f3a39843457bfe436b3c1fecc92f2adbe371e00723a2e400448cd0a9bf636` |
| 24 | `theorem` | [exists_most_significant_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/exists-most-significant-bit--b5d2d26bfc0cbfdf694cc568.md) | 187 | `result-track:b5d2d26bfc0cbfdf694cc56812158602d6ae6d62a7662d679f6859c5bb328fc7` |
| 25 | `theorem` | [lt_of_testBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/lt-of-testbit--5ce12f0af7c3791223611b5a.md) | 203 | `result-track:5ce12f0af7c3791223611b5ab741d53593d2b1b3fbb861e2cfc1625ec1b5c4a3` |
| 26 | `theorem` | [bitwise_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bitwise-swap--6fb139fd985200c4c285a313.md) | 236 | `result-track:6fb139fd985200c4c285a313d5a5bf6354505435fee5989fc7bb8ef8ef9cdbac` |
| 27 | `theorem` | [bitwise_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bitwise-comm--6d594912fc65c35af678d8d6.md) | 249 | `result-track:6d594912fc65c35af678d8d69114e3e957c4902ddcaf74a361e7be314512af74` |
| 28 | `theorem` | [lor_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/lor-comm--b108320f6fb5a1abb253932f.md) | 256 | `result-track:b108320f6fb5a1abb253932f0ab2d1a8ac74cac3b3771b55eb54d8103264b8f3` |
| 29 | `theorem` | [land_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/land-comm--93c390072a9bb6f604fe0d20.md) | 259 | `result-track:93c390072a9bb6f604fe0d203ecdbf9b6ff38503ee65daf1e9a01159121b9d75` |
| 30 | `lemma` | [and_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/and-two-pow--657afff578a573ed10e7d8b2.md) | 262 | `result-track:657afff578a573ed10e7d8b22161fb9826c8eff9577e229f09ce3fb61ea17343` |
| 31 | `lemma` | [two_pow_and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/two-pow-and--534af89c42b8d15fd563a5d8.md) | 270 | `result-track:534af89c42b8d15fd563a5d858f9ee63354d9879ab61a029c440d7f801347c50` |
| 32 | `macro` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/macro--c7b8b4ee27877c8a8711fda4.md) | 275 | `declaration-track:c7b8b4ee27877c8a8711fda4ac0a463abf762591b6a3a86bc047aa58641a3395` |
| 33 | `theorem` | [land_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/land-assoc--ad3396f48e041132ef536c33.md) | 281 | `result-track:ad3396f48e041132ef536c3311905c9193f10f1c79427281b08e7b6ef1b0c6a0` |
| 34 | `theorem` | [lor_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/lor-assoc--2361832ee1df7599283dfd8e.md) | 283 | `result-track:2361832ee1df7599283dfd8e2e3189c297df338c78a2fb91d291b79babcefe6b` |
| 35 | `theorem` | [xor_cancel_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-cancel-right--8265a6f9413a2cecb5682a32.md) | 286 | `result-track:8265a6f9413a2cecb5682a321b2a5faa8d49b640191e7202a1c7cf02c39f9936` |
| 36 | `theorem` | [xor_cancel_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-cancel-left--90b305e51a6bc10957078847.md) | 289 | `result-track:90b305e51a6bc10957078847f38e71bba72573d1f0ab880a0e54d9fd4af53d61` |
| 37 | `theorem` | [xor_right_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-right-injective--fb4b8d184cabdbea92f3f61d.md) | 292 | `result-track:fb4b8d184cabdbea92f3f61de01e83297276031dc3aa7ca830272d50666a7bbb` |
| 38 | `theorem` | [xor_left_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-left-injective--218ca1ac32415adcd09848be.md) | 295 | `result-track:218ca1ac32415adcd09848bee3175f693f27ccb79cc05a3c0c5eaf005c60f4ae` |
| 39 | `theorem` | [xor_right_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-right-inj--8edcd41484915373b8ad04ed.md) | 300 | `result-track:8edcd41484915373b8ad04edc2300aa53616a426eba9d72b3bce82fe24d5df87` |
| 40 | `theorem` | [xor_left_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-left-inj--ff6b6f08366a1c782e28ab2b.md) | 304 | `result-track:ff6b6f08366a1c782e28ab2bfa2a31f37fcf9856cc0a19dbfbf80cfeedd37e59` |
| 41 | `theorem` | [xor_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-eq-zero--c71de1d9a7d6e77740999a4e.md) | 308 | `result-track:c71de1d9a7d6e77740999a4e7b56c3f27efee0be21e93d604d5dbcddf2c02bc4` |
| 42 | `theorem` | [xor_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-ne-zero--f3228dab14e68047e693950d.md) | 311 | `result-track:f3228dab14e68047e693950daa37394f2b28cab8d2f173a894c361d96b238c8e` |
| 43 | `theorem` | [xor_trichotomy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-trichotomy--01cfa1685545d59af2af6412.md) | 314 | `result-track:01cfa1685545d59af2af6412b0f957410cef01ccdfe763ca67738e9356e36427` |
| 44 | `theorem` | [lt_xor_cases](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/lt-xor-cases--12c20b8b5ca98473c63af6a1.md) | 344 | `result-track:12c20b8b5ca98473c63af6a1daffbf4b86de1cebeb46cdcbe17c48a3d20508df` |
| 45 | `theorem` | [xor_mod_two_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/xor-mod-two-eq--c10bed1181d02c8950622874.md) | 349 | `result-track:c10bed1181d02c895062287410b01db70ceacd738574b917c699be243ba95df8` |
| 46 | `theorem` | [even_xor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/even-xor--43a964e614cb2c2a79df1d67.md) | 359 | `result-track:43a964e614cb2c2a79df1d673df26f53801b7c7fb9ea677602c1ed85aac0f9ee` |
| 47 | `theorem` | [bit_lt_two_pow_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/bit-lt-two-pow-succ-iff--806a9abcb5956a1ae5d6102d.md) | 363 | `result-track:806a9abcb5956a1ae5d6102d1678b28da3043c6172efd8e5caabd8b6dc317331` |
| 48 | `lemma` | [shiftLeft_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/shiftleft-lt--8f7f2126318a513f19108d99.md) | 369 | `result-track:8f7f2126318a513f19108d995974bbf8f2e09d2aa21e342d9ab2a1e43b8020ed` |
| 49 | `lemma` | [append_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean/declarations/append-lt--3dbc8f87a5b478e03c142a39.md) | 373 | `result-track:3dbc8f87a5b478e03c142a39743870d7b357c3e06f5b78de369410794ed08795` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
