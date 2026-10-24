# Verification target: GRWTSK.Algebra.RingTheory.FreeCommRing.Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77adf951a4485b6d44b1f81457c91cb4dc04d0f9",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77adf951a4485b6d44b1f81457c91cb4dc04d0f9`.

Source path: `GRWTSK/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Functor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeRing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/freecommring--96fbc2bcdc788785e3efa3bc.md) | 83 | `declaration-track:96fbc2bcdc788785e3efa3bc231bcd19e014d2c2b46ebb7a3a5fff47d0a9abcc` |
| 2 | `instance` | [FreeCommRing.instCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/freecommring-instcommring--96b704d56319d9461599c8e8.md) | 88 | `declaration-track:96b704d56319d9461599c8e857712a880efb6e4659deec37188d7cd5b6472037` |
| 3 | `instance` | [FreeCommRing.instInhabited](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/freecommring-instinhabited--4b1e7e42de0b9148fa5304d9.md) | 91 | `declaration-track:4b1e7e42de0b9148fa5304d9e2ac482a4437b7e7cabe413efea92fd7723e99d9` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/of--53e316acc11fd3ca004210dc.md) | 99 | `declaration-track:53e316acc11fd3ca004210dcdc2ea7d2a20e5a0beec0cb23958f944ce0667ab9` |
| 5 | `theorem` | [of_injective](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/of-injective--2cf09eb1f684273355e705bd.md) | 102 | `result-track:2cf09eb1f684273355e705bdac47002db85425cabcc6520ec5e40bf95dc66546` |
| 6 | `theorem` | [of_ne_zero](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/of-ne-zero--5420b9f6f310a9e74baaccdb.md) | 107 | `result-track:5420b9f6f310a9e74baaccdb8c9730cd5609c8d157cb8b5de770d11854760118` |
| 7 | `theorem` | [zero_ne_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/zero-ne-of--87854f7b1ca3e17f0444ce7f.md) | 110 | `result-track:87854f7b1ca3e17f0444ce7f4469998c25003100d1e106195c21832080c3973e` |
| 8 | `theorem` | [of_ne_one](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/of-ne-one--0f47496a8e90292e53f5f659.md) | 113 | `result-track:0f47496a8e90292e53f5f659957252ffa6c5f32d19975423d789005b1228664a` |
| 9 | `theorem` | [one_ne_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/one-ne-of--0636161a18178970495bfc03.md) | 117 | `result-track:0636161a18178970495bfc0363c5c5bd007393bfd0c0430217882e84b0ea4ae1` |
| 10 | `lemma` | [of_cons](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/of-cons--08bbfd6d92aa2917dfcdf0a4.md) | 121 | `result-track:08bbfd6d92aa2917dfcdf0a438fbd2e9b299669c37ffd7b8e7c1ab769bdd4f3a` |
| 11 | `theorem` | [induction_on](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/induction-on--42c70d92d76e7d336970c016.md) | 129 | `result-track:42c70d92d76e7d336970c016c699e7cb68e585b251ca235c3ab74e9ac35f6ce6` |
| 12 | `def` | [liftToMultiset](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/lifttomultiset--26a41a77674aae02c5954ebd.md) | 147 | `declaration-track:26a41a77674aae02c5954ebd95d44965f16c0aa3605eea23467aa733e16bb739` |
| 13 | `def` | [lift](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/lift--abf5fa3ed510379d5a987c67.md) | 168 | `declaration-track:abf5fa3ed510379d5a987c677205e49505d2697d1baea33d4199b983f544d39e` |
| 14 | `theorem` | [lift_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/lift-of--92544640867b6ec209995122.md) | 172 | `result-track:92544640867b6ec209995122546d8b1debeb4009160fa5cd30c432448c68ed0d` |
| 15 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/lift-comp-of--b8847f2cc520726c34ca7a6b.md) | 176 | `result-track:b8847f2cc520726c34ca7a6bc69e9f14ddb2061aa30ed74e79493c490826bd49` |
| 16 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/hom-ext--385ce96c6a51cd971de6ab8c.md) | 183 | `result-track:385ce96c6a51cd971de6ab8c4427556a836e652ef5a1bc339e4a74ef6f9ecce0` |
| 17 | `def` | [map](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/map--58222e685e53ca7f3d8b2834.md) | 191 | `declaration-track:58222e685e53ca7f3d8b2834c81fef3f53373e58576fac401d536e8ad0fdee5e` |
| 18 | `theorem` | [map_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/map-of--5588f896d780711b75d2a42c.md) | 195 | `result-track:5588f896d780711b75d2a42c5c55d9318a79032049abea6f35e84ff55ab4a12a` |
| 19 | `def` | [IsSupported](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/issupported--dec1ec57529723cde1d36752.md) | 199 | `declaration-track:dec1ec57529723cde1d367525d37641ac46be465f72655e9323ca04aa08b6526` |
| 20 | `theorem` | [isSupported_upwards](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/issupported-upwards--0b3cfb19a4e6853fd986ca17.md) | 206 | `result-track:0b3cfb19a4e6853fd986ca17042e7d19ea7f4f72462dc32a474b18ee39d2ed9a` |
| 21 | `theorem` | [isSupported_add](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/issupported-add--6131bed10e7f6d560c3d773c.md) | 209 | `result-track:6131bed10e7f6d560c3d773ca565c15956c57eb88f8cf32c8248ea00c3231ff9` |
| 22 | `theorem` | [isSupported_neg](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/issupported-neg--c1821a2403430d5cc0d6fd47.md) | 212 | `result-track:c1821a2403430d5cc0d6fd475a2d1700c62db2cdf183c7a04322b964fc994cf9` |
| 23 | `theorem` | [isSupported_sub](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/issupported-sub--483ff4d909d9cbf6c9ae8341.md) | 215 | `result-track:483ff4d909d9cbf6c9ae83418caea283c6150fc7fd25885b3227514e826df7b3` |
| 24 | `theorem` | [isSupported_mul](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/issupported-mul--f5320f3eac1728bed0501832.md) | 218 | `result-track:f5320f3eac1728bed0501832b1508598f320ac3a23cfa2d3a26af433119c6580` |
| 25 | `theorem` | [isSupported_zero](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/issupported-zero--8f8040591b75aadf8461805e.md) | 221 | `result-track:8f8040591b75aadf8461805eeb4ca8995471350fce5f0e49dfc3813443866fa9` |
| 26 | `theorem` | [isSupported_one](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/issupported-one--cb55730f3805d5507a9026c6.md) | 224 | `result-track:cb55730f3805d5507a9026c6fc9b8747634ba9b35fe2d200c4f53c0f39c70fda` |
| 27 | `theorem` | [isSupported_int](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/issupported-int--d28aecea6e6cf9c7c60a27e7.md) | 227 | `result-track:d28aecea6e6cf9c7c60a27e75c2d9dfdcd8bbd61f532cc4733b732201250d704` |
| 28 | `def` | [restriction](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/restriction--58eeae4aa331e9e80c22acae.md) | 236 | `declaration-track:58eeae4aa331e9e80c22acaec5cf6929d5179d3bcc82d6d62f152cf66d4905d3` |
| 29 | `theorem` | [restriction_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/restriction-of--e235e58e77c7bd3ea6a65bf5.md) | 244 | `result-track:e235e58e77c7bd3ea6a65bf509a8b85966fb3c43f099a76977e16a6660b57053` |
| 30 | `theorem` | [isSupported_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/issupported-of--ec6f03c52a797cdce34220d2.md) | 249 | `result-track:ec6f03c52a797cdce34220d2738df8b506f4c3e4cd1a274e085245c285702a14` |
| 31 | `theorem` | [map_subtype_val_restriction](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/map-subtype-val-restriction--4f3c3d8c337a443e93fec766.md) | 283 | `result-track:4f3c3d8c337a443e93fec76619245412a330e09ec6d964f6195cf23924c418b5` |
| 32 | `theorem` | [exists_finite_support](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/exists-finite-support--deab21cd6876a7e8af16ecdb.md) | 295 | `result-track:deab21cd6876a7e8af16ecdbe6a89dd08e97b4e82415f546828334f1165610f7` |
| 33 | `theorem` | [exists_finset_support](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/exists-finset-support--40b35781dcb463fd52f3539c.md) | 307 | `result-track:40b35781dcb463fd52f3539c6e2d455d978efba12439542b595318a13e26eef1` |
| 34 | `def` | [toFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/tofreecommring--9e632f66bf2e92f7f0a6c2be.md) | 319 | `declaration-track:9e632f66bf2e92f7f0a6c2be3976c1d05eb70558a22f987ee2206482cf6f9bc9` |
| 35 | `def` | [castFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/castfreecommring--6ade4d68dfddb968ef40e395.md) | 324 | `declaration-track:6ade4d68dfddb968ef40e395f27e5726fc1d638f18f748eca4de20db30136dac` |
| 36 | `instance` | [FreeCommRing.instCoe](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/freecommring-instcoe--eec3ef7019b04dbf55c3ebbe.md) | 326 | `declaration-track:eec3ef7019b04dbf55c3ebbea018ff27df3e78139509e3ddacf69b37b6822b01` |
| 37 | `def` | [coeRingHom](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/coeringhom--6d27d78e5d0d54f8a475507f.md) | 330 | `declaration-track:6d27d78e5d0d54f8a475507f821990620a2bed67ed246ab3c9189081b7e22f95` |
| 38 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/coe-zero--fc39f6b716b47c886362a7ef.md) | 334 | `result-track:fc39f6b716b47c886362a7ef92b525ada8244bcbe411e10d24ab7a329e97ba0b` |
| 39 | `theorem` | [coe_one](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/coe-one--80208185e29c2c7fe65c5b0b.md) | 337 | `result-track:80208185e29c2c7fe65c5b0bbae73c1116d68121ff0ef9f405a2cd6dd1bbfc66` |
| 40 | `theorem` | [coe_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/coe-of--d0bb057b9ec26ff024c49b8a.md) | 342 | `result-track:d0bb057b9ec26ff024c49b8a5cf90c11d71821b73b64fd2a5d7cdef25ef75496` |
| 41 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/coe-neg--bf142d4351bfa4947583fe39.md) | 346 | `result-track:bf142d4351bfa4947583fe3948799ba002c2ccbbf91e8c235189f271553898c9` |
| 42 | `theorem` | [coe_add](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/coe-add--e2ba80e6f53a2546a5dc923d.md) | 350 | `result-track:e2ba80e6f53a2546a5dc923d068000b783da509cd96fd43550adde73d18f7130` |
| 43 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/coe-sub--8a490e048592bc6a1e7246d2.md) | 354 | `result-track:8a490e048592bc6a1e7246d29068fae0998124bb5f09b1bc6efad594e99b01d3` |
| 44 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/coe-mul--b471b6df7bbf1b0d02c9525f.md) | 358 | `result-track:b471b6df7bbf1b0d02c9525ff46807041568a23322ee3a14f80f4abc92876bea` |
| 45 | `theorem` | [coe_surjective](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/coe-surjective--fd3203ca5502d4b894f97859.md) | 363 | `result-track:fd3203ca5502d4b894f9785953a5bf7cd3fa3fb383428b33a4d9d412a88105c8` |
| 46 | `theorem` | [coe_eq](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/coe-eq--8e594c7e0fba676477b042f6.md) | 374 | `result-track:8e594c7e0fba676477b042f6cb4358c734be9c137ec74608cf04c6c3363a2f29` |
| 47 | `def` | [subsingletonEquivFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/subsingletonequivfreecommring--1e66eb54fc609ada55586afa.md) | 390 | `declaration-track:1e66eb54fc609ada55586afa723e307f10566fe8f54459c28919cd94adcc8c82` |
| 48 | `instance` | [instCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/instcommring--afe0791071ec49f0cbf80a71.md) | 398 | `declaration-track:afe0791071ec49f0cbf80a71cea0bebd81166881fdaa982ae1302c69a83d67d4` |
| 49 | `def` | [freeCommRingEquivMvPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/freecommringequivmvpolynomialint--2f462c05b0f6f52d0f120a10.md) | 410 | `declaration-track:2f462c05b0f6f52d0f120a103953622f96aa94a7e2284bb420bb1b3e26e00113` |
| 50 | `def` | [freeCommRingPemptyEquivInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/freecommringpemptyequivint--abdf69eb43e44a38e65dca85.md) | 416 | `declaration-track:abdf69eb43e44a38e65dca852fddb44d7d3347558c8e06a934fd652bbf847121` |
| 51 | `def` | [freeCommRingPunitEquivPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/freecommringpunitequivpolynomialint--1cf767ddd83921f990a0cc7e.md) | 420 | `declaration-track:1cf767ddd83921f990a0cc7e34cebf65ad04375e10ee02e1228fc8ab6900243a` |
| 52 | `def` | [freeRingPemptyEquivInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/freeringpemptyequivint--7e585c13883dd774ba4b431b.md) | 426 | `declaration-track:7e585c13883dd774ba4b431b7566e8bc541147e9656243532072c2171a11bd17` |
| 53 | `def` | [freeRingPunitEquivPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/declarations/freeringpunitequivpolynomialint--9cad1a1962ba7a8b2510e551.md) | 430 | `declaration-track:9cad1a1962ba7a8b2510e5511668827e0da1c7fabce8c6bdaabcc6061611aabe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
