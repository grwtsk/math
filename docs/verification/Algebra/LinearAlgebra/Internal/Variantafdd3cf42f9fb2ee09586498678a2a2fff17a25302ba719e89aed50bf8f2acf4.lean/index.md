# Verification target: GRWTSK.Algebra.LinearAlgebra.Internal.Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "424c445a0606204a7431c90a9b3ae1a3f1e6ca1e",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `424c445a0606204a7431c90a9b3ae1a3f1e6ca1e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Graded.External` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/gradedtensorproduct--ed36c87f7da7af29dca31a6a.md) | 68 | `declaration-track:ed36c87f7da7af29dca31a6a0b4502882e34908288efcc688033fa1016fd933c` |
| 2 | `instance` | [instAddCommGroupWithOne](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/instaddcommgroupwithone--8281591b14e0c0d813402055.md) | 81 | `declaration-track:8281591b14e0c0d81340205566e18bab53390f5a96b4a0fcf0acf4be49c9ee29` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/instance--42cb1655f8f0a240ac2df000.md) | 83 | `declaration-track:42cb1655f8f0a240ac2df0007a610d234f19ad672c733c0a580c0de51cd04e16` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/of--1979f37ed9d9f77688b73d70.md) | 87 | `declaration-track:1979f37ed9d9f77688b73d70272c4d976976e61c7f34279a93a4cd64ac559bbf` |
| 5 | `theorem` | [of_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/of-one--b5a043971f30bfd5495e58b3.md) | 90 | `result-track:b5a043971f30bfd5495e58b38cc66b393036362822086367bff7bfe30969235b` |
| 6 | `theorem` | [of_symm_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/of-symm-one--12002865a4a6aed51297f268.md) | 93 | `result-track:12002865a4a6aed51297f2684e448f0273c9134e498b45d5cf9f03a0c8eb6873` |
| 7 | `theorem` | [of_symm_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/of-symm-of--39fdb8ac9c54be32bd7614ab.md) | 96 | `result-track:39fdb8ac9c54be32bd7614ab06c6ed497716f54a202bf77f3a44a14fb3de8bda` |
| 8 | `theorem` | [symm_of_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/symm-of-of--11ac5458643b624506369e22.md) | 99 | `result-track:11ac5458643b624506369e226ffb79e2982bdec2125f1af37c1dc9605a22c7f2` |
| 9 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/hom-ext--5448084b4c1b73e71d26cbf2.md) | 104 | `result-track:5448084b4c1b73e71d26cbf2cdd020891275c886e0728d956b0518771527039a` |
| 10 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/tmul--07e8bc3f03dcedb018f6b6e2.md) | 111 | `declaration-track:07e8bc3f03dcedb018f6b6e2d03b664ae76dadf5386828bb4a3de3893830fc89` |
| 11 | `def` | [auxEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/auxequiv--31690a8047285c276f3e3acb.md) | 122 | `declaration-track:31690a8047285c276f3e3acbe2970a0389d1f3e07912b555a558e496e40a1a70` |
| 12 | `theorem` | [auxEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/auxequiv-tmul--01fe61f5dee0eb0d26c33427.md) | 127 | `result-track:01fe61f5dee0eb0d26c3342759774fd7aafe7efc5055ca8d41f21bdf3655b72b` |
| 13 | `theorem` | [auxEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/auxequiv-one--000db7d39665f945d42cc6d2.md) | 130 | `result-track:000db7d39665f945d42cc6d2bf0d3cb8c9e7c7b4a283429e37e4521f0ced5fe4` |
| 14 | `theorem` | [auxEquiv_symm_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/auxequiv-symm-one--cecff18b77c990edebb6410b.md) | 134 | `result-track:cecff18b77c990edebb6410b427dde0f8cbb6bfce08b3492a811a0e1b715c53e` |
| 15 | `def` | [mulHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/mulhom--40f3acfebb8916b744892f76.md) | 141 | `declaration-track:40f3acfebb8916b744892f76d3a551b50f3bf45bcead705158d883b81021f96f` |
| 16 | `theorem` | [mulHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/mulhom-apply--d495d40294a8c202d962dd47.md) | 147 | `result-track:d495d40294a8c202d962dd47745af02e452a7798eabc2456dd5af68cfc6282e3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/instance--e04fb62e3ec20a950ad4e1ad.md) | 155 | `declaration-track:e04fb62e3ec20a950ad4e1ad54811753a114acc4d73bad7501ed634c22a7a618` |
| 18 | `theorem` | [mul_def](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/mul-def--5c4dc7b8c6fb1f717b3da5d5.md) | 157 | `result-track:5c4dc7b8c6fb1f717b3da5d510e36bfbe6024a3c3605cea551aba399dac6dd11` |
| 19 | `theorem` | [auxEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/auxequiv-mul--46badaca82616a9f6d65ed6d.md) | 160 | `result-track:46badaca82616a9f6d65ed6d672ff940ce4bc71ba1c0a85fb4b6d583820d1c80` |
| 20 | `instance` | [instMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/instmonoid--cba4a06e5197d27631c329e6.md) | 164 | `declaration-track:cba4a06e5197d27631c329e628969ca12db8afd46ed421e4eb18f7facd07adb1` |
| 21 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/instring--257e8dfaee66708a673e322e.md) | 173 | `declaration-track:257e8dfaee66708a673e322e583078c90a59778374bf0d91af7ccdac5cb732b5` |
| 22 | `theorem` | [tmul_coe_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/tmul-coe-mul-coe-tmul--14b03c54b8ca1212e3711d7a.md) | 182 | `result-track:14b03c54b8ca1212e3711d7aad755d557ddab929d6d50d5f9e5450f49dc46c46` |
| 23 | `theorem` | [tmul_zero_coe_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/tmul-zero-coe-mul-coe-tmul--af29f543747262f24234e4a0.md) | 199 | `result-track:af29f543747262f24234e4a045ad9c823834b73cdb1bf719ed43165a34bbc560` |
| 24 | `theorem` | [tmul_coe_mul_zero_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/tmul-coe-mul-zero-coe-tmul--55de91eb1b07e2582a60eddf.md) | 205 | `result-track:55de91eb1b07e2582a60eddfc2436e84dac9a561363b0f453a1d632914662e17` |
| 25 | `theorem` | [tmul_one_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/tmul-one-mul-coe-tmul--3799a7aec8a7be5734a5294e.md) | 210 | `result-track:3799a7aec8a7be5734a5294eab1dfd6fdd622ff268dcbd60910b755cb8f1900c` |
| 26 | `theorem` | [tmul_coe_mul_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/tmul-coe-mul-one-tmul--ba1da3a25722ba73e7043aae.md) | 215 | `result-track:ba1da3a25722ba73e7043aae0110b03a1160be26f7f29f45de1c1300b5a44af6` |
| 27 | `theorem` | [tmul_one_mul_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/tmul-one-mul-one-tmul--aef421fe89d373a4a26d4cd4.md) | 220 | `result-track:aef421fe89d373a4a26d4cd4d0ccd73a9a1ed5213a0f3358229be2430f74be82` |
| 28 | `def` | [includeLeftRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/includeleftringhom--238781f84aee8c8e8cba12aa.md) | 229 | `declaration-track:238781f84aee8c8e8cba12aaf2ad922aa785b26e4bfb1a2c8bd8cf0424788f27` |
| 29 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/instalgebra--b4c9bdef7d8ef8b8d97f2e1a.md) | 243 | `declaration-track:b4c9bdef7d8ef8b8d97f2e1a8a44582e125bc65d1a57f8bc0f2f7aff155e4428` |
| 30 | `lemma` | [algebraMap_def](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/algebramap-def--0a196c5c3d2954a80f12d4ff.md) | 256 | `result-track:0a196c5c3d2954a80f12d4ffef916e33d53fd3272cdc983dcd6326f0c072b728` |
| 31 | `theorem` | [tmul_algebraMap_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/tmul-algebramap-mul-coe-tmul--32a7c9cd3c2f8144e683b50a.md) | 258 | `result-track:32a7c9cd3c2f8144e683b50ab8c68877546e72b64a8b7350dbbbacf41455a1fa` |
| 32 | `theorem` | [tmul_coe_mul_algebraMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/tmul-coe-mul-algebramap-tmul--4c8ce922453a87faf4704c24.md) | 263 | `result-track:4c8ce922453a87faf4704c2481fab1e81c256156167546eeee430a9aa4fb0082` |
| 33 | `def` | [includeLeft](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/includeleft--340153ad2a37fe448e6db71f.md) | 270 | `declaration-track:340153ad2a37fe448e6db71fbb08a018449b715d7c6575e0261e1105dbf597a6` |
| 34 | `def` | [includeRight](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/includeright--4c8c73288fcd18647ac0f2b5.md) | 276 | `declaration-track:4c8c73288fcd18647ac0f2b50532ef3ef87558e7b98161f76b39d25c5b109873` |
| 35 | `lemma` | [algebraMap_def'](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/algebramap-def--1e3c72cd0b2583b05ab7cccf.md) | 290 | `result-track:1e3c72cd0b2583b05ab7cccf8d3a1da4a4ae985659f95941027d877157909b95` |
| 36 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/lift--34192a8f3ebf13b01918f98f.md) | 298 | `declaration-track:34192a8f3ebf13b01918f98f1455ea47e4c14053694056b1de7547693af12613` |
| 37 | `theorem` | [lift_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/lift-tmul--b970f72473f6e4cf0c794441.md) | 325 | `result-track:b970f72473f6e4cf0c7944413479d3f2887bc423a2d70baa1ce12b60a821f830` |
| 38 | `def` | [liftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/liftequiv--009f98057f39c21dfea0723b.md) | 333 | `declaration-track:009f98057f39c21dfea0723b65a916ede3f801bf77e7ca6bab226b3aa9e44208` |
| 39 | `lemma` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/alghom-ext--4be84c5518dca5505f20db4e.md) | 352 | `result-track:4be84c5518dca5505f20db4ed351a381ed9a6e4f57f88e53001aa6f7c41b8619` |
| 40 | `def` | [comm](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/comm--732d1ee6a73a7b48c60f3731.md) | 359 | `declaration-track:732d1ee6a73a7b48c60f3731d8a31fe63eee2c6e50165e18010b76a1f65b9eae` |
| 41 | `lemma` | [auxEquiv_comm](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/auxequiv-comm--4befd2acf2d89ddfa7392117.md) | 370 | `result-track:4befd2acf2d89ddfa73921171475b98719e31b3477b537bf43d40cd075a46fbd` |
| 42 | `lemma` | [comm_coe_tmul_coe](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/declarations/comm-coe-tmul-coe--11c4eb736b5cc829b551c876.md) | 374 | `result-track:11c4eb736b5cc829b551c876b23b0d5fcec3bb43d6b864e1f713a66400cb7d5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
