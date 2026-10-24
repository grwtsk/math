# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.FiniteDimension.Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c536b44ca373d3bed427c4225dd17f6a03117da1",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c536b44ca373d3bed427c4225dd17f6a03117da1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.AddTorsor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.AffineIsometry` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.RieszLemma` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Module` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toLinearIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/tolinearisometryequiv--2fbe719914209ed75258f458.md) | 76 | `declaration-track:2fbe719914209ed75258f45887aa0c829a505e56ad7b062f986e2ac9be0244da` |
| 2 | `theorem` | [coe_toLinearIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/coe-tolinearisometryequiv--7f03e95dd42c6c6e71ccb242.md) | 83 | `result-track:7f03e95dd42c6c6e71ccb242571fa56dcd23f31fe195881e53373152157c3a6e` |
| 3 | `theorem` | [toLinearIsometryEquiv_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/tolinearisometryequiv-apply--4481e19332c8151090095db2.md) | 89 | `result-track:4481e19332c8151090095db2215fdf09da989eac7ca5b65d37111fdc75d49127` |
| 4 | `def` | [toAffineIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/toaffineisometryequiv--a4e87df0f8546519b687a523.md) | 108 | `declaration-track:a4e87df0f8546519b687a523f2f27fe07bafeaa906e57298f24993310eca104c` |
| 5 | `theorem` | [coe_toAffineIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/coe-toaffineisometryequiv--2504a59d68d77b22d7bcfdfd.md) | 115 | `result-track:2504a59d68d77b22d7bcfdfd3e2de24f0ad2c3060357e8b9fc8ef16153791e0f` |
| 6 | `theorem` | [toAffineIsometryEquiv_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/toaffineisometryequiv-apply--3f5a7aa13bbbfced7e2f87cf.md) | 121 | `result-track:3f5a7aa13bbbfced7e2f87cf9621000011ca8a470ec389805f0b3eb7ad8f5153` |
| 7 | `theorem` | [AffineMap.continuous_of_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/affinemap-continuous-of-finitedimensional--6f0c9dd5af41e72bf5bfcb2b.md) | 140 | `result-track:6f0c9dd5af41e72bf5bfcb2bcb2011fec1c7f04eaa9ac048025f889bcd80f481` |
| 8 | `theorem` | [AffineEquiv.continuous_of_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/affineequiv-continuous-of-finitedimensional--925d4959b090984807e8dce3.md) | 144 | `result-track:925d4959b090984807e8dce39c50ee1c52eaa087b508dd3c9b791c76b354deab` |
| 9 | `def` | [AffineEquiv.toHomeomorphOfFiniteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/affineequiv-tohomeomorphoffinitedimensional--ba08a9224ddb606e316f4325.md) | 149 | `declaration-track:ba08a9224ddb606e316f4325fc793f1971ceacef53e63b1820d62232a281ea4d` |
| 10 | `theorem` | [AffineEquiv.coe_toHomeomorphOfFiniteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/affineequiv-coe-tohomeomorphoffinitedimensional--c0e2ea0eea3e744130f5b3a6.md) | 158 | `result-track:c0e2ea0eea3e744130f5b3a6c6bdba75bed8ed6245f8f6427566fbf97c8fa609` |
| 11 | `theorem` | [AffineEquiv.coe_toHomeomorphOfFiniteDimensional_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/affineequiv-coe-tohomeomorphoffinitedimensional-symm--e0d7d46c8d649a79d79e2342.md) | 164 | `result-track:e0d7d46c8d649a79d79e234214327ec1c2524b4928396aaf5b75ae38d51f8689` |
| 12 | `theorem` | [ContinuousLinearMap.continuous_det](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/continuouslinearmap-continuous-det--d19f4a626a9e803f2171e973.md) | 171 | `result-track:d19f4a626a9e803f2171e973ce28a0e51912e895f32fcc595992c245fb72a7a7` |
| 13 | `theorem` | [lipschitzExtensionConstant_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/lipschitzextensionconstant-pos--fd910b86ddab008ee77850fe.md) | 197 | `result-track:fd910b86ddab008ee77850fefe58991c75c87c2f2b0b747bd25aa8ee38a4ffb4` |
| 14 | `theorem` | [LipschitzOnWith.extend_finite_dimension](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/lipschitzonwith-extend-finite-dimension--0647fce1b80ae079d025faf5.md) | 206 | `result-track:0647fce1b80ae079d025faf5a03e2b3380bcf61a5b5178ce975a2e1841776035` |
| 15 | `theorem` | [LinearMap.exists_antilipschitzWith](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/linearmap-exists-antilipschitzwith--24cce4596b44f9b529eb01ea.md) | 231 | `result-track:24cce4596b44f9b529eb01ea069dd2523d1f2cf0790dc958a2f798222e8ccb18` |
| 16 | `theorem` | [LinearIndependent.eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/linearindependent-eventually--61028001b9d731695c01a014.md) | 240 | `result-track:61028001b9d731695c01a014cc1cd794429d8e5ad0cb744d840b36ba6007a29f` |
| 17 | `theorem` | [isOpen_setOf_linearIndependent](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/isopen-setof-linearindependent--e44b0c7ed0101b1988dfc19f.md) | 265 | `result-track:e44b0c7ed0101b1988dfc19f3619d2851e23d89ab1d283d2f0555cf2042d0fd2` |
| 18 | `theorem` | [isOpen_setOf_nat_le_rank](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/isopen-setof-nat-le-rank--ccffaa004818258b42177ede.md) | 270 | `result-track:ccffaa004818258b42177ede4fc74272f4b1e2b266cab169910f35358064b594` |
| 19 | `theorem` | [Basis.op_nnnorm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/basis-op-nnnorm-le--abc04b54f3ef88c6ed724831.md) | 279 | `result-track:abc04b54f3ef88c6ed72483161db1fc5f7bb5f6347eb41c37985dcc76f43b35e` |
| 20 | `theorem` | [Basis.op_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/basis-op-norm-le--475772bed10152d99dcc55f2.md) | 298 | `result-track:475772bed10152d99dcc55f2a2486804786314f07b468faef8ffa3438f006891` |
| 21 | `theorem` | [Basis.exists_op_nnnorm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/basis-exists-op-nnnorm-le--72ea7a59aae00bfcf9bce5db.md) | 305 | `result-track:72ea7a59aae00bfcf9bce5db7b749ed358b99d525ac90a825f053476f9e5d57b` |
| 22 | `theorem` | [Basis.exists_op_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/basis-exists-op-norm-le--946ddc4eb53f1eef0a9c36bc.md) | 315 | `result-track:946ddc4eb53f1eef0a9c36bc7f7f6c0499e6a39ea919644eda4b6f68aead5da4` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/instance--ca1e444b997d56b7cc166d4d.md) | 324 | `declaration-track:ca1e444b997d56b7cc166d4d1f8689ca60d06eb89eda8ee306ae694cf03b364a` |
| 24 | `theorem` | [FiniteDimensional.complete](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/finitedimensional-complete--c9b0ccafa45db0c90a022e12.md) | 372 | `result-track:c9b0ccafa45db0c90a022e121be7c8e8d32d73b8d7529f0912aad6348aec5445` |
| 25 | `theorem` | [Submodule.complete_of_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/submodule-complete-of-finitedimensional--0bbc491c11c9971083f5502d.md) | 381 | `result-track:0bbc491c11c9971083f5502de46970ccb9b4f4ec2f48c9054d5a88441eeae644` |
| 26 | `theorem` | [Submodule.closed_of_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/submodule-closed-of-finitedimensional--b69b6e7640be8acd8b7644cd.md) | 387 | `result-track:b69b6e7640be8acd8b7644cd8c7a080d7fb1b4a70abf70207e774870843627ea` |
| 27 | `theorem` | [AffineSubspace.closed_of_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/affinesubspace-closed-of-finitedimensional--af386280fe1a2137c703b843.md) | 392 | `result-track:af386280fe1a2137c703b8437134705866299c3c9fff145f00c4f3cf50388350` |
| 28 | `theorem` | [exists_norm_le_le_norm_sub_of_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/exists-norm-le-le-norm-sub-of-finset--1e0f1ec7f04daf6ebbe20cd5.md) | 402 | `result-track:1e0f1ec7f04daf6ebbe20cd5d139590412721a20756cedd24f30b9e9b785001c` |
| 29 | `theorem` | [exists_seq_norm_le_one_le_norm_sub'](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/exists-seq-norm-le-one-le-norm-sub--9842924c81b1a0bf03ad2085.md) | 428 | `result-track:9842924c81b1a0bf03ad20850b70c766049c5c3d757d8bc8136142bf8e871ce8` |
| 30 | `theorem` | [exists_seq_norm_le_one_le_norm_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/exists-seq-norm-le-one-le-norm-sub--34f9fb6f9fc69fc79b932e2b.md) | 442 | `result-track:34f9fb6f9fc69fc79b932e2bd996b82ad6ebce01e39c924b08224909df611fa2` |
| 31 | `theorem` | [finiteDimensional_of_isCompact_closed_ball₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/finitedimensional-of-iscompact-closed-ball--9d4b874b9225e63b9b3f0b1a.md) | 454 | `result-track:9d4b874b9225e63b9b3f0b1ab21a537e536c683a53e71a615384ca76d2306b52` |
| 32 | `theorem` | [finiteDimensional_of_isCompact_closedBall](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/finitedimensional-of-iscompact-closedball--acb5f5045f2645187f2047ca.md) | 488 | `result-track:acb5f5045f2645187f2047cae9627fabebcba07d9ac99bb8d3bd9c4290d20944` |
| 33 | `theorem` | [HasCompactMulSupport.eq_one_or_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/hascompactmulsupport-eq-one-or-finitedimensional--bc2dc937dd5fb55a53991e68.md) | 500 | `result-track:bc2dc937dd5fb55a53991e6802034a04fcfd9d3a9e4b25d6419fcc563f0f3b9d` |
| 34 | `theorem` | [LinearEquiv.closedEmbedding_of_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/linearequiv-closedembedding-of-injective--2de5ba0d8565daec671c3a1e.md) | 523 | `result-track:2de5ba0d8565daec671c3a1ee1ddfbe9635e04bb1d4620fd2cecd4af8340fbc2` |
| 35 | `theorem` | [ContinuousLinearMap.exists_right_inverse_of_surjective](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/continuouslinearmap-exists-right-inverse-of-surjective--beffa3960eb5bd77fccc2a92.md) | 532 | `result-track:beffa3960eb5bd77fccc2a92ea47298f7b57ee6dc451e287f385841bb6db68ea` |
| 36 | `theorem` | [closedEmbedding_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/closedembedding-smul-left--520139dd02f9daf56af27cb5.md) | 539 | `result-track:520139dd02f9daf56af27cb5e6380b67fd7ca44d2a524b79cb1aa3f4015ae457` |
| 37 | `theorem` | [isClosedMap_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/isclosedmap-smul-left--b7dc76824cc12a5d508600b3.md) | 544 | `result-track:b7dc76824cc12a5d508600b31b29f9eb815d6c3c2abbe73c518e7f343e6f4900` |
| 38 | `def` | [ContinuousLinearEquiv.piRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/continuouslinearequiv-piring--f706d1b61853c7c2e5449579.md) | 556 | `declaration-track:f706d1b61853c7c2e5449579f43db97c0c87c74e8e043b62366322485d983273` |
| 39 | `theorem` | [continuousOn_clm_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/continuouson-clm-apply--3e53ac44f9d3b054c4fc5fa0.md) | 581 | `result-track:3e53ac44f9d3b054c4fc5fa094e450a1bdaa4895c46a4cbf5328d197f0961b4b` |
| 40 | `theorem` | [continuous_clm_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/continuous-clm-apply--c0a8d00d1cada9318e0eef36.md) | 593 | `result-track:c0a8d00d1cada9318e0eef360a7ecbd1394725cf6a759ca538694144cff7b305` |
| 41 | `theorem` | [FiniteDimensional.proper](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/finitedimensional-proper--4c76fb5a006c5d1f8de41b46.md) | 609 | `result-track:4c76fb5a006c5d1f8de41b461d5341acd9cd90b6056892fdb2043f90a41e3646` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/instance--c6aef07df35f8d4dc9d932b6.md) | 618 | `declaration-track:c6aef07df35f8d4dc9d932b6d7847caad47010419b45c2279b2b346508f79e71` |
| 43 | `theorem` | [exists_mem_frontier_infDist_compl_eq_dist](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/exists-mem-frontier-infdist-compl-eq-dist--5c37372f3610d1191a877252.md) | 627 | `result-track:5c37372f3610d1191a87725206286c90221452f49892b5b99b6995995069a224` |
| 44 | `theorem` | [IsCompact.exists_mem_frontier_infDist_compl_eq_dist](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/iscompact-exists-mem-frontier-infdist-compl-eq-dist--4f630a70e4511e689c692438.md) | 643 | `result-track:4f630a70e4511e689c692438455db2ec738b385371bf7697f93a4b1e05f8eae6` |
| 45 | `theorem` | [summable_norm_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/summable-norm-iff--cb7384b8c7daf8233441c7b9.md) | 664 | `result-track:cb7384b8c7daf8233441c7b91d3dc37ebf94994a395a89b99d6b96982808e4db` |
| 46 | `theorem` | [summable_of_isBigO'](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/summable-of-isbigo--3c3dce59b45cd2fa4b1f2565.md) | 688 | `result-track:3c3dce59b45cd2fa4b1f2565a9c9389227417346a8dfe802927747a2af8259da` |
| 47 | `theorem` | [summable_of_isBigO_nat'](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/summable-of-isbigo-nat--e1c93d453c20293833dce791.md) | 695 | `result-track:e1c93d453c20293833dce79168c48344e5d3f02abaf446c0505d2e5f84ce01ba` |
| 48 | `theorem` | [summable_of_isEquivalent](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/summable-of-isequivalent--3d676c0fde7a42ec0905022e.md) | 702 | `result-track:3d676c0fde7a42ec0905022e6bd97ddb0569402670cd85d25e22a90cddc3bff7` |
| 49 | `theorem` | [summable_of_isEquivalent_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/summable-of-isequivalent-nat--f53ccb7253a0c8c4ee5254e8.md) | 708 | `result-track:f53ccb7253a0c8c4ee5254e872b10f550ca85ee2fd22cd1fa31f1c8fd6172173` |
| 50 | `theorem` | [IsEquivalent.summable_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/isequivalent-summable-iff--a49c386f6fb31ba9394afb24.md) | 714 | `result-track:a49c386f6fb31ba9394afb24fe2a7b9c2385f40f62630a7781dbc5065d2b1306` |
| 51 | `theorem` | [IsEquivalent.summable_iff_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/declarations/isequivalent-summable-iff-nat--585bf104de350d779fff98da.md) | 720 | `result-track:585bf104de350d779fff98da1031e4cff472152ae72250eb1fe7895e74078652` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
