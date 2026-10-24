# Verification target: GRWTSK.Algebra.HomogeneousLocalization.Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08330c9a3773dbf36555fa72a6c31ebee455915e",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/index.md) · [Full source](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08330c9a3773dbf36555fa72a6c31ebee455915e`.

Source path: `GRWTSK/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AtPrime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NumDenSameDeg](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/numdensamedeg--931b129e47f6e8f52738283a.md) | 92 | `declaration-track:931b129e47f6e8f52738283ac8e69fae493aa4711b8f4e01861af6f84b837bec` |
| 2 | `theorem` | [ext](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/ext--f09f42a16e983e9e77fd23e4.md) | 107 | `result-track:f09f42a16e983e9e77fd23e45a20ed7ad4c7602efe612ee19ca2ef70fac4f761` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--47ea09013b10385f3d5aae1e.md) | 116 | `declaration-track:47ea09013b10385f3d5aae1e22b7a0c258fdb58a60a76ae089ec5aed6ce0e82a` |
| 4 | `theorem` | [deg_one](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/deg-one--ffd96a4a27cbdb9116ab84c6.md) | 125 | `result-track:ffd96a4a27cbdb9116ab84c632546412cf266ef9fe208d80c350807fc975a068` |
| 5 | `theorem` | [num_one](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/num-one--fd6f23f90b303f63662773d7.md) | 130 | `result-track:fd6f23f90b303f63662773d7148669dc1ecfdbdc3ed3e1c729ed059945d42d9e` |
| 6 | `theorem` | [den_one](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/den-one--b94322c6457187d02668e338.md) | 135 | `result-track:b94322c6457187d02668e3380b441c11f15ab0c3762617ff906c433189bacdf0` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--5dd7fcbc433368d34653e812.md) | 139 | `declaration-track:5dd7fcbc433368d34653e8120c6e1b10d5ac531b49121c883fb670a5735dfb3d` |
| 8 | `theorem` | [deg_zero](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/deg-zero--e77d0cd08e0e4c4b9af71e32.md) | 143 | `result-track:e77d0cd08e0e4c4b9af71e32b6c840e828817c1ce51ea40ac2bb4a0c705b2152` |
| 9 | `theorem` | [num_zero](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/num-zero--9e442e70f142e158c03fd4b5.md) | 148 | `result-track:9e442e70f142e158c03fd4b5f34c915a9d26e3785cb6737f22c34675ee120c36` |
| 10 | `theorem` | [den_zero](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/den-zero--e6c40989044d63500b9f4a73.md) | 153 | `result-track:e6c40989044d63500b9f4a733ab4a5fe874edd6b4da169a3897f507a497b2442` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--6aff68005231d07c68cbb058.md) | 157 | `declaration-track:6aff68005231d07c68cbb0583f0d933d53058be68bda3f08a3eb804e789d3a3c` |
| 12 | `theorem` | [deg_mul](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/deg-mul--558129b1e9f1f243c45f3030.md) | 166 | `result-track:558129b1e9f1f243c45f303076352c5a745d49f637bc92ea069658f92957b211` |
| 13 | `theorem` | [num_mul](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/num-mul--a69589e0c7374ab76ad1a06e.md) | 171 | `result-track:a69589e0c7374ab76ad1a06eeb4f7d1ae4d28a9e0d03de773d596c77a1ac9078` |
| 14 | `theorem` | [den_mul](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/den-mul--a94e2812ad2b6f9f28cb197f.md) | 176 | `result-track:a94e2812ad2b6f9f28cb197f33e3f10719584be37945fb9d57ea9b4ddc1a8fb1` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--4b4abd83d324752586dd283f.md) | 180 | `declaration-track:4b4abd83d324752586dd283fc27e7fd1eb446ca2274538ab2d8c09ba2b720025` |
| 16 | `theorem` | [deg_add](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/deg-add--ddca408195706b1a77233a8c.md) | 190 | `result-track:ddca408195706b1a77233a8cae1404a0fe99d351a78136da506e9a3b32dcc239` |
| 17 | `theorem` | [num_add](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/num-add--17c4b995e7191407ee7f0796.md) | 195 | `result-track:17c4b995e7191407ee7f079673994bc7fd0bcbc1e1fc2a3818232e3f50810eaf` |
| 18 | `theorem` | [den_add](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/den-add--0be778c240592b5d224cf749.md) | 201 | `result-track:0be778c240592b5d224cf74908e1e4225ab743e2e815c1666c052ff58337bfd7` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--d340c1362eeee5c122d00f2f.md) | 205 | `declaration-track:d340c1362eeee5c122d00f2fe938ac7585212bbaf4183135559381f67c1d395c` |
| 20 | `theorem` | [deg_neg](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/deg-neg--70bf0829aeed1e3e0430f829.md) | 209 | `result-track:70bf0829aeed1e3e0430f829ef16eca0b2711d7b0c2f07601f9aab2e2e996fff` |
| 21 | `theorem` | [num_neg](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/num-neg--e40983304fbae57df556c80c.md) | 214 | `result-track:e40983304fbae57df556c80cd3b80a4af5faec504c2f8b7f988632b796e66611` |
| 22 | `theorem` | [den_neg](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/den-neg--3d93e7085c314127006ab2c1.md) | 219 | `result-track:3d93e7085c314127006ab2c193a84173a0390c30ebbc494c4e2f83890fb178e9` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--a6b971a1e1d488eca76c809e.md) | 223 | `declaration-track:a6b971a1e1d488eca76c809e4cca7446b057f2c1fb960f82daa52fab3b16e89f` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--e4df356e092ae64a6f55d43a.md) | 231 | `declaration-track:e4df356e092ae64a6f55d43a8f4311eb1052b700f73877d54081c2089977c7be` |
| 25 | `theorem` | [deg_pow](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/deg-pow--9e212f9c8ae04c04c3107edc.md) | 240 | `result-track:9e212f9c8ae04c04c3107edc735185cf42d3130d73bd6bb3afdb8496503edafb` |
| 26 | `theorem` | [num_pow](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/num-pow--60f74b3636ef0857e5149aea.md) | 245 | `result-track:60f74b3636ef0857e5149aea3866981fe4455567022f09125cc3b892ff471378` |
| 27 | `theorem` | [den_pow](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/den-pow--2ae8c7b8c6198206f48caf7b.md) | 250 | `result-track:2ae8c7b8c6198206f48caf7b93e982fdf8d4ca7a8971dfa45e58dcebf9918945` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--68a91374ab5019e873dfb437.md) | 258 | `declaration-track:68a91374ab5019e873dfb4372e55747361d4ca2a8e6dc29229e54507f657f394` |
| 29 | `theorem` | [deg_smul](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/deg-smul--b19d4577173ee48f8bd1d18e.md) | 262 | `result-track:b19d4577173ee48f8bd1d18e787824b099869ed729872947fb8f6c0d4a4e4c28` |
| 30 | `theorem` | [num_smul](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/num-smul--357f9d5abac07183c0cd0fde.md) | 267 | `result-track:357f9d5abac07183c0cd0fdef04177a1738b38d5db242528d3f8d9233beab376` |
| 31 | `theorem` | [den_smul](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/den-smul--f69b205ee3ffb0b24cebccae.md) | 272 | `result-track:f69b205ee3ffb0b24cebccae889c966d37df2b5682be574afd122f7152ec840e` |
| 32 | `def` | [embedding](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/embedding--e0bec90e7f66072eb56cdb9b.md) | 283 | `declaration-track:e0bec90e7f66072eb56cdb9b93875d8dd27487825ecb233707d22803b3d0a995` |
| 33 | `def` | [HomogeneousLocalization](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/homogeneouslocalization--bb4aa8acca86e07a87f2e4d5.md) | 296 | `declaration-track:bb4aa8acca86e07a87f2e4d5a288f1bcc443122722703f874e754a8e834b8c1a` |
| 34 | `def` | [val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/val--32176d67dccd457c6791b31e.md) | 309 | `declaration-track:32176d67dccd457c6791b31e36ab10e274b5f68a5de05bbe2ced68e8d249bf2b` |
| 35 | `theorem` | [val_mk''](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/val-mk--40848139343084d144d63ddc.md) | 314 | `result-track:40848139343084d144d63ddc99b2a35f03214bb4cfe79fe7fcef7bbf1b32082d` |
| 36 | `theorem` | [val_injective](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/val-injective--d8cf90a56ed49e9bd8ca2ac8.md) | 321 | `result-track:d8cf90a56ed49e9bd8ca2ac8dfdee69d30ea7fff7b1ea13c74011c967892b4e9` |
| 37 | `instance` | [hasPow](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/haspow--4efe810d05d2d74e29c987d8.md) | 325 | `declaration-track:4efe810d05d2d74e29c987d81151a3fc93f203d69fc09828536b165ccdbcefdb` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--0c8e3bac8b2fe8be77338221.md) | 341 | `declaration-track:0c8e3bac8b2fe8be773382218b8efad9b1027c88e09ada0d06de2bca12776433` |
| 39 | `theorem` | [smul_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/smul-val--c43578332ff42d7d1d6a4f40.md) | 348 | `result-track:c43578332ff42d7d1d6a4f40b283049579c6ef8aac21d4fe104e7727afb898d5` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--1067b32bf21760799dc80905.md) | 358 | `declaration-track:1067b32bf21760799dc809056ff3a75733e902d69188af8db039ad18c31bac04` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--3a531dbb7ed33f1e0074d059.md) | 364 | `declaration-track:3a531dbb7ed33f1e0074d0593ed503b71a7f0bdd74b3c70e0dadbcfe949d1558` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--5e0f512fa89d5ccdac819e45.md) | 373 | `declaration-track:5e0f512fa89d5ccdac819e45b02359d225f96b1cbcf86c6d7f42524c9fce7f77` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--c52c252f2f8acfe0f13bca11.md) | 375 | `declaration-track:c52c252f2f8acfe0f13bca113b52f3cf3ff11ccde5c90102d979eec24ac5e431` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--b0045531f49a75760fcdc509.md) | 384 | `declaration-track:b0045531f49a75760fcdc50910f7fdc441f9dc3a6bac3309ce275ac7ca617627` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--88b96576a2819fce61e8d7cf.md) | 386 | `declaration-track:88b96576a2819fce61e8d7cf9300ba47b088fa151a94dec57a2fbe9fd51fa98b` |
| 46 | `theorem` | [zero_eq](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/zero-eq--53b894417c168f570df95536.md) | 388 | `result-track:53b894417c168f570df95536304e98ba6491bd71be1f03e8468726b7332e5fc4` |
| 47 | `theorem` | [one_eq](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/one-eq--c140494cc4df111ec3a9d24b.md) | 392 | `result-track:c140494cc4df111ec3a9d24b5489ae10a82469d7d9e56ff02c8c17eeb273099b` |
| 48 | `theorem` | [zero_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/zero-val--a9370cc48c3a63b5b5316655.md) | 398 | `result-track:a9370cc48c3a63b5b531665553fb59a3eca4583edb599750cb7a2c16c15f01d3` |
| 49 | `theorem` | [one_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/one-val--1ef8ae175370a1af954c5056.md) | 402 | `result-track:1ef8ae175370a1af954c5056ca4e2cf38adc70a888ba9328bb71cac5ec9fb447` |
| 50 | `theorem` | [add_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/add-val--c4f119e2a7f01d5c1c51c5ba.md) | 407 | `result-track:c4f119e2a7f01d5c1c51c5ba33fca840a67c4834a53bd1dc710fc715387411da` |
| 51 | `theorem` | [mul_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/mul-val--b101759bdf1ddab9616ce69e.md) | 417 | `result-track:b101759bdf1ddab9616ce69ed7e0d88675507d249fc77a6c697ef0d9afc45114` |
| 52 | `theorem` | [neg_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/neg-val--f71c1bac12e6f99c959305ce.md) | 427 | `result-track:f71c1bac12e6f99c959305ce649cd5c45fc4b01254c2b75a2f3e85cf45eed5bd` |
| 53 | `theorem` | [sub_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/sub-val--35a7a03e2f3680344d17bdda.md) | 436 | `result-track:35a7a03e2f3680344d17bddab68f67cfa87e01e1a2a2808e6a79f21fffcf7119` |
| 54 | `theorem` | [pow_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/pow-val--58926f286126e843b7ae8968.md) | 441 | `result-track:58926f286126e843b7ae8968fe38544467623765715acc2f122e592ce7d9d2fd` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--6ea35bd0eea854bb6bcc8162.md) | 449 | `declaration-track:6ea35bd0eea854bb6bcc8162e1639f2624a9e6ced8056081d7dc3edd8619f384` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--1fa422b3c6cf42f552d45a33.md) | 452 | `declaration-track:1fa422b3c6cf42f552d45a33e76a2ae258324a0efef97f11f27687251b0f3bc4` |
| 57 | `theorem` | [natCast_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/natcast-val--51737bcfb124b35323dc1e5b.md) | 456 | `result-track:51737bcfb124b35323dc1e5b14fffd2714afafeda84333341f8584bf944874ba` |
| 58 | `theorem` | [intCast_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/intcast-val--a23942f91e18a3ec55b0cf43.md) | 461 | `result-track:a23942f91e18a3ec55b0cf43d5e16f4508661bf9bdb2c1115290179a32fe4a41` |
| 59 | `instance` | [homogenousLocalizationCommRing](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/homogenouslocalizationcommring--4ecf1ebe2e08ac58f4a97d7d.md) | 465 | `declaration-track:4ecf1ebe2e08ac58f4a97d7d5fcd41e0f1b87917802c38d445de8c59ce1957c7` |
| 60 | `instance` | [homogeneousLocalizationAlgebra](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/homogeneouslocalizationalgebra--7743879045afb5ed1f2a7ea4.md) | 470 | `declaration-track:7743879045afb5ed1f2a7ea4e68abe59747408eb90768da3a5f97ffa18e47d82` |
| 61 | `def` | [num](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/num--a6c3d045709c2173216578a9.md) | 491 | `declaration-track:a6c3d045709c2173216578a9c9f78a3b0a3fb6103f13c202bab85a6068b76d18` |
| 62 | `def` | [den](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/den--4b3bd5bb6bc08f8f03da7b3a.md) | 496 | `declaration-track:4b3bd5bb6bc08f8f03da7b3ac5d47bee4cb32ab9c639c1d9536124aa244ae69e` |
| 63 | `def` | [deg](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/deg--cabefe59c64d28db59ba00f7.md) | 502 | `declaration-track:cabefe59c64d28db59ba00f7d16e61207b610fce4ff0d6cf0529844b17a63d5e` |
| 64 | `theorem` | [den_mem](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/den-mem--7bd3cce9029bd972c8772f90.md) | 506 | `result-track:7bd3cce9029bd972c8772f9009e36452e7a2b2bdeef6656797d6bc2900f7411d` |
| 65 | `theorem` | [num_mem_deg](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/num-mem-deg--e706cae9fb5c42c2c9fe2438.md) | 510 | `result-track:e706cae9fb5c42c2c9fe2438492544f8068fb340edee17cc90dbee8f0e51d792` |
| 66 | `theorem` | [den_mem_deg](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/den-mem-deg--f69a31224d9e45ab797add13.md) | 514 | `result-track:f69a31224d9e45ab797add13ff5c5317d74fbd4c42d166870fb3374c92abcde8` |
| 67 | `theorem` | [eq_num_div_den](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/eq-num-div-den--c8203f4ce373fcea6edec911.md) | 518 | `result-track:c8203f4ce373fcea6edec91190c7daa0ce72321da7a53f80a54f5cb36fbe5be8` |
| 68 | `theorem` | [ext_iff_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/ext-iff-val--f8c3a39a781e74290915c553.md) | 526 | `result-track:f8c3a39a781e74290915c553222df5b9df547984ea8f1a8bdf22506f25b484df` |
| 69 | `abbrev` | [AtPrime](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/atprime--2b70604196e0afdff7168ed5.md) | 540 | `declaration-track:2b70604196e0afdff7168ed53fcd6083e37ee30583dc23b36753a0e95577df6d` |
| 70 | `theorem` | [isUnit_iff_isUnit_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/isunit-iff-isunit-val--5e37497b5d83cc9b6959f9d8.md) | 544 | `result-track:5e37497b5d83cc9b6959f9d885f8f1ce3e0dc6a1e89ee755b8eb13a116f503be` |
| 71 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/instance--b9cdb691c28982ea99f82b61.md) | 578 | `declaration-track:b9cdb691c28982ea99f82b610a9b3fa5753f2fe17f1d757b2494b6a422b911a7` |
| 72 | `instance` | [localRing](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/localring--9a6bf26b7875d2d92ea931db.md) | 581 | `declaration-track:9a6bf26b7875d2d92ea931db8482bb77e8d72970d64e0f39edc3f6780929f5ee` |
| 73 | `abbrev` | [Away](../../../../mathematics/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/declarations/away--8cd85c9f122fadf16544d175.md) | 610 | `declaration-track:8cd85c9f122fadf16544d175ce02d9cca3182a69fc92e743982b60005fdb3a2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
