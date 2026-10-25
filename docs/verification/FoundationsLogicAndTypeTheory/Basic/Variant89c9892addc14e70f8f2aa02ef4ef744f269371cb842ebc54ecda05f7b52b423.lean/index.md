# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a6f30c5287c7531b1c25913fb0174a6df3335a9",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a6f30c5287c7531b1c25913fb0174a6df3335a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.Core` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial--6f0f4232780173cda7021d1b.md) | 38 | `declaration-track:6f0f4232780173cda7021d1b2d9280e5179198f37357c4c45a8d6b23f696e901` |
| 2 | `theorem` | [factorial_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-zero--29a61b17145ab5a285416101.md) | 51 | `result-track:29a61b17145ab5a285416101f7ca389b7e2960305cc2f499455e07dd290cb9c6` |
| 3 | `theorem` | [factorial_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-succ--b8f89fa0902da5c6c445e00c.md) | 55 | `result-track:b8f89fa0902da5c6c445e00ca5ce1a4934308106aebbfa1f5ad9b1f2b7b3448b` |
| 4 | `theorem` | [factorial_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-one--db3aad613638605ed5271740.md) | 61 | `result-track:db3aad613638605ed527174005b79c4ae7c1ee4d08742cd76a94dc5a6a862191` |
| 5 | `theorem` | [factorial_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-two--8e7ef6a8c3c8ea769cc9af5a.md) | 66 | `result-track:8e7ef6a8c3c8ea769cc9af5aabcf1c0bba2cb3248db79112c6561ec3d7f0dbcb` |
| 6 | `theorem` | [mul_factorial_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/mul-factorial-pred--40584f13649e5c0478ac3815.md) | 70 | `result-track:40584f13649e5c0478ac38151306cd11a992a9e13db5431b92fdf1691d871e4e` |
| 7 | `theorem` | [factorial_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-pos--6787ca73d4e70c64a85c4e61.md) | 74 | `result-track:6787ca73d4e70c64a85c4e61c31e928dacca4ddc6135d87c2246014290d0addc` |
| 8 | `theorem` | [factorial_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-ne-zero--63bebfcff960a0b8faecbb26.md) | 79 | `result-track:63bebfcff960a0b8faecbb2640a3d2e6dac06e07b06d94aab05e01c931f93194` |
| 9 | `theorem` | [factorial_dvd_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-dvd-factorial--f9e2290a12afa1408ee467bc.md) | 83 | `result-track:f9e2290a12afa1408ee467bc7337059764b0f1d3a761e64865435b82872fbeee` |
| 10 | `theorem` | [dvd_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/dvd-factorial--a4be06c6dfcffaf3af5f2146.md) | 91 | `result-track:a4be06c6dfcffaf3af5f21468324bf99cd1faa43049580fbbea3b0a8d2d7c215` |
| 11 | `theorem` | [factorial_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-le--fb7819a7f83366fe5107aa17.md) | 96 | `result-track:fb7819a7f83366fe5107aa1749e9e44a75aadac200c8763d8dc875e755edd1f1` |
| 12 | `theorem` | [factorial_mul_pow_le_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-mul-pow-le-factorial--996fe39b9b784787808a8e9a.md) | 101 | `result-track:996fe39b9b784787808a8e9a58fb6dea69569f68fc740134af0c384eaf7eadc0` |
| 13 | `theorem` | [monotone_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/monotone-factorial--48fed02755e97381b03180dd.md) | 111 | `result-track:48fed02755e97381b03180dd4533bf9a1a8071ec2bce8f17492312d7dd0dae04` |
| 14 | `lemma` | [factorial_le_of_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-le-of-le--84a8e8969f552e25fc0bba53.md) | 115 | `result-track:84a8e8969f552e25fc0bba53d4485712e26232765f1e1d924d9196f500f8584d` |
| 15 | `theorem` | [factorial_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-lt--57072c16e191f844f2c7cf40.md) | 117 | `result-track:57072c16e191f844f2c7cf40c7af31f845c0d21ee0de351e4b825dfeeae57c7a` |
| 16 | `lemma` | [factorial_lt_of_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-lt-of-lt--dc05af9f4fd1ff3bd7e4725d.md) | 129 | `result-track:dc05af9f4fd1ff3bd7e4725dba8c5f2ae8c6fabd8ca16e85ac4ca7ee6c04018b` |
| 17 | `theorem` | [one_lt_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/one-lt-factorial--6e6ab667a75df0a1455619d9.md) | 131 | `result-track:6e6ab667a75df0a1455619d9066ef54241fa7c4eead9026f77fd01bbad9f9740` |
| 18 | `theorem` | [factorial_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-eq-one--7d59410900a631eb8cbbbf76.md) | 136 | `result-track:7d59410900a631eb8cbbbf76965fa56d54fe561792989da064597839c20146d0` |
| 19 | `theorem` | [factorial_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-inj--9e0d79e90887199434abb839.md) | 145 | `result-track:9e0d79e90887199434abb839109b8f014ba7d54c2ef233d459abd479fdc0d40e` |
| 20 | `theorem` | [self_le_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/self-le-factorial--53bd77099e0c39d8da10afef.md) | 156 | `result-track:53bd77099e0c39d8da10afefd4169ec7be0e7e9f1be365536f890b835c9896ad` |
| 21 | `theorem` | [lt_factorial_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/lt-factorial-self--fd4c1864bb037f201ad8d461.md) | 163 | `result-track:fd4c1864bb037f201ad8d4614db60b0d4726755d3806ed77c9ad45820f8ed48c` |
| 22 | `theorem` | [add_factorial_succ_lt_factorial_add_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/add-factorial-succ-lt-factorial-add-succ--8c65b50388b023c077b923ef.md) | 172 | `result-track:8c65b50388b023c077b923ef58144a4d7858ed0a4a0190550d3261c73dfd60a0` |
| 23 | `theorem` | [add_factorial_lt_factorial_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/add-factorial-lt-factorial-add--864843f99e02588b608ed485.md) | 188 | `result-track:864843f99e02588b608ed485585c84fb7a3197e25c4e8b9661728237847174ab` |
| 24 | `theorem` | [add_factorial_succ_le_factorial_add_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/add-factorial-succ-le-factorial-add-succ--28d279e8b305165e8d6fdff0.md) | 196 | `result-track:28d279e8b305165e8d6fdff04ba97ec6d29421a095dbf145426c1f47d9d0f678` |
| 25 | `theorem` | [add_factorial_le_factorial_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/add-factorial-le-factorial-add--f72e12f2e404c6b89f3f0755.md) | 214 | `result-track:f72e12f2e404c6b89f3f07554859f4517dfb02906720aa705f814d21a699e22e` |
| 26 | `theorem` | [factorial_mul_pow_sub_le_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-mul-pow-sub-le-factorial--40eda32d69eaf0dc3119d1b8.md) | 220 | `result-track:40eda32d69eaf0dc3119d1b8045b3af587831f3b8c2818f92072135651c90b54` |
| 27 | `def` | [ascFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/ascfactorial--e6217b14d1505fdf37e734c9.md) | 240 | `declaration-track:e6217b14d1505fdf37e734c9f1211fa19bbd91f79992f83a1fb49db4975aa975` |
| 28 | `theorem` | [ascFactorial_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/ascfactorial-zero--8e7f6fd62dd5a11dd473088e.md) | 246 | `result-track:8e7f6fd62dd5a11dd473088ec6860fd041770ae50b2403a58c4e9a10f1a57163` |
| 29 | `theorem` | [zero_ascFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/zero-ascfactorial--f47f35a68cb9d13999f5392c.md) | 251 | `result-track:f47f35a68cb9d13999f5392c18b106a9cc7e471cd13284f8d0f72cb3adc93910` |
| 30 | `theorem` | [ascFactorial_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/ascfactorial-succ--e0a83d7603084667028f07d9.md) | 257 | `result-track:e0a83d7603084667028f07d9547bae75025308a6ba1e54dab01e2ffd8b818ee6` |
| 31 | `theorem` | [succ_ascFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/succ-ascfactorial--c0baab5322f080e8365a4a8d.md) | 262 | `result-track:c0baab5322f080e8365a4a8d06a29288e2f5cb6ff4cce27f44a2e4cb726142df` |
| 32 | `theorem` | [factorial_mul_ascFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-mul-ascfactorial--f0838fafd8ab7792ae2582d3.md) | 274 | `result-track:f0838fafd8ab7792ae2582d38ff25013ecfa2a8eb492be3767583274c243c05c` |
| 33 | `theorem` | [ascFactorial_eq_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/ascfactorial-eq-div--85ed7fc6303a67612f669ff6.md) | 282 | `result-track:85ed7fc6303a67612f669ff65f27d6985685e8149e0d60e2d496d5b62836eae3` |
| 34 | `theorem` | [ascFactorial_of_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/ascfactorial-of-sub--4a7ab900989eb5f83a610fa6.md) | 288 | `result-track:4a7ab900989eb5f83a610fa600501ed19b6ae1f4b1b48d7470923af675055c82` |
| 35 | `theorem` | [pow_succ_le_ascFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/pow-succ-le-ascfactorial--482ecd18e4f7df11ce4485e2.md) | 296 | `result-track:482ecd18e4f7df11ce4485e2bb01da9927ea7511f411ca30bc34f7d4f1933fe6` |
| 36 | `theorem` | [pow_lt_ascFactorial'](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/pow-lt-ascfactorial--153697baa42a80a5ac8e26e1.md) | 303 | `result-track:153697baa42a80a5ac8e26e1c145ba8b502e620fd6972f0c5e050d8a2a1c1e0c` |
| 37 | `theorem` | [pow_lt_ascFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/pow-lt-ascfactorial--662004e544d3d2b0cc14bc47.md) | 310 | `result-track:662004e544d3d2b0cc14bc470c73fe828038fb41d9c5716af77708c2decc9ed3` |
| 38 | `theorem` | [ascFactorial_le_pow_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/ascfactorial-le-pow-add--3286f3aed10ebec07ce731e5.md) | 316 | `result-track:3286f3aed10ebec07ce731e509f337a9866a5d416e72dfb9c94a0ab56dd60fcb` |
| 39 | `theorem` | [ascFactorial_lt_pow_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/ascfactorial-lt-pow-add--74620aad7639c20a6643659d.md) | 326 | `result-track:74620aad7639c20a6643659d6898b8cc55a04202046127546a0088a5f5d1104c` |
| 40 | `theorem` | [ascFactorial_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/ascfactorial-pos--c8ec20f8ba8fcd3b20ac5d2f.md) | 339 | `result-track:c8ec20f8ba8fcd3b20ac5d2fa17fa7e322c8a36b4d75cff2dfea6d3663441fd3` |
| 41 | `def` | [descFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/descfactorial--678ba7e50ac624f899aa50da.md) | 350 | `declaration-track:678ba7e50ac624f899aa50da63ea0b66dd3776fe75579bb37fbe204b80d5f4ee` |
| 42 | `theorem` | [descFactorial_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/descfactorial-zero--7762dab60c3467cfa009f0f0.md) | 356 | `result-track:7762dab60c3467cfa009f0f042affccdd2a2965abe97c02e40b123d75db3cb32` |
| 43 | `theorem` | [descFactorial_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/descfactorial-succ--1188e990de8ecf32911c8c67.md) | 361 | `result-track:1188e990de8ecf32911c8c673221b92f55bc550d812d2731891f94821758bb57` |
| 44 | `theorem` | [zero_descFactorial_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/zero-descfactorial-succ--76bb042b386f0da2ee3ec9c5.md) | 365 | `result-track:76bb042b386f0da2ee3ec9c5507a3a0a03546ba3b933456c7ea755d6d232389a` |
| 45 | `theorem` | [descFactorial_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/descfactorial-one--cd3fd87fd9615adb985b7556.md) | 373 | `result-track:cd3fd87fd9615adb985b75562938d0069c29f8c9cd69fdd49e54e6eb2057bfd0` |
| 46 | `theorem` | [succ_descFactorial_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/succ-descfactorial-succ--c661782213171b9242b3f5da.md) | 387 | `result-track:c661782213171b9242b3f5da7002d8d4bca5b2ea141b21e83ba1907968e42072` |
| 47 | `theorem` | [succ_descFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/succ-descfactorial--9801902370762e82b1312ffd.md) | 395 | `result-track:9801902370762e82b1312ffde9bd26e640769237c27c0fbbffc7d8459e790793` |
| 48 | `theorem` | [descFactorial_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/descfactorial-self--95fbc5ab58ffaf61b981a0d9.md) | 402 | `result-track:95fbc5ab58ffaf61b981a0d92e47e2ccd93283777efd7ba75314ae897c3b21c1` |
| 49 | `theorem` | [descFactorial_eq_zero_iff_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/descfactorial-eq-zero-iff-lt--99657d313cfc6d5624790e82.md) | 408 | `result-track:99657d313cfc6d5624790e8207247f868b823eb22869f11f05dd0605ec82c081` |
| 50 | `theorem` | [add_descFactorial_eq_ascFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/add-descfactorial-eq-ascfactorial--414d89e1d485c4131c6dfdf4.md) | 419 | `result-track:414d89e1d485c4131c6dfdf429d2b8b26279692a130ef363e830c0a328eb3042` |
| 51 | `theorem` | [factorial_mul_descFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/factorial-mul-descfactorial--defb9e7e4d91d16fc3bb96a3.md) | 429 | `result-track:defb9e7e4d91d16fc3bb96a38e371463b8b1814146900d7f16f53a76b81ecd97` |
| 52 | `theorem` | [descFactorial_eq_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/descfactorial-eq-div--4b0f020d1d888c7af7a73101.md) | 440 | `result-track:4b0f020d1d888c7af7a73101bd3891303bba87d2c82a200dc2617a3c9ed132eb` |
| 53 | `theorem` | [pow_sub_le_descFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/pow-sub-le-descfactorial--9724eb33b323aee1dba8062c.md) | 446 | `result-track:9724eb33b323aee1dba8062c24d1a52962ba4437e8adbcbcd3eadf222650f23b` |
| 54 | `theorem` | [pow_sub_lt_descFactorial'](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/pow-sub-lt-descfactorial--2bc671d386fcb2e9e1902a19.md) | 455 | `result-track:2bc671d386fcb2e9e1902a1908a4cb01cbd92117b085152edeaf8fd82f374b7e` |
| 55 | `theorem` | [pow_sub_lt_descFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/pow-sub-lt-descfactorial--95417dd9bd7f2bf4298b5ffe.md) | 471 | `result-track:95417dd9bd7f2bf4298b5ffe3552744ae3af44c4e0b600b3e9fb3be0a5638652` |
| 56 | `theorem` | [descFactorial_le_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/descfactorial-le-pow--f2467515a91ffd77e765a876.md) | 480 | `result-track:f2467515a91ffd77e765a8763fa623512b17ac927aa9014da3937dc5201db107` |
| 57 | `theorem` | [descFactorial_lt_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/declarations/descfactorial-lt-pow--dc31466a464cdca2088ec8d6.md) | 487 | `result-track:dc31466a464cdca2088ec8d64e4a609ec076776bfb6d5a33af855fd6c41ad45e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
