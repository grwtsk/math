# Verification target: GRWTSK.Algebra.LinearAlgebra.Internal.Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55cff02da3dc2a98053f0c407d56f81f8468ad3e",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55cff02da3dc2a98053f0c407d56f81f8468ad3e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SetLike.algebraMap_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/setlike-algebramap-mem-graded--80b48269bedae4681570b84c.md) | 56 | `result-track:80b48269bedae4681570b84c9ca81830bf4fa90c371a21edd79e2bb0206dbf6d` |
| 2 | `theorem` | [SetLike.natCast_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/setlike-natcast-mem-graded--01e6af90d721db438492cf6d.md) | 61 | `result-track:01e6af90d721db438492cf6dfbd2f9aa63fa3fd0faae03bcfd96f0a188bf27b5` |
| 3 | `theorem` | [SetLike.intCast_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/setlike-intcast-mem-graded--e3d40132043a81b42bb74c88.md) | 71 | `result-track:e3d40132043a81b42bb74c8898fc7ef4b3a6236b78cf412ad3d33df63972473d` |
| 4 | `instance` | [gnonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/gnonunitalnonassocsemiring--9e8a9015165d1d821ba39f6a.md) | 90 | `declaration-track:9e8a9015165d1d821ba39f6ab2056263987a06903bb95e5ea5a1f9233f751498` |
| 5 | `instance` | [gsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/gsemiring--61446715b95e5e905605b2b1.md) | 100 | `declaration-track:61446715b95e5e905605b2b1e83f646c5864ae5bfee67725bf1643f7f4401c93` |
| 6 | `instance` | [gcommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/gcommsemiring--5bfc6540ecd43705da8ab037.md) | 112 | `declaration-track:5bfc6540ecd43705da8ab037cfd0f33c192684a62051e313c9e8b6eee1c8f8e0` |
| 7 | `instance` | [gring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/gring--9a739a31289be0e958545536.md) | 117 | `declaration-track:9a739a31289be0e95854553650b9668df4fe717c567b693f3386766bc01d4215` |
| 8 | `instance` | [gcommRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/gcommring--0cd78f9a3dc04e127d88fc79.md) | 125 | `declaration-track:0cd78f9a3dc04e127d88fc799ddd6a7b73a564afda1cabcee33b7e671d3179df` |
| 9 | `def` | [coeRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coeringhom--9b07c7ea1d58e2de73661bc7.md) | 138 | `declaration-track:9b07c7ea1d58e2de73661bc70169dd87418d8a1e91ec13f1b18d84d997d6afb7` |
| 10 | `theorem` | [coeRingHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coeringhom-of--73491fcf87c5469d9a832f54.md) | 143 | `result-track:73491fcf87c5469d9a832f546ef8c0d382742c819b07f49b83a3b0d6dc45fc15` |
| 11 | `theorem` | [coe_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-mul-apply--46d7713736dc29bc994a67e0.md) | 147 | `result-track:46d7713736dc29bc994a67e09c03ae7d7e7a02eb45b8b705460067229e1bf957` |
| 12 | `theorem` | [coe_mul_apply_eq_dfinsuppSum](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-mul-apply-eq-dfinsuppsum--7a09ffae514e370064e999ea.md) | 154 | `result-track:7a09ffae514e370064e999ea06f5f6e8dda44bff0e3c885d617d3f2907c5e3d8` |
| 13 | `theorem` | [coe_of_mul_apply_aux](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-of-mul-apply-aux--aad19bb774247a2116c56118.md) | 171 | `result-track:aad19bb774247a2116c5611823d4573b40c73b1a9e5682635f18b405bf936bf3` |
| 14 | `theorem` | [coe_mul_of_apply_aux](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-mul-of-apply-aux--81daf1bc4bc60b7db1dc6d68.md) | 185 | `result-track:81daf1bc4bc60b7db1dc6d68a9abd4b916f67450e699f88c517084d07f4ac29c` |
| 15 | `theorem` | [coe_of_mul_apply_add](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-of-mul-apply-add--08fb6987995e15ff70821098.md) | 199 | `result-track:08fb6987995e15ff7082109895f332f911ba005d6f6c882254dc5feb7908f5a8` |
| 16 | `theorem` | [coe_mul_of_apply_add](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-mul-of-apply-add--bcf5f3548bfc67c135fc85cc.md) | 203 | `result-track:bcf5f3548bfc67c135fc85cc51958c1c3bef1606d0d828fcf69fb54e8464d22b` |
| 17 | `theorem` | [coe_of_mul_apply_of_mem_zero](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-of-mul-apply-of-mem-zero--eb03f7dbf278a8d6e89ad361.md) | 207 | `result-track:eb03f7dbf278a8d6e89ad3614df848277d989736c9338eebc923ebf8df54ad02` |
| 18 | `theorem` | [coe_mul_of_apply_of_mem_zero](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-mul-of-apply-of-mem-zero--8b2ee169b3bf99f24388ad81.md) | 211 | `result-track:8b2ee169b3bf99f24388ad81d86fc697c50b5510cbdcb61b12af433e9ca85e59` |
| 19 | `theorem` | [coe_of_mul_apply_of_not_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-of-mul-apply-of-not-le--95c2ce4d3865e40c640728a6.md) | 222 | `result-track:95c2ce4d3865e40c640728a69e41166c424a8c498e0065b2fb48df4b0468444e` |
| 20 | `theorem` | [coe_mul_of_apply_of_not_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-mul-of-apply-of-not-le--b7868408fa00e6c82af716fe.md) | 233 | `result-track:b7868408fa00e6c82af716fee51ba1f872ad54e6c1020d9184f147d2b8de9725` |
| 21 | `theorem` | [coe_mul_of_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-mul-of-apply-of-le--eb23e898940ae3aecd4dbfab.md) | 248 | `result-track:eb23e898940ae3aecd4dbfab6deaef2674ab42e8e463291d5acd230648d00f60` |
| 22 | `theorem` | [coe_of_mul_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-of-mul-apply-of-le--94bdce7ec44b84196d61b3a1.md) | 252 | `result-track:94bdce7ec44b84196d61b3a1f648afeb2f622df0fa385be0e2bc4f03a5baefcc` |
| 23 | `theorem` | [coe_mul_of_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-mul-of-apply--3ccb6b2fef63e33c62375e10.md) | 256 | `result-track:3ccb6b2fef63e33c62375e10a92a33470c133625d1fd2fc8f564c93f8e8d26d1` |
| 24 | `theorem` | [coe_of_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-of-mul-apply--4f806b21063e9e1e0d242b2c.md) | 261 | `result-track:4f806b21063e9e1e0d242b2c9fb920b2665d17b38585e3531d737816e426f792` |
| 25 | `instance` | [galgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/galgebra--61417e1b132191276c15c77d.md) | 275 | `declaration-track:61417e1b132191276c15c77ddf5d85d22823acb0cc3279864326068eee663a6b` |
| 26 | `theorem` | [setLike.coe_galgebra_toFun](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/setlike-coe-galgebra-tofun--9d47982734378f3573b14c61.md) | 286 | `result-track:9d47982734378f3573b14c61ccfe349de6c0d5fdc9761518b31a42b35a7085f0` |
| 27 | `instance` | [nat_power_gradedMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/nat-power-gradedmonoid--7324019bdccdd63d8c3fe61c.md) | 292 | `declaration-track:7324019bdccdd63d8c3fe61c2324cef508208b98ea9c064c1fe21d7b62b4e8d3` |
| 28 | `def` | [DirectSum.coeAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/directsum-coealghom--ef391bf48063d0a3ff01fc79.md) | 303 | `declaration-track:ef391bf48063d0a3ff01fc79e64795a6e8ede95fe7132b26f51abec6d99c8bb1` |
| 29 | `theorem` | [Submodule.iSup_eq_toSubmodule_range](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/submodule-isup-eq-tosubmodule-range--8d107f3f6e5d2969459f1334.md) | 309 | `result-track:8d107f3f6e5d2969459f13345b29be1fc8b3de8f744b0c6e3e3e9458b849fff2` |
| 30 | `theorem` | [DirectSum.coeAlgHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/directsum-coealghom-of--0088ed665af79ea4696dc142.md) | 315 | `result-track:0088ed665af79ea4696dc14293540eac57e72448dbefe5bc73215c908a4d4647` |
| 31 | `def` | [subsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/subsemiring--0c080a279f7e4250eca877eb.md) | 331 | `declaration-track:0c080a279f7e4250eca877eb6afc83bd731ac0a3cefa1a2cc3ac971781390611` |
| 32 | `instance` | [instSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/instsemiring--fda090e96a4f3209d291e082.md) | 339 | `declaration-track:fda090e96a4f3209d291e0825d845dd90c931c6c8535af1900edc762922b849b` |
| 33 | `theorem` | [coe_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-natcast--8b76156e68efdfa34daab4f0.md) | 341 | `result-track:8b76156e68efdfa34daab4f0e897f7972c68c4474d2a24bbbd2efdabf0a8a990` |
| 34 | `theorem` | [coe_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-ofnat--6756ecc5332e5b0dd136fab5.md) | 343 | `result-track:6756ecc5332e5b0dd136fab5b09553a3e4d427be7ab8332276b18c1c28d7a06d` |
| 35 | `instance` | [instCommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/instcommsemiring--69630d2087dcdb32aa774bb1.md) | 355 | `declaration-track:69630d2087dcdb32aa774bb152249cd9a0035c3a30a0ce64354bd5882a654101` |
| 36 | `def` | [subring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/subring--56b94431d75f0119540f76e0.md) | 364 | `declaration-track:56b94431d75f0119540f76e048c4fcaae91c2e9670633ec4d63b71422877827f` |
| 37 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/instring--02af105d56765044f40690ab.md) | 371 | `declaration-track:02af105d56765044f40690abbceb3c15b379304accacbec5138fee052859026a` |
| 38 | `theorem` | [coe_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-intcast--80b5671420914f6b6ac19d15.md) | 373 | `result-track:80b5671420914f6b6ac19d154aac966b6b3b20533198a5f86ba0033ec4e71ca7` |
| 39 | `instance` | [instCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/instcommring--64bf180b0781ce2325da126e.md) | 383 | `declaration-track:64bf180b0781ce2325da126e32eff0df52593b3bb57b5cc6ead3db30e9a220c2` |
| 40 | `def` | [subalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/subalgebra--442a370fb7a387e47d5f249d.md) | 392 | `declaration-track:442a370fb7a387e47d5f249dcc322b265b8ada2ecb048bc0bfd9729a770d04ef` |
| 41 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/instalgebra--5998e0ebb43315d4ee1d570c.md) | 399 | `declaration-track:5998e0ebb43315d4ee1d570cfdc484b6a51d3ef0ff8d8bd21b12d6f9ee2145da` |
| 42 | `theorem` | [coe_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/coe-algebramap--ee9e7bd82935d3672aece4fd.md) | 401 | `result-track:ee9e7bd82935d3672aece4fdb5bf28038746c177062115fa4114625d805278e9` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/instance--d18807e9edf7399b20feb1cf.md) | 411 | `declaration-track:d18807e9edf7399b20feb1cfbf6d71cea01df8452bd48b9a78941dc18e8b0ba5` |
| 44 | `lemma` | [algebraMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/algebramap-apply--d88bb31cffbcd4a9ea4976c9.md) | 413 | `result-track:d88bb31cffbcd4a9ea4976c9e5e783b53c1eb491ad42a353e41804e56f436f29` |
| 45 | `theorem` | [SetLike.homogeneous_zero_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/setlike-homogeneous-zero-submodule--f4f437e78f08d6ce11808d68.md) | 421 | `result-track:f4f437e78f08d6ce11808d68cae0916d15d8de4d1a8aec28efc1f077913460f3` |
| 46 | `theorem` | [SetLike.Homogeneous.smul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/declarations/setlike-homogeneous-smul--1dc3cfc4a6fc33d938d9f0c8.md) | 425 | `result-track:1dc3cfc4a6fc33d938d9f0c8c0242ed46bfd9c8cf1d01512c58b0ad3f9b3d541` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
