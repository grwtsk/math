# Verification target: GRWTSK.Geometry.DifferentialGeometry.Monoid.Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "213cc287878b1c187e497b34f5b2e951c1d848c3",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `213cc287878b1c187e497b34f5b2e951c1d848c3`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiffMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContMDiffAdd](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffadd--7c314d6fabc07ed83e0879b3.md) | 51 | `declaration-track:7c314d6fabc07ed83e0879b39fdc1b721b9157ea24d587ee742f101c6b2cb674` |
| 2 | `class` | [ContMDiffMul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffmul--f04dc07a05137946f3aa09d2.md) | 65 | `declaration-track:f04dc07a05137946f3aa09d252f9ad190fea2bc4b52b0c709440df7a57885934` |
| 3 | `theorem` | [ContMDiffMul.of_le](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffmul-of-le--ce7582556032d9505fe4a908.md) | 83 | `result-track:ce7582556032d9505fe4a90884dfcb911aee195eed25f489c67148cd29d56dfe` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/instance--e55dd8020db9fb52096434cb.md) | 89 | `declaration-track:e55dd8020db9fb52096434cbe5295a0cb970f1f58765c82a42f5d48bcac25e91` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/instance--6dd5e20141b4b5c846f903da.md) | 93 | `declaration-track:6dd5e20141b4b5c846f903da96b72666004a33bfdd649f926fa61ed98bfd925f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/instance--62e80ec53488dbf16b9ac80e.md) | 97 | `declaration-track:62e80ec53488dbf16b9ac80e653235747fe21d98c94eb1cc8265b5d53654f488` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/instance--2e05a9c233c5b143cb963346.md) | 103 | `declaration-track:2e05a9c233c5b143cb96334668c6c324268a0c197f7d9b8a4e0ae6ec136fc06f` |
| 8 | `theorem` | [contMDiff_mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-mul--5ac630385e23fc75d63a2881.md) | 111 | `result-track:5ac630385e23fc75d63a2881b5a85eabdc98fe304f92893bf61d01ac368875c0` |
| 9 | `theorem` | [continuousMul_of_contMDiffMul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/continuousmul-of-contmdiffmul--c9cba5762cb4e2d3642a77a2.md) | 122 | `result-track:c9cba5762cb4e2d3642a77a2b2957bdcef1ee1ae0b0e840f0bba3c3138e931e5` |
| 10 | `theorem` | [ContMDiffWithinAt.mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffwithinat-mul--c99fcbde27f564fcc5afb8b5.md) | 134 | `result-track:c99fcbde27f564fcc5afb8b59832d2fa7a92f6a4ac7c5de41aaf19eab0ac41dd` |
| 11 | `theorem` | [ContMDiffAt.mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffat-mul--ea5353bcac544e239bed5560.md) | 139 | `result-track:ea5353bcac544e239bed5560bc573a7b0e735569abf63fd1cfa5811140c512f3` |
| 12 | `theorem` | [ContMDiffOn.mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffon-mul--b71691954ea986593f8a3c91.md) | 144 | `result-track:b71691954ea986593f8a3c919549051e749bb9d7ec3fe45a39ee37cb7a048bdf` |
| 13 | `theorem` | [ContMDiff.mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-mul--ddfb6e922baeeb31e7a40188.md) | 148 | `result-track:ddfb6e922baeeb31e7a40188a8f8fb5297626d9ad44bc0707eeeebbe2c39d663` |
| 14 | `theorem` | [contMDiff_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-mul-left--a2e167a553831df1973acf4a.md) | 162 | `result-track:a2e167a553831df1973acf4a85c471fa6eb4427811a41cc8a4a787983e4ed8bd` |
| 15 | `theorem` | [contMDiffAt_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffat-mul-left--f228df53e77520813f64d44b.md) | 169 | `result-track:f228df53e77520813f64d44b5634c3c6f69c09508505ffa46ba7dc54927dd4cd` |
| 16 | `theorem` | [contMDiff_mul_right](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-mul-right--8d3465adee1663ab27f487a2.md) | 173 | `result-track:8d3465adee1663ab27f487a2ca6be5f9a6bf8743c0b8c009a08db50bc438a5db` |
| 17 | `theorem` | [contMDiffAt_mul_right](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffat-mul-right--d485e9d40551d421066177e6.md) | 180 | `result-track:d485e9d40551d421066177e62f944ca3832a7257a2d4308a51cf1ce14f79ee44` |
| 18 | `theorem` | [mdifferentiable_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/mdifferentiable-mul-left--f25c87eaabf676d45e070c88.md) | 190 | `result-track:f25c87eaabf676d45e070c88c009c71fd7474d8a899f9c0902a1cc9e16633622` |
| 19 | `theorem` | [mdifferentiableAt_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/mdifferentiableat-mul-left--8a73c4397066143cf03fb0fe.md) | 194 | `result-track:8a73c4397066143cf03fb0fe641830f1fd3b6916b0795701b432c906e950577d` |
| 20 | `theorem` | [mdifferentiable_mul_right](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/mdifferentiable-mul-right--0cb9624b777a56f4bce6e956.md) | 199 | `result-track:0cb9624b777a56f4bce6e956540c794a809383fbe3037b0b11b68b52480bf15f` |
| 21 | `theorem` | [mdifferentiableAt_mul_right](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/mdifferentiableat-mul-right--db54b54018bf9b87bae9d3a8.md) | 203 | `result-track:db54b54018bf9b87bae9d3a819fe4c24c560c518e98ffd2cb89840c3dfc0da97` |
| 22 | `def` | [smoothLeftMul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/smoothleftmul--5c0eb54a90a0a54578e0aa3d.md) | 216 | `declaration-track:5c0eb54a90a0a54578e0aa3d71c48f06ebdcf9313b8c9cf4c1cee271976157ad` |
| 23 | `def` | [smoothRightMul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/smoothrightmul--ed3b5775c93da0f63af73734.md) | 223 | `declaration-track:ed3b5775c93da0f63af737342938cbbbcc1f40aca5b1b597aa1c36a1d6f55f0f` |
| 24 | `theorem` | [L_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/l-apply--d0a063b115d6aa7c0e7fd109.md) | 235 | `result-track:d0a063b115d6aa7c0e7fd10970a70d9ac0044c3aa5f8f44f71e063e21171e299` |
| 25 | `theorem` | [R_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/r-apply--1e3598964de14fd7f145e04d.md) | 239 | `result-track:1e3598964de14fd7f145e04daaccf38f5ef3ffabd22c6f203fbeaa4ae762981e` |
| 26 | `theorem` | [L_mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/l-mul--768e026fce053d3c11bea552.md) | 243 | `result-track:768e026fce053d3c11bea552a32a8da5aefc4b312e98990eea2dd64b77f0e0f3` |
| 27 | `theorem` | [R_mul](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/r-mul--2f8d1a4ea76e4119eb3bb593.md) | 249 | `result-track:2f8d1a4ea76e4119eb3bb59363b30b76d6462ed8c8dca1d6e6aa450cc4f7d5d9` |
| 28 | `theorem` | [smoothLeftMul_one](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/smoothleftmul-one--431ee3b9bf5c564f7999a6d7.md) | 259 | `result-track:431ee3b9bf5c564f7999a6d73412da4e75417bac106ff7b19db4ceaed08ac376` |
| 29 | `theorem` | [smoothRightMul_one](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/smoothrightmul-one--39f5fa1578f6af1460cfa0a0.md) | 262 | `result-track:39f5fa1578f6af1460cfa0a0ef3b45fd82471c1cc9b33c5710c04ecce70d96b4` |
| 30 | `instance` | [ContMDiffMul.prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffmul-prod--74e67352074917ed6470d9a8.md) | 269 | `declaration-track:74e67352074917ed6470d9a85aef5fea345fe17c236067d674cd629481490886` |
| 31 | `theorem` | [contMDiff_pow](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-pow--e4f73f1704c24315cfa44199.md) | 292 | `result-track:e4f73f1704c24315cfa4419910af3e5df44e0f17a95ead104c536dc4344e1c05` |
| 32 | `structure` | [ContMDiffAddMonoidMorphism](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffaddmonoidmorphism--fe814919f45a88264924fd93.md) | 300 | `declaration-track:fe814919f45a88264924fd9337ef31600a49553b952317bc705f92d1e20d8c43` |
| 33 | `structure` | [ContMDiffMonoidMorphism](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffmonoidmorphism--5d9ca98e4e84e797903680e4.md) | 310 | `declaration-track:5d9ca98e4e84e797903680e456a183d50491b03f6e8c46e580906174c0be6bd9` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/instance--a69432b45b73a36e1393dc53.md) | 319 | `declaration-track:a69432b45b73a36e1393dc53ac610de93d7c762f0de6913fda8699c0d5aa441e` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/instance--d9bed9fa7611073a89e80e41.md) | 324 | `declaration-track:d9bed9fa7611073a89e80e41396e6c2369d2e501cb5c036b313f1ba72081e8e5` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/instance--907255583738c398f1fd67fc.md) | 328 | `declaration-track:907255583738c398f1fd67fc0806118eaedf919533cd50d4883fe244de654c9c` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/instance--6b4ecb05970be76e09747e36.md) | 333 | `declaration-track:6b4ecb05970be76e09747e361ef858de911b732fbd0dd210178e8c0cee900884` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/instance--5d72598fc547922438b34541.md) | 338 | `declaration-track:5d72598fc547922438b345416fd2b4bcd297e86718386434edc2d1c22cc1d7c3` |
| 39 | `theorem` | [ContMDiffWithinAt.prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffwithinat-prod--9e1068e70dd4c2f3830b3200.md) | 360 | `result-track:9e1068e70dd4c2f3830b320075477f7a9ba3afa8bcf132db4086b6a77c2b5a95` |
| 40 | `theorem` | [contMDiffWithinAt_finprod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffwithinat-finprod--345e4bddc2bf91e6d1aed3e2.md) | 370 | `result-track:345e4bddc2bf91e6d1aed3e28764fa8d9939df3ff361602f68f4408db5b2a635` |
| 41 | `theorem` | [contMDiffWithinAt_finset_prod'](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffwithinat-finset-prod--62190fd34a4723b55c10b9bc.md) | 378 | `result-track:62190fd34a4723b55c10b9bcaaa402757c5b74d01f4d43badb2be0d837ee9fe5` |
| 42 | `theorem` | [contMDiffWithinAt_finset_prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffwithinat-finset-prod--c9747b667b252848377f26e4.md) | 384 | `result-track:c9747b667b252848377f26e477bf097507eb5fd9088f260e3c10b50067ffc156` |
| 43 | `theorem` | [ContMDiffAt.prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffat-prod--a59994ca584a44c356dc81fd.md) | 390 | `result-track:a59994ca584a44c356dc81fd7b7552aabf7149cf8ddf5efcfa59d166a844e26f` |
| 44 | `theorem` | [contMDiffAt_finprod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffat-finprod--35deb266118e0b81160497e8.md) | 396 | `result-track:35deb266118e0b81160497e8dcb1de22cdffd7b9f2b417287b532ecc2d6c332f` |
| 45 | `theorem` | [contMDiffAt_finset_prod'](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffat-finset-prod--5bdfdc24a24dfce3503f5f28.md) | 402 | `result-track:5bdfdc24a24dfce3503f5f28dc60584f6f751bbb18f452dd8104be97400dd09c` |
| 46 | `theorem` | [contMDiffAt_finset_prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffat-finset-prod--ddc0ffe68263d876eb3cadfe.md) | 407 | `result-track:ddc0ffe68263d876eb3cadfe4736f72c85d398b5785f8c02bbd01360611c1c8f` |
| 47 | `theorem` | [contMDiffOn_finprod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffon-finprod--273347b747bbc79de11a781b.md) | 412 | `result-track:273347b747bbc79de11a781bd2b69bb1f6a51298a960cebc96a5634002dacef7` |
| 48 | `theorem` | [contMDiffOn_finset_prod'](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffon-finset-prod--26a74b753c843acb9a444fe8.md) | 418 | `result-track:26a74b753c843acb9a444fe8e68eef09406d101d7e39963353b871280c94c725` |
| 49 | `theorem` | [contMDiffOn_finset_prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffon-finset-prod--b8a9d5e36ff7ef4538a1046f.md) | 423 | `result-track:b8a9d5e36ff7ef4538a1046f63cced51fa3c50d2ff926d8c59730ee3fbad11bb` |
| 50 | `theorem` | [ContMDiff.prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-prod--682d5e31f70e285b26be0971.md) | 428 | `result-track:682d5e31f70e285b26be09718e4c9a2af56aadd2aa4c9f0fcb57ab9f561a2de9` |
| 51 | `theorem` | [contMDiff_finset_prod'](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-finset-prod--9602f326a7804e4c2f8f1eb8.md) | 433 | `result-track:9602f326a7804e4c2f8f1eb8833ebf13c6b96522853bb621f0dacecfb0fdf466` |
| 52 | `theorem` | [contMDiff_finset_prod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-finset-prod--1b187d6c02941dcdcc177786.md) | 437 | `result-track:1b187d6c02941dcdcc177786fb1502c3b0b905622d5c88c4edfdfe212f928d9a` |
| 53 | `theorem` | [contMDiff_finprod](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-finprod--6ad0b0f5c606215426069961.md) | 442 | `result-track:6ad0b0f5c606215426069961e76dd3b3a94d40a5a55a51788bdc27dae2a1bb84` |
| 54 | `theorem` | [contMDiff_finprod_cond](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-finprod-cond--d8f0aea717dd5f285a0ae658.md) | 447 | `result-track:d8f0aea717dd5f285a0ae65806b6c13e98f940e3f017d35521755749ea3a9dfc` |
| 55 | `instance` | [instContMDiffAddSelf](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/instcontmdiffaddself--70f6d71a946fb971eb1f2d88.md) | 498 | `declaration-track:70f6d71a946fb971eb1f2d889a2a265f23dd83471a7e2a825d8dc54cadef8c23` |
| 56 | `theorem` | [ContMDiffWithinAt.div_const](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffwithinat-div-const--cabb196ff7c8013250177853.md) | 518 | `result-track:cabb196ff7c8013250177853f3e31c163525ff4514dfd6ab44235a7af0412542` |
| 57 | `theorem` | [ContMDiffAt.div_const](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffat-div-const--056b85e7a82a1fb8af0f8198.md) | 523 | `result-track:056b85e7a82a1fb8af0f819834053dcd03e5ad641b60aa8d62c28a2e7cbac8da` |
| 58 | `theorem` | [ContMDiffOn.div_const](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiffon-div-const--91953382b5c61311e5508b13.md) | 528 | `result-track:91953382b5c61311e5508b135a5f0714962dbbb154f1962193a6a34d1037c121` |
| 59 | `theorem` | [ContMDiff.div_const](../../../../../mathematics/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/declarations/contmdiff-div-const--6626b658b84eef8f902a98c0.md) | 532 | `result-track:6626b658b84eef8f902a98c0d02f00bc48ad582429240a9ea17872dd7c2482f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
