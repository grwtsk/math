# Verification target: GRWTSK.Algebra.GroupTheory.InjSurj.Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b4d81026a7c5e40ca912aea33b3a918edc5e0b3",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b4d81026a7c5e40ca912aea33b3a918edc5e0b3`.

Source path: `GRWTSK/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/semigroup--624e59896f8e79e72f3078cb.md) | 63 | `declaration-track:624e59896f8e79e72f3078cb3a72ba0c9443d9c8e51e91b25db9340b6c512373` |
| 2 | `abbrev` | [commMagma](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/commmagma--022cdb5164edb781ba3af73a.md) | 72 | `declaration-track:022cdb5164edb781ba3af73a2f67e583651f770fcc2b4679d81e71c3c11fa46e` |
| 3 | `abbrev` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/commsemigroup--c181168cf7120f276f01e7b7.md) | 81 | `declaration-track:c181168cf7120f276f01e7b7a180644cefd04a75766dd1968b35536288b22d2e` |
| 4 | `abbrev` | [leftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/leftcancelsemigroup--4802651c043ef081f5a9c0a0.md) | 90 | `declaration-track:4802651c043ef081f5a9c0a0f6e3cefacc337bb1d4493d7042181d999d59c1aa` |
| 5 | `abbrev` | [rightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/rightcancelsemigroup--1d598fb914f775bb0d663b9f.md) | 100 | `declaration-track:1d598fb914f775bb0d663b9fdd3c46373631915896990dfc5495133a8e1cdf25` |
| 6 | `abbrev` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/muloneclass--7e4bb0542fab57b0d83478ef.md) | 112 | `declaration-track:7e4bb0542fab57b0d83478ef632e8c13629c4ae3444dbdd1186f1bf3776895f3` |
| 7 | `abbrev` | [monoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/monoid--1ca39dacf50026eb019bb8dc.md) | 126 | `declaration-track:1ca39dacf50026eb019bb8dc1445d2d5250dd6758f66531b650b8071b602e0ae` |
| 8 | `abbrev` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/addmonoidwithone--019e777d98643bb592f06347.md) | 136 | `declaration-track:019e777d98643bb592f06347f2c08412705f4396455a2a561044477a52f828e6` |
| 9 | `abbrev` | [leftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/leftcancelmonoid--d68a70f99ea55b5c0d62d7cf.md) | 150 | `declaration-track:d68a70f99ea55b5c0d62d7cfd7847f14e0a3bb48c93c3fc64ebc7ad457dcba80` |
| 10 | `abbrev` | [rightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/rightcancelmonoid--5c026406c065d034dd974fd0.md) | 160 | `declaration-track:5c026406c065d034dd974fd00787f133f29197731bde6e193e004382170964b8` |
| 11 | `abbrev` | [cancelMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/cancelmonoid--4e4b8c5f9a06e992263a095c.md) | 170 | `declaration-track:4e4b8c5f9a06e992263a095cb96afd3b29dfc44476a7fa02258ae4de707ec922` |
| 12 | `abbrev` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/commmonoid--e76035614514f2782ad28838.md) | 180 | `declaration-track:e76035614514f2782ad28838b7dc902df943ca5ffe67a4de9c3fb2de86c86955` |
| 13 | `abbrev` | [addCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/addcommmonoidwithone--165e5be967a76202eb9634aa.md) | 188 | `declaration-track:165e5be967a76202eb9634aa9b60a37eb1abaa2fbf2739ec33794813e24395b5` |
| 14 | `abbrev` | [cancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/cancelcommmonoid--67b0b3d68bec7c6b144e3bc3.md) | 200 | `declaration-track:67b0b3d68bec7c6b144e3bc38622de0534638cb22ccdbcdef4cbe36c976d7be9` |
| 15 | `abbrev` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/involutiveinv--ca983ea452f5bac9a432d10f.md) | 210 | `declaration-track:ca983ea452f5bac9a432d10f36ae4aec201ced70551e492dab9894e83db3cfed` |
| 16 | `abbrev` | [invOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/invoneclass--b64c876862cd20edba02304e.md) | 222 | `declaration-track:b64c876862cd20edba02304e8ff1800eec1a49d9d6cfaf8eaea2f15ee5fa46f0` |
| 17 | `abbrev` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/divinvmonoid--d624afedddf02ba3bea26afe.md) | 236 | `declaration-track:d624afedddf02ba3bea26afe3da4e9467822fbd4068b2c8f5ab35c08b04f04ea` |
| 18 | `abbrev` | [divInvOneMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/divinvonemonoid--96e927b9be5c9394b36e025a.md) | 255 | `declaration-track:96e927b9be5c9394b36e025a632a78cf018156f5a029f94605709ec786e4c11c` |
| 19 | `abbrev` | [divisionMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/divisionmonoid--8463f0065ecffdbdffa53ef9.md) | 268 | `declaration-track:8463f0065ecffdbdffa53ef9564604fd1f6c29a1a7b1ec2723ce50df37d16b0b` |
| 20 | `abbrev` | [divisionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/divisioncommmonoid--c3e2969de438aec0c4cd7004.md) | 285 | `declaration-track:c3e2969de438aec0c4cd7004082fa3243a03d490398c7861733a06fb8062d4d9` |
| 21 | `abbrev` | [group](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/group--9e36394f25acb42ba2918f67.md) | 296 | `declaration-track:9e36394f25acb42ba2918f67f7bb587b257d9e2a9fee5d1426a03f253ee2880a` |
| 22 | `abbrev` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/addgroupwithone--d6f6a8c27954ff7ae57d36a3.md) | 306 | `declaration-track:d6f6a8c27954ff7ae57d36a316b9ba068a0f6b5d50d42d5893c84f86120f51a0` |
| 23 | `abbrev` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/commgroup--515b20877212e4b3db845e91.md) | 323 | `declaration-track:515b20877212e4b3db845e918ef4035f4f2b4eb0b114111080efe212538570de` |
| 24 | `abbrev` | [addCommGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/addcommgroupwithone--66b713b0a762b99effe19253.md) | 332 | `declaration-track:66b713b0a762b99effe19253d6481e65029c901f7d76b021e3d3ef090940cf78` |
| 25 | `abbrev` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/semigroup--a022a62f8632de1a344f09b7.md) | 357 | `declaration-track:a022a62f8632de1a344f09b71cc25bd69bf340b38d37c4581a525f173e8e6f31` |
| 26 | `abbrev` | [commMagma](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/commmagma--61f337f5caf0ad077001da57.md) | 366 | `declaration-track:61f337f5caf0ad077001da570f3c212ddadb70856e5f942462a430b0e8b13e7e` |
| 27 | `abbrev` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/commsemigroup--23eceb59e06d0093dc611464.md) | 375 | `declaration-track:23eceb59e06d0093dc6114643fdbcfa5a1561d38291548786c92b9e04915c287` |
| 28 | `abbrev` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/muloneclass--6f6f89d3721d77a5bf8c8fec.md) | 387 | `declaration-track:6f6f89d3721d77a5bf8c8fecc57418a539459edd45a394219339f7e56215da2a` |
| 29 | `abbrev` | [monoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/monoid--2555d733cde6d948598964f6.md) | 401 | `declaration-track:2555d733cde6d948598964f65c2dfe9b85634de5901aa78499bd601bf44bb113` |
| 30 | `abbrev` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/addmonoidwithone--0d768a27d1c91b32beb31df4.md) | 412 | `declaration-track:0d768a27d1c91b32beb31df47a1338aabeb1c094877637aa18cebbb7cbae61fa` |
| 31 | `abbrev` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/commmonoid--a0c0c49028bbe0d51a161a7e.md) | 427 | `declaration-track:a0c0c49028bbe0d51a161a7ec0c553e03b733047f2cf451fea2d2da525c12d31` |
| 32 | `abbrev` | [addCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/addcommmonoidwithone--e12caac8f07af8fceb5959f2.md) | 435 | `declaration-track:e12caac8f07af8fceb5959f2ffde186f3bf5c44d748979761aa827dd5dc5d6f0` |
| 33 | `abbrev` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/involutiveinv--893e34f49ef0c2d3dde43559.md) | 447 | `declaration-track:893e34f49ef0c2d3dde435598597f2b51c982843b22aee781df95c385dd0fa0e` |
| 34 | `abbrev` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/divinvmonoid--bfdfe632bc6582f0d17c08f5.md) | 460 | `declaration-track:bfdfe632bc6582f0d17c08f56d86e2bf68c1f16d61a19365b60316732e8509de` |
| 35 | `abbrev` | [group](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/group--5a6ff6720678091921804ffe.md) | 478 | `declaration-track:5a6ff6720678091921804ffe9f274030c2e401005f4517dd2e220789445dcf0d` |
| 36 | `abbrev` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/addgroupwithone--32b939d44c4373882eb99214.md) | 488 | `declaration-track:32b939d44c4373882eb99214a53ec773ace4a88a82d5041fecb53c279df1272d` |
| 37 | `abbrev` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/commgroup--8aff6afa904c55ede964ccf5.md) | 507 | `declaration-track:8aff6afa904c55ede964ccf5b4e3fa072cceccbda1f38b5e2df81d544831b338` |
| 38 | `abbrev` | [addCommGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/declarations/addcommgroupwithone--c49c8f397b6533639e03071d.md) | 516 | `declaration-track:c49c8f397b6533639e03071d73d42f964b05f6f2103b70f26c0ef6afb729b1bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
