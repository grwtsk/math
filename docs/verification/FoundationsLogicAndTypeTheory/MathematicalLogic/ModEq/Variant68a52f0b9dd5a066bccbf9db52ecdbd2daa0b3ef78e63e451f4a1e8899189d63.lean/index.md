# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ModEq.Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50c0179204317c70bdd383986a3bc24cad5f5b23",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50c0179204317c70bdd383986a3bc24cad5f5b23`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Int.DivMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.Core` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ModEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq--59967d626cfc3285800ad0fc.md) | 31 | `declaration-track:59967d626cfc3285800ad0fc745f5c25e401e700a2b75908dc38ba544d8a8f77` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/instance--a4a05d306e48a227a3427445.md) | 41 | `declaration-track:a4a05d306e48a227a34274453be4209417548ca2a4285ec8c70681ca202a7161` |
| 3 | `theorem` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/refl--86568d55e2b57b2637897a00.md) | 46 | `result-track:86568d55e2b57b2637897a00ebcf2ac0a10f38504577bc393e1a3c91413e188b` |
| 4 | `theorem` | [rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/rfl--bdd003fe6ca31882f7c43b51.md) | 50 | `result-track:bdd003fe6ca31882f7c43b51a94849ee66111f30d7dae73578c2f9e367d44310` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/instance--6ca3491072ee2f91d7b634f6.md) | 54 | `declaration-track:6ca3491072ee2f91d7b634f62dba88ff28ac09f352979cec80e8a7d021cc3ed8` |
| 6 | `theorem` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/symm--7478959b0d9e6c576da9bdee.md) | 58 | `result-track:7478959b0d9e6c576da9bdeecb21ecb741ce6e70e2ad753dc40a9244deb6c4bf` |
| 7 | `theorem` | [trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/trans--2f0c8b0a9e3845682df5d632.md) | 63 | `result-track:2f0c8b0a9e3845682df5d632b92b8e6da9850a46dbf5087696ef25d1a7836909` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/instance--bd82f8548c0e1a69126485a7.md) | 67 | `declaration-track:bd82f8548c0e1a69126485a73d24741863a4013aa19aa3b8623f3d33af578718` |
| 9 | `theorem` | [eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/eq--35146965a9d5d2f120c24221.md) | 70 | `result-track:35146965a9d5d2f120c24221647754142a76b411068c0c17ef7d67726e78fddb` |
| 10 | `theorem` | [modEq_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-comm--945c7b413fe0fa6881b2abdd.md) | 75 | `result-track:945c7b413fe0fa6881b2abddb725277d3050f38576af79c33ed34dac2bc73e2c` |
| 11 | `theorem` | [coe_nat_modEq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/coe-nat-modeq-iff--e8920c2302a21dbd78ec8835.md) | 78 | `result-track:e8920c2302a21dbd78ec883579cedb4ec554c3196b8f9f9433ff83ca4de5f47a` |
| 12 | `theorem` | [modEq_zero_iff_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-zero-iff-dvd--85338ef774fb2e78b43e1904.md) | 82 | `result-track:85338ef774fb2e78b43e1904b135af8b12cb072fc2f51f121ba96355a1abeff9` |
| 13 | `theorem` | [_root_.Dvd.dvd.modEq_zero_int](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/root-dvd-dvd-modeq-zero-int--4133d71a596f509790bced86.md) | 86 | `result-track:4133d71a596f509790bced86bf7c9fdfb378abea797fae553cb17c4aa4e564ee` |
| 14 | `theorem` | [_root_.Dvd.dvd.zero_modEq_int](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/root-dvd-dvd-zero-modeq-int--cfae2af816e6abeb613dd13e.md) | 90 | `result-track:cfae2af816e6abeb613dd13e0c600f670796d9a1a38f5267aad7548cccd3c275` |
| 15 | `theorem` | [modEq_iff_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-iff-dvd--6dfdc36ac99e5e78385750f4.md) | 94 | `result-track:6dfdc36ac99e5e78385750f4ad31616feb506f9fc97d319ac27abcb5e2b23013` |
| 16 | `theorem` | [modEq_iff_add_fac](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-iff-add-fac--09421e14b668f8c298a63b70.md) | 99 | `result-track:09421e14b668f8c298a63b700c8893661800cfede896e8e23a23245688ff8e97` |
| 17 | `theorem` | [mod_modEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/mod-modeq--3e73198dd7dec232b900c84d.md) | 108 | `result-track:3e73198dd7dec232b900c84d3b84960a5a0a6058bcc9b7c9646ce515efc2a25c` |
| 18 | `theorem` | [neg_modEq_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/neg-modeq-neg--c852463055e174e780baa88a.md) | 113 | `result-track:c852463055e174e780baa88a2a4092ee281868820366bb39d1ae70b7f748c426` |
| 19 | `theorem` | [modEq_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-neg--00d2014191196cbbe74246bc.md) | 119 | `result-track:00d2014191196cbbe74246bcf30ab2c3192aa355ba7bf3bcbb0a5afeddc745a6` |
| 20 | `theorem` | [of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/of-dvd--818512b7d73e02afd85de2b8.md) | 124 | `result-track:818512b7d73e02afd85de2b8bdd589d09d0c9ab6207e1f3b66f65382c84eddee` |
| 21 | `theorem` | [mul_left'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/mul-left--50dec8c0b51a27e921aa1258.md) | 128 | `result-track:50dec8c0b51a27e921aa12584c7a04ad3dfd5b5d4454bf493433bc6c68b96307` |
| 22 | `theorem` | [mul_right'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/mul-right--7d08d4d339c3832675f7778b.md) | 136 | `result-track:7d08d4d339c3832675f7778b8c2afdacf63073ada4d3eb908474fb847a5b9e00` |
| 23 | `theorem` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/add--077396813b8c24c3923a4119.md) | 141 | `result-track:077396813b8c24c3923a4119ba8eddbf62a58f3565c3b08bb5116630c2a628cb` |
| 24 | `theorem` | [add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/add-left--4f50d6ff67f714ee29217080.md) | 147 | `result-track:4f50d6ff67f714ee29217080b1756f469489a0ff6401f23f6195ca17cebe49a9` |
| 25 | `theorem` | [add_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/add-right--42989d4c87e53a1d4c3e893f.md) | 151 | `result-track:42989d4c87e53a1d4c3e893fc12da3b9b2b75280f443b3bf12986191ef1d8f56` |
| 26 | `theorem` | [add_left_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/add-left-cancel--7e24175a2caea2107ac787f8.md) | 155 | `result-track:7e24175a2caea2107ac787f8f3849469587fa1233a80942646a6f5be5a907646` |
| 27 | `theorem` | [add_left_cancel'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/add-left-cancel--163285e0cb980c7d6908576f.md) | 163 | `result-track:163285e0cb980c7d6908576facb62fa027f8cbbb15f2ce7bb53dc0e62f8ad067` |
| 28 | `theorem` | [add_right_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/add-right-cancel--903b62948d4d03f6ab266e83.md) | 167 | `result-track:903b62948d4d03f6ab266e83719243c2eeb158794b09dbd55e6ca466dc60d966` |
| 29 | `theorem` | [add_right_cancel'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/add-right-cancel--ef9b2341d57c539cff63e4fd.md) | 173 | `result-track:ef9b2341d57c539cff63e4fd7566273b2710fee77f496786e402bc51f6e04950` |
| 30 | `theorem` | [neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/neg--a2d9e2073d017deca4e281dd.md) | 177 | `result-track:a2d9e2073d017deca4e281dd1fe6857b3f59a0df596c444dfd86d4734fdbf3df` |
| 31 | `theorem` | [sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/sub--666c383afe000fb1f645c7b4.md) | 182 | `result-track:666c383afe000fb1f645c7b4da2e393c888b50fb50b70d912c1bd6012c955df4` |
| 32 | `theorem` | [sub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/sub-left--778a4450dfafdc1aa4a5dcac.md) | 187 | `result-track:778a4450dfafdc1aa4a5dcac567dfa23a769430242f860f5f689b8a9a437b286` |
| 33 | `theorem` | [sub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/sub-right--a130afab9a3f5711c4c82acd.md) | 191 | `result-track:a130afab9a3f5711c4c82acd2fcbffbfa7f6bd0335747292e275f865fdce6867` |
| 34 | `theorem` | [mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/mul-left--fec37453973e298fa78e0b67.md) | 195 | `result-track:fec37453973e298fa78e0b67109e9105572d792baa923e1c622b4e62d435e1de` |
| 35 | `theorem` | [mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/mul-right--833dc5b16ed2e8a5d9083838.md) | 199 | `result-track:833dc5b16ed2e8a5d90838380a0874e889719fc3c8b88fa90fa827bb552190a8` |
| 36 | `theorem` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/mul--0e02fff52127854fb41f1278.md) | 204 | `result-track:0e02fff52127854fb41f127892ea1e43dfa3662aabed466b4d0569327b196b57` |
| 37 | `theorem` | [pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/pow--4270ab0d2613801a3a4aa621.md) | 208 | `result-track:4270ab0d2613801a3a4aa621642f4e977a7ee1313ad3241fc79e57f7f8634a87` |
| 38 | `lemma` | [of_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/of-mul-left--d329022aac423131ff7845a6.md) | 214 | `result-track:d329022aac423131ff7845a639a1bf138a16d9750a65ffeb1409ec44670a73cb` |
| 39 | `lemma` | [of_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/of-mul-right--66cb3f50feab5de4b9d5022d.md) | 218 | `result-track:66cb3f50feab5de4b9d5022df96166ca1f79305cbe992d9351a1f0f40faaac16` |
| 40 | `theorem` | [cancel_right_div_gcd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/cancel-right-div-gcd--2345c4c927b3a9b2c3f84590.md) | 223 | `result-track:2345c4c927b3a9b2c3f845907510e5015a7084a049c31259e92b23de1401b53d` |
| 41 | `theorem` | [cancel_left_div_gcd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/cancel-left-div-gcd--f4dfe0e8b3865c4d330b4acc.md) | 237 | `result-track:f4dfe0e8b3865c4d330b4acc34312140fbaf5b20129fe478ffdf754ecc2f08bc` |
| 42 | `theorem` | [of_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/of-div--620fd85f482c85588c93dc44.md) | 241 | `result-track:620fd85f482c85588c93dc44b126f24d69d8eccab7b3c4f6bc2f91538b8dd987` |
| 43 | `theorem` | [modEq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-one--fee21e48a5dfb58cad18faa1.md) | 247 | `result-track:fee21e48a5dfb58cad18faa14c85d5b66e7519ad663e1a74b8d2c381cb82b14a` |
| 44 | `theorem` | [modEq_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-sub--86b5abccacc97dc27e6d5f50.md) | 251 | `result-track:86b5abccacc97dc27e6d5f50c49fd689d499e67410897dae824899571bf7d600` |
| 45 | `theorem` | [modEq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-zero-iff--03e9caf3d18ad2e876c6852d.md) | 256 | `result-track:03e9caf3d18ad2e876c6852d93f28c70a133ba1414cb5e2af822b1c11b4355af` |
| 46 | `theorem` | [add_modEq_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/add-modeq-left--b42677409ed5b0e0a88d0fe6.md) | 260 | `result-track:b42677409ed5b0e0a88d0fe69b6fb77edbf7a158559f2a2a3feb7266457a247e` |
| 47 | `theorem` | [add_modEq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/add-modeq-right--7618be0e7fe8296a9061b941.md) | 264 | `result-track:7618be0e7fe8296a9061b941954565db47398f4303fdab076501ff92dcae78cf` |
| 48 | `theorem` | [modEq_and_modEq_iff_modEq_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-and-modeq-iff-modeq-mul--343fc13db04aa7ad996de454.md) | 267 | `result-track:343fc13db04aa7ad996de4541bfd7d1dd76558248461354b886964faee0d5e02` |
| 49 | `theorem` | [gcd_a_modEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/gcd-a-modeq--82c1a4530fba14b3bd761db9.md) | 277 | `result-track:82c1a4530fba14b3bd761db904503f7510d973ca5ca0e3290e43d26a3545c325` |
| 50 | `theorem` | [modEq_add_fac](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-add-fac--fb6b17dd5476db7ba047c4e7.md) | 282 | `result-track:fb6b17dd5476db7ba047c4e7e9d1e3de5495389871ad8e3cc2d1c7e6dc3da321` |
| 51 | `theorem` | [modEq_sub_fac](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-sub-fac--e35a646af26b95765e7d7f6a.md) | 289 | `result-track:e35a646af26b95765e7d7f6a9c84921011c78612aec026117403754ad8017b2a` |
| 52 | `theorem` | [modEq_add_fac_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/modeq-add-fac-self--11967c19791f339b53b78b9f.md) | 293 | `result-track:11967c19791f339b53b78b9f41557ee67fb303a9c6b6734bac634146a6cc6e19` |
| 53 | `theorem` | [mod_coprime](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/mod-coprime--cd07dc02bdb6b8f49a66da55.md) | 297 | `result-track:cd07dc02bdb6b8f49a66da555f954ec6ac6b789a0ab19d853b5991baeb31ede3` |
| 54 | `theorem` | [exists_unique_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/exists-unique-equiv--d6922aa37c8efd46308f6542.md) | 307 | `result-track:d6922aa37c8efd46308f65422966af55d309eb9dd857c3ca09bfca509d74d954` |
| 55 | `theorem` | [exists_unique_equiv_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/exists-unique-equiv-nat--7b45824f888bd4d869451ddd.md) | 315 | `result-track:7b45824f888bd4d869451ddd9aa7df918ce43e0010bce6dcde93f48c4a931ce5` |
| 56 | `theorem` | [mod_mul_right_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/mod-mul-right-mod--53d6e93fe390e400fb59bb34.md) | 321 | `result-track:53d6e93fe390e400fb59bb34d574a9131577c88b902d37eda04e4219930eedfa` |
| 57 | `theorem` | [mod_mul_left_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/declarations/mod-mul-left-mod--1ea895c173c144fc264cf2fe.md) | 325 | `result-track:1ea895c173c144fc264cf2fead4b5b67e282eeeb45cfcd7148a9fd2243d34f40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
