# Verification target: GRWTSK.Topology.GeneralTopology.FiniteDimension.Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "058e4e3352ffc42dce28b19f19cdccc0181ff341",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `058e4e3352ffc42dce28b19f19cdccc0181ff341`.

Source path: `GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Simple` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Determinant` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/instance--6df5a6c1fb76e275120dfefb.md) | 68 | `declaration-track:6df5a6c1fb76e275120dfefb16ffb32fbad3627912195456704ac0bd8b34adb6` |
| 2 | `theorem` | [unique_topology_of_t2](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/unique-topology-of-t2--3b1cf6593e0047b6977c12c7.md) | 84 | `result-track:3b1cf6593e0047b6977c12c72590bff8ff1fe056521bf02155417b0aa2858745` |
| 3 | `theorem` | [LinearMap.continuous_of_isClosed_ker](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/linearmap-continuous-of-isclosed-ker--85ddc1cd5b2fe00535f18a2d.md) | 139 | `result-track:85ddc1cd5b2fe00535f18a2d6d7f61554a447faddf488e8f64e2152e9d985a2d` |
| 4 | `theorem` | [LinearMap.continuous_iff_isClosed_ker](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/linearmap-continuous-iff-isclosed-ker--64185802b24a5441f2959282.md) | 186 | `result-track:64185802b24a5441f2959282a1b803ee4f427a4fd46fb491fe6986dff3e329e7` |
| 5 | `theorem` | [LinearMap.continuous_of_nonzero_on_open](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/linearmap-continuous-of-nonzero-on-open--a13e2136f005db45e27441c4.md) | 193 | `result-track:a13e2136f005db45e27441c4f19cb0fa37f8351f2d968eec48b82f4ea2ee8136` |
| 6 | `theorem` | [continuous_equivFun_basis_aux](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/continuous-equivfun-basis-aux--d21d46a973255f084bab7512.md) | 207 | `result-track:d21d46a973255f084bab751296ed99d45f412b59dc703642ce40c9a64d86eb21` |
| 7 | `theorem` | [LinearMap.continuous_of_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/linearmap-continuous-of-finitedimensional--8d1b159c2dca93d23187532c.md) | 254 | `result-track:8d1b159c2dca93d23187532ca9d8a471eacae10a98180fb744933a38544ad9df` |
| 8 | `instance` | [LinearMap.continuousLinearMapClassOfFiniteDimensional](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/linearmap-continuouslinearmapclassoffinitedimensional--282948e4ce7a549461b0c250.md) | 272 | `declaration-track:282948e4ce7a549461b0c250591922fe55db458edfa925a931e53953181ebb32` |
| 9 | `theorem` | [continuous_equivFun_basis](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/continuous-equivfun-basis--1ac7b89653a291372379b670.md) | 282 | `result-track:1ac7b89653a291372379b670f40f4113c28570eddf8b420bfb387fd82f30f7b9` |
| 10 | `def` | [toContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/tocontinuouslinearmap--500ee70e6051c8b79d712375.md) | 293 | `declaration-track:500ee70e6051c8b79d7123759dc1a8259df4eb2b6725d6ce8258af72fd538411` |
| 11 | `theorem` | [coe_toContinuousLinearMap'](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/coe-tocontinuouslinearmap--5c04f644547e48b548ebe433.md) | 303 | `result-track:5c04f644547e48b548ebe4330692fc63aa8962224d7107fff69edcf9e71ee19d` |
| 12 | `theorem` | [coe_toContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/coe-tocontinuouslinearmap--5b7f5d2dd6b0a01e1551739c.md) | 308 | `result-track:5b7f5d2dd6b0a01e1551739c4f75bb58f05e254453ffb24ff39fa3f351e0fcb4` |
| 13 | `theorem` | [coe_toContinuousLinearMap_symm](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/coe-tocontinuouslinearmap-symm--8b59a6e7228da7f285495b33.md) | 314 | `result-track:8b59a6e7228da7f285495b338d1c68a0d05606cddad775a81e835fc46b9c850e` |
| 14 | `theorem` | [det_toContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/det-tocontinuouslinearmap--2452ba60b8a5d81ae4582975.md) | 321 | `result-track:2452ba60b8a5d81ae458297593289dee19cee2a83e2aa37f73fe0a07c110aa5d` |
| 15 | `theorem` | [ker_toContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/ker-tocontinuouslinearmap--b5f3d4289f4119aa68b43470.md) | 327 | `result-track:b5f3d4289f4119aa68b434701e36777d96e658b44495367677fff00188aab176` |
| 16 | `theorem` | [range_toContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/range-tocontinuouslinearmap--5939a120dc9862bbca234df4.md) | 333 | `result-track:5939a120dc9862bbca234df43d69adb5056896402b91d2d38f61e8558667d299` |
| 17 | `theorem` | [isOpenMap_of_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/isopenmap-of-finitedimensional--3b515f1e4f493f8a52295c73.md) | 339 | `result-track:3b515f1e4f493f8a52295c732056a8fd057057e9fbcf8c310c5980f63f0e6ec9` |
| 18 | `instance` | [canLiftContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/canliftcontinuouslinearmap--a6ef13825ca40fa182a3b083.md) | 351 | `declaration-track:a6ef13825ca40fa182a3b0836d0bb24dd79de42c76799d46d27a3e91b8eb9ca5` |
| 19 | `def` | [toContinuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/tocontinuouslinearequiv--51e412cde6627cfa49d60354.md) | 365 | `declaration-track:51e412cde6627cfa49d60354c91acc4aba78351c760c51b28ceb861be1605968` |
| 20 | `theorem` | [coe_toContinuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/coe-tocontinuouslinearequiv--82f386b7f1711900977a6372.md) | 374 | `result-track:82f386b7f1711900977a6372cfb5d82cdc1b3351e0b1c047b3d29e9f6c201cdd` |
| 21 | `theorem` | [coe_toContinuousLinearEquiv'](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/coe-tocontinuouslinearequiv--2d8cd60381074eaf21b9346e.md) | 379 | `result-track:2d8cd60381074eaf21b9346ec125ebd8096b0a21bb14c825234eb3533af97237` |
| 22 | `theorem` | [coe_toContinuousLinearEquiv_symm](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/coe-tocontinuouslinearequiv-symm--a2cd1d9058c8e2cf5b6ccad9.md) | 384 | `result-track:a2cd1d9058c8e2cf5b6ccad926a6dbc54d3c8d60c1506f7d79d42348c79ebfb6` |
| 23 | `theorem` | [coe_toContinuousLinearEquiv_symm'](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/coe-tocontinuouslinearequiv-symm--989366868024cef0f6217401.md) | 390 | `result-track:989366868024cef0f62174016327a121d90c3620c2a85138b105902d1a0e9f65` |
| 24 | `theorem` | [toLinearEquiv_toContinuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/tolinearequiv-tocontinuouslinearequiv--eac6f9eec6c266b6c4a34afe.md) | 396 | `result-track:eac6f9eec6c266b6c4a34afe83b7fbc209cd237a8ce79ea2700eaa97b2d68c1b` |
| 25 | `theorem` | [toLinearEquiv_toContinuousLinearEquiv_symm](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/tolinearequiv-tocontinuouslinearequiv-symm--fa8bf24c6b2d6f1374c35a1c.md) | 403 | `result-track:fa8bf24c6b2d6f1374c35a1cade6023a76cc80dfecee7389744406ec63f5e70d` |
| 26 | `instance` | [canLiftContinuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/canliftcontinuouslinearequiv--ede2cc25e475d97678c40c23.md) | 409 | `declaration-track:ede2cc25e475d97678c40c234571965127186fed848e5e4d02609321ec52b8aa` |
| 27 | `theorem` | [FiniteDimensional.nonempty_continuousLinearEquiv_of_finrank_eq](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/finitedimensional-nonempty-continuouslinearequiv-of-finrank-eq--55f5a86b31a9dc335672d901.md) | 420 | `result-track:55f5a86b31a9dc335672d901be9cfdfe322c49ec946cd2ade8ca89783372f724` |
| 28 | `theorem` | [FiniteDimensional.nonempty_continuousLinearEquiv_iff_finrank_eq](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/finitedimensional-nonempty-continuouslinearequiv-iff-finrank-eq--6060019db4120e253a047d77.md) | 427 | `result-track:6060019db4120e253a047d77c9853589572af2d818f46cec7e332abb149729e5` |
| 29 | `def` | [ContinuousLinearEquiv.ofFinrankEq](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/continuouslinearequiv-offinrankeq--899cd796ae4c38cd63e1ae5a.md) | 435 | `declaration-track:899cd796ae4c38cd63e1ae5ac6bab2528da2a48ac918c9f3c31b6efe301b0308` |
| 30 | `def` | [constrL](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/constrl--926ccc78d2adf98c6e5a83ee.md) | 448 | `declaration-track:926ccc78d2adf98c6e5a83eee642d9cd969efda027652aa6556a6cfeff2c4925` |
| 31 | `theorem` | [coe_constrL](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/coe-constrl--1320ddd827b50e2e7475694d.md) | 454 | `result-track:1320ddd827b50e2e7475694da52fb7f59702ee68ca8c08b44a9cac685d7afb95` |
| 32 | `def` | [equivFunL](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/equivfunl--9c626cbdae834f897f4e4c2c.md) | 460 | `declaration-track:9c626cbdae834f897f4e4c2cbb656e363d770540d33d086405591e7d6a50472e` |
| 33 | `theorem` | [constrL_apply](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/constrl-apply--75bf6b3f5402bbdbde9e040d.md) | 471 | `result-track:75bf6b3f5402bbdbde9e040df67f7ad445b266f5bf3456d95d32a3c38d8281f1` |
| 34 | `theorem` | [constrL_basis](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/constrl-basis--6449ac0d498bcac70e51542b.md) | 477 | `result-track:6449ac0d498bcac70e51542ba1221becafadc0a53c8e97b65ebe6a991fa1fc51` |
| 35 | `def` | [toContinuousLinearEquivOfDetNeZero](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/tocontinuouslinearequivofdetnezero--cd0cafbf3c46be3cce008755.md) | 489 | `declaration-track:cd0cafbf3c46be3cce0087556e9c6760c7b75e4e14f3ac9e6d20faeaeb58d2b2` |
| 36 | `theorem` | [coe_toContinuousLinearEquivOfDetNeZero](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/coe-tocontinuouslinearequivofdetnezero--e24e23e035195d31b882457f.md) | 494 | `result-track:e24e23e035195d31b882457f1ba084b36048582f25ebd2d6543d75366a7e8238` |
| 37 | `theorem` | [toContinuousLinearEquivOfDetNeZero_apply](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/tocontinuouslinearequivofdetnezero-apply--68c3efd8f9a4710eccc443d2.md) | 501 | `result-track:68c3efd8f9a4710eccc443d2bfc8deff7a57bd09ad5077aff04b7eb0ec3aa3f4` |
| 38 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.UniqueTopologyOfT2.Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.Matrix.toLin_finTwoProd_toContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/declarations/root-grwtsk-topology-generaltopology-uniquetopologyoft2-variant9d645a94e--4cb695389dbc2087514a9b04.md) | 506 | `result-track:4cb695389dbc2087514a9b049f3bdffbc2cdcb9985f833546e5a7a9b499fca69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
