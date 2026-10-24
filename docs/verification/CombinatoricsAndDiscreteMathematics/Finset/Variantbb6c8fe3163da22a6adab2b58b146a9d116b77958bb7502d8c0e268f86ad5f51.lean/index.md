# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6657b0af70339955bdd026cc1985c23ed0fe5919",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6657b0af70339955bdd026cc1985c23ed0fe5919`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm--336f6e7f407de4071694fde6.md) | 48 | `declaration-track:336f6e7f407de4071694fde65c839610dd7e3ccc237603dec26599893792c911` |
| 2 | `theorem` | [lcm_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-def--f700db4487bd5d56ba06f6fc.md) | 53 | `result-track:f700db4487bd5d56ba06f6fcd78ca675e280d22d613a5fe16f53c36497cfee0d` |
| 3 | `theorem` | [lcm_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-empty--cef70613df70b3e054840836.md) | 57 | `result-track:cef70613df70b3e054840836bacba5bff02f8afe1a6cf70c2f0788f8b7c273e5` |
| 4 | `theorem` | [lcm_dvd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-dvd-iff--487299871ecd1df8a445ada1.md) | 61 | `result-track:487299871ecd1df8a445ada178810610b4e87a16fdc9f351375326d071482ad3` |
| 5 | `theorem` | [lcm_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-dvd--5401d7117118883cae9ee998.md) | 66 | `result-track:5401d7117118883cae9ee998d12089b5648dec1cf6c5ef23f00bb11ab5afd1b6` |
| 6 | `theorem` | [dvd_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/dvd-lcm--7ee6109ed8bee7ecdaa5c388.md) | 69 | `result-track:7ee6109ed8bee7ecdaa5c388ab20162f2638d49fd44a38de9f242a6a8ef9c212` |
| 7 | `theorem` | [lcm_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-insert--f836fe62831e1db32e255afd.md) | 73 | `result-track:f836fe62831e1db32e255afd928e8938c41bfa9af3cf1efb5529e897362dffbb` |
| 8 | `theorem` | [lcm_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-singleton--eee27c5b9acb8da38908cd85.md) | 81 | `result-track:eee27c5b9acb8da38908cd85c967b74e06663346aa8a9ed1cb4f9c3563af98fa` |
| 9 | `theorem` | [normalize_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/normalize-lcm--f30be3b86025ebf5802555b1.md) | 85 | `result-track:f30be3b86025ebf5802555b1a56bb91cf280ab2dcb3fa5bee4cb616987edfad4` |
| 10 | `theorem` | [lcm_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-union--acb7ea044f655e68bf69da89.md) | 87 | `result-track:acb7ea044f655e68bf69da8904299bba7f99d0a209b511548d34a85a7219aa03` |
| 11 | `theorem` | [lcm_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-congr--40cae3cd703682d705878767.md) | 91 | `result-track:40cae3cd703682d70587876758df458eeb6c8ffb8cc90416c415834b034e3df9` |
| 12 | `theorem` | [lcm_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-mono-fun--ceaccd1b6d7cfeb92d608dd0.md) | 96 | `result-track:ceaccd1b6d7cfeb92d608dd0e40171cadd7bcc78dc2c3313b4dc5e1ad4e98039` |
| 13 | `theorem` | [lcm_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-mono--00385f2701ea161f292205ef.md) | 99 | `result-track:00385f2701ea161f292205ef4856b8f1d12cd6dbe93b294a9a4849c7be9dcfea` |
| 14 | `theorem` | [lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-image--676e670c6eaa25591b465b99.md) | 102 | `result-track:676e670c6eaa25591b465b99b063879d5f2d709ea463d356add3b60827eaac76` |
| 15 | `theorem` | [lcm_eq_lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-eq-lcm-image--00615931258823d3863ce00c.md) | 106 | `result-track:00615931258823d3863ce00c8849535d1233f1ec0014ad2166a229102c7f08c7` |
| 16 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-eq-zero-iff--ac0e2b7ba71c15f196ede734.md) | 110 | `result-track:ac0e2b7ba71c15f196ede73492275c791c1ea7c24426aa89b2acf5288e73ae70` |
| 17 | `theorem` | [lcm_ne_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/lcm-ne-zero-iff--4bb2bbbe494c8599c528e80f.md) | 113 | `result-track:4bb2bbbe494c8599c528e80fe7e3a143f72acc466a29b48dfded18549765e117` |
| 18 | `def` | [gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd--4a1b838e899e4a1bae48c4e5.md) | 124 | `declaration-track:4a1b838e899e4a1bae48c4e5c2041a96c9c5718e06b41e19307f38de559f9e63` |
| 19 | `theorem` | [gcd_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-def--9400112a6030b120d34562a4.md) | 129 | `result-track:9400112a6030b120d34562a4bdddca3dbaf32f1feeb6caffc8eb5931f9d7d098` |
| 20 | `theorem` | [gcd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-empty--0945346bf653911aa717a0ea.md) | 133 | `result-track:0945346bf653911aa717a0eaa57ce9d9ba531e4bf6b72d3cde5bbbf6538e0858` |
| 21 | `theorem` | [dvd_gcd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/dvd-gcd-iff--5417e65ec55c4726015cfce8.md) | 136 | `result-track:5417e65ec55c4726015cfce8be724482d7fc4c551c675014eaa2515c6b8510d5` |
| 22 | `theorem` | [gcd_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-dvd--43c268c300efe39cf26605d4.md) | 141 | `result-track:43c268c300efe39cf26605d4668af5d8d53c450d0c7cdc5aeb6f514ee41770ed` |
| 23 | `theorem` | [dvd_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/dvd-gcd--7518bf805a7b6e02950d206f.md) | 144 | `result-track:7518bf805a7b6e02950d206f7282b7e0e3c79b1625aba3fba3fe3d1cff11ccac` |
| 24 | `theorem` | [gcd_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-cons--9a6b4f72b1ca4f570b13d5b4.md) | 147 | `result-track:9a6b4f72b1ca4f570b13d5b49c824de81eac9b9da49cb134fd57d3f674f796b7` |
| 25 | `theorem` | [gcd_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-insert--c2a6192acef6bb22830f09df.md) | 152 | `result-track:c2a6192acef6bb22830f09df7df980ebc6c572b796c06c6479971c6fb2220613` |
| 26 | `theorem` | [gcd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-singleton--d3852642b23b57543b86a30f.md) | 160 | `result-track:d3852642b23b57543b86a30fec0f20a1ca728090b8bc20d617fd8f603336fb2d` |
| 27 | `theorem` | [normalize_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/normalize-gcd--840ea55187a012561d82f858.md) | 164 | `result-track:840ea55187a012561d82f858fe875d9a872c03bad7fbae688439618418a8ad57` |
| 28 | `theorem` | [gcd_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-union--5baf3c7b31ae472542af87f0.md) | 166 | `result-track:5baf3c7b31ae472542af87f0f6d903bdb9f9bf90481d13c068ce25a357c691df` |
| 29 | `theorem` | [gcd_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-congr--3be2ac0cf8abb664f08fce9d.md) | 170 | `result-track:3be2ac0cf8abb664f08fce9d4081e8add3fc96c58d682170a9c4acdfe5178b32` |
| 30 | `theorem` | [gcd_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-mono-fun--04ac75cac58165692e278378.md) | 175 | `result-track:04ac75cac58165692e27837851cf71610fc7cd96fb00d03faeefacd63aefb8be` |
| 31 | `theorem` | [gcd_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-mono--ed2febf82a85fc3f1cf7bb9c.md) | 178 | `result-track:ed2febf82a85fc3f1cf7bb9c3ca3835835808843bf91b305e0c647e64cec8d33` |
| 32 | `theorem` | [gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-image--4afd2ed00b59d8b2edab4749.md) | 181 | `result-track:4afd2ed00b59d8b2edab474949143ef217cab05f0f5450f75e1a3fe5301b917d` |
| 33 | `theorem` | [gcd_eq_gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-eq-gcd-image--e94599ce4d3fd536d892870d.md) | 185 | `result-track:e94599ce4d3fd536d892870d51e9b300cf179386b964ecf1d65b2c68d365af0b` |
| 34 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-eq-zero-iff--fde21b1f546da767ab9edea7.md) | 188 | `result-track:fde21b1f546da767ab9edea7cd7784e9f1f79602e512453fba1c3d35eb70a7c0` |
| 35 | `theorem` | [gcd_ne_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-ne-zero-iff--652f6d6e47fa6e49c0ee4185.md) | 193 | `result-track:652f6d6e47fa6e49c0ee41853aebc9114c132a59c8f1fb2b3cc91e4769ab3590` |
| 36 | `theorem` | [gcd_eq_gcd_filter_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-eq-gcd-filter-ne-zero--a0e21314bb9bb5e9217763c9.md) | 196 | `result-track:a0e21314bb9bb5e9217763c981664e78f55e08aab465c3cdbd35f4745fd0e2ea` |
| 37 | `theorem` | [gcd_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-mul-left--1d47d4790011b86f48f903eb.md) | 211 | `result-track:1d47d4790011b86f48f903eb9b23f31573b75221847963fbea1dbc33b5830855` |
| 38 | `theorem` | [gcd_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-mul-right--79b204ffd728afba4dae8f9f.md) | 221 | `result-track:79b204ffd728afba4dae8f9f2350ce7bfdaf2b7de81b291d322343d638cafef7` |
| 39 | `theorem` | [gcd_mul_left'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-mul-left--78efe5eb176c0b0a2bf30a21.md) | 227 | `result-track:78efe5eb176c0b0a2bf30a2100d76678dd6ee16e7adab2d1b201a69ac78a3582` |
| 40 | `theorem` | [gcd_mul_right'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-mul-right--57d89b7f5726037e09c80877.md) | 232 | `result-track:57d89b7f5726037e09c808771cd6fe15e321b8dceb5e0cb6ce05ede5e4ad745d` |
| 41 | `theorem` | [extract_gcd'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/extract-gcd--ebe8bab146375e7e741f1c3e.md) | 235 | `result-track:ebe8bab146375e7e741f1c3ef45c0395259b108eb332393bcf0a8199b98c922d` |
| 42 | `theorem` | [extract_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/extract-gcd--13e76d8ca5f696747b09cace.md) | 243 | `result-track:13e76d8ca5f696747b09cace6fa01904399cdc2dda0c9c821b61dd77a27fe33f` |
| 43 | `lemma` | [gcd_div_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-div-eq-one--51ff9ffa70ed551c97f9dc23.md) | 259 | `result-track:51ff9ffa70ed551c97f9dc23219bb34b01514f0ece87d5cbca2f0352b77d90b7` |
| 44 | `lemma` | [gcd_div_id_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-div-id-eq-one--92e47086d90b3e024fc4c437.md) | 265 | `result-track:92e47086d90b3e024fc4c437221cdbf6713b2b61d4387f99fde7e8843b14cd9d` |
| 45 | `theorem` | [gcd_eq_of_dvd_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/gcd-eq-of-dvd-sub--efed7a27ce59c1f874387b25.md) | 278 | `result-track:efed7a27ce59c1f874387b252bf270a0e73404fc2bc222f1642c256501e39937` |
| 46 | `theorem` | [Int.finsetGcd_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbb6c8fe3163da22a6adab2b58b146a9d116b77958bb7502d8c0e268f86ad5f51.lean/declarations/int-finsetgcd-nonneg--5b743d5af87933477767bdc2.md) | 297 | `result-track:5b743d5af87933477767bdc202b88d4c5af2c62ba60a168260bf0beb63586c8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
