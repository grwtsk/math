# Verification target: GRWTSK.Algebra.Basic.Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e46b016121d8456847f7b3efd7cfe89ebcc0ac30",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e46b016121d8456847f7b3efd7cfe89ebcc0ac30`.

Source path: `GRWTSK/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Even` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Hom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [castAddMonoidHom](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/castaddmonoidhom--58f10f5667b5ae78ee117b54.md) | 44 | `declaration-track:58f10f5667b5ae78ee117b549959e32f735624869314dada41de0124e2d089eb` |
| 2 | `theorem` | [coe_castAddMonoidHom](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/coe-castaddmonoidhom--78e0b74bacde041e76905168.md) | 51 | `result-track:78e0b74bacde041e76905168074e6e1fdc0375f05c314ffe1e7a65bbd98ef615` |
| 3 | `lemma` | [_root_.GRWTSK.Algebra.CastAddMonoidHom.Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.Even.natCast](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/root-grwtsk-algebra-castaddmonoidhom-varianta306886e307c349e3f2d17518637--777ff6e7f2d12744001b36da.md) | 54 | `result-track:777ff6e7f2d12744001b36da60f58c3fab38bb921a697f7cf65dc7fb3632bbbe` |
| 4 | `lemma` | [cast_mul](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/cast-mul--6427d6c4f3eebd107f2c5402.md) | 60 | `result-track:6427d6c4f3eebd107f2c54025dbef82c49a63beb5ad16bb52b315251136bdf91` |
| 5 | `def` | [castRingHom](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/castringhom--106317ed41ed74028397f98e.md) | 65 | `declaration-track:106317ed41ed74028397f98e5cd8833af15dcf3ed6b7a9d1d9f6de262cbc1950` |
| 6 | `lemma` | [coe_castRingHom](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/coe-castringhom--16c3db409ee43d5cf9a1e23e.md) | 68 | `result-track:16c3db409ee43d5cf9a1e23e79562042f6f95d2a4b544b06a2fc8842b1e9d44c` |
| 7 | `lemma` | [_root_.GRWTSK.Algebra.CastAddMonoidHom.Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.nsmul_eq_mul'](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/root-grwtsk-algebra-castaddmonoidhom-varianta306886e307c349e3f2d17518637--328af38ca5f0ac32d58969ed.md) | 70 | `result-track:328af38ca5f0ac32d58969eddabb4d1f23185fdcaa8904e02458e47cc013e352` |
| 8 | `lemma` | [_root_.GRWTSK.Algebra.CastAddMonoidHom.Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.nsmul_eq_mul](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/root-grwtsk-algebra-castaddmonoidhom-varianta306886e307c349e3f2d17518637--68decdda191dc20b6f0a0fee.md) | 75 | `result-track:68decdda191dc20b6f0a0feea793f75faf564715e42fb04141544e4e25e32888` |
| 9 | `lemma` | [cast_pow](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/cast-pow--5aba8d736890f6593e343ae6.md) | 86 | `result-track:5aba8d736890f6593e343ae66c96f50026ea022f3e6e175f4eb7a91c7efa920e` |
| 10 | `lemma` | [cast_dvd_cast](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/cast-dvd-cast--b87282b6098c46caf2da4207.md) | 91 | `result-track:b87282b6098c46caf2da4207a5298274242048c3d6d118a3041ad611d1044bf9` |
| 11 | `theorem` | [eq_natCast'](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/eq-natcast--32921460f80e8a6edc1d396d.md) | 103 | `result-track:32921460f80e8a6edc1d396d1a1845bca6a8ce23ffab0cdd739da8e77e56ab90` |
| 12 | `theorem` | [map_natCast'](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/map-natcast--bba998e97ac3a5df7b777914.md) | 107 | `result-track:bba998e97ac3a5df7b777914e5457518ca2bc503bf18e8713803e58562f70b30` |
| 13 | `theorem` | [map_ofNat'](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/map-ofnat--e185cc62841e44c431fbc0cc.md) | 112 | `result-track:e185cc62841e44c431fbc0ccd7920430013ac467121a0fbc2c36f3da07e7fefc` |
| 14 | `theorem` | [ext_nat''](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/ext-nat--5cd06ca43fc4110856a7e9f2.md) | 123 | `result-track:5cd06ca43fc4110856a7e9f24988f204d86872915a6e2478c6106fd518292269` |
| 15 | `theorem` | [MonoidWithZeroHom.ext_nat](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/monoidwithzerohom-ext-nat--01aa1dfb5b700c798337b04e.md) | 131 | `result-track:01aa1dfb5b700c798337b04ea2c314b40d075e16dc7f8c7f0973a2bf9387b016` |
| 16 | `theorem` | [eq_natCast](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/eq-natcast--de8c049b0c7d29b322354f0d.md) | 141 | `result-track:de8c049b0c7d29b322354f0da9dd97299d087481a34571d804c1349fbabd9b16` |
| 17 | `theorem` | [map_natCast](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/map-natcast--88adf51282017cc778e4f3b6.md) | 145 | `result-track:88adf51282017cc778e4f3b6d10d86a2a04606524638a4f728ad2092dda96973` |
| 18 | `theorem` | [map_ofNat](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/map-ofnat--f73bc88a07ab8ffb666f378c.md) | 153 | `result-track:f73bc88a07ab8ffb666f378c98432fc4257356793b51f8ff13e10d4b67038a3c` |
| 19 | `theorem` | [ext_nat](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/ext-nat--3271e374f594c7f9f7c2c966.md) | 157 | `result-track:3271e374f594c7f9f7c2c966c721d07202fafb6946d58ecc0fe1eb895c6fe708` |
| 20 | `theorem` | [NeZero.nat_of_neZero](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/nezero-nat-of-nezero--ed04475ca0af90a121faa465.md) | 160 | `result-track:ed04475ca0af90a121faa46536cc75451b7f386cacf4cb8de30b8041b7c0614d` |
| 21 | `theorem` | [eq_natCast'](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/eq-natcast--44c32fba38077166d3202363.md) | 170 | `result-track:44c32fba38077166d3202363fe1bace54517f8f4413dbd548342cc27cd359d24` |
| 22 | `theorem` | [Nat.cast_id](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/nat-cast-id--7ae7efdea7e5999ae0901edc.md) | 176 | `result-track:7ae7efdea7e5999ae0901edcf1fc9d780321b95ad4da42d785b34be3df5737c4` |
| 23 | `theorem` | [Nat.castRingHom_nat](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/nat-castringhom-nat--60c58c494934a4959110fa67.md) | 180 | `result-track:60c58c494934a4959110fa670e5c5d72e76d7f6d6f9ed63811baea72e78de730` |
| 24 | `instance` | [Nat.uniqueRingHom](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/nat-uniqueringhom--f7317922210892296c843767.md) | 185 | `declaration-track:f7317922210892296c843767a90c13cb92a2de050760e4a2734f442a436814bc` |
| 25 | `instance` | [instNatCast](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/instnatcast--e50b25d2259202dc93870aee.md) | 196 | `declaration-track:e50b25d2259202dc93870aee9c6ae0fa4525953d515b679eb4e163c2bc7f7b0c` |
| 26 | `theorem` | [natCast_apply](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/natcast-apply--d644bd47b394775dc1f10c6b.md) | 199 | `result-track:d644bd47b394775dc1f10c6b0ba769a97b678058efb5be13f2c97a876a94633d` |
| 27 | `theorem` | [natCast_def](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/natcast-def--ea1e7169ae790dfa2b8e8331.md) | 202 | `result-track:ea1e7169ae790dfa2b8e8331e1d93a542d155a825c8b1e571fbf5e67943af74b` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/instance--17ed3f1792fd6397c6943f5c.md) | 211 | `declaration-track:17ed3f1792fd6397c6943f5c8c678cc3b571e7b556b6ecc7b324c12195f00bf7` |
| 29 | `theorem` | [ofNat_apply](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/ofnat-apply--995f2eb3577507fbb2b9e58a.md) | 215 | `result-track:995f2eb3577507fbb2b9e58a2587d40f8bbb210b0b2ea5c765f8d8dc6f0ff1a4` |
| 30 | `lemma` | [ofNat_def](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/ofnat-def--8d54781610959ed34831c200.md) | 217 | `result-track:8d54781610959ed34831c200418adaa41ace0378f2b51dfdc0c9a7a746edb888` |
| 31 | `theorem` | [Sum.elim_natCast_natCast](../../../../mathematics/Algebra/Basic/Variant2245c6987f8bf310a69016dcdfd79d6e3209bc6ecb4f46281e8bb7a932598a2a.lean/declarations/sum-elim-natcast-natcast--f50909fa1c8275c451d83f8c.md) | 223 | `result-track:f50909fa1c8275c451d83f8cb749035ac759a321cf0a4995352039a41e3de68b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
