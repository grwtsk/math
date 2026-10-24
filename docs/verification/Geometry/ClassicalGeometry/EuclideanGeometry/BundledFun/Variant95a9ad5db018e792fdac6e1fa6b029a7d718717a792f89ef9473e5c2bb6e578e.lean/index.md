# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.BundledFun.Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60dda9814686c32c23fd40e909859b4066377d32",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60dda9814686c32c23fd40e909859b4066377d32`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Ultra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PseudoMetric](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/pseudometric--1d0bd0a070659bbacb497d6d.md) | 40 | `declaration-track:1d0bd0a070659bbacb497d6d9077b31b4a2504b36cc5360ad2da47d2cf3e96eb` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/instance--97b17c9da3b7ef989e6b1d07.md) | 56 | `declaration-track:97b17c9da3b7ef989e6b1d073faa3f5ac14c070a8035f4e47b378a75d0893464` |
| 3 | `lemma` | [coe_mk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/coe-mk--a3bd7c305c496b6a4ed1cd40.md) | 61 | `result-track:a3bd7c305c496b6a4ed1cd40fe2912c63bdabf5bc42528a12817b253d4b7ed44` |
| 4 | `lemma` | [mk_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/mk-apply--3912059cad7feb5b59e9efca.md) | 63 | `result-track:3912059cad7feb5b59e9efca2b6bfa2fc1c6065b20fbce539744062f2e57870d` |
| 5 | `lemma` | [refl](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/refl--d5741b2185bd2771497e8ca4.md) | 68 | `result-track:d5741b2185bd2771497e8ca45801e7592e8acc24d19f9d4d1cf98964a68fe019` |
| 6 | `lemma` | [symm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/symm--a390f00629df8d40209dcc3d.md) | 69 | `result-track:a390f00629df8d40209dcc3da5c3b8e268f8ee07689ae95f7f3898f1f714040c` |
| 7 | `lemma` | [triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/triangle--04cfd509efd0b6ddf5b64745.md) | 70 | `result-track:04cfd509efd0b6ddf5b64745625b802d872a855c9209ee011705b03a5bd13d0e` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/instance--eeee97b63d188ea78586f367.md) | 72 | `declaration-track:eeee97b63d188ea78586f3674a523b4cdb466411d5aac9ab4fd1eff11ea12832` |
| 9 | `lemma` | [coe_le_coe](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/coe-le-coe--a14c9b06cbbe38ec9c43fa02.md) | 75 | `result-track:a14c9b06cbbe38ec9c43fa0203bf75e0365c34f955fd9f46c13677411dac0743` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/instance--fbf7ea85f9714512562d84d1.md) | 81 | `declaration-track:fbf7ea85f9714512562d84d13e1dd095eec9a6763bc8d6121ce4afe486c1e5d2` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/instance--fe8aa854e19e27a4bcac1872.md) | 84 | `declaration-track:fe8aa854e19e27a4bcac187238ab5e127e542148cb7e97554e4d0b52c9a2c2c2` |
| 12 | `lemma` | [coe_bot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/coe-bot--7a1ab241fe1cc64a9477e74c.md) | 91 | `result-track:7a1ab241fe1cc64a9477e74c632062258cb4931fd480e7098036f2782842c509` |
| 13 | `lemma` | [bot_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/bot-apply--a2b723233e6bdccd0fd8e10e.md) | 94 | `result-track:a2b723233e6bdccd0fd8e10ef07db8727c58ad3f47b58089a4f5be87747a799c` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/instance--ee01f81d35c5f00728a2da69.md) | 98 | `declaration-track:ee01f81d35c5f00728a2da690d3b595c1221cd350761a946fb84d69e5bdadc0e` |
| 15 | `lemma` | [coe_sup](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/coe-sup--d291e0d0b2c949436612d39e.md) | 112 | `result-track:d291e0d0b2c949436612d39e5d430b10d4bb312f4bb5b242fc5515667e6ea147` |
| 16 | `lemma` | [sup_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/sup-apply--db33c9c3263fefaee7ca768e.md) | 117 | `result-track:db33c9c3263fefaee7ca768ea4ae08799f775b05b61a4742dbcc57e583f06c90` |
| 17 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/instance--e8563ae2e0bfd039b2c89a82.md) | 122 | `declaration-track:e8563ae2e0bfd039b2c89a82182b357a9c23d6d0087aa7369f75ae6baa146eb4` |
| 18 | `lemma` | [nonneg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/nonneg--07e5943dc49039e99cace2d0.md) | 133 | `result-track:07e5943dc49039e99cace2d0194a38fe4d70e0abe2e7705b85071589ca5a02c5` |
| 19 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/instance--ff551c30561b528717e2e1b2.md) | 141 | `declaration-track:ff551c30561b528717e2e1b2f5369b1809bbbccec1e6dbb48ca87a9c9952d57d` |
| 20 | `lemma` | [coe_finsetSup](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/coe-finsetsup--6afa7dd4217a3c4e8baf299d.md) | 145 | `result-track:6afa7dd4217a3c4e8baf299d5e568fb0aed36e8d46a07ff7cebfc11866e4d727` |
| 21 | `lemma` | [finsetSup_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/finsetsup-apply--c6bc3afde663fb9073f55d9d.md) | 152 | `result-track:c6bc3afde663fb9073f55d9db9eaba7b7f56fa2a49726f73300a95ccee28fb10` |
| 22 | `class` | [IsUltra](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/isultra--4ccdc6e2e9c6f71868df36af.md) | 165 | `declaration-track:4ccdc6e2e9c6f71868df36af7ae3f9006b8f29d746db95df1a263793fea2de46` |
| 23 | `lemma` | [IsUltra.le_sup](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/isultra-le-sup--3200da7b16f51b1aa9ac6953.md) | 169 | `result-track:3200da7b16f51b1aa9ac6953ceb38ad46f3f87312519cff88df6df65753485ed` |
| 24 | `instance` | [IsUltra.bot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/isultra-bot--b0d488300cb0db13537fd302.md) | 173 | `declaration-track:b0d488300cb0db13537fd30241455e810b63ad93156d3e8b5fb2d6959934ca9e` |
| 25 | `instance` | [IsUltra.sup](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/isultra-sup--8a641d0708860e933e1fa9c9.md) | 177 | `declaration-track:8a641d0708860e933e1fa9c92f510909223cdc7d9e13f892930805c5b25d6e40` |
| 26 | `lemma` | [IsUltra.finsetSup](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/isultra-finsetsup--8539a4f0f614cb2fa1104d2b.md) | 185 | `result-track:8539a4f0f614cb2fa1104d2bdd5669fbbd528a74fee16732fe00e9e04c9a4d78` |
| 27 | `lemma` | [isSymmetricRel_ball](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/issymmetricrel-ball--a86a0fdf207a21a73bb5ee1d.md) | 206 | `result-track:a86a0fdf207a21a73bb5ee1d7c28897ea9a740825dfd6799ddf9624d4498a6cf` |
| 28 | `lemma` | [isSymmetricRel_closedBall](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/issymmetricrel-closedball--663f3a593acc66dbfa1080db.md) | 210 | `result-track:663f3a593acc66dbfa1080db0a421414b0985d4fbff5276c86f9ee271e1c80d5` |
| 29 | `lemma` | [IsUltra.isTransitiveRel_ball](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/isultra-istransitiverel-ball--c390d9faef539f46c1474a0e.md) | 214 | `result-track:c390d9faef539f46c1474a0e03695dccb19599009394a7adf8744d64a53337f5` |
| 30 | `lemma` | [IsUltra.isTransitiveRel_closedBall](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/declarations/isultra-istransitiverel-closedball--76d96371eaabaa8a44360260.md) | 219 | `result-track:76d96371eaabaa8a443602605b0d6fb35277c06bca8784dc43e762ee5a6b21b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
