# Verification target: GRWTSK.Algebra.GroupTheory.ULift.Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4506587404f9e050c5181fc82fb127dfd0c5cf6c",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4506587404f9e050c5181fc82fb127dfd0c5cf6c`.

Source path: `GRWTSK/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/one--2b8605077710ef48432055a4.md) | 37 | `declaration-track:2b8605077710ef48432055a43730ab922a756f3314aa02fc01d45ec7088fb59e` |
| 2 | `theorem` | [one_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/one-down--40b38b6aac339dd68d595631.md) | 41 | `result-track:40b38b6aac339dd68d595631ac2c8ce325e4f945be45eddeb91d30e0925d3d6d` |
| 3 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/mul--89daaf971f3f30bfdd1b2ebc.md) | 45 | `declaration-track:89daaf971f3f30bfdd1b2ebc6bb87a2ef95f036cc7f49e50149fe6140de911e8` |
| 4 | `theorem` | [mul_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/mul-down--404e44de315ba0fe515e6fc4.md) | 49 | `result-track:404e44de315ba0fe515e6fc46524085f2fcf7e1db2962fd84f9053e91d58b277` |
| 5 | `instance` | [div](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/div--da9489f093da74d1ed9cb89c.md) | 53 | `declaration-track:da9489f093da74d1ed9cb89cd0a53a70d38cf13241ed43c4ece3487cd1de5858` |
| 6 | `theorem` | [div_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/div-down--89c78b1289698316a2958efa.md) | 57 | `result-track:89c78b1289698316a2958efa5c9798df41066da8da387915960a8eef592c82da` |
| 7 | `instance` | [inv](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/inv--861da74222b9e7c63b964035.md) | 61 | `declaration-track:861da74222b9e7c63b96403541bcfa3f49093f5b207abb887b212206fa52e862` |
| 8 | `theorem` | [inv_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/inv-down--d6a202a9b18319b9c9f7c627.md) | 65 | `result-track:d6a202a9b18319b9c9f7c627a8fb7d1b05b42ba9a52fb47e9c7a864d271ca280` |
| 9 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/smul--0fc2f790eba9f36a34309679.md) | 69 | `declaration-track:0fc2f790eba9f36a34309679367655a960034f5285158de64b00c9d5f36db1b8` |
| 10 | `theorem` | [smul_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/smul-down--7737816404a72f9109ca5177.md) | 73 | `result-track:7737816404a72f9109ca51771506dd364e4f7dbb8a9505e82e0deaf5dfc03bff` |
| 11 | `instance` | [pow](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/pow--4d17f5ec7af7b352362706e2.md) | 77 | `declaration-track:4d17f5ec7af7b352362706e21a6b0a877b8b2af37f1fa618e75787cfd677138d` |
| 12 | `theorem` | [pow_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/pow-down--f939c88c0e38f67f3c5320b5.md) | 81 | `result-track:f939c88c0e38f67f3c5320b5eda064eecf68e5cb0d736d3d0b10c1e873a51b9f` |
| 13 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.OneDown.Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.MulEquiv.ulift](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/root-grwtsk-algebra-grouptheory-onedown-variant49ac0b840f1b60539e8aaf00d--9961fad247bc9af11f2a62de.md) | 87 | `declaration-track:9961fad247bc9af11f2a62de8e1c2d391f16a843a0b8139562f52be8c8d4432c` |
| 14 | `instance` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/semigroup--fa382fc96f4917deaec52c2b.md) | 91 | `declaration-track:fa382fc96f4917deaec52c2b48fe7a40ebfea86711d218640d6d15b70b7a02fa` |
| 15 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/commsemigroup--baba233029e09d8dfdaff302.md) | 95 | `declaration-track:baba233029e09d8dfdaff302ce4f66ae712d80437d02bbae2c67a6aabd50dec2` |
| 16 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/muloneclass--050679194e717911eb8ae061.md) | 99 | `declaration-track:050679194e717911eb8ae0611123c112bcf97004560942ed39175fc3f79309a3` |
| 17 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/monoid--fcc3d6c8c4918b1597e69ebe.md) | 103 | `declaration-track:fcc3d6c8c4918b1597e69ebecf27b452a824f7d47f69efa5d9f16b62d8e7d99d` |
| 18 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/commmonoid--a99cd4dc6955c923e923de0b.md) | 107 | `declaration-track:a99cd4dc6955c923e923de0b5e187900dd1699c027efe7c47a585e72ef7f77bf` |
| 19 | `instance` | [instNatCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/instnatcast--b53df9516b8e6322537732bd.md) | 110 | `declaration-track:b53df9516b8e6322537732bd91694e7bbd2e2b654485e08df2ed05ea05b3565b` |
| 20 | `instance` | [instIntCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/instintcast--caee7d97c02d261103aceab9.md) | 111 | `declaration-track:caee7d97c02d261103aceab9d2de8ded62eb7efb8160755880656247c3690cd3` |
| 21 | `theorem` | [up_natCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/up-natcast--3a1f6a387cceaf7860c748e7.md) | 114 | `result-track:3a1f6a387cceaf7860c748e7207280b1a882f2f074d036b0f925bdc150404451` |
| 22 | `theorem` | [up_ofNat](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/up-ofnat--af0b72703b145a605c6ebce7.md) | 118 | `result-track:af0b72703b145a605c6ebce799bf67ac3e8d3f596231baab5a988eeb7fc92263` |
| 23 | `theorem` | [up_intCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/up-intcast--0b9a3c71b1c1195a6fdce924.md) | 123 | `result-track:0b9a3c71b1c1195a6fdce924a470d3fc6db00cd6f9b726ca22db0c646ef4d512` |
| 24 | `theorem` | [down_natCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/down-natcast--822e82abe735daa3b3b6bd15.md) | 127 | `result-track:822e82abe735daa3b3b6bd150a36fb506da627ff403193d97294b56facb81797` |
| 25 | `theorem` | [down_ofNat](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/down-ofnat--8506809444df88854f1474f9.md) | 131 | `result-track:8506809444df88854f1474f9fce888efbe64a5ed013a15cdacc9284d59c98e97` |
| 26 | `theorem` | [down_intCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/down-intcast--ea0e9c1c2d3c4ca9a72763fb.md) | 136 | `result-track:ea0e9c1c2d3c4ca9a72763fb48454f2bab2a4ceb8e2276d190fde90be94ccd8b` |
| 27 | `instance` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/addmonoidwithone--82f1ef18cd20a33b608c751b.md) | 139 | `declaration-track:82f1ef18cd20a33b608c751b8f51f7be7f5c4052d95f1b557b001ed6f6a918d5` |
| 28 | `instance` | [addCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/addcommmonoidwithone--1e21ccea6a9750bb5e790f2f.md) | 145 | `declaration-track:1e21ccea6a9750bb5e790f2fe988ad29ebe307008ce06648c51445f681edc7fd` |
| 29 | `instance` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/divinvmonoid--98f1bacea14cf96d5980770a.md) | 149 | `declaration-track:98f1bacea14cf96d5980770a1bf0c3abff110acbef11c79d33d394e479c0f71e` |
| 30 | `instance` | [group](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/group--43e626583077aabd443f0190.md) | 154 | `declaration-track:43e626583077aabd443f0190f50369201b336e22079c8fa53592e7853f3334ab` |
| 31 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/commgroup--0be2652430767f5f37b9e138.md) | 159 | `declaration-track:0be2652430767f5f37b9e138206f59b041bcb9a59c65a097cfd3466e34412f76` |
| 32 | `instance` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/addgroupwithone--3dde9a49f3f7b39e598096c6.md) | 163 | `declaration-track:3dde9a49f3f7b39e598096c66ccbb4f2b6d288516a689a573197e9178a0e864d` |
| 33 | `instance` | [addCommGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/addcommgroupwithone--60238daa91641ae383856f31.md) | 169 | `declaration-track:60238daa91641ae383856f31733e1b377f2edcb69a3f8ecd89e66b317fca4e42` |
| 34 | `instance` | [leftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/leftcancelsemigroup--bddda872dc08466c0d85a09c.md) | 173 | `declaration-track:bddda872dc08466c0d85a09ce0841894e0ebc38022bf18f089256188a5a2a62c` |
| 35 | `instance` | [rightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/rightcancelsemigroup--33d1c6825ca2ca1b5aab1f36.md) | 177 | `declaration-track:33d1c6825ca2ca1b5aab1f36e89b11027123ca162ac307d9ecd82242f3be4de8` |
| 36 | `instance` | [leftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/leftcancelmonoid--3f146a7a3b75514ae6ac470e.md) | 181 | `declaration-track:3f146a7a3b75514ae6ac470e4b2ed113650b257d4fb5e603fb9198864deb2178` |
| 37 | `instance` | [rightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/rightcancelmonoid--bc22df7193366e8c383700ff.md) | 185 | `declaration-track:bc22df7193366e8c383700ff4472841869028d463be0094d59373c97c296b917` |
| 38 | `instance` | [cancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/cancelmonoid--6cf369d519877810c16d79f2.md) | 189 | `declaration-track:6cf369d519877810c16d79f2790acc5beac5f57506e3d7712fc0f21da37b0d4e` |
| 39 | `instance` | [cancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/cancelcommmonoid--2cd7d019bfa5890befecdbb4.md) | 193 | `declaration-track:2cd7d019bfa5890befecdbb44861a0c895746605c268422dfbdcfef5c1a6530d` |
| 40 | `instance` | [nontrivial](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/declarations/nontrivial--a3f9f4b29207f7d55467103a.md) | 196 | `declaration-track:a3f9f4b29207f7d55467103acb3a6f352b0bf18b2ae03cd0245499517737c194` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
