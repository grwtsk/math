# Verification target: GRWTSK.Algebra.Basic.Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df06ba54411c49d84f6ced50cd807d2544716fe9",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df06ba54411c49d84f6ced50cd807d2544716fe9`.

Source path: `GRWTSK/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Int.LemmasAux` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Semiring](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/semiring--67db0c713d4052ca8d294484.md) | 48 | `declaration-track:67db0c713d4052ca8d29448415d8d7cb71bbb337ee1c2008f7d2ce237264b2ad` |
| 2 | `class` | [Ring](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/ring--7ed2716f0c0d0d0aee395020.md) | 105 | `declaration-track:7ed2716f0c0d0d0aee39502085a8dc4e4d90ab1fbdb8d480bcdd2c962c53830f` |
| 3 | `class` | [CommSemiring](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/commsemiring--91460fccb4e519be033e68d7.md) | 130 | `declaration-track:91460fccb4e519be033e68d76bf0c2c38524c2430f9f10deb862b2bebd0ee814` |
| 4 | `class` | [CommRing](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/commring--560b83a0dd14cd39c146d0a2.md) | 140 | `declaration-track:560b83a0dd14cd39c146d0a2d1cb81ebe128ef163d17aec8422210722b68be66` |
| 5 | `example` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/example--77c291c11c4a86ab61727557.md) | 154 | `declaration-track:77c291c11c4a86ab61727557b3ac9af97be43b2b9e99a489d504008d142a880d` |
| 6 | `theorem` | [natCast_eq_ofNat](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-eq-ofnat--24ac748ba0cc9625f4ba2df3.md) | 162 | `result-track:24ac748ba0cc9625f4ba2df35c308e73f2f5c448eeef1dd8643118623313f2de` |
| 7 | `theorem` | [natCast_zero](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-zero--eee8f8d901758910143b989e.md) | 165 | `result-track:eee8f8d901758910143b989ed98b19d7c9132e4efdc90047ed43e16f22cd3ff8` |
| 8 | `theorem` | [natCast_one](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-one--d7a6eebdc662340b320b68f4.md) | 167 | `result-track:d7a6eebdc662340b320b68f47c47e8daeaf1ef812c9565c0409801bded48b01f` |
| 9 | `theorem` | [ofNat_add](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/ofnat-add--3dacaa9d8f20b0a0a3d01f52.md) | 169 | `result-track:3dacaa9d8f20b0a0a3d01f5243fe3bd3d5f702a79c319e9a7d012b4e5c443ad7` |
| 10 | `instance` | [toNatModule](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/tonatmodule--62aeb1bca83ca9bcab1d0b32.md) | 174 | `declaration-track:62aeb1bca83ca9bcab1d0b324989652f56fe44cb4b18ec71e1aa362eadc298b6` |
| 11 | `theorem` | [natCast_add](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-add--71db18cce053f92a16b9e5cc.md) | 180 | `result-track:71db18cce053f92a16b9e5cc671467f5cb641b9b8bf4e3835e25c06b1f8a611a` |
| 12 | `theorem` | [natCast_succ](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-succ--e08aa2132640018313fbc03b.md) | 182 | `result-track:e08aa2132640018313fbc03b7be70c6201f01207f8bb1157bac474d4e4783552` |
| 13 | `theorem` | [ofNat_mul](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/ofnat-mul--02cb713c2bc06652bced280d.md) | 185 | `result-track:02cb713c2bc06652bced280df84ecf39a5c73ceecb00cf352f47bb4170888b94` |
| 14 | `theorem` | [natCast_mul](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-mul--176a005bcec2292fdabe8984.md) | 190 | `result-track:176a005bcec2292fdabe898485678c61af9f68f809fa31e9febe6cbecbcda151` |
| 15 | `theorem` | [natCast_mul_comm](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-mul-comm--ca26ff0192d05358c65bb733.md) | 193 | `result-track:ca26ff0192d05358c65bb733935f4b997cfc0ec44b8ff66e0e69595bff638409` |
| 16 | `theorem` | [natCast_mul_left_comm](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-mul-left-comm--4a0a42d0ce27ad512032c1ec.md) | 200 | `result-track:4a0a42d0ce27ad512032c1ec0709ed061d3cf9ddba8eaa22a00f74334c807259` |
| 17 | `theorem` | [pow_one](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/pow-one--4a5926421b8a4bf38ecc2435.md) | 207 | `result-track:4a5926421b8a4bf38ecc2435f58b49056e1e2c347079b8469891320a7a2996ff` |
| 18 | `theorem` | [pow_two](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/pow-two--18a7065c166516d454f12ed7.md) | 210 | `result-track:18a7065c166516d454f12ed7f836141b6fc7fa1ebfa6b7987dbaeb9c888514a4` |
| 19 | `theorem` | [pow_add](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/pow-add--56f02f89065f7864ed8f053e.md) | 213 | `result-track:56f02f89065f7864ed8f053ebbd6cec3d933139627281a0e3d0599244f74b672` |
| 20 | `theorem` | [pow_add_congr](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/pow-add-congr--e741f8978ed022a7f750ebd8.md) | 218 | `result-track:e741f8978ed022a7f750ebd844dafdd97964dec53987917a6d4f6326368bffd1` |
| 21 | `theorem` | [one_pow](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/one-pow--063d11ad67091476d07b4cdc.md) | 221 | `result-track:063d11ad67091476d07b4cdc3dcfa6591370b792fe7b813c73c8fd05c58a4e6c` |
| 22 | `theorem` | [natCast_pow](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-pow--12af6b03443fd34f1ee23449.md) | 226 | `result-track:12af6b03443fd34f1ee23449d6a53860fe144441d20328a05d573575e59b6355` |
| 23 | `theorem` | [nsmul_eq_ofNat_mul](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/nsmul-eq-ofnat-mul--e62768af49ff74b3f0f14a42.md) | 231 | `result-track:e62768af49ff74b3f0f14a42cd86cb1051f365f6aa208a558ab8ecbd787f1c9f` |
| 24 | `theorem` | [intCast_natCast](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-natcast--556bd6d4249f7af6d6b4e239.md) | 243 | `result-track:556bd6d4249f7af6d6b4e23923dcd848b0524c08296ba8806b2a21e281d393b7` |
| 25 | `instance` | [toAddCommGroup](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/toaddcommgroup--04f6919191c3a312c8651101.md) | 247 | `declaration-track:04f6919191c3a312c86511013e1a7813088540a40e179a7a408a78dc3ff0cdbf` |
| 26 | `theorem` | [intCast_zero](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-zero--17ad4917060ff5012ee298c8.md) | 250 | `result-track:17ad4917060ff5012ee298c8c01995a974bbbb3cf74016aa0bd8b3de5a8db66f` |
| 27 | `theorem` | [intCast_one](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-one--26352fbc7c0884f9679b5175.md) | 252 | `result-track:26352fbc7c0884f9679b517541ada66db3880b3b6da839ef86131226e8ec6301` |
| 28 | `theorem` | [intCast_neg_one](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-neg-one--63660c61676945f86f07120a.md) | 253 | `result-track:63660c61676945f86f07120a183492ab1361bc82428f6d618361fe18e157e385` |
| 29 | `theorem` | [intCast_natCast_add_one](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-natcast-add-one--9cd5b3a14021f03c932e2769.md) | 254 | `result-track:9cd5b3a14021f03c932e27693e934a3b9b72a719cf309b3b24af5bb33b2aa25b` |
| 30 | `theorem` | [intCast_negSucc](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-negsucc--156f3b6e29c9af337d429d42.md) | 256 | `result-track:156f3b6e29c9af337d429d42945ba733049bfd90afe7b9a99fca0e6fe9d11311` |
| 31 | `theorem` | [intCast_nat_add](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-nat-add--668aacc9204ea124c3dd6faf.md) | 258 | `result-track:668aacc9204ea124c3dd6fafced2870eaa5390877a4b112103a09e56c8f33fad` |
| 32 | `theorem` | [intCast_eq_ofNat_of_nonneg](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-eq-ofnat-of-nonneg--0cb66ef9435be6886bfd4206.md) | 261 | `result-track:0cb66ef9435be6886bfd42062541a79d3c63741bbf186915428b9dcd7c0bcd13` |
| 33 | `theorem` | [intCast_eq_ofNat_of_nonpos](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-eq-ofnat-of-nonpos--ccfdbe1f1858a75abbe88e95.md) | 268 | `result-track:ccfdbe1f1858a75abbe88e95eeecb4717cf8578b38afbe6fe63b69750c1e5b48` |
| 34 | `theorem` | [intCast_nat_sub](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-nat-sub--533b29a481e93134d4db7ce9.md) | 275 | `result-track:533b29a481e93134d4db7ce9c4cb723cf15054f82a9ca4ca32e82ac5be988630` |
| 35 | `theorem` | [intCast_add](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-add--f2bae277c482b4f74562972a.md) | 289 | `result-track:f2bae277c482b4f74562972ad7eeeeabc57a01c5e1faa9c1c016c420d7713c34` |
| 36 | `theorem` | [intCast_sub](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-sub--5a49ea7ee5bc1ce1606ec22e.md) | 309 | `result-track:5a49ea7ee5bc1ce1606ec22eecb68a1e86f3240f7a66287ed045fd2a65e63873` |
| 37 | `theorem` | [ofNat_sub](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/ofnat-sub--25bcfbf69cae862f61349546.md) | 312 | `result-track:25bcfbf69cae862f613495468f0f049b2bcda5a3da634d72b9dbed05491a5288` |
| 38 | `theorem` | [neg_ofNat_sub](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/neg-ofnat-sub--2e4396ef4ec07830e9bbd4c5.md) | 317 | `result-track:2e4396ef4ec07830e9bbd4c5c5d022dc65e421ff6720858f171a8d51934320a0` |
| 39 | `theorem` | [neg_eq_neg_one_mul](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/neg-eq-neg-one-mul--8bd8e698ec8245e513905ea6.md) | 320 | `result-track:8bd8e698ec8245e513905ea64a7f2be348abb1ce2d3d0e4c6324f5810011fcab` |
| 40 | `theorem` | [neg_eq_mul_neg_one](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/neg-eq-mul-neg-one--b8fd79d8193cb7fe49e4db5e.md) | 326 | `result-track:b8fd79d8193cb7fe49e4db5e01ebbb73529ee27d3a94c99563386f990dcbdf53` |
| 41 | `theorem` | [neg_mul](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/neg-mul--ed83990ef3bc29308d72412d.md) | 332 | `result-track:ed83990ef3bc29308d72412d3a8b4e6d0934258aa4f144183f553ee7973c385d` |
| 42 | `theorem` | [mul_neg](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/mul-neg--e180265ea77a8b23f70678f3.md) | 335 | `result-track:e180265ea77a8b23f70678f322df6c2dcf9c7b3da26f42bc14445096d50520f7` |
| 43 | `theorem` | [zsmul_eq_intCast_mul](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/zsmul-eq-intcast-mul--6de6116e3bf1c3761ad790a4.md) | 339 | `result-track:6de6116e3bf1c3761ad790a4fad7f2f01f8aa927ac379fa06ff75172ff47762c` |
| 44 | `instance` | [toIntModule](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/tointmodule--d78575f95d4c26455b07ca1b.md) | 346 | `declaration-track:d78575f95d4c26455b07ca1b2d9b703083702ce9af94b8d48439dfe47544b541` |
| 45 | `theorem` | [intCast_mul_aux](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-mul-aux--1dd0aeb8158fd05a4cafca65.md) | 352 | `result-track:1dd0aeb8158fd05a4cafca6569ebdbc645a47b65693397784aedcafed2600e99` |
| 46 | `theorem` | [intCast_mul](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-mul--dc87f4c68437b68c94c83562.md) | 355 | `result-track:dc87f4c68437b68c94c835626433adff2990af112101b1c6dfeb3a888596ffe9` |
| 47 | `theorem` | [intCast_mul_comm](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-mul-comm--a0f010ad7fbcf32ec6926671.md) | 367 | `result-track:a0f010ad7fbcf32ec6926671b86d4a436e7697fda8625b40629b3b8a10ad7943` |
| 48 | `theorem` | [intCast_mul_left_comm](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-mul-left-comm--7da78df26b9a8b00671a53a7.md) | 373 | `result-track:7da78df26b9a8b00671a53a79e6795f8a7eed8a8bf2f48a93c0582263df97698` |
| 49 | `theorem` | [intCast_pow](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-pow--a703bb52d4a81ec1ae863a1f.md) | 379 | `result-track:a703bb52d4a81ec1ae863a1fd3521c52de03a27f619ec4a4de1ecd933ecee83c` |
| 50 | `example` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/example--6bf4460c15e8efe51f56ad9e.md) | 385 | `declaration-track:6bf4460c15e8efe51f56ad9ec687954ab14d2e4c73391e89fd82abc31e41eee5` |
| 51 | `theorem` | [mul_left_comm](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/mul-left-comm--7956a99c0ae48a892bd22ce1.md) | 395 | `result-track:7956a99c0ae48a892bd22ce15e22eeb6f3b5b97f0db4608df0297ebcfabb0177` |
| 52 | `theorem` | [mul_pow](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/mul-pow--2ed907b82f9bc4f4a1a09ddb.md) | 398 | `result-track:2ed907b82f9bc4f4a1a09ddb43f1983601b719903fb24fb3e3292ce63f22fb91` |
| 53 | `class` | [IsCharP](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/ischarp--e01c84c37253869237fe3389.md) | 417 | `declaration-track:e01c84c37253869237fe3389a78aa08d61c19a5644da100ace3ec7952aa9321f` |
| 54 | `theorem` | [ofNat_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/ofnat-eq-zero-iff--e897d43609f205e2d62248b1.md) | 427 | `result-track:e897d43609f205e2d62248b1570e15d288c38d7ea6a33b4a4e3d77138f3f4bc8` |
| 55 | `theorem` | [ofNat_ext](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/ofnat-ext--aa5f86c4c01132b83f09b10d.md) | 432 | `result-track:aa5f86c4c01132b83f09b10da9f15241927baace72b3d65bd86c4466a2ada4b6` |
| 56 | `theorem` | [ofNat_eq_zero_iff_of_lt](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/ofnat-eq-zero-iff-of-lt--40d43631829b5aa4aebf6b01.md) | 434 | `result-track:40d43631829b5aa4aebf6b01c6abaefbbb3a06813e89955065d3b963c1cdfecc` |
| 57 | `theorem` | [ofNat_eq_iff_of_lt](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/ofnat-eq-iff-of-lt--5132183b81a5ac17842bd08d.md) | 437 | `result-track:5132183b81a5ac17842bd08d54378149c8e38412d9227ad7d0bc3dc0fcb240bf` |
| 58 | `theorem` | [natCast_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-eq-zero-iff--0e50f67891364070384d8b86.md) | 449 | `result-track:0e50f67891364070384d8b8662d2288ac91ab173b1f1495031052dce9e207dfe` |
| 59 | `theorem` | [natCast_ext](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-ext--9ebe191a78aba9bdfa45b30b.md) | 453 | `result-track:9ebe191a78aba9bdfa45b30b3f0a00863c80998a08fcec957fb54d29e17146f3` |
| 60 | `theorem` | [natCast_ext_iff](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-ext-iff--5e84506612943cd366876e3c.md) | 457 | `result-track:5e84506612943cd366876e3ced35db5fa5106e4559ef0cd5bdfbe902ca6f9f6e` |
| 61 | `theorem` | [natCast_emod](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-emod--4e75b34f5755a15c760120aa.md) | 461 | `result-track:4e75b34f5755a15c760120aa5712c5f635c895888bed3315496d8aa1c94dc8c6` |
| 62 | `theorem` | [ofNat_emod](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/ofnat-emod--41a1e7174fdb62c52a0f771c.md) | 464 | `result-track:41a1e7174fdb62c52a0f771cc32057f2a24276a9e7bb19eecd14f16dabc2767c` |
| 63 | `theorem` | [natCast_eq_zero_iff_of_lt](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-eq-zero-iff-of-lt--9e21179c449a4c46a93aa21e.md) | 468 | `result-track:9e21179c449a4c46a93aa21ec0350cd756b443c2973d7bb8da950e49ace7d955` |
| 64 | `theorem` | [natCast_eq_iff_of_lt](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/natcast-eq-iff-of-lt--3c63fc89ac652737b972b785.md) | 471 | `result-track:3c63fc89ac652737b972b78595da5e20e6d658f00348ca839f1e66aa7fd9cd05` |
| 65 | `theorem` | [mk'_aux](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/mk-aux--3d92b3a2403839c049221bdf.md) | 483 | `result-track:3d92b3a2403839c049221bdfc445c0a3eea4c9b2a81b8216be20b54d36ed0756` |
| 66 | `def` | [mk'](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/mk--bfe0aed491845e38f949c337.md) | 506 | `declaration-track:bfe0aed491845e38f949c337c99a0b97c12bc85482af7c6e5ed7887ecab1ec37` |
| 67 | `theorem` | [intCast_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-eq-zero-iff--d1ae9b3a3b36d5c2b48f1c7a.md) | 525 | `result-track:d1ae9b3a3b36d5c2b48f1c7aa309986de784e81104d3fb8b1df2c5e03d78d795` |
| 68 | `theorem` | [intCast_ext_iff](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-ext-iff--bbeb7eb6c8c118fb54edcb85.md) | 549 | `result-track:bbeb7eb6c8c118fb54edcb85b9907c2bd7d03d600bc0351d5e0a06bb9fd0251a` |
| 69 | `theorem` | [intCast_emod](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/intcast-emod--e638bf390cb68e9dd1839b72.md) | 561 | `result-track:e638bf390cb68e9dd1839b7212a3bb083e86b563da8cd58f1bc43b195b3abfdb` |
| 70 | `class` | [PowIdentity](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/powidentity--7f58b5a61fce340667d700cb.md) | 578 | `declaration-track:7f58b5a61fce340667d700cb3874530400e03d35da1e6c754085ad6b9942b687` |
| 71 | `theorem` | [pow](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/pow--73abecbc431b72910da90000.md) | 586 | `result-track:73abecbc431b72910da90000ef487707e005c02b2a4e74b351bf1cda82a5d33d` |
| 72 | `theorem` | [no_int_zero_divisors](../../../../mathematics/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/declarations/no-int-zero-divisors--4045c9db9732c481774d4825.md) | 592 | `result-track:4045c9db9732c481774d4825fe336a258275aa6e4621b39aee8a76d56d51ac25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
