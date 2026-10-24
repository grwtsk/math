# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bitwise.Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8cfa3dfcbf276ddf03efa3d4cca96631acafe1f",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8cfa3dfcbf276ddf03efa3d4cca96631acafe1f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Bool` — import line 18; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [one_div_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/one-div-two--40e1b9217dbb51287cce0ef2.md) | 28 | `result-track:40e1b9217dbb51287cce0ef2025ea1cd82c966e46e940993cdb71d4a32b9f7b7` |
| 2 | `theorem` | [two_pow_succ_sub_one_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/two-pow-succ-sub-one-div--712db5774e48b0d18338685f.md) | 30 | `result-track:712db5774e48b0d18338685ff7026c8a49eb4c6565c4c3ba6f7442ccd88ede57` |
| 3 | `theorem` | [two_mul_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/two-mul-sub-one--5e5a37779d5cce51a3f53d0b.md) | 38 | `result-track:5e5a37779d5cce51a3f53d0b90dceef4d33cb89229b890c1531cd94c87f6554a` |
| 4 | `def` | [div2Induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/div2induction--3aff8cb140e2dbb6d5d8f3d1.md) | 48 | `declaration-track:3aff8cb140e2dbb6d5d8f3d1b7ab929becc68c505f2835ea42ef16d9b06b578d` |
| 5 | `theorem` | [zero_and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/zero-and--e0a3a3342baa26a4e74efb58.md) | 60 | `result-track:e0a3a3342baa26a4e74efb58ea3d9f1031afd499179ed7327f18a4237fb70013` |
| 6 | `theorem` | [and_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/and-zero--47bca7ab889140f8b7d7c0f6.md) | 62 | `result-track:47bca7ab889140f8b7d7c0f698edbc0b1c5a52b469fa5b43a17391010e30782e` |
| 7 | `theorem` | [and_one_is_mod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/and-one-is-mod--e234e1f5cda2c7f53094294c.md) | 67 | `result-track:e234e1f5cda2c7f53094294c75a60c4021c8b3d81fe6f0643d75590cc0fc2e49` |
| 8 | `theorem` | [zero_testBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/zero-testbit--452d7c3dbc5670c907b14fbd.md) | 80 | `result-track:452d7c3dbc5670c907b14fbd9a5fea09fba08acd63ab843c041f1618e05e84f4` |
| 9 | `theorem` | [testBit_zero_is_mod2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-zero-is-mod2--fa1651f90278db2ed7690b49.md) | 83 | `result-track:fa1651f90278db2ed7690b490343f9e910df02f9ed2b452be6780ac440bfccbd` |
| 10 | `theorem` | [testBit_succ_div2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-succ-div2--c497be1093e7c75547b95ca1.md) | 86 | `result-track:c497be1093e7c75547b95ca10d5251b1a4f3acc6bdf13889d4b3c139ae838645` |
| 11 | `theorem` | [testBit_to_div_mod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-to-div-mod--32dffc559eb4904a25e13657.md) | 90 | `result-track:32dffc559eb4904a25e136576bb3a89a3d8dddf91a6e42c0fc19404e9b601531` |
| 12 | `theorem` | [ne_zero_implies_bit_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/ne-zero-implies-bit-true--b58e508762f05a4636c96afd.md) | 99 | `result-track:b58e508762f05a4636c96afd2300b61bc511bdebb2b1fd5a113c5f433532887a` |
| 13 | `theorem` | [ne_implies_bit_diff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/ne-implies-bit-diff--5ac4f2ce57385d0a5cc92072.md) | 114 | `result-track:5ac4f2ce57385d0a5cc92072e815cfe12f5c3a44b746b22c1252fb491472926d` |
| 14 | `theorem` | [eq_of_testBit_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/eq-of-testbit-eq--ac1a799b76278624d7c5073e.md) | 145 | `result-track:ac1a799b76278624d7c5073e6ed5c223c2f9bfbee46ed07ab3692fb5c2c9b90c` |
| 15 | `theorem` | [ge_two_pow_implies_high_bit_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/ge-two-pow-implies-high-bit-true--cb0335f285f54b9230bf2b51.md) | 153 | `result-track:cb0335f285f54b9230bf2b5184999f86d88195b5248cc72320f42fd9f05d2aca` |
| 16 | `theorem` | [testBit_implies_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-implies-ge--5576f785ae22cd215af8b11f.md) | 175 | `result-track:5576f785ae22cd215af8b11f9b398df752d1d8f04d2ecfd0edadfca5198dfd0b` |
| 17 | `theorem` | [testBit_lt_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-lt-two--e9e17709d6f441a626c74964.md) | 181 | `result-track:e9e17709d6f441a626c74964e4532756e77b48c9cda8d47dd54875c359d53952` |
| 18 | `theorem` | [lt_pow_two_of_testBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/lt-pow-two-of-testbit--a4bd597d3e7559d9d731d3da.md) | 188 | `result-track:a4bd597d3e7559d9d731d3da85e006ea8fa24328ce2f1bb6897edae5323f0b2d` |
| 19 | `theorem` | [succ_mod_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/succ-mod-two--374adaf84494127691348ee8.md) | 197 | `result-track:374adaf84494127691348ee80b5a4568372a3f8f9be70dad1cefcd0f0b268766` |
| 20 | `theorem` | [testBit_succ_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-succ-zero--1163893a0139b9c90baa7e4f.md) | 206 | `result-track:1163893a0139b9c90baa7e4f857573d169d4c7bbf481e17050aeea1108b1d99a` |
| 21 | `theorem` | [testBit_two_pow_add_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-two-pow-add-eq--e4825ae4b0688a680bad7782.md) | 211 | `result-track:e4825ae4b0688a680bad778296bc5592a33a75dcb35d5b04d47f8ce913ea7ac4` |
| 22 | `theorem` | [testBit_mul_two_pow_add_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-mul-two-pow-add-eq--68c5f14e9d52ae74b7e88173.md) | 216 | `result-track:68c5f14e9d52ae74b7e881736b3d756e65972cb906e927ffcc66a075d4d2503e` |
| 23 | `theorem` | [testBit_two_pow_add_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-two-pow-add-gt--0c3020696c49a49184bc0f6a.md) | 228 | `result-track:0c3020696c49a49184bc0f6a818a4afcf6be5eb0a6f03c5d0c47f0a0032adffb` |
| 24 | `theorem` | [testBit_mod_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-mod-two-pow--56702e013df78186fb414143.md) | 242 | `result-track:56702e013df78186fb4141432735ae929ea9bda69e21b55cd76e98506586a483` |
| 25 | `theorem` | [testBit_one_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-one-zero--28344ea91a360ac625dfee30.md) | 268 | `result-track:28344ea91a360ac625dfee306593f984ca8c491bc407f91f92d54c8ec000509e` |
| 26 | `theorem` | [testBit_two_pow_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-two-pow-sub-one--fa458281df4d951fbe260b98.md) | 270 | `result-track:fa458281df4d951fbe260b98de43490fc2edb5b83d39183172a6f6fdb4075c33` |
| 27 | `theorem` | [testBit_bool_to_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-bool-to-nat--8ee3baef78224575ec2ced3e.md) | 287 | `result-track:8ee3baef78224575ec2ced3e0a06f4b262ef7c823fcc776d45b1adadf5a8db00` |
| 28 | `theorem` | [testBit_bitwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-bitwise--1e77315e36b1d7622a21e738.md) | 296 | `result-track:1e77315e36b1d7622a21e738f8c5ebb418ee9e8e72da3f6b1aaaea037dbb8da3` |
| 29 | `theorem` | [eq_0_of_lt_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/eq-0-of-lt-one--349f8f0ca493062cd831b1f4.md) | 325 | `result-track:349f8f0ca493062cd831b1f4090fdff3085bb3b889a73a99e9ff7bf9ca34167b` |
| 30 | `theorem` | [eq_0_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/eq-0-of-lt--e4e84293c92b1eb8f304d7a0.md) | 333 | `result-track:e4e84293c92b1eb8f304d7a095a2ff34589e51545f612fcd9f17b6d0e7b359b4` |
| 31 | `theorem` | [zero_lt_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/zero-lt-pow--c322cfc408df106783e5de41.md) | 336 | `result-track:c322cfc408df106783e5de415ba493a6b49762a17060a1d05e76ea9f5a3b5710` |
| 32 | `theorem` | [div_two_le_of_lt_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/div-two-le-of-lt-two--d85323d2ddc9dc3069c4b6da.md) | 343 | `result-track:d85323d2ddc9dc3069c4b6da846e917a5819b49fb50a99d925c84d4855769ef6` |
| 33 | `theorem` | [bitwise_lt_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/bitwise-lt-two-pow--f15787dc474ce2ddde21b9fa.md) | 348 | `result-track:f15787dc474ce2ddde21b9fa9174dcd291cd45444e889c3fd76790a42263f369` |
| 34 | `theorem` | [testBit_and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-and--938093aebc2beb56e3dbf188.md) | 376 | `result-track:938093aebc2beb56e3dbf188f51577b45e698e9c70b8a7c104e4ce93035e5734` |
| 35 | `theorem` | [and_lt_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/and-lt-two-pow--52610e7af1f060fbbb1bdc15.md) | 379 | `result-track:52610e7af1f060fbbb1bdc1505ca24077a573ea1bf854eb4549bb5b3a4a67e3a` |
| 36 | `theorem` | [and_pow_two_is_mod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/and-pow-two-is-mod--a5baeffba09daed9c86a2d01.md) | 388 | `result-track:a5baeffba09daed9c86a2d01e9f1c7be2e72e4302afb8b1a7550ff60ee198699` |
| 37 | `theorem` | [and_pow_two_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/and-pow-two-identity--62b04fb05a4a68b8005cf56b.md) | 394 | `result-track:62b04fb05a4a68b8005cf56b415fe31ca7cb9c76076e5a199e314199ed1a8633` |
| 38 | `theorem` | [or_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/or-zero--88d4f95fe9a813abb5640a49.md) | 400 | `result-track:88d4f95fe9a813abb5640a4955532a1858371f9754132c28aa607b6a09a8e9b6` |
| 39 | `theorem` | [zero_or](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/zero-or--145c4e63d262d8ee64094313.md) | 405 | `result-track:145c4e63d262d8ee6409431395e50acffe5f356a66fd35649c0f843f14c0c27b` |
| 40 | `theorem` | [testBit_or](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-or--50a3d078eb8e082d33a08b64.md) | 410 | `result-track:50a3d078eb8e082d33a08b64c6efadb9205b422eb9b78f81c9609224477b0d41` |
| 41 | `theorem` | [or_lt_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/or-lt-two-pow--404f5094c3d24d1fbf43c67d.md) | 413 | `result-track:404f5094c3d24d1fbf43c67da720dbf279d5111c153213e3eeabb5318d6e2eff` |
| 42 | `theorem` | [testBit_xor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-xor--c183ba614f50b2cbed19428b.md) | 418 | `result-track:c183ba614f50b2cbed19428b820e0e8c1a92c96aa433c2b78a9f73f5b87a728d` |
| 43 | `theorem` | [xor_lt_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/xor-lt-two-pow--9db9f101aeae62e5f860d55a.md) | 421 | `result-track:9db9f101aeae62e5f860d55a621e6dbeee32c03feda71bbc76494a51c335cfd3` |
| 44 | `theorem` | [testBit_mul_pow_two_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-mul-pow-two-add--2812b957a4e5e6fc9e040fdb.md) | 426 | `result-track:2812b957a4e5e6fc9e040fdb9fc2437fd9e0d9db6288138de063773d512bc5bf` |
| 45 | `theorem` | [testBit_mul_pow_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-mul-pow-two--ed167d650c387178161af167.md) | 458 | `result-track:ed167d650c387178161af167dac5d5f47c921a406d18057471ca983511ef74db` |
| 46 | `theorem` | [mul_add_lt_is_or](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/mul-add-lt-is-or--7fe943f999e9dccc6198139e.md) | 466 | `result-track:7fe943f999e9dccc6198139e33e1d6daa841942e235afb1ac68b7dbcd3d524e5` |
| 47 | `theorem` | [testBit_shiftLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-shiftleft--d53390a35e2a35ef45faadce.md) | 482 | `result-track:d53390a35e2a35ef45faadce30aab00ea93b129b775e3323a85a85593a4a26d5` |
| 48 | `theorem` | [testBit_shiftRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/declarations/testbit-shiftright--f68ee5329493f8913e9fb012.md) | 486 | `result-track:f68ee5329493f8913e9fb012de50aa9d8b5d0f91b7425c4d77a0c1d2bde15ac1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
