# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Bitwise.Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daaf1cdd0515a5725a672b58e499fcf6e24e7825",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daaf1cdd0515a5725a672b58e499fcf6e24e7825`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bit_false](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/bit-false--3a6226ede967dcef2058d36a.md) | 56 | `result-track:3a6226ede967dcef2058d36a4cd6bf1b1f846292b5bd4cf18cda94c17244c179` |
| 2 | `theorem` | [bit_true](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/bit-true--c39844a43b68cb12e8d1843b.md) | 61 | `result-track:c39844a43b68cb12e8d1843b587ef14da03673b6ae6555247cefbaa9fc757cf2` |
| 3 | `theorem` | [bit_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/bit-eq-zero--0dff4660a01e5baec4f3458e.md) | 66 | `result-track:0dff4660a01e5baec4f3458e47fa4694286d3b3d282de41ecea830790ef6122e` |
| 4 | `theorem` | [zero_of_testBit_eq_false](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/zero-of-testbit-eq-false--866dd049763f23f3bb0c9106.md) | 70 | `result-track:866dd049763f23f3bb0c9106b7e9b5777698b50845e07efe31f5f845e8648200` |
| 5 | `theorem` | [zero_testBit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/zero-testbit--cac54134d94f7a4b7e9dbc6d.md) | 78 | `result-track:cac54134d94f7a4b7e9dbc6d545599213f0f76a7fe2501f55e977c968ec00b04` |
| 6 | `theorem` | [testBit_eq_inth](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/testbit-eq-inth--9094034308d6b9dc49f383c9.md) | 83 | `result-track:9094034308d6b9dc49f383c90a3e5726cbe40eddc286674d65288dcd191683e5` |
| 7 | `theorem` | [eq_of_testBit_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/eq-of-testbit-eq--e3bd436cad5dc67981cd712c.md) | 92 | `result-track:e3bd436cad5dc67981cd712ce6dcc2f286714aa949db876fbecce9e3d0e8a2ce` |
| 8 | `theorem` | [exists_most_significant_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/exists-most-significant-bit--254496ddbefc16746c1e47ac.md) | 104 | `result-track:254496ddbefc16746c1e47acd65009097a54bd38844ae93e895671b6e5b475f2` |
| 9 | `theorem` | [lt_of_testBit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lt-of-testbit--9843460d5a155693313a6c10.md) | 122 | `result-track:9843460d5a155693313a6c106ee9dcbe680353d34d87af821995f9bcbc8c10ca` |
| 10 | `theorem` | [testBit_two_pow_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/testbit-two-pow-self--e2e3455f9f08eb134bc4a239.md) | 148 | `result-track:e2e3455f9f08eb134bc4a2390f158ed3bec475d35a6e581ff1458ee1e1adb792` |
| 11 | `theorem` | [testBit_two_pow_of_ne](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/testbit-two-pow-of-ne--19c098201204cc5eb3738d0d.md) | 152 | `result-track:19c098201204cc5eb3738d0dc09ed60ebbdcc91016d2218a22523782e37513dc` |
| 12 | `theorem` | [testBit_two_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/testbit-two-pow--238c9145b7f96f5320ba6abb.md) | 164 | `result-track:238c9145b7f96f5320ba6abb20b918accb14d6c836dfa718f34fb9162ce2f3e3` |
| 13 | `theorem` | [bitwise'_comm](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/bitwise-comm--3de1aaffb53324e2697509a9.md) | 174 | `result-track:3de1aaffb53324e2697509a9d48d5550303c7af301547463c7a4ee2cbe8cd2e6` |
| 14 | `theorem` | [lor'_comm](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lor-comm--726483affc0e941086a404ae.md) | 182 | `result-track:726483affc0e941086a404aefa2b5c33be3562aa1778f2b863d37b4d8001bc8f` |
| 15 | `theorem` | [land'_comm](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/land-comm--6db29b0fbac4f4b80070819b.md) | 186 | `result-track:6db29b0fbac4f4b80070819b8617a7d40f68553d021ac347498e355f71865ce4` |
| 16 | `theorem` | [lxor'_comm](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-comm--ec916dcc2663672406771b3f.md) | 190 | `result-track:ec916dcc2663672406771b3f66720f0df5132a2863445c00708c5701b5552c4a` |
| 17 | `theorem` | [zero_lxor'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/zero-lxor--eeffa6f3f474220d8252f536.md) | 195 | `result-track:eeffa6f3f474220d8252f53632c399a36f7c8822ba091c7ced06f99c9cf67d5b` |
| 18 | `theorem` | [lxor'_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-zero--56ee2182a4edc222d66d7f87.md) | 200 | `result-track:56ee2182a4edc222d66d7f876eb95aede200d16b899573643acf543ed4f111da` |
| 19 | `theorem` | [zero_land'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/zero-land--b84fec99999e11fefdb60e55.md) | 204 | `result-track:b84fec99999e11fefdb60e55d4bf42f128a120db5505255e93a39b744269e108` |
| 20 | `theorem` | [land'_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/land-zero--33f7349f9c7c27af0c2ed736.md) | 209 | `result-track:33f7349f9c7c27af0c2ed736d474cc7d7003d887a8856c95f69d76c31dccc9cb` |
| 21 | `theorem` | [zero_lor'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/zero-lor--07708e437e23efa334948a78.md) | 213 | `result-track:07708e437e23efa334948a7890e0702d4821408195cd66c0775b571da65f981f` |
| 22 | `theorem` | [lor'_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lor-zero--d37a104751a7d4a9451c1358.md) | 218 | `result-track:d37a104751a7d4a9451c135824eeff5787ae2c7c452fbaba27ce7c19ae24c450` |
| 23 | `macro` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/macro--f0a8e420ccb267f670236d41.md) | 224 | `declaration-track:f0a8e420ccb267f670236d4111c2408a80304aac206c533d8f11c85193af7b14` |
| 24 | `theorem` | [lxor'_assoc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-assoc--80e108c3f6e2fecbe6b7d626.md) | 234 | `result-track:80e108c3f6e2fecbe6b7d626e4c171a8d40f2f96518ca27f78616069e6b1eb5a` |
| 25 | `theorem` | [land'_assoc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/land-assoc--a1f29e302c826aa220003035.md) | 237 | `result-track:a1f29e302c826aa220003035a4b5404f97e55011c54c6cb51511d4d90a477d2e` |
| 26 | `theorem` | [lor'_assoc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lor-assoc--bacdde4b2788c6b43d4a9dfb.md) | 240 | `result-track:bacdde4b2788c6b43d4a9dfb5cc2ffbc0c46a5bd691bba6a1e0c66b97a172717` |
| 27 | `theorem` | [lxor'_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-self--d6d7adda0ce1da9f681c9aed.md) | 244 | `result-track:d6d7adda0ce1da9f681c9aede5882c057aab99d7d76ffef070f99231489a670c` |
| 28 | `theorem` | [lxor_cancel_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-cancel-right--50817597babed5a9ffec3f61.md) | 249 | `result-track:50817597babed5a9ffec3f61575a71c9e13f797ecfe8b4900036354bac21de2f` |
| 29 | `theorem` | [lxor'_cancel_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-cancel-left--c049749e359ba55910c2b282.md) | 253 | `result-track:c049749e359ba55910c2b282d4651443248919db9d0627091cd49527ae786af9` |
| 30 | `theorem` | [lxor'_right_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-right-injective--8e754acbeaf9b1e51c0d6197.md) | 257 | `result-track:8e754acbeaf9b1e51c0d6197e866619a0c7ade5ac023784373d445e4111b9d70` |
| 31 | `theorem` | [lxor'_left_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-left-injective--31f67205599baf477132f90d.md) | 261 | `result-track:31f67205599baf477132f90dcd731fbc194001ce6b4b599dfd760acb331154dc` |
| 32 | `theorem` | [lxor'_right_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-right-inj--1d737f8c78c883e7bc0c82a5.md) | 267 | `result-track:1d737f8c78c883e7bc0c82a59488e89a517ab1532dd055551c44a6035aab25a0` |
| 33 | `theorem` | [lxor'_left_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-left-inj--d6a56daeeb8c1dbc1c9a81e5.md) | 272 | `result-track:d6a56daeeb8c1dbc1c9a81e5ab91a820b7394532672e8738fea03cedb2991239` |
| 34 | `theorem` | [lxor'_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-eq-zero--a3147f8b4e6888eb16324391.md) | 277 | `result-track:a3147f8b4e6888eb1632439121f2e27aeb2435d1eb84df93a3198e41dd301c68` |
| 35 | `theorem` | [lxor'_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-ne-zero--8111251f0e61ac9686cea93f.md) | 281 | `result-track:8111251f0e61ac9686cea93fb969c5e5396730bfac98327a4d02beb18c5fa031` |
| 36 | `theorem` | [lxor'_trichotomy](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lxor-trichotomy--a47c24b4b492cc27abfb632d.md) | 285 | `result-track:a47c24b4b492cc27abfb632dc96cf035f698765edba9d9005ae00b207c781ae4` |
| 37 | `theorem` | [lt_lxor'_cases](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantc20838d031c1b87e96f361ab28ee2b2bc12ffcf98f3d9416b890271cb4ec9459.lean/declarations/lt-lxor-cases--6dcf35589a95cb929a9c3b7d.md) | 325 | `result-track:6dcf35589a95cb929a9c3b7dda6a5de3a00d65a150424ebd84de73d99e29ffd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
