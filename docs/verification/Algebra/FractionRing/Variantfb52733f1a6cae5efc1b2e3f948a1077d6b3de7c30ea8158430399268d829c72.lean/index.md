# Verification target: GRWTSK.Algebra.FractionRing.Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29c65eee57715228326981f87ce8633e774e94c2",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/index.md) · [Full source](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29c65eee57715228326981f87ce8633e774e94c2`.

Source path: `GRWTSK/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Subfield.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsFractionRing](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/isfractionring--6c00f82a80725f58acbe2246.md) | 51 | `declaration-track:6c00f82a80725f58acbe2246e2abfc1d57d5550b91de594150d69f2b087c8e2f` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/instance--4cbc8db7222eb90a573eebd7.md) | 54 | `declaration-track:4cbc8db7222eb90a573eebd7524af3864ceb2a8997d60597832cb69caf085e46` |
| 3 | `instance` | [Rat.isFractionRing](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/rat-isfractionring--06fb6554fc3561961b37f5b0.md) | 58 | `declaration-track:06fb6554fc3561961b37f5b03389e18a35356e9fb5bba39dee0e1062b7ab497f` |
| 4 | `theorem` | [of_field](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/of-field--f4514c317417ffab87daf272.md) | 77 | `result-track:f4514c317417ffab87daf2723d30823211130d00af9ddde1a5a474678d35e575` |
| 5 | `theorem` | [to_map_eq_zero_iff](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/to-map-eq-zero-iff--d2ae54c2852cfb652ed929ac.md) | 100 | `result-track:d2ae54c2852cfb652ed929acfc41f2774138929a3bd9fe39022c96a9d6a1b553` |
| 6 | `theorem` | [injective](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/injective--d8ff1b34fa9b74353be2a967.md) | 105 | `result-track:d8ff1b34fa9b74353be2a967999b669deec64bb639510b3e4f464a3f77e87252` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/instance--9756a021a1eaecec335dc449.md) | 108 | `declaration-track:9756a021a1eaecec335dc449919f95dc6ed6641a312933fee8b43b60797b3923` |
| 8 | `theorem` | [coe_inj](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/coe-inj--d7bf540784a7d3a8f8130c9c.md) | 115 | `result-track:d7bf540784a7d3a8f8130c9cd127b56fd331079b7f32a4a5ce6bf818146c0260` |
| 9 | `theorem` | [to_map_ne_zero_of_mem_nonZeroDivisors](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/to-map-ne-zero-of-mem-nonzerodivisors--6c3fc9317a777ac5e9edf162.md) | 118 | `result-track:6c3fc9317a777ac5e9edf16209cd76ddc8bd42e865cf603798a08d42f7998b03` |
| 10 | `theorem` | [isDomain](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/isdomain--f7d4ac5732757a9b99c2812a.md) | 127 | `result-track:f7d4ac5732757a9b99c2812ac49fccc42190b8fb808ea881dd0166ebc435587f` |
| 11 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/mul-inv-cancel--0babe5c0b05a3f4113de7372.md) | 139 | `result-track:0babe5c0b05a3f4113de73726fe08447342ae22dd729bbd67390b0c5a7336248` |
| 12 | `abbrev` | [toField](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/tofield--6dcffed42eb27f971211e938.md) | 153 | `declaration-track:6dcffed42eb27f971211e938f6380bfebf0a39055194565ced17c67510d21abe` |
| 13 | `lemma` | [surjective_iff_isField](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/surjective-iff-isfield--da8985a479d5dabe47b98f19.md) | 163 | `result-track:da8985a479d5dabe47b98f19daefc3a44590c189c5b9d0531ef72e34392e20ee` |
| 14 | `theorem` | [mk'_mk_eq_div](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/mk-mk-eq-div--488f1e5b812cd5728ca7128c.md) | 176 | `result-track:488f1e5b812cd5728ca7128c3a531271d016f02fb182cfa34463cd1daabf033b` |
| 15 | `theorem` | [mk'_eq_div](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/mk-eq-div--1737e353a1290995e3b3b3ff.md) | 184 | `result-track:1737e353a1290995e3b3b3ff29131729c357cd4dc2ba5796f029c00adfa6903f` |
| 16 | `theorem` | [div_surjective](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/div-surjective--ae8ccbb3136fd59ddc2c4905.md) | 187 | `result-track:ae8ccbb3136fd59ddc2c49056605835f6f7d390115d7182e3d31daa7ab0f3b87` |
| 17 | `theorem` | [isUnit_map_of_injective](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/isunit-map-of-injective--3c8bfa12f72f3170259898ce.md) | 192 | `result-track:3c8bfa12f72f3170259898ceb0f59ff780ab22b8cc920fe2cbf46c9867c5b73f` |
| 18 | `theorem` | [mk'_eq_zero_iff_eq_zero](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/mk-eq-zero-iff-eq-zero--bbedfbadc3985bee8110f433.md) | 198 | `result-track:bbedfbadc3985bee8110f43393674cf77d5371e7df1a553b732f317077e8f7e0` |
| 19 | `theorem` | [mk'_eq_one_iff_eq](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/mk-eq-one-iff-eq--419c092cabf478275546d217.md) | 203 | `result-track:419c092cabf478275546d2173abd96c52d28c3a8af96b11d4d49820a9261778b` |
| 20 | `theorem` | [closure_range_algebraMap](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/closure-range-algebramap--39f61fc6b7ed83a641960846.md) | 217 | `result-track:39f61fc6b7ed83a6419608462a6d55aea99da3554f4032e9457988755c7a8824` |
| 21 | `theorem` | [ringHom_fieldRange_eq_of_comp_eq](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/ringhom-fieldrange-eq-of-comp-eq--c2ac9c888a0df48928e49019.md) | 226 | `result-track:c2ac9c888a0df48928e49019c743b0f78136dae093b38dcf8777ae9b855ecd35` |
| 22 | `theorem` | [ringHom_fieldRange_eq_of_comp_eq_of_range_eq](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/ringhom-fieldrange-eq-of-comp-eq-of-range-eq--a39275856f481a33ebef7053.md) | 234 | `result-track:a39275856f481a33ebef70536d241d0b6924f52b73a22f43581f2fce13535d9a` |
| 23 | `def` | [lift](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/lift--75b20a51255c9c7514c9d338.md) | 248 | `declaration-track:75b20a51255c9c7514c9d338e8254534f8e5e89d9c75d617d7479488102aa054` |
| 24 | `theorem` | [lift_unique](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/lift-unique--81c0c2685d56320347b2f212.md) | 251 | `result-track:81c0c2685d56320347b2f212bc5652e976318d6d80572d1bf32fe71bc99351df` |
| 25 | `theorem` | [ringHom_ext](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/ringhom-ext--5239d91f07298e57743242bf.md) | 256 | `result-track:5239d91f07298e57743242bfdd9be68d28ab301aeaabd86085fdccfc7715cca8` |
| 26 | `theorem` | [injective_comp_algebraMap](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/injective-comp-algebramap--661f272d33edeb38756d3648.md) | 262 | `result-track:661f272d33edeb38756d3648cc4d44fbccb5267710973bea8fe39bb6def775f9` |
| 27 | `def` | [liftAlgHom](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/liftalghom--c06fbb8a9bb4321f9c858401.md) | 273 | `declaration-track:c06fbb8a9bb4321f9c8584014f8c171bd9601469b69046820e41b27bb60b21bf` |
| 28 | `theorem` | [liftAlgHom_toRingHom](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/liftalghom-toringhom--7dcad3f1f9cda53cbc8f6a69.md) | 276 | `result-track:7dcad3f1f9cda53cbc8f6a69dacf891c2662c7fb709641a9abf1f039a8380711` |
| 29 | `theorem` | [coe_liftAlgHom](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/coe-liftalghom--1f8ae15ad780c5df3d3d8732.md) | 279 | `result-track:1f8ae15ad780c5df3d3d873227ec6f47982793bf605526df6de4ab2e27994288` |
| 30 | `theorem` | [liftAlgHom_apply](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/liftalghom-apply--2cc83db4d53f2edeb537f2bf.md) | 281 | `result-track:2cc83db4d53f2edeb537f2bfadb7272a45e49df7d8ed5c67f3d472a96dccdb00` |
| 31 | `theorem` | [lift_algebraMap](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/lift-algebramap--20b342a8a1d68bc665f83fbe.md) | 290 | `result-track:20b342a8a1d68bc665f83fbe5dc4cbc476d20a815b8c2ae74bdd0bb80fadd1cb` |
| 32 | `theorem` | [lift_fieldRange](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/lift-fieldrange--aa83caf312f4cfa586235409.md) | 295 | `result-track:aa83caf312f4cfa58623540992fea12a25ba28d8afd7532366df591d3eda0f88` |
| 33 | `theorem` | [lift_fieldRange_eq_of_range_eq](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/lift-fieldrange-eq-of-range-eq--0a0608399fcac9063df2c81e.md) | 301 | `result-track:0a0608399fcac9063df2c81e8ed9e008c319b12fdf43f777207a877d25166205` |
| 34 | `theorem` | [lift_mk'](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/lift-mk--01a2baf9fcd9383ada558874.md) | 310 | `result-track:01a2baf9fcd9383ada558874e8e28a0baf86e36651c8f93da99a92a26a55f6c2` |
| 35 | `def` | [map](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/map--00718e0825e2c91b86a58137.md) | 317 | `declaration-track:00718e0825e2c91b86a581373566598f702526a5f79f9d05c8d3a433b54c7956` |
| 36 | `def` | [ringEquivOfRingEquiv](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/ringequivofringequiv--88ff3df9e419c8d9eff3ce68.md) | 333 | `declaration-track:88ff3df9e419c8d9eff3ce6848a0892f2acb32d8227e1c48350e25bedcaec00d` |
| 37 | `lemma` | [ringEquivOfRingEquiv_algebraMap](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/ringequivofringequiv-algebramap--ae3aca4b10a1bcfa4babddd3.md) | 340 | `result-track:ae3aca4b10a1bcfa4babddd39629f44e7c435ba87c07865d8b49c352c74e2936` |
| 38 | `lemma` | [ringEquivOfRingEquiv_symm](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/ringequivofringequiv-symm--b477ba10c4059f3c04f7b361.md) | 348 | `result-track:b477ba10c4059f3c04f7b361579ac9e875f2a06d291eccf7c778afbc9f4dbb55` |
| 39 | `def` | [algEquivOfAlgEquiv](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/algequivofalgequiv--f3d3e9f33a8fa2c8f69e5939.md) | 363 | `declaration-track:f3d3e9f33a8fa2c8f69e5939724ae51274d26540bb4f4f01c7a258f14fb27b23` |
| 40 | `lemma` | [algEquivOfAlgEquiv_algebraMap](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/algequivofalgequiv-algebramap--f59da8b465cd307818eaa40f.md) | 367 | `result-track:f59da8b465cd307818eaa40f84ca838ccc9adb4ded0024d6e458cf1fca136764` |
| 41 | `lemma` | [algEquivOfAlgEquiv_symm](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/algequivofalgequiv-symm--80bc70539151417731c5270f.md) | 372 | `result-track:80bc70539151417731c5270fcf730e1828e7046b83864071b04cc15f0ce2cc81` |
| 42 | `def` | [fieldEquivOfAlgEquiv](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/fieldequivofalgequiv--83a7b1bf869f31ce6e44583b.md) | 393 | `declaration-track:83a7b1bf869f31ce6e44583b121aa833ee6cfe21ab75f4281acdfcc317c0424e` |
| 43 | `lemma` | [restrictScalars_fieldEquivOfAlgEquiv](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/restrictscalars-fieldequivofalgequiv--c8c3e179a698241a36e70db0.md) | 400 | `result-track:c8c3e179a698241a36e70db0f6d702ce8e46521381b3145eb7976ddd8975b32b` |
| 44 | `lemma` | [fieldEquivOfAlgEquiv_algebraMap](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/fieldequivofalgequiv-algebramap--06334679cfe17cb910d4385e.md) | 407 | `result-track:06334679cfe17cb910d4385ef014fc0a2d3b3beb1aa080f0ac24d5c948a693bb` |
| 45 | `lemma` | [fieldEquivOfAlgEquiv_refl](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/fieldequivofalgequiv-refl--834b896eb3b1f5e0a2751f63.md) | 413 | `result-track:834b896eb3b1f5e0a2751f63bc3e4177cfd566914f85dc2bbf6146d2fa6bd225` |
| 46 | `lemma` | [fieldEquivOfAlgEquiv_trans](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/fieldequivofalgequiv-trans--8ce2f844270d0bcce96e88a2.md) | 419 | `result-track:8ce2f844270d0bcce96e88a2f9f864191a28dd9ecca004ead6ccf5d4d6890822` |
| 47 | `def` | [fieldEquivOfAlgEquivHom](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/fieldequivofalgequivhom--8628da18783c885f747e2191.md) | 438 | `declaration-track:8628da18783c885f747e2191653337e01ceea21779b92ffd9e9c28bc0deb08d9` |
| 48 | `lemma` | [fieldEquivOfAlgEquivHom_apply](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/fieldequivofalgequivhom-apply--1b34634b409efe20372f96fc.md) | 444 | `result-track:1b34634b409efe20372f96fc5c5e4d6a6f59ea412b81b30f2251f5f7f1901ce3` |
| 49 | `lemma` | [fieldEquivOfAlgEquivHom_injective](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/fieldequivofalgequivhom-injective--a0c5d102f859eee44d1a739a.md) | 450 | `result-track:a0c5d102f859eee44d1a739acb15e40ef23b2252eba1b8348d3749b5e6a8982c` |
| 50 | `theorem` | [isFractionRing_iff_of_base_ringEquiv](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/isfractionring-iff-of-base-ringequiv--d26b936d7f99108c5fda197e.md) | 458 | `result-track:d26b936d7f99108c5fda197e658df405b578da5da7e5ae781f7a27b8b78b9f92` |
| 51 | `theorem` | [nontrivial](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/nontrivial--32697caf33e81f298a9aeb12.md) | 465 | `result-track:32697caf33e81f298a9aeb12d0f09b812a31696e70824e93426feaa0e1eabbf5` |
| 52 | `theorem` | [algebraMap_injective_of_field_isFractionRing](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/algebramap-injective-of-field-isfractionring--34640a41d8abbf6e40c6aad0.md) | 478 | `result-track:34640a41d8abbf6e40c6aad068d865e4a58b7e200ad689ca4f8de74cf8b426e4` |
| 53 | `theorem` | [FaithfulSMul.of_field_isFractionRing](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/faithfulsmul-of-field-isfractionring--15761145c97c57249d818134.md) | 485 | `result-track:15761145c97c57249d818134824b392bdabcc27095bf3c621b0cf7b6a549cd1f` |
| 54 | `abbrev` | [FractionRing](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/fractionring--b21229d47f3507dc08abe37f.md) | 505 | `declaration-track:b21229d47f3507dc08abe37f35373d6a5373e35d8be86b2f4ca76165d826dd0a` |
| 55 | `instance` | [unique](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/unique--4c6f933be6d2757e0f49a43c.md) | 510 | `declaration-track:4c6f933be6d2757e0f49a43c1ce22f4ab08f1d4aebc7464c589864e6c107efe6` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/instance--e32fd79ea88c5ca49e999c6c.md) | 512 | `declaration-track:e32fd79ea88c5ca49e999c6cd2d4199382b2a0c534b947b34be529865aa6802f` |
| 57 | `instance` | [field](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/field--12486308f6630e0e0dd11dec.md) | 518 | `declaration-track:12486308f6630e0e0dd11dec878653a7585aa7cc723365324db548392781e631` |
| 58 | `theorem` | [mk_eq_div](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/mk-eq-div--c509ce917dcfb5aee47aa8d3.md) | 521 | `result-track:c509ce917dcfb5aee47aa8d3ff44bcdef3caa355366f858b286fdf00540af6ba` |
| 59 | `abbrev` | [liftAlgebra](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/liftalgebra--efce1eb55e68e888e827e0d2.md) | 533 | `declaration-track:efce1eb55e68e888e827e0d2a3ee9202d2aaba3f7f305d17440fe277fcb72c52` |
| 60 | `instance` | [isScalarTower_liftAlgebra](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/isscalartower-liftalgebra--27862a3ff1a7143069244b1b.md) | 540 | `declaration-track:27862a3ff1a7143069244b1b13da05b8fbe2c2e5e6daca4221c1864696f7effa` |
| 61 | `lemma` | [algebraMap_liftAlgebra](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/algebramap-liftalgebra--3239773cb79e9d7eef5c09c4.md) | 545 | `result-track:3239773cb79e9d7eef5c09c4dbde7a1547065ad2f099d3ffeb9531e0a8d11bc8` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/instance--f5a5c5c5857c037985d05304.md) | 550 | `declaration-track:f5a5c5c5857c037985d0530413fc660496400e6811d3d905dedc2776a7b30c88` |
| 63 | `def` | [algEquiv](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/algequiv--e23dbf5813656c5e45ba019a.md) | 561 | `declaration-track:e23dbf5813656c5e45ba019a90b8e5ba0c52049b867f92765db421166b765e97` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/declarations/instance--79246f012cb2c9cdac8bf4e6.md) | 565 | `declaration-track:79246f012cb2c9cdac8bf4e69235f34226cdc7616bd5e27599ffdc4609ae1abe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
