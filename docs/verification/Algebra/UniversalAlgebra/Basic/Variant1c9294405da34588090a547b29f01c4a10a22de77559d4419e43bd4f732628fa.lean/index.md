# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09eac5b17d811f9a8cbe80608c74cbb7426f439a",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09eac5b17d811f9a8cbe80608c74cbb7426f439a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [inhabited](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/inhabited--caccfc293303637d7b92ca6c.md) | 52 | `declaration-track:caccfc293303637d7b92ca6c77c1bd08da1db49be4b68a564f63212702e94810` |
| 2 | `instance` | [zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/zero--708d608b1263663e53e21ee4.md) | 55 | `declaration-track:708d608b1263663e53e21ee40c5822c51cc29f8532d221b2eca9120edb43f24d` |
| 3 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/coe-zero--e35507dc015db8671f476394.md) | 59 | `result-track:e35507dc015db8671f47639450f1c0ba9cb6dad59a126bb784cfc9ea1f93638b` |
| 4 | `theorem` | [mk_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/mk-eq-zero--6c2eddcac08bf0669575b9b5.md) | 63 | `result-track:6c2eddcac08bf0669575b9b5959e534369ff13d7f069b9f3048210b59c17dd25` |
| 5 | `instance` | [add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/add--f456e18840c78cfd2b5cd778.md) | 67 | `declaration-track:f456e18840c78cfd2b5cd778ae162dd65257abc6a32e277b407ab828c69afc10` |
| 6 | `theorem` | [mk_add_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/mk-add-mk--aef636ced92ee41a2b31de5a.md) | 71 | `result-track:aef636ced92ee41a2b31de5a167f8ca0a88ecd5dec153b47878e91bfa477c4fc` |
| 7 | `theorem` | [coe_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/coe-add--d60b24502f439c784354ff90.md) | 77 | `result-track:d60b24502f439c784354ff900fdf81995fb78a4ed478055632b8fce397a5ab0e` |
| 8 | `instance` | [nsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/nsmul--4af3e226b9a9d46fb3cbfe3f.md) | 81 | `declaration-track:4af3e226b9a9d46fb3cbfe3f502315ae45d753491944e94d8621bd04090989b9` |
| 9 | `theorem` | [nsmul_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/nsmul-mk--b99454103c274ccb1795fa73.md) | 85 | `result-track:b99454103c274ccb1795fa7309316901e855a91ebcf51455945d33b2b5202ff7` |
| 10 | `theorem` | [coe_nsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/coe-nsmul--4b3ded80cd049ad6941e0eaf.md) | 90 | `result-track:4b3ded80cd049ad6941e0eaf4504e16f1f143e406304a7fe9ae791945df5e617` |
| 11 | `instance` | [one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/one--34e5e03c0955993142f77327.md) | 98 | `declaration-track:34e5e03c0955993142f77327eadad0d2e08e96a12271173621f173cc49de8309` |
| 12 | `theorem` | [coe_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/coe-one--4a45210fb3f0bf651a40abe8.md) | 102 | `result-track:4a45210fb3f0bf651a40abe862b049036c9e70c232a5493dd718f1b91bf56914` |
| 13 | `theorem` | [mk_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/mk-eq-one--a23f4abccbacc86772a407c2.md) | 106 | `result-track:a23f4abccbacc86772a407c219e0fdf157922934aa8ae3cffac18068d84a533d` |
| 14 | `instance` | [mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/mul--6ec6eb15cdc3fec69cd4308d.md) | 116 | `declaration-track:6ec6eb15cdc3fec69cd4308dec9c7aa4ea3ee04c86e3c7fb6400ae730c245ee7` |
| 15 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/coe-mul--b59d2290bb6a9f602b790b9f.md) | 120 | `result-track:b59d2290bb6a9f602b790b9f6b522d559959a115c5a80920b9b9dec677c8dad5` |
| 16 | `theorem` | [mk_mul_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/mk-mul-mk--adf8a03d69a4330b344e1643.md) | 125 | `result-track:adf8a03d69a4330b344e1643841c9fd75afe066cc9c2e1daa68614c7acd62da2` |
| 17 | `instance` | [addMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/addmonoid--7cd6bbd1b92a21d0b25f08bc.md) | 135 | `declaration-track:7cd6bbd1b92a21d0b25f08bcc823cbc863ae2f112854f71924302ac2f80cbd30` |
| 18 | `def` | [coeAddMonoidHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/coeaddmonoidhom--9f16274c4a7f95a1ad4c18c9.md) | 140 | `declaration-track:9f16274c4a7f95a1ad4c18c9af8ae7f39a67bdc15e7f2059a035f99e6e48b810` |
| 19 | `theorem` | [nsmul_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/nsmul-coe--501efd9845cb29b67b606bf9.md) | 146 | `result-track:501efd9845cb29b67b606bf9ad3cfdaa9dabd8cb53ac789cf5ce8271d805a85b` |
| 20 | `instance` | [addCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/addcommmonoid--d7eb03bc82fbca8a7824daec.md) | 156 | `declaration-track:d7eb03bc82fbca8a7824daec2211a98e03c705d534494132cd5f8f389a827b8e` |
| 21 | `instance` | [natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/natcast--fdbedc6394ff8d27c93fd01b.md) | 165 | `declaration-track:fdbedc6394ff8d27c93fd01b55d0b1ca78e641a504d12c5f3ea0041d751ec931` |
| 22 | `theorem` | [coe_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/coe-natcast--e45d93905f80221c7293d214.md) | 169 | `result-track:e45d93905f80221c7293d21424822090d1294d921c9803be6b98bb3a31faef8e` |
| 23 | `theorem` | [mk_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/mk-natcast--8d09d42a9a119b8e9927c6ed.md) | 173 | `result-track:8d09d42a9a119b8e9927c6ed67652e3669ad6c7cdbe8f23bf5d261e8b9db38bf` |
| 24 | `instance` | [addMonoidWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/addmonoidwithone--80323d24e931f00a485cac22.md) | 176 | `declaration-track:80323d24e931f00a485cac22914bbe6603dde42336d15e579a15a408d3a31827` |
| 25 | `instance` | [pow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/pow--268c4220d9877ae9b504707a.md) | 188 | `declaration-track:268c4220d9877ae9b504707a9f98feb55cea9cb41fd9b15722c185c390671db4` |
| 26 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/coe-pow--284446480e1155d52a8470af.md) | 192 | `result-track:284446480e1155d52a8470af32f91b634c72582032729a355017584c5f67e361` |
| 27 | `theorem` | [mk_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/mk-pow--5d22ad76ae4c75ffdb4ddb7c.md) | 197 | `result-track:5d22ad76ae4c75ffdb4ddb7c8bc2d901ab1fc249881e1e805b11b465d345a331` |
| 28 | `instance` | [semiring](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/semiring--bcb6f8eb4213f1799114d1f5.md) | 210 | `declaration-track:bcb6f8eb4213f1799114d1f5977020e8981a1a6c8fb35773b3f54fddf8484c4f` |
| 29 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/monoidwithzero--243db10b4b83df13bd2df527.md) | 215 | `declaration-track:243db10b4b83df13bd2df5271dffa53ebc8747d815c57a80dcfee47f399f06d8` |
| 30 | `def` | [coeRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/coeringhom--be73141617eae0e30d5ce11c.md) | 218 | `declaration-track:be73141617eae0e30d5ce11c4a6f5f72495b9da884102ede0a277611eec4261e` |
| 31 | `instance` | [commSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/commsemiring--60177fca3f19f76ee426796b.md) | 232 | `declaration-track:60177fca3f19f76ee426796b271976c9bcef7d71d3203346e8666fb13bbab939` |
| 32 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/commmonoidwithzero--d3d05014db1a8361e41ae6cc.md) | 237 | `declaration-track:d3d05014db1a8361e41ae6ccf938055521d1e8591223913741116c7a5239065a` |
| 33 | `def` | [toNonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/tononneg--664964d617e4c9fb356bcafb.md) | 245 | `declaration-track:664964d617e4c9fb356bcafbe23a56a040290d5b81a7eb3c910be4d297d17124` |
| 34 | `theorem` | [coe_toNonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/coe-tononneg--41ecca54e7ce2774e0cf0681.md) | 249 | `result-track:41ecca54e7ce2774e0cf0681797c3b77f5ea7863909447f5894676a2a4e94d1f` |
| 35 | `theorem` | [toNonneg_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/tononneg-of-nonneg--526266c81e527fc72eba1e5a.md) | 253 | `result-track:526266c81e527fc72eba1e5ab107a285be8da5049d10e7ed04684a5a77ad0ea9` |
| 36 | `theorem` | [toNonneg_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/tononneg-coe--df7349cf27ef7fa8017008cf.md) | 256 | `result-track:df7349cf27ef7fa8017008cf9fdfeb64a16df9bfb70ece8508936e3b61e12bd0` |
| 37 | `theorem` | [toNonneg_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/tononneg-le--743929d60947130a43f6fa1b.md) | 260 | `result-track:743929d60947130a43f6fa1b3264ad28abf2f5d64e20bdf89bf2e41e509ddb73` |
| 38 | `instance` | [sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/sub--f8a5f87239993a81e5bb90cd.md) | 264 | `declaration-track:f8a5f87239993a81e5bb90cd11b685ebbd1da06a10c6fc279102360b75caf510` |
| 39 | `theorem` | [mk_sub_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/mk-sub-mk--443c29dacc5ea45f20454b64.md) | 268 | `result-track:443c29dacc5ea45f20454b64c5feef49fe905da479f65b139f18248309011a9f` |
| 40 | `theorem` | [toNonneg_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9294405da34588090a547b29f01c4a10a22de77559d4419e43bd4f732628fa.lean/declarations/tononneg-lt--ff8b2f9e3e76f98a895baa6d.md) | 278 | `result-track:ff8b2f9e3e76f98a895baa6d8e7e1d1f38cfb9688a30588dc7117097b5b583f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
