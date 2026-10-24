# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Incenter.Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86a227ab743ccccb78a0a4897c9fd34277dea709",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86a227ab743ccccb78a0a4897c9fd34277dea709`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ExcenterExists.angle_excenter_touchpoint_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/excenterexists-angle-excenter-touchpoint-eq--4feba1eb4d06b94ed1fc818a.md) | 36 | `result-track:4feba1eb4d06b94ed1fc818a4f6726050bc740aeb1307d8ceacfa9e0ef8abc4e` |
| 2 | `lemma` | [angle_incenter_touchpoint_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/angle-incenter-touchpoint-eq--99eaa5d0a6b5e87c3630d6a2.md) | 47 | `result-track:99eaa5d0a6b5e87c3630d6a20435cf3a0edc49ccd9fb90f8b484114ffb5b367c` |
| 3 | `lemma` | [exists_excenterExists_and_eq_excenter_of_forall_angle_orthogonalProjectionSpan_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/exists-excenterexists-and-eq-excenter-of-forall-angle-orthogonalprojecti--9e3d691a0fd57e7bad32ddac.md) | 58 | `result-track:9e3d691a0fd57e7bad32ddac0f027d782f67c364a26d80110b2512f90f29752d` |
| 4 | `lemma` | [dist_orthogonalProjectionSpan_faceOpposite_eq_iff_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/dist-orthogonalprojectionspan-faceopposite-eq-iff-two-zsmul-oangle-eq--19bed485c01b8c08b3725b05.md) | 90 | `result-track:19bed485c01b8c08b3725b05c56c2d0411643e01ac578d5753c9e205ca0bac4d` |
| 5 | `lemma` | [two_zsmul_oangle_excenter_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/two-zsmul-oangle-excenter-eq--66919ea4cc9dec9225a77973.md) | 109 | `result-track:66919ea4cc9dec9225a7797325a1d472ed406854455348fcb61355ec27cbf2c9` |
| 6 | `lemma` | [oangle_incenter_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/oangle-incenter-eq--3f148ba904129652a08db169.md) | 116 | `result-track:3f148ba904129652a08db169105834c4bffaf1a9472edfa919a9b3420c451993` |
| 7 | `lemma` | [oangle_excenter_singleton_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/oangle-excenter-singleton-eq--7b76864c29d6470faef4bfd9.md) | 130 | `result-track:7b76864c29d6470faef4bfd9ac4e4531f6d3382aa2fee1bcf02efae4bb705422` |
| 8 | `lemma` | [oangle_excenter_singleton_eq_add_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/oangle-excenter-singleton-eq-add-pi--4d2d5b4f81cdc9da8c55abdb.md) | 146 | `result-track:4d2d5b4f81cdc9da8c55abdb4820af6b9c3bd4d2f29eb4caf531785cff726a37` |
| 9 | `lemma` | [eq_excenter_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/eq-excenter-of-two-zsmul-oangle-eq--2d81731e5af252c93cb752b7.md) | 163 | `result-track:2d81731e5af252c93cb752b77e8080f82545c93d6b57c2c832ba2c2ec376401f` |
| 10 | `lemma` | [eq_incenter_or_eq_excenter_singleton_of_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/eq-incenter-or-eq-excenter-singleton-of-oangle-eq--38e7fa7e29ff102c16a0dd83.md) | 186 | `result-track:38e7fa7e29ff102c16a0dd830c2fc5a99af749490e78465012efa5407d7aa865` |
| 11 | `lemma` | [eq_excenter_singleton_of_oangle_eq_add_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/eq-excenter-singleton-of-oangle-eq-add-pi--9822c4ec350f716d6e83bfd4.md) | 203 | `result-track:9822c4ec350f716d6e83bfd4171e91431052db4ee7473629c1c96a8b573f369e` |
| 12 | `lemma` | [eq_incenter_of_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/eq-incenter-of-oangle-eq--796508ae0336231c8d2d3c5e.md) | 218 | `result-track:796508ae0336231c8d2d3c5e821db1d4c18a7b84194da084d8d2abb6f40c50cc` |
| 13 | `lemma` | [eq_excenter_singleton_of_oangle_eq_of_oangle_eq_add_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/eq-excenter-singleton-of-oangle-eq-of-oangle-eq-add-pi--a372286fb58d9ee8ae69b058.md) | 236 | `result-track:a372286fb58d9ee8ae69b058974db9b04b91baee8e272a1a394e8518be5621c0` |
| 14 | `lemma` | [eq_excenter_singleton_of_oangle_eq_add_pi_of_oangle_eq_add_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/eq-excenter-singleton-of-oangle-eq-add-pi-of-oangle-eq-add-pi--1091519b596a345729c8dcf0.md) | 254 | `result-track:1091519b596a345729c8dcf0e9d2cd40a05450ae076f43a13fd9064983946d00` |
| 15 | `lemma` | [angle_incenter_eq_angle_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/angle-incenter-eq-angle-div-two--5775157659888256884ffa82.md) | 279 | `result-track:5775157659888256884ffa82e653c2188251685980c79d8d70b5c40c0fba4446` |
| 16 | `lemma` | [two_mul_angle_incenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/two-mul-angle-incenter--620d1a823a26c341701730df.md) | 292 | `result-track:620d1a823a26c341701730df872edf16db6f1eac474d4a1a1877af82bea074b3` |
| 17 | `lemma` | [angle_incenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/angle-incenter--1900fd64bdfec477ec275377.md) | 299 | `result-track:1900fd64bdfec477ec27537796912358d074b582e5a8dc429853c0b04a27d6e0` |
| 18 | `lemma` | [angle_excenter_singleton_eq_angle_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/angle-excenter-singleton-eq-angle-div-two--f14d54ee6ffc3c91511da163.md) | 306 | `result-track:f14d54ee6ffc3c91511da1631894dc2442cf97ff27b54706076357ef722ebb5b` |
| 19 | `lemma` | [two_mul_angle_excenter_singleton](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/two-mul-angle-excenter-singleton--54ab4cc3bceb9d40aac4e513.md) | 321 | `result-track:54ab4cc3bceb9d40aac4e5133f48d4966eacf6c49a9c79608064ddd20ce7015f` |
| 20 | `lemma` | [angle_excenter_singleton](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/angle-excenter-singleton--864e08c883648d3c52f859f4.md) | 329 | `result-track:864e08c883648d3c52f859f4bb9890094c5caa3ebf1abbdc633f23fa0e59848b` |
| 21 | `lemma` | [angle_excenter_singleton_eq_angle_add_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/angle-excenter-singleton-eq-angle-add-pi-div-two--1d83066bb15fb424c3f88555.md) | 337 | `result-track:1d83066bb15fb424c3f885550bc86c8375d20fe40035ae968df3ec7e190b0f88` |
| 22 | `lemma` | [two_mul_angle_excenter_singleton_eq_angle_add_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/two-mul-angle-excenter-singleton-eq-angle-add-pi--4001539c68a1ebb50ab57293.md) | 351 | `result-track:4001539c68a1ebb50ab572937ab23ad7002acc2de0fd56032b46eccb32bb9354` |
| 23 | `lemma` | [angle_excenter_singleton_eq_pi_sub_angle_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/angle-excenter-singleton-eq-pi-sub-angle-div-two--cc089c399b203c4532edbc69.md) | 359 | `result-track:cc089c399b203c4532edbc69289908655ad18efa16a32f126b92c484bed8a962` |
| 24 | `lemma` | [two_mul_angle_excenter_singleton_eq_pi_sub_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/two-mul-angle-excenter-singleton-eq-pi-sub-angle--247223cc922528c0796deb48.md) | 375 | `result-track:247223cc922528c0796deb4830e99b58dcd2f0d5df3d5349897b9c19f4c15e32` |
| 25 | `lemma` | [angle_excenter_singleton_sub](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/declarations/angle-excenter-singleton-sub--06dcc3d61b8a9d8beb470d64.md) | 383 | `result-track:06dcc3d61b8a9d8beb470d64b9a2db4bc40e793edc4eb7dc5a89a6b85d66f22f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
