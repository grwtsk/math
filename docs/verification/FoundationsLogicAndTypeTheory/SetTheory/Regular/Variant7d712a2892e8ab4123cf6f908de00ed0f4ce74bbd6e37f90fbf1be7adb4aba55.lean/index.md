# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Regular.Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09320673682f807d3d701755b33364e24fca3c6b",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09320673682f807d3d701755b33364e24fca3c6b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Cofinality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.FixedPoint` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular--26baa2e082fba4e7341c5829.md) | 45 | `declaration-track:26baa2e082fba4e7341c582966f807ec89a34ddda0779d92fb6200d7af8ebde9` |
| 2 | `theorem` | [IsRegular.aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-aleph0-le--b6414582c346aef3a27663e4.md) | 48 | `result-track:b6414582c346aef3a27663e4d94b362a2f60c306c4ecb7e5ba5ae347a7a731e1` |
| 3 | `theorem` | [IsRegular.cof_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-cof-eq--60d05e672c3a2426e52e10de.md) | 51 | `result-track:60d05e672c3a2426e52e10dee360b709c9d7c76b3b12471ad0c6e818bf567f09` |
| 4 | `theorem` | [IsRegular.cof_omega_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-cof-omega-eq--fa3d394aefd0519f6e26b381.md) | 54 | `result-track:fa3d394aefd0519f6e26b3810daee40e9d7e8fdcce59ad64b10569a1d4e5e5f5` |
| 5 | `theorem` | [IsRegular.pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-pos--afc3f61fc0fdde7e3c960bc7.md) | 57 | `result-track:afc3f61fc0fdde7e3c960bc74c660b02d542cac6620b3ee4fe4d09526f4d88e8` |
| 6 | `theorem` | [IsRegular.nat_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-nat-lt--642a91d7ce35265ac48f35a2.md) | 60 | `result-track:642a91d7ce35265ac48f35a2bfafc8445e7dd3a5b2bb086a1e920d7ff5f119f3` |
| 7 | `theorem` | [IsRegular.ord_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-ord-pos--72782952aff254f351686b14.md) | 63 | `result-track:72782952aff254f351686b14f914bae7df2a0a1a94d2cdceaa84b4e5e3a2350c` |
| 8 | `theorem` | [isRegular_cof](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-cof--931e8190aeb00ea87c21ff31.md) | 67 | `result-track:931e8190aeb00ea87c21ff31f8cf829d032850d51d16de9faa5d38e17ce54a4b` |
| 9 | `lemma` | [IsRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-ne-zero--77cf8d460946d25cf496df80.md) | 71 | `result-track:77cf8d460946d25cf496df802ac75700988d4dd6abcc1ebf26e3bf2bf192f48a` |
| 10 | `theorem` | [isRegular_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-aleph0--d7949ac51cc4cd43b0b4f53a.md) | 74 | `result-track:d7949ac51cc4cd43b0b4f53a47ed09b17a3e2915dc856c39ab982c478282798a` |
| 11 | `lemma` | [fact_isRegular_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/fact-isregular-aleph0--63035afdb2e852052edce5f1.md) | 77 | `result-track:63035afdb2e852052edce5f1050beaab51db0734da1193a99be5686c9a4a4814` |
| 12 | `theorem` | [isRegular_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-succ--ef25186eeb2d9a72106fc755.md) | 80 | `result-track:ef25186eeb2d9a72106fc7554a9d4505bde26acdd273c47e80448c694db0f80b` |
| 13 | `theorem` | [isRegular_aleph_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-aleph-one--1e1b289cc6e3f01036ffa903.md) | 102 | `result-track:1e1b289cc6e3f01036ffa9033d117240a6aa0797cbd22ecd807cabebab415a62` |
| 14 | `theorem` | [isRegular_preAleph_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-prealeph-succ--e7065a5cdc586f700d11178c.md) | 106 | `result-track:e7065a5cdc586f700d11178c4196e60204f8d0f7e5d7033eb7223ccac1127b54` |
| 15 | `theorem` | [isRegular_aleph_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isregular-aleph-succ--27db680fcdcca6bda2497865.md) | 110 | `result-track:27db680fcdcca6bda24978655a726075b2e0d30c1d0eea1356c329aa2488576c` |
| 16 | `theorem` | [lsub_lt_ord_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/lsub-lt-ord-lift-of-isregular--190fd3eb39a6abeb974318c8.md) | 114 | `result-track:190fd3eb39a6abeb974318c89edc3cf47fdfc2e61ec8951c859eb1754c2b1a8a` |
| 17 | `theorem` | [lsub_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/lsub-lt-ord-of-isregular--59c8a3b86da47ffd24fa46b1.md) | 118 | `result-track:59c8a3b86da47ffd24fa46b107a4786f2370e061a79ffcd66c2894f21e08ea1b` |
| 18 | `theorem` | [iSup_lt_ord_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isup-lt-ord-lift-of-isregular--6544a994346fcd2419a00650.md) | 122 | `result-track:6544a994346fcd2419a00650b4fcc54428cbf16592ebe778f9af8a4ed1d21520` |
| 19 | `theorem` | [iSup_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isup-lt-ord-of-isregular--e41530c50c5b17d3ba36254d.md) | 126 | `result-track:e41530c50c5b17d3ba36254db8696e542b5709e53dc2ebf04666bcbf89957f30` |
| 20 | `theorem` | [blsub_lt_ord_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/blsub-lt-ord-lift-of-isregular--74f7d75c69c0c6bb7a40a8e5.md) | 130 | `result-track:74f7d75c69c0c6bb7a40a8e51129307c4597193ce66e121063d11d19f3c092cc` |
| 21 | `theorem` | [blsub_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/blsub-lt-ord-of-isregular--2c599df53d21acd8e80e02a3.md) | 135 | `result-track:2c599df53d21acd8e80e02a3c0b9ed8a4e3a6ce2f5195baf37b9461e2adeb1b0` |
| 22 | `theorem` | [bsup_lt_ord_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/bsup-lt-ord-lift-of-isregular--ca47e0a75006a909166b5950.md) | 139 | `result-track:ca47e0a75006a909166b59501fbc572cf3e24b29ae4ae7a4cf502e9109c0d66f` |
| 23 | `theorem` | [bsup_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/bsup-lt-ord-of-isregular--231428c459a1d92fe2a45254.md) | 144 | `result-track:231428c459a1d92fe2a4525489056145e40c4c2972c05e740f1cd48f0063195d` |
| 24 | `theorem` | [iSup_lt_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isup-lt-lift-of-isregular--5c91ae8abbe27c2c271c1aa7.md) | 148 | `result-track:5c91ae8abbe27c2c271c1aa792789f53703acc38c83a899f00baed0f25f9f070` |
| 25 | `theorem` | [iSup_lt_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isup-lt-of-isregular--0af7116f717b63006d969cc3.md) | 152 | `result-track:0af7116f717b63006d969cc39c1c00909b990f626feeb9a777f054017beeeafb` |
| 26 | `theorem` | [sum_lt_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/sum-lt-lift-of-isregular--3c1ccb45e1d5b6a98af266c0.md) | 156 | `result-track:3c1ccb45e1d5b6a98af266c099982523262ce729983c9f05835fd60dadb6f71a` |
| 27 | `theorem` | [sum_lt_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/sum-lt-of-isregular--053755fae17060e3e18b994f.md) | 160 | `result-track:053755fae17060e3e18b994ffc4688341a6aafb3987181529083d31e900eba87` |
| 28 | `theorem` | [card_lt_of_card_iUnion_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/card-lt-of-card-iunion-lt--0316ab82a7d1360bcd845c22.md) | 165 | `result-track:0316ab82a7d1360bcd845c22cea0163cc6e700c3df484e70b1cb2d495ef5232c` |
| 29 | `theorem` | [card_iUnion_lt_iff_forall_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/card-iunion-lt-iff-forall-of-isregular--f402c3c4dbaaa8caa030980f.md) | 170 | `result-track:f402c3c4dbaaa8caa030980fe037fd3e2f7d1b35a7f753b61d06927e23dad8e3` |
| 30 | `theorem` | [card_lt_of_card_biUnion_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/card-lt-of-card-biunion-lt--7a4b406cb341ece0d989a1fe.md) | 179 | `result-track:7a4b406cb341ece0d989a1fe652696f6345b51e0062dd1cd32fa8fa931e4c9bd` |
| 31 | `theorem` | [card_biUnion_lt_iff_forall_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/card-biunion-lt-iff-forall-of-isregular--114beb686403cefe74c8a7cf.md) | 185 | `result-track:114beb686403cefe74c8a7cf9ee9417291266311bfb36facb0bd5a26b564dcbb` |
| 32 | `theorem` | [nfpFamily_lt_ord_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/nfpfamily-lt-ord-lift-of-isregular--542eea00bb71714380e1ad05.md) | 190 | `result-track:542eea00bb71714380e1ad051e5dfcc37b876b7ecf1cf532086e65aca0bb9c3e` |
| 33 | `theorem` | [nfpFamily_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/nfpfamily-lt-ord-of-isregular--e2a3f39405c5f32f17a41dde.md) | 197 | `result-track:e2a3f39405c5f32f17a41ddecfcb688c2ecfe9a1d7f9c475a3a4d4a12e8410ae` |
| 34 | `theorem` | [nfp_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/nfp-lt-ord-of-isregular--9c8e633768edd1c43e22a6d6.md) | 202 | `result-track:9c8e633768edd1c43e22a6d6993d9ffb07904a22299961c1b8e101bc20151715` |
| 35 | `theorem` | [derivFamily_lt_ord_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/derivfamily-lt-ord-lift--8a8c1f8f02879666eb6a178c.md) | 206 | `result-track:8a8c1f8f02879666eb6a178cfac8a650ad066c599bab7f3f927e69e2e87a8df9` |
| 36 | `theorem` | [derivFamily_lt_ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/derivfamily-lt-ord--6d63c5cb4c4b1b8788679706.md) | 232 | `result-track:6d63c5cb4c4b1b87886797066668ae248acccfac72461108e693afb8bc819d31` |
| 37 | `theorem` | [deriv_lt_ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/deriv-lt-ord--34f4372b4d53eb191e439523.md) | 237 | `result-track:34f4372b4d53eb191e4395238a6f96938b102d0ae2367d61693f196107bce85e` |
| 38 | `def` | [IsInaccessible](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isinaccessible--4189dcd278bec5aa3af9e029.md) | 245 | `declaration-track:4189dcd278bec5aa3af9e0290b6672881f974a4071fe5503805f9dced5fc7e56` |
| 39 | `theorem` | [IsInaccessible.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isinaccessible-mk--d6555ff0a8006f72db65d152.md) | 248 | `result-track:d6555ff0a8006f72db65d15281033bf51855ff0e6e4a695009c69068d8deb2d0` |
| 40 | `theorem` | [univ_inaccessible](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/univ-inaccessible--a35047d587f8f00c723bd9a5.md) | 253 | `result-track:a35047d587f8f00c723bd9a59be60308e2e7ee69378ef475def76f023b98de52` |
| 41 | `lemma` | [iSup_sequence_lt_omega1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/declarations/isup-sequence-lt-omega1--324f2bd1d5c07e235ed68870.md) | 272 | `result-track:324f2bd1d5c07e235ed68870b2833631676c4a123fde9175f14ebda20df28c14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
