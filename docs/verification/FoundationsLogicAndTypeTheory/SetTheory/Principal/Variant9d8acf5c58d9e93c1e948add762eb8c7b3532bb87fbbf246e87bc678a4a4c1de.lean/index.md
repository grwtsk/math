# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Principal.Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd5c420902bee0dad91716f994571a308018abe3",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd5c420902bee0dad91716f994571a308018abe3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.FixedPoint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal--8338bcbce9f870c836115098.md) | 48 | `declaration-track:8338bcbce9f870c836115098539b66cb592c7dd44969d83a9366238ee21e9212` |
| 2 | `theorem` | [principal_swap_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-swap-iff--9905edfb4258429c7613b6bb.md) | 51 | `result-track:9905edfb4258429c7613b6bba90b764793dc699a6d13c077a4096b5f9a0b6c48` |
| 3 | `theorem` | [not_principal_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/not-principal-iff--a644db27f8ad1e8fe06a3fb1.md) | 54 | `result-track:a644db27f8ad1e8fe06a3fb1ac09e5eb830bc185a35b4aa9a7b883430d4a5043` |
| 4 | `theorem` | [principal_iff_of_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-iff-of-monotone--1360230b52ca2abf58d7c7a2.md) | 57 | `result-track:1360230b52ca2abf58d7c7a28a99be776896f458b135c5f6e9a4a69ee414f56d` |
| 5 | `theorem` | [not_principal_iff_of_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/not-principal-iff-of-monotone--1f5f1fbb46dff4943fe60abf.md) | 66 | `result-track:1f5f1fbb46dff4943fe60abfc6dffd5f1514411d08b99e84410ae9ce4d1c9605` |
| 6 | `theorem` | [principal_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-zero--25570da501a72e8019739aee.md) | 71 | `result-track:25570da501a72e8019739aee9c6d06c5c159334cb7a8d48d73141cdf7cabab32` |
| 7 | `theorem` | [principal_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-one-iff--0a61579237447ec30dfb576f.md) | 75 | `result-track:0a61579237447ec30dfb576f34f89ed5950626517da7dae2f2d6add8f6b3c237` |
| 8 | `theorem` | [Principal.iterate_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-iterate-lt--6d7f9eada03c23638148f81d.md) | 81 | `result-track:6d7f9eada03c23638148f81dccdaf2079a7dbd64aceb27493a05d50f93cc072a` |
| 9 | `theorem` | [op_eq_self_of_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/op-eq-self-of-principal--50b4e71b4a3d0ca99088d04c.md) | 87 | `result-track:50b4e71b4a3d0ca99088d04ce9fb5c44ab84299986b56bfafb54276ed664233d` |
| 10 | `theorem` | [nfp_le_of_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/nfp-le-of-principal--7d0e13931bb4758708b91d26.md) | 93 | `result-track:7d0e13931bb4758708b91d2623dbf570cbfa2b447a279169d72926df9a80ecea` |
| 11 | `theorem` | [principal_nfp_iSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-nfp-isup--39503d891da1649066392886.md) | 101 | `result-track:39503d891da1649066392886ddc551aa7b82fc8bc2b13a8d9dc459b2f23b690e` |
| 12 | `theorem` | [not_bddAbove_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/not-bddabove-principal--94d734855e20ed2ca0d7693b.md) | 122 | `result-track:94d734855e20ed2ca0d7693be5a20004cdbf88a3c983a869e20e3a59eb7461b1` |
| 13 | `theorem` | [principal_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-one--db07a38540955df43a1e2aca.md) | 129 | `result-track:db07a38540955df43a1e2acae5a7b26c13b95aeae5d30cd5bccca29eb4d4167f` |
| 14 | `theorem` | [principal_add_of_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-of-le-one--52c251a9b7162747134b7dd4.md) | 132 | `result-track:52c251a9b7162747134b7dd45c64a1cf485243b391d30433ab5a8e26534b5c22` |
| 15 | `theorem` | [isLimit_of_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/islimit-of-principal-add--17bf9fcdeee5c079da05b84c.md) | 137 | `result-track:17bf9fcdeee5c079da05b84c89f0cfd8cfe5bc46b67170dbda6e9a1d0ca8219f` |
| 16 | `theorem` | [principal_add_iff_add_left_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-iff-add-left-eq-self--f11aa59b5b360a21fb361f4d.md) | 141 | `result-track:f11aa59b5b360a21fb361f4db46eb96e07fbd984ce906c6f03c76eb7833b4410` |
| 17 | `theorem` | [exists_lt_add_of_not_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/exists-lt-add-of-not-principal-add--183ae44d424173b2c9470499.md) | 152 | `result-track:183ae44d424173b2c9470499889d5299c7f9748c67096f6d22867dc059828a2a` |
| 18 | `theorem` | [principal_add_iff_add_lt_ne_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-iff-add-lt-ne-self--069c6dbaeb1529cda5b6ff75.md) | 161 | `result-track:069c6dbaeb1529cda5b6ff75c593c811e8fa28a85f0b961df5ebefe3a210fc55` |
| 19 | `theorem` | [principal_add_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-omega0--c4aa91d927e5133bfc55682a.md) | 167 | `result-track:c4aa91d927e5133bfc55682a9d1f8b54cd9103f6c2994d9a4a4c44d66b3b95b8` |
| 20 | `theorem` | [add_omega0_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/add-omega0-opow--a694c91ec231ec408b3e582f.md) | 170 | `result-track:a694c91ec231ec408b3e582f24ee790a19f19d2e2cbdcce6e473c37a985ac1ec` |
| 21 | `theorem` | [principal_add_omega0_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-omega0-opow--35db3d4405c9f403a6416a3f.md) | 192 | `result-track:35db3d4405c9f403a6416a3fd18fe387afe995176e0b29c4ad6a9938683edd96` |
| 22 | `theorem` | [principal_add_iff_zero_or_omega0_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-iff-zero-or-omega0-opow--cc8700a44cab95c602808ab6.md) | 196 | `result-track:cc8700a44cab95c602808ab66e008754908d9584a7ad097c7ad4cd9e40607860` |
| 23 | `theorem` | [principal_add_opow_of_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-opow-of-principal-add--8c1e6de3e25c97135eb9d5eb.md) | 219 | `result-track:8c1e6de3e25c97135eb9d5ebc8798accc97f5eb381aa4f8d291bf93379c6fea3` |
| 24 | `theorem` | [add_absorp](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/add-absorp--1b6b873ccf21c28d443cd3c7.md) | 229 | `result-track:1b6b873ccf21c28d443cd3c751fcf87c1d9b12c665fa8b3e46de8aab506e0c0b` |
| 25 | `theorem` | [principal_add_mul_of_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-mul-of-principal-add--d0be8130b62b4a438508a002.md) | 232 | `result-track:d0be8130b62b4a438508a0027bb775e7add98f8e417eeec2fec7e5e6a45c3bd4` |
| 26 | `theorem` | [principal_mul_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-mul-one--308fa185da3e2fc9016f6540.md) | 251 | `result-track:308fa185da3e2fc9016f6540a2283b3b69d9d8379461b437751a1f624c83bb51` |
| 27 | `theorem` | [principal_mul_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-mul-two--84c01840fe2ab71058a65bef.md) | 255 | `result-track:84c01840fe2ab71058a65bef2559a0791c3f1562eaf42da2e1fd20b8f979e7b4` |
| 28 | `theorem` | [principal_mul_of_le_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-mul-of-le-two--a65f79b8bdfb8e7757d85b81.md) | 261 | `result-track:a65f79b8bdfb8e7757d85b818f6dc5e8e6a6d07cf33f9a427476283418e77d52` |
| 29 | `theorem` | [principal_add_of_principal_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-of-principal-mul--145bbf37a792a4425976ac76.md) | 270 | `result-track:145bbf37a792a4425976ac768f58c1bfdea17d6110d156e44d702aca5b84cbf7` |
| 30 | `theorem` | [isLimit_of_principal_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/islimit-of-principal-mul--ce78b8cd25611ef60c18f193.md) | 281 | `result-track:ce78b8cd25611ef60c18f193870c5534444cfe47d532b8183b7522b43d5a3b11` |
| 31 | `theorem` | [principal_mul_iff_mul_left_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-mul-iff-mul-left-eq--318a7f2f7e8b9ab7d9788770.md) | 285 | `result-track:318a7f2f7e8b9ab7d9788770d801cd3479440e910554f99b6440bf223421f9ad` |
| 32 | `theorem` | [principal_mul_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-mul-omega0--7fbae86a9f71513471eba1f7.md) | 300 | `result-track:7fbae86a9f71513471eba1f79fc0b67facc13f3b21f06a8a08166e771a325900` |
| 33 | `theorem` | [mul_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/mul-omega0--68e2844dd043e14a67c07790.md) | 306 | `result-track:68e2844dd043e14a67c07790cfa6d3f7d5095100a4fe26f6a87acfc53f5a32d6` |
| 34 | `theorem` | [natCast_mul_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/natcast-mul-omega0--9c9f14b76a236ddd16c349b2.md) | 309 | `result-track:9c9f14b76a236ddd16c349b2c4f351a1a7e964119bba6586607361c8d0ed7997` |
| 35 | `theorem` | [mul_lt_omega0_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/mul-lt-omega0-opow--2006ba4eb6c003cf4b8c0796.md) | 312 | `result-track:2006ba4eb6c003cf4b8c07960e10bba194b79d94957c66ce0e65d5e7595e80c6` |
| 36 | `theorem` | [mul_omega0_opow_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/mul-omega0-opow-opow--4686565bcd777bd573f793cd.md) | 326 | `result-track:4686565bcd777bd573f793cd67fe67fcb25936731d4b8792031f181cc0614d15` |
| 37 | `theorem` | [principal_mul_omega0_opow_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-mul-omega0-opow-opow--a871b5e353bbddb0a1f2ba93.md) | 338 | `result-track:a871b5e353bbddb0a1f2ba93f70ad82a2009e1346fb50e3394e8a7471126a585` |
| 38 | `theorem` | [principal_add_of_principal_mul_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-add-of-principal-mul-opow--9f499e4e20c972ce013756a5.md) | 341 | `result-track:9f499e4e20c972ce013756a5f85a64c5aec569e2894637a5699a9ee561e26ea2` |
| 39 | `theorem` | [principal_mul_iff_le_two_or_omega0_opow_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-mul-iff-le-two-or-omega0-opow-opow--744ef856a966296b4dd3bb16.md) | 349 | `result-track:744ef856a966296b4dd3bb1685446ac7dfc615bef68c423f91e7c5613614d8ef` |
| 40 | `theorem` | [mul_omega0_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/mul-omega0-dvd--84c470ae9e4d827567cb36ec.md) | 365 | `result-track:84c470ae9e4d827567cb36ec36478c5225c4d4666901fa1122cc1bae3f287a4a` |
| 41 | `theorem` | [mul_eq_opow_log_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/mul-eq-opow-log-succ--cca8cac144f0744d831c238d.md) | 368 | `result-track:cca8cac144f0744d831c238d784f8f244d7953bff44f5e9397067609aac9eda2` |
| 42 | `theorem` | [principal_opow_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/principal-opow-omega0--3b27a1574ac459f88fa5da8e.md) | 386 | `result-track:3b27a1574ac459f88fa5da8e01227dd00c18997e187afc9eaff491d017c6049d` |
| 43 | `theorem` | [opow_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/opow-omega0--59b3b3dddefd3d81cd5c95bf.md) | 392 | `result-track:59b3b3dddefd3d81cd5c95bfcba4eba97e27a035d199c33d69daa5a5f95e02c7` |
| 44 | `theorem` | [natCast_opow_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/declarations/natcast-opow-omega0--35c7d2a969e401d5e93e4472.md) | 397 | `result-track:35c7d2a969e401d5e93e4472870085af826f2779ccbb07dfdd8c8c4d55a242a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
