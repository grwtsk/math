# Verification target: GRWTSK.Topology.GeneralTopology.EqHaar.Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0226abd034d26f7e28deaa6a97b3fe7cea4aed41",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0226abd034d26f7e28deaa6a97b3fe7cea4aed41`.

Source path: `GRWTSK/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Doubling` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/macro-rules--4e22756cf3df95646df1b601.md) | 54 | `declaration-track:4e22756cf3df95646df1b6019fe94ddf38c3674d9a3d753cfad58263549a35dc` |
| 2 | `def` | [TopologicalSpace.PositiveCompacts.Icc01](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/topologicalspace-positivecompacts-icc01--6e853785652f3bcd958aa261.md) | 63 | `declaration-track:6e853785652f3bcd958aa2614b44c3e896c94428012eb41eb884b260820453e7` |
| 3 | `def` | [TopologicalSpace.PositiveCompacts.piIcc01](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/topologicalspace-positivecompacts-piicc01--f7bc93392ab07db546b14e0d.md) | 72 | `declaration-track:f7bc93392ab07db546b14e0d76bb5abbc6ecc14de1854a9ee0ae120a34fe2462` |
| 4 | `theorem` | [Basis.parallelepiped_basisFun](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/basis-parallelepiped-basisfun--9756b5ff983b16555ce5bf13.md) | 82 | `result-track:9756b5ff983b16555ce5bf13aa8712647b5cf78d6843223b49668c85f9dd5a8a` |
| 5 | `theorem` | [addHaarMeasure_eq_volume](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaarmeasure-eq-volume--9e32299b95137cc119964638.md) | 99 | `result-track:9e32299b95137cc1199646381807040b1ce37c686c2bcdc7be49c53e9472f56f` |
| 6 | `theorem` | [addHaarMeasure_eq_volume_pi](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaarmeasure-eq-volume-pi--3680aa1667a8c79f114f41f6.md) | 104 | `result-track:3680aa1667a8c79f114f41f6ab80c99a043a125bbd071f45c36b52ef9ea617e8` |
| 7 | `instance` | [isAddHaarMeasure_volume_pi](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/isaddhaarmeasure-volume-pi--083954e94669d6ca1afac95e.md) | 112 | `declaration-track:083954e94669d6ca1afac95e5c5d29650dd705bc90f66396de960274fbec68fb` |
| 8 | `theorem` | [addHaar_eq_zero_of_disjoint_translates_aux](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-eq-zero-of-disjoint-translates-aux--613f3e0edc35daa9f34cde54.md) | 126 | `result-track:613f3e0edc35daa9f34cde54abbfe93c5050356f5d1f1f17e03a0c9ff4894d7f` |
| 9 | `theorem` | [addHaar_eq_zero_of_disjoint_translates](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-eq-zero-of-disjoint-translates--18926415f8046b25832c78fd.md) | 144 | `result-track:18926415f8046b25832c78fd940e8fa9881702f63fb40c2a6907d57e59bf14e9` |
| 10 | `theorem` | [addHaar_submodule](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-submodule--a1fea71452140465ec8ab506.md) | 163 | `result-track:a1fea71452140465ec8ab506cc11b86a32bc99c62ea83e69b11e328bbec05185` |
| 11 | `theorem` | [addHaar_affineSubspace](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-affinesubspace--b6ea45ace4024526ce03295a.md) | 191 | `result-track:b6ea45ace4024526ce03295a44e12ff5a8bdead6ac0a3230f64c54d60182312e` |
| 12 | `theorem` | [map_linearMap_addHaar_pi_eq_smul_addHaar](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/map-linearmap-addhaar-pi-eq-smul-addhaar--2b83fba968d38993271afa3b.md) | 211 | `result-track:2b83fba968d38993271afa3bf793c9cbc24507413f9f02ef2628d7c3b52229c7` |
| 13 | `theorem` | [map_linearMap_addHaar_eq_smul_addHaar](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/map-linearmap-addhaar-eq-smul-addhaar--1af62c9098ddcf0519c9d642.md) | 226 | `result-track:1af62c9098ddcf0519c9d642bdbedce811ef2cff11bc6e6d1ff2665941de8c1f` |
| 14 | `theorem` | [addHaar_preimage_linearMap](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-preimage-linearmap--da94a8dd7a75d74ee213e1fc.md) | 257 | `result-track:da94a8dd7a75d74ee213e1fceb5549ab264351e15877fa836dffbd7c74e8766c` |
| 15 | `theorem` | [addHaar_preimage_continuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-preimage-continuouslinearmap--0da50c3878a33668569044db.md) | 270 | `result-track:0da50c3878a33668569044db4f011df72e2b24d116c10318fe29b042fb649bb0` |
| 16 | `theorem` | [addHaar_preimage_linearEquiv](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-preimage-linearequiv--ac631f7b4bd5d049460d6c32.md) | 279 | `result-track:ac631f7b4bd5d049460d6c32de2e435d5b4fcb3ccfc695fb3f586de39e2e71c4` |
| 17 | `theorem` | [addHaar_preimage_continuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-preimage-continuouslinearequiv--67207cb662d02b940a4d7965.md) | 289 | `result-track:67207cb662d02b940a4d79657eea7a10563810a4a57bb5cb4c91b45a09fb857e` |
| 18 | `theorem` | [addHaar_image_linearMap](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-image-linearmap--7bdb01969e39ac3eef5abbb7.md) | 297 | `result-track:7bdb01969e39ac3eef5abbb7ea6c53546361570497d222b73ea3239e93dcafda` |
| 19 | `theorem` | [addHaar_image_continuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-image-continuouslinearmap--5fd2aa1c25bfd86605b2d1f2.md) | 313 | `result-track:5fd2aa1c25bfd86605b2d1f2dcde20a399a9c68d1dcbb3c4a40c59bfa2ae395a` |
| 20 | `theorem` | [addHaar_image_continuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-image-continuouslinearequiv--6c5587660a800d597ce252dd.md) | 321 | `result-track:6c5587660a800d597ce252ddaeb6b4c4c15b69447c612158240210486c4aedb1` |
| 21 | `theorem` | [map_addHaar_smul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/map-addhaar-smul--7400d3215255c6c2f9999415.md) | 331 | `result-track:7400d3215255c6c2f9999415991f59e055113031daad35493d4264fe09d22823` |
| 22 | `theorem` | [addHaar_preimage_smul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-preimage-smul--04102f578c08096ff2eb3844.md) | 343 | `result-track:04102f578c08096ff2eb38443fae0f4f316cbe84fa3692c4cea14e7714b14afa` |
| 23 | `theorem` | [addHaar_smul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-smul--510fcdb71a7f67e9516091a2.md) | 355 | `result-track:510fcdb71a7f67e9516091a2d6708cf136c157001b85d1b4fa2c37e659447e7f` |
| 24 | `theorem` | [addHaar_smul_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-smul-of-nonneg--62664df0c84c19b02d50576c.md) | 371 | `result-track:62664df0c84c19b02d50576c81075e2499ec4b8686d4cbf71c750673daa7a035` |
| 25 | `theorem` | [NullMeasurableSet.const_smul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/nullmeasurableset-const-smul--7587deb1109ad74abdab99be.md) | 380 | `result-track:7587deb1109ad74abdab99be4e2fef45e0cdde9a4ad98dc66caa87c46dce27e6` |
| 26 | `theorem` | [addHaar_image_homothety](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-image-homothety--a691bdfabd032d7e2019b520.md) | 395 | `result-track:a691bdfabd032d7e2019b5209ec990bd37df7892ea466c6b12d3baf7be287597` |
| 27 | `theorem` | [addHaar_ball_center](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-ball-center--2b77de0e174b8bb47a3bca54.md) | 410 | `result-track:2b77de0e174b8bb47a3bca542e128a6083c5b7e0968a30fba6cfce02a4b9060e` |
| 28 | `theorem` | [addHaar_closedBall_center](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-closedball-center--eb34cb688b6e073a71036900.md) | 416 | `result-track:eb34cb688b6e073a71036900acd1bf58c95d6595f85e27c6cb75c9e952ef342d` |
| 29 | `theorem` | [addHaar_ball_mul_of_pos](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-ball-mul-of-pos--6f87bcd01c076540e61e664c.md) | 423 | `result-track:6f87bcd01c076540e61e664c8e3b74ef9ebf14ad48b302ce975476ecc6863bed` |
| 30 | `theorem` | [addHaar_ball_of_pos](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-ball-of-pos--a64cab092d2f96a5c54060b0.md) | 430 | `result-track:a64cab092d2f96a5c54060b0ee4336f247c0a7ea56655cdf9061202e8e4c3689` |
| 31 | `theorem` | [addHaar_ball_mul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-ball-mul--b7252313ccc0b7fbff7f7c94.md) | 435 | `result-track:b7252313ccc0b7fbff7f7c94228c1b4da521de2fa5a49486c20a3cbbde956564` |
| 32 | `theorem` | [addHaar_ball](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-ball--16fd347533a489f65e9716f1.md) | 443 | `result-track:16fd347533a489f65e9716f1a2ad07e05581a77de035a1933a365e36a04ab27b` |
| 33 | `theorem` | [addHaar_closedBall_mul_of_pos](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-closedball-mul-of-pos--66011e3b2c8541636bd0c92b.md) | 448 | `result-track:66011e3b2c8541636bd0c92b4947fb5fe843dca8b972461fc517be00c2bdafee` |
| 34 | `theorem` | [addHaar_closedBall_mul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-closedball-mul--acbc06eeca2e80ed5748f3ec.md) | 455 | `result-track:acbc06eeca2e80ed5748f3ec2beb6e5228369356581bb33742580e5da98b9973` |
| 35 | `theorem` | [addHaar_closedBall'](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-closedball--57703ddf4b80f12069f1277f.md) | 465 | `result-track:57703ddf4b80f12069f1277f0d88a3e787218ed8e72f558ad225faf5bb233691` |
| 36 | `theorem` | [addHaar_closed_unit_ball_eq_addHaar_unit_ball](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-closed-unit-ball-eq-addhaar-unit-ball--2328ed13d93d2ce78097b37a.md) | 470 | `result-track:2328ed13d93d2ce78097b37af72b5e8c3824fe16e4aa07604b13bd565c2a1099` |
| 37 | `theorem` | [addHaar_closedBall](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-closedball--4b270ea1a13c95933adf3cee.md) | 486 | `result-track:4b270ea1a13c95933adf3cee2b22d73e9e089fe8e6c01cfd438bf45454948406` |
| 38 | `theorem` | [addHaar_closedBall_eq_addHaar_ball](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-closedball-eq-addhaar-ball--23eeaa3b31e3616c52a12e87.md) | 491 | `result-track:23eeaa3b31e3616c52a12e87d3886d1a87152ce5c29e8e31ab0c5343d3a24e67` |
| 39 | `theorem` | [addHaar_sphere_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-sphere-of-ne-zero--a0e615b085899e30901876e4.md) | 499 | `result-track:a0e615b085899e30901876e4850ecdfb7942cc8f65145aba1f428c36605c6d7d` |
| 40 | `theorem` | [addHaar_sphere](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-sphere--f01435671f4df996c86d0fcb.md) | 507 | `result-track:f01435671f4df996c86d0fcb43c41fb38ed074ee3230ffdb5c136bf94efb7306` |
| 41 | `theorem` | [addHaar_singleton_add_smul_div_singleton_add_smul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-singleton-add-smul-div-singleton-add-smul--efbbdd2a6ce3f58f2ea78776.md) | 513 | `result-track:efbbdd2a6ce3f58f2ea787761702425085a54c5dc692a7896854203f635395a4` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/instance--d86ea31d7a6d6daf7390a8c2.md) | 532 | `declaration-track:d86ea31d7a6d6daf7390a8c2352d772dc5a2998fe6e8144aa15d94e894664e0f` |
| 43 | `theorem` | [addHaar_parallelepiped](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/addhaar-parallelepiped--e9d5ddf37490142068ff44e7.md) | 550 | `result-track:e9d5ddf37490142068ff44e74f86121fdbf802662c412448c56a474665eb5ac9` |
| 44 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.TopologicalSpacePositiveCompactsIcc01.Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.AlternatingMap.measure_parallelepiped](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/root-grwtsk-topology-generaltopology-topologicalspacepositivecompactsicc--fa82d78e9cc3ccf1041b0b6d.md) | 572 | `result-track:fa82d78e9cc3ccf1041b0b6d4d0aa897ca086ce1db8161d6aaba2154b779935d` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/instance--9503b9d8976ec0713edb0b85.md) | 580 | `declaration-track:9503b9d8976ec0713edb0b851eaab18af877d74e81fd26645bf2083b3722ca4e` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/instance--f9766507ee962ac009798c4e.md) | 583 | `declaration-track:f9766507ee962ac009798c4ee76854ef10476626b9f0896654b5438af1524799` |
| 47 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero_aux1](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero-aux1--2fb1f988e66d2c992ebf8caf.md) | 612 | `result-track:2fb1f988e66d2c992ebf8caf3ed24624c8f16d61706590a9981b9a122cdf1aa8` |
| 48 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero_aux2](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero-aux2--e6107ac77fe7931bfa29e9dd.md) | 664 | `result-track:e6107ac77fe7931bfa29e9dd5099cfc3c58533cb27dade83ad0a8b7a1ba28852` |
| 49 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero--85e7cc36b25dbf4671ccfe85.md) | 699 | `result-track:85e7cc36b25dbf4671ccfe85e26f32a3fd606777822f3d0a6927b5f0a8d4b5c0` |
| 50 | `theorem` | [tendsto_addHaar_inter_smul_one_of_density_one_aux](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/tendsto-addhaar-inter-smul-one-of-density-one-aux--ec31d6b848fc851ae3515fb1.md) | 759 | `result-track:ec31d6b848fc851ae3515fb1822b84ba7b74bda564e03962da9955831f661ffb` |
| 51 | `theorem` | [tendsto_addHaar_inter_smul_one_of_density_one](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/tendsto-addhaar-inter-smul-one-of-density-one--aa704d9446c27cfe8f082d16.md) | 815 | `result-track:aa704d9446c27cfe8f082d1632f192bbad09b40842854fe8eb570c6cf8709744` |
| 52 | `theorem` | [eventually_nonempty_inter_smul_of_density_one](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/declarations/eventually-nonempty-inter-smul-of-density-one--d3b8b78411af33811955e6d7.md) | 842 | `result-track:d3b8b78411af33811955e6d78d95297d02933ad672c9124a5b9a773fec9e27cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
