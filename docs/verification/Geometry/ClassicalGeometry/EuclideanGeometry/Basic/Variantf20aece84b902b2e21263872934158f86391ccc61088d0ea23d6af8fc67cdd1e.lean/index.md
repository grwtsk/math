# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Basic.Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d7bb48dc642253c3954cd5dd13993084680813f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d7bb48dc642253c3954cd5dd13993084680813f`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.StrictConvexBetween` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere--9ba1ed3297f87b0883f17ccb.md) | 51 | `declaration-track:9ba1ed3297f87b0883f17ccbae20218719c231dbf1aa0867a1abe46868dd9917` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/instance--1a1c3a8d1238bd5f2ab58378.md) | 62 | `declaration-track:1a1c3a8d1238bd5f2ab58378e796fc468bacf9b1b1b3e44d044bf2e2dc731708` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/instance--eab6cd85bbdbb88a50f5f7b0.md) | 65 | `declaration-track:eab6cd85bbdbb88a50f5f7b0c13bc8257164ec7915a252771b7bb4a91e14b633` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/instance--501808c0d4d56a60f0c1d04e.md) | 68 | `declaration-track:501808c0d4d56a60f0c1d04ed687a5756a20980f3c7e9c72c745d445fe63bd57` |
| 5 | `theorem` | [Sphere.mk_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere-mk-center--460136ca91db9195b03cfb62.md) | 71 | `result-track:460136ca91db9195b03cfb62236d4af893d829bf77c321ed92bb020a37dc805d` |
| 6 | `theorem` | [Sphere.mk_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere-mk-radius--71ac90e8a67c0e3760c007ac.md) | 75 | `result-track:71ac90e8a67c0e3760c007ac66ee5823b61dde8279da5c12be357953c7111fd8` |
| 7 | `theorem` | [Sphere.mk_center_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere-mk-center-radius--32349f7b04fbac8fab12e945.md) | 80 | `result-track:32349f7b04fbac8fab12e94581c73635feb830d73b424ccaa4d13e6644aa48c4` |
| 8 | `theorem` | [Sphere.coe_mk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere-coe-mk--565dd289749fd1952d26bb58.md) | 90 | `result-track:565dd289749fd1952d26bb58f030675b7f0d8986d3af4f8499efc594f8b3fba5` |
| 9 | `theorem` | [Sphere.mem_coe](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere-mem-coe--265398b4686f8a22d0514aae.md) | 95 | `result-track:265398b4686f8a22d0514aae858524707cc50a4c165a6a26fb610f2956514eba` |
| 10 | `theorem` | [Sphere.mem_coe'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere-mem-coe--3a21f4a8a2297b272f7f2348.md) | 100 | `result-track:3a21f4a8a2297b272f7f234807a7ceca9428e74fc35f82b043a6c05fc27b842d` |
| 11 | `theorem` | [mem_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/mem-sphere--2bd04b239631060f403f72d7.md) | 103 | `result-track:2bd04b239631060f403f72d7a183ed451f740c1a91ec49ad03cbb64a7a0b920d` |
| 12 | `theorem` | [mem_sphere'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/mem-sphere--6bad98c6c83c735d513a3b45.md) | 107 | `result-track:6bad98c6c83c735d513a3b45c81afe6ad59e48977ea0382e3f04d466d82960e8` |
| 13 | `theorem` | [subset_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/subset-sphere--7c2fabeecd9a0c99e96109ca.md) | 111 | `result-track:7c2fabeecd9a0c99e96109ca99d5682787a46a064c7fc3e1122a9f4f9b2d740b` |
| 14 | `theorem` | [dist_of_mem_subset_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/dist-of-mem-subset-sphere--3366d526c7292e4d4b20c0d6.md) | 115 | `result-track:3366d526c7292e4d4b20c0d6bc6070346c0aa9d0c66c81075fd5bad08c9bd4c1` |
| 15 | `theorem` | [dist_of_mem_subset_mk_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/dist-of-mem-subset-mk-sphere--332f8c2f703bbcf7432a8a81.md) | 120 | `result-track:332f8c2f703bbcf7432a8a81538f1bc20a640f1f8d8243b0cb6fa2605e2b3d8e` |
| 16 | `theorem` | [Sphere.ne_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere-ne-iff--967b688a3673b18922961bc2.md) | 125 | `result-track:967b688a3673b18922961bc2349e08f092d5cdb5e7f4b02dac33341dd0e134bc` |
| 17 | `theorem` | [Sphere.center_eq_iff_eq_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere-center-eq-iff-eq-of-mem--5438cf716a79e3f80708d58a.md) | 130 | `result-track:5438cf716a79e3f80708d58af7ac0dbef9170ceded0eb31638eda8130076a3d5` |
| 18 | `theorem` | [Sphere.center_ne_iff_ne_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere-center-ne-iff-ne-of-mem--1354aa19f39a421c8fa4e278.md) | 137 | `result-track:1354aa19f39a421c8fa4e278fd14bd480e6ec9d8b376ca9d773799f0e4aebf1b` |
| 19 | `theorem` | [dist_center_eq_dist_center_of_mem_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/dist-center-eq-dist-center-of-mem-sphere--a303252399f983e8a643b328.md) | 142 | `result-track:a303252399f983e8a643b32867e39ad8ee469b7d8d0720c20f5ae368f98e0154` |
| 20 | `theorem` | [dist_center_eq_dist_center_of_mem_sphere'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/dist-center-eq-dist-center-of-mem-sphere--cd4d5a860219f0e04f375595.md) | 147 | `result-track:cd4d5a860219f0e04f375595cdb98366ecbc10ca57d2f41dd34b11375505110c` |
| 21 | `def` | [Cospherical](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/cospherical--af08ebcd301895f4ed0bcfc1.md) | 155 | `declaration-track:af08ebcd301895f4ed0bcfc1714d7df032dbf6019136e6452bb6ac45dac09364` |
| 22 | `theorem` | [cospherical_def](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/cospherical-def--1b30ebbee6959295397ef530.md) | 160 | `result-track:1b30ebbee6959295397ef5303f3584809ed4b597646710ae7b70cd6650fc53c5` |
| 23 | `theorem` | [cospherical_iff_exists_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/cospherical-iff-exists-sphere--ebb41c2209bb75c009c6efa4.md) | 166 | `result-track:ebb41c2209bb75c009c6efa4cff2ec649912e6bb78a11efbc57e4f8e4309dc01` |
| 24 | `theorem` | [Sphere.cospherical](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sphere-cospherical--a9d3d9a2feb12e16ec1d357f.md) | 176 | `result-track:a9d3d9a2feb12e16ec1d357f2f976fd5a1758f435851600b2abb138cbc0eae10` |
| 25 | `theorem` | [Cospherical.subset](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/cospherical-subset--097043a00899159b890fadf6.md) | 181 | `result-track:097043a00899159b890fadf6a0ef7e1fdc140e12781f1df73ba62d25b4d19d86` |
| 26 | `theorem` | [cospherical_empty](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/cospherical-empty--e6ef9d1f68809b7b2020e153.md) | 188 | `result-track:e6ef9d1f68809b7b2020e1538aba2a0cc4bf55ea181c2dce0668b0cf405b4ee6` |
| 27 | `theorem` | [cospherical_singleton](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/cospherical-singleton--1314ce903c3c3b9a53ac78b0.md) | 194 | `result-track:1314ce903c3c3b9a53ac78b055765545019aaf81c9bac377741013ebb6473c16` |
| 28 | `theorem` | [cospherical_pair](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/cospherical-pair--a369980be0ff64edc7a9c5e1.md) | 206 | `result-track:a369980be0ff64edc7a9c5e1e8bdc143e5517651e28b71c0b3cc936927279432` |
| 29 | `structure` | [Concyclic](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/concyclic--1c4708728c555aba887c2992.md) | 215 | `declaration-track:1c4708728c555aba887c299279b8860a90543521ce4b58673606a70093ba259e` |
| 30 | `theorem` | [Concyclic.subset](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/concyclic-subset--de4b2793ddeea2fb7a549bfd.md) | 221 | `result-track:de4b2793ddeea2fb7a549bfdddc464734a65c36f926501ebc08addd512b18fbf` |
| 31 | `theorem` | [concyclic_empty](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/concyclic-empty--3e68d5cdc3b1217a407637a2.md) | 226 | `result-track:3e68d5cdc3b1217a407637a294a531b30314f0bd8b4b96aef399b39950b77495` |
| 32 | `theorem` | [concyclic_singleton](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/concyclic-singleton--58450b850c39e90a149df70c.md) | 231 | `result-track:58450b850c39e90a149df70c36d70c6d9fa9ac7f6eae05ea065c8b544eda5e8c` |
| 33 | `theorem` | [concyclic_pair](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/concyclic-pair--9a2dd1b9404a7a04bfe586f3.md) | 236 | `result-track:9a2dd1b9404a7a04bfe586f366981c43b50cb3fd38ebf81a861911d7f99f511a` |
| 34 | `theorem` | [Cospherical.affineIndependent](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/cospherical-affineindependent--080fea2a5a034f6f4aa90d1a.md) | 247 | `result-track:080fea2a5a034f6f4aa90d1a5b12ae1184ff327d1a437bcd88d93e97669ae44a` |
| 35 | `theorem` | [Cospherical.affineIndependent_of_mem_of_ne](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/cospherical-affineindependent-of-mem-of-ne--7900ea4b574f839dbcb1cfb5.md) | 285 | `result-track:7900ea4b574f839dbcb1cfb569ac032e8bd0defc1b5806430fff746ac56cc252` |
| 36 | `theorem` | [Cospherical.affineIndependent_of_ne](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/cospherical-affineindependent-of-ne--497239f0999e6c1ce1f18ee8.md) | 295 | `result-track:497239f0999e6c1ce1f18ee831b199caa717c7708a4baa6a71978fd7fb16e821` |
| 37 | `theorem` | [inner_vsub_vsub_of_mem_sphere_of_mem_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/inner-vsub-vsub-of-mem-sphere-of-mem-sphere--2fb0c088a14c5677b2c7f68e.md) | 306 | `result-track:2fb0c088a14c5677b2c7f68e4ff522a7065d8438866c742f67360607050a6378` |
| 38 | `theorem` | [eq_of_mem_sphere_of_mem_sphere_of_mem_of_finrank_eq_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/eq-of-mem-sphere-of-mem-sphere-of-mem-of-finrank-eq-two--485d4f79cf685cb25b35513a.md) | 316 | `result-track:485d4f79cf685cb25b35513a45fef4ee9ad36b799646ef51b62a219bcbe3ecdb` |
| 39 | `theorem` | [eq_of_mem_sphere_of_mem_sphere_of_finrank_eq_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/eq-of-mem-sphere-of-mem-sphere-of-finrank-eq-two--d19af310f18c3417488c1e73.md) | 327 | `result-track:d19af310f18c3417488c1e7304e8400e791472d1e3d5f7b3d443da00b752bce5` |
| 40 | `theorem` | [inner_pos_or_eq_of_dist_le_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/inner-pos-or-eq-of-dist-le-radius--d769d45c6cdec2c54df408ee.md) | 337 | `result-track:d769d45c6cdec2c54df408ee1859188416380d50381e1a047c7e3c91e11a820e` |
| 41 | `theorem` | [inner_nonneg_of_dist_le_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/inner-nonneg-of-dist-le-radius--dab8432261800708ef98da8c.md) | 367 | `result-track:dab8432261800708ef98da8c06269943ef3cfab118dfc9397c79722990f8f4ad` |
| 42 | `theorem` | [inner_pos_of_dist_lt_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/inner-pos-of-dist-lt-radius--5e21e11a8ce32b20915521f4.md) | 376 | `result-track:5e21e11a8ce32b20915521f41dd1091941337db4e161c0b95ce587ca3f24046a` |
| 43 | `theorem` | [wbtw_of_collinear_of_dist_center_le_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/wbtw-of-collinear-of-dist-center-le-radius--41e319f622eee2b64ec8fc47.md) | 386 | `result-track:41e319f622eee2b64ec8fc4738147ae06729a1164f0658a966b371c897f46797` |
| 44 | `theorem` | [sbtw_of_collinear_of_dist_center_lt_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/declarations/sbtw-of-collinear-of-dist-center-lt-radius--77cc52c24ca920010b9c1da9.md) | 394 | `result-track:77cc52c24ca920010b9c1da9bca1d06d46580bf63bd16b6a7b702d6740e4a305` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
