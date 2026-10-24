# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "654e3b2a8c1b6923e8b4ee2e3bc3d521aa798621",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `654e3b2a8c1b6923e8b4ee2e3bc3d521aa798621`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distrib](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/distrib--18613bb0680048a1b62d578e.md) | 23 | `declaration-track:18613bb0680048a1b62d578ec906db8ef059673857b736525643b62a6f42b09b` |
| 2 | `instance` | [mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/mulzeroclass--ccc7004f724fb19faae46933.md) | 28 | `declaration-track:ccc7004f724fb19faae46933f20822be99fb2a9a2f69796a7732e70f06190eb9` |
| 3 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/mulzerooneclass--2ec4531d6ee390bae2188807.md) | 34 | `declaration-track:2ec4531d6ee390bae21888072ca938f2a7a7d5808824eb8c210eff55586030c5` |
| 4 | `instance` | [semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/semigroupwithzero--32e3809c1c9e6b0ae4369a9d.md) | 37 | `declaration-track:32e3809c1c9e6b0ae4369a9d8e831a1e53cab7d08d035c9851d3e2defe410c81` |
| 5 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/monoidwithzero--a8f805f9189158b291a09f16.md) | 40 | `declaration-track:a8f805f9189158b291a09f16ee5533f4f5323f0ad3315f23bea5362c282e7d24` |
| 6 | `instance` | [nonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalnonassocsemiring--fd29d9e9c0235b1702d92ba5.md) | 43 | `declaration-track:fd29d9e9c0235b1702d92ba5370d91c9a5dde24fb74b1028e465481c1c3012f8` |
| 7 | `instance` | [nonUnitalSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalsemiring--29bc13c91a37b48bd05261fe.md) | 46 | `declaration-track:29bc13c91a37b48bd05261fe140507fed0962a1d34ef07535d4bff53482325ef` |
| 8 | `instance` | [nonAssocSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonassocsemiring--5a1da603acbbdf7cd87b3977.md) | 49 | `declaration-track:5a1da603acbbdf7cd87b39774da8fb7ebac908f99b434ec3cd362950f9bb0668` |
| 9 | `instance` | [semiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/semiring--a7efef6ae119694c3a328bc4.md) | 53 | `declaration-track:a7efef6ae119694c3a328bc408af5c3564403ba94c56d558f5d377646aff5a2c` |
| 10 | `instance` | [nonUnitalCommSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalcommsemiring--f90071f67f757c7a96bd35a3.md) | 57 | `declaration-track:f90071f67f757c7a96bd35a323644174ab4487f3ac45406843d1c1d812d895c9` |
| 11 | `instance` | [commSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/commsemiring--a69b975a353f132142040cd8.md) | 60 | `declaration-track:a69b975a353f132142040cd86060965d6590b3012af319641fb16e6f71817f05` |
| 12 | `instance` | [nonUnitalNonAssocRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalnonassocring--88a34bf55a2cc35c0d0497d3.md) | 63 | `declaration-track:88a34bf55a2cc35c0d0497d39dbc55073b4819819237a504a5e2f6fb90d87955` |
| 13 | `instance` | [nonUnitalRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalring--fae676fbecb401ce402ba651.md) | 67 | `declaration-track:fae676fbecb401ce402ba65109ba812e201f126e0f57f9668abaa1510e8b0c7d` |
| 14 | `instance` | [nonAssocRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonassocring--1d7a7a4809e24f322948aed1.md) | 71 | `declaration-track:1d7a7a4809e24f322948aed1ee4e6339a00dfeb18ce68518dd81066c89daa52b` |
| 15 | `instance` | [ring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/ring--d9325ace38b306fc62618471.md) | 75 | `declaration-track:d9325ace38b306fc6261847115d9599e40cdb87735784866aae5b68a5f342f06` |
| 16 | `instance` | [nonUnitalCommRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalcommring--4f4839637f19632a52979e12.md) | 78 | `declaration-track:4f4839637f19632a52979e12e441128a00452c012239185d52d8009790df144b` |
| 17 | `instance` | [commRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/commring--ea7b2e0bdb0facc8a9778d47.md) | 82 | `declaration-track:ea7b2e0bdb0facc8a9778d47a708156a8f7431ec055acfb453decdf6ee70c80f` |
| 18 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nozerodivisors--60041a75fa4f5c6dd472c357.md) | 85 | `declaration-track:60041a75fa4f5c6dd472c3571708dedb3492e663c172d2597daf944689f9d1cf` |
| 19 | `instance` | [isDomain](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/isdomain--0adca910385e6414ef27b8a3.md) | 90 | `declaration-track:0adca910385e6414ef27b8a32d41752bb574572ecb27547b134af2cabf0978f6` |
| 20 | `instance` | [groupWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/groupwithzero--d09cc9ea0701fa1ea3d5ea4e.md) | 93 | `declaration-track:d09cc9ea0701fa1ea3d5ea4ecc7a074a0e3485f092ff388e14dad18e3ff7cc2a` |
| 21 | `instance` | [distrib](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/distrib--c1eb24b45b6072182c4dd915.md) | 103 | `declaration-track:c1eb24b45b6072182c4dd915048ef1db519210d38363187e1be8b4a28187d390` |
| 22 | `instance` | [mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/mulzeroclass--a87baf556db26f9268d33451.md) | 108 | `declaration-track:a87baf556db26f9268d33451c908836fd2e949976000bb5fced060c9785c63fa` |
| 23 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/mulzerooneclass--20a229ace0af7539e545775c.md) | 114 | `declaration-track:20a229ace0af7539e545775c764722b6ea1ffebd4f7e8d750a85013f6e3cd016` |
| 24 | `instance` | [semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/semigroupwithzero--c577542add21d2fd8f131159.md) | 117 | `declaration-track:c577542add21d2fd8f1311596ec99f57fb73c4b007b209aac64ddcf025fe5767` |
| 25 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/monoidwithzero--8e10c1aa71bf9fae1b948897.md) | 120 | `declaration-track:8e10c1aa71bf9fae1b9488974e18e2ecac3edd3b779e0777c3bab6a4eed0969c` |
| 26 | `instance` | [nonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalnonassocsemiring--ee3b3228a5d61f3852ff82f8.md) | 123 | `declaration-track:ee3b3228a5d61f3852ff82f8bc8a781cdcdd6890604ae7bc5c99231aba181481` |
| 27 | `instance` | [nonUnitalSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalsemiring--2c923662c9b91a95efdee703.md) | 126 | `declaration-track:2c923662c9b91a95efdee703f69edd05e6b2ffacdec8bb60412f71884c8b8602` |
| 28 | `instance` | [nonAssocSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonassocsemiring--a0941d8795621b9f8dd8c942.md) | 129 | `declaration-track:a0941d8795621b9f8dd8c94291292d85c7a68165d93870e2b84012da4bee503e` |
| 29 | `instance` | [semiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/semiring--65d67864bc1a078fcc188d33.md) | 133 | `declaration-track:65d67864bc1a078fcc188d336fa95237f91aca56153e01fbaf4fd4a027770a86` |
| 30 | `instance` | [nonUnitalCommSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalcommsemiring--7ff8a8f4b73a0d46baeca0c1.md) | 137 | `declaration-track:7ff8a8f4b73a0d46baeca0c112b3ff4b63170c857ef6dc736d4a8fb66be0f499` |
| 31 | `instance` | [commSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/commsemiring--c18b9598f2fdbb4694fcc7eb.md) | 140 | `declaration-track:c18b9598f2fdbb4694fcc7eb5dd4fb372062c91eedea30cb5ab626d2ad19a4ce` |
| 32 | `instance` | [nonUnitalNonAssocRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalnonassocring--564d71485ac98c49121d3a60.md) | 143 | `declaration-track:564d71485ac98c49121d3a60152b35fbd0315f50196298349de3b47bf58dceba` |
| 33 | `instance` | [nonUnitalRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalring--b63ad38b22eea322837d653e.md) | 146 | `declaration-track:b63ad38b22eea322837d653e05cc0c38645e3d42a84c18df4a0a127beab783cb` |
| 34 | `instance` | [nonAssocRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonassocring--2625c94a16e254c302e13781.md) | 149 | `declaration-track:2625c94a16e254c302e137817b519fe9d33a2a4f33a8ca3735a80fb95cd2cd18` |
| 35 | `instance` | [ring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/ring--f7565b5f135a5e18ae58e39c.md) | 152 | `declaration-track:f7565b5f135a5e18ae58e39c69fd6ad400a65996db6f603314c3773fe6cb716a` |
| 36 | `instance` | [nonUnitalCommRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalcommring--20529e8844ff5303bebb2fdf.md) | 155 | `declaration-track:20529e8844ff5303bebb2fdf0f69b9273f533049a60c942da750733f2c37749a` |
| 37 | `instance` | [commRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/commring--74cffaeb35ca249dfaa87277.md) | 158 | `declaration-track:74cffaeb35ca249dfaa87277f4c5129961120f7150a1c3afc4cc4dafeaf01b5d` |
| 38 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nozerodivisors--ecc375f016620aa3ad35ec2b.md) | 161 | `declaration-track:ecc375f016620aa3ad35ec2bf3429b8c374d75ab93e43a606b1635d8a7d00f09` |
| 39 | `instance` | [isDomain](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/isdomain--7c3ac60342aa49ee1e2e8c6c.md) | 166 | `declaration-track:7c3ac60342aa49ee1e2e8c6cb5e24e08c9f2ae116ee77370ebc10e46916e64bc` |
| 40 | `instance` | [groupWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/groupwithzero--af5a00b39802f4694f782468.md) | 169 | `declaration-track:af5a00b39802f4694f7824680f7fd3d2af1c35640f9678d0263baeefc36122d0` |
| 41 | `def` | [NonUnitalRingHom.toOpposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalringhom-toopposite--39309b6989ad5dc91a37f282.md) | 182 | `declaration-track:39309b6989ad5dc91a37f282e124b96a3c3e7fc5ddd6809798f8b2dfaa6578c1` |
| 42 | `def` | [NonUnitalRingHom.fromOpposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalringhom-fromopposite--569007560de9af56e0505ffe.md) | 191 | `declaration-track:569007560de9af56e0505ffefe6a3c99cedc2888442709df240a1017bc66d175` |
| 43 | `def` | [NonUnitalRingHom.op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalringhom-op--1a876576996af732beecf41c.md) | 200 | `declaration-track:1a876576996af732beecf41c9e41997f030ac48181714728e8f89ace2869e553` |
| 44 | `def` | [NonUnitalRingHom.unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/nonunitalringhom-unop--ded92c255aaf0ece11f1593e.md) | 211 | `declaration-track:ded92c255aaf0ece11f1593e7163e9a14000c1c58b2630c36a506b091dd52929` |
| 45 | `def` | [RingHom.toOpposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/ringhom-toopposite--122e3836e3da995df9b617bb.md) | 219 | `declaration-track:122e3836e3da995df9b617bbe296d4a01fa022ffd28e36988f4a5c7c3166e680` |
| 46 | `def` | [RingHom.fromOpposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/ringhom-fromopposite--72ca57dd37187c139d1bdc6a.md) | 229 | `declaration-track:72ca57dd37187c139d1bdc6ac4059c6fec0ac803897349bbd967831ec80d5d6d` |
| 47 | `def` | [RingHom.op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/ringhom-op--d34acb81fd3881a5817edefc.md) | 239 | `declaration-track:d34acb81fd3881a5817edefc5920cec4e79b8c8575a41ee2f9ff9e64d5409831` |
| 48 | `def` | [RingHom.unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant1f78b83ac6ce69c9da339ece21b814ac02d2265e81401651f0bb091899b94d74.lean/declarations/ringhom-unop--289e9625aa1227cd84ef59b5.md) | 250 | `declaration-track:289e9625aa1227cd84ef59b52e11c5c71703cf2322b288c9dcb3b7c38ef22f3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
