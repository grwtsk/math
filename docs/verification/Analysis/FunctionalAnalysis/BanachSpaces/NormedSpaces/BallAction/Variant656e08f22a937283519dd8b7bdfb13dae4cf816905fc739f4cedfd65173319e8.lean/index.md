# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.BallAction.Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43f379bc003570f0f08eb8efa0dd14e7232848c1",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43f379bc003570f0f08eb8efa0dd14e7232848c1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.UnitBall` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulActionClosedBallBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/mulactionclosedballball--6a0dd20ab72b24b066c0ba12.md) | 36 | `declaration-track:6a0dd20ab72b24b066c0ba1220e105891486ca79773b2e0c12c79f4660f6038e` |
| 2 | `instance` | [continuousSMul_closedBall_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/continuoussmul-closedball-ball--06388b5bc258256112e51319.md) | 46 | `declaration-track:06388b5bc258256112e51319060f52d240ee23f11db7afeecb2ddcb4c21aad0c` |
| 3 | `instance` | [mulActionClosedBallClosedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/mulactionclosedballclosedball--d83386b8c04f34dae441ce5e.md) | 49 | `declaration-track:d83386b8c04f34dae441ce5e9b61b35b84bfcbee4b32226aa4ae5cb9d66d8428` |
| 4 | `instance` | [continuousSMul_closedBall_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/continuoussmul-closedball-closedball--23f6c0ebaf12ccc119f320d7.md) | 60 | `declaration-track:23f6c0ebaf12ccc119f320d7d448ce432fd3884bb39cd9b4cd94198c2805b724` |
| 5 | `instance` | [mulActionSphereBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/mulactionsphereball--9e719d3abe0970d7edb88859.md) | 68 | `declaration-track:9e719d3abe0970d7edb88859c35a4976c9c01caa9215b1eb409fbaecd9eca47a` |
| 6 | `instance` | [continuousSMul_sphere_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/continuoussmul-sphere-ball--0f84588b1faf136c6481f16e.md) | 73 | `declaration-track:0f84588b1faf136c6481f16e746715f88889b8799aaa7a94292cf7dac2ed8068` |
| 7 | `instance` | [mulActionSphereClosedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/mulactionsphereclosedball--a1862a835b6f95dc7be1310e.md) | 76 | `declaration-track:a1862a835b6f95dc7be1310e20522b85e71c27d33d81eb7639827f2640335634` |
| 8 | `instance` | [continuousSMul_sphere_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/continuoussmul-sphere-closedball--1f39d740ebfaf1678d79e9be.md) | 81 | `declaration-track:1f39d740ebfaf1678d79e9be885156e002d08f0373759c6d8207f64c031bce2b` |
| 9 | `instance` | [mulActionSphereSphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/mulactionspheresphere--93e40cc46ea77835922c4077.md) | 85 | `declaration-track:93e40cc46ea77835922c4077bcb10fa341fb217a72be25491dabb52bc6997d8b` |
| 10 | `instance` | [continuousSMul_sphere_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/continuoussmul-sphere-sphere--276fc3cb29226104f26487e4.md) | 94 | `declaration-track:276fc3cb29226104f26487e42be7cf9cae176d79708ede0eef4c5ec60fdcd28e` |
| 11 | `instance` | [isScalarTower_closedBall_closedBall_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/isscalartower-closedball-closedball-closedball--39f99f6fca3e63c4fa398f65.md) | 103 | `declaration-track:39f99f6fca3e63c4fa398f65fb0b23c0e9e15070ddeeacc16769c95147fd1bef` |
| 12 | `instance` | [isScalarTower_closedBall_closedBall_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/isscalartower-closedball-closedball-ball--3f1f86ee2bbc8edf0ffcc881.md) | 107 | `declaration-track:3f1f86ee2bbc8edf0ffcc881cf9e452438294b4b830516bcfdc329d5fe7a5587` |
| 13 | `instance` | [isScalarTower_sphere_closedBall_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/isscalartower-sphere-closedball-closedball--4e6bbc42952ee62407e2e1a5.md) | 111 | `declaration-track:4e6bbc42952ee62407e2e1a5ab538712c497bb6020d4026d31126065aacb488f` |
| 14 | `instance` | [isScalarTower_sphere_closedBall_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/isscalartower-sphere-closedball-ball--b78bc50ffcdce487923dabff.md) | 115 | `declaration-track:b78bc50ffcdce487923dabff51ff57fb1da540be7bf883b8ff0f631875c64e30` |
| 15 | `instance` | [isScalarTower_sphere_sphere_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/isscalartower-sphere-sphere-closedball--f9522433e9275d753e86dd97.md) | 119 | `declaration-track:f9522433e9275d753e86dd9783bd1028d7c8167f1a5a16cc6524acd27c0b48fc` |
| 16 | `instance` | [isScalarTower_sphere_sphere_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/isscalartower-sphere-sphere-ball--4c6f37b83d93c390253870ba.md) | 123 | `declaration-track:4c6f37b83d93c390253870ba32c420147cc15eef28c98203712746002fc36d26` |
| 17 | `instance` | [isScalarTower_sphere_sphere_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/isscalartower-sphere-sphere-sphere--0d5eb7a4d230f840b723c8c4.md) | 127 | `declaration-track:0d5eb7a4d230f840b723c8c4e653595bef8fdeba8e621871ee4d578d5f0a34fe` |
| 18 | `instance` | [isScalarTower_sphere_ball_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/isscalartower-sphere-ball-ball--57f4460bbd268b86f396ca22.md) | 131 | `declaration-track:57f4460bbd268b86f396ca223cdfcfbe2afbecaf74a1ab6baf450f6109e7c87c` |
| 19 | `instance` | [isScalarTower_closedBall_ball_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/isscalartower-closedball-ball-ball--e35e22c4c271dd644f7f5297.md) | 135 | `declaration-track:e35e22c4c271dd644f7f52972c241fce62728a14a8c82bb3e847b0036a12b711` |
| 20 | `instance` | [instSMulCommClass_closedBall_closedBall_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/instsmulcommclass-closedball-closedball-closedball--9e2ea2a59b6d8cb9f0608a55.md) | 145 | `declaration-track:9e2ea2a59b6d8cb9f0608a55d33e2654480b497e282deb68ddf60c903ab57332` |
| 21 | `instance` | [instSMulCommClass_closedBall_closedBall_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/instsmulcommclass-closedball-closedball-ball--799ef9bdc3cbfc2e6ea71067.md) | 149 | `declaration-track:799ef9bdc3cbfc2e6ea710675fc107429fd7d781a418bdc9843cf980c1cdc4e3` |
| 22 | `instance` | [instSMulCommClass_sphere_closedBall_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/instsmulcommclass-sphere-closedball-closedball--7217b6159f68481e62e78496.md) | 153 | `declaration-track:7217b6159f68481e62e7849656cdc16142b918d270be7ac019c7bc4a8f05dc4a` |
| 23 | `instance` | [instSMulCommClass_sphere_closedBall_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/instsmulcommclass-sphere-closedball-ball--d746cf616dcc771677a4371f.md) | 157 | `declaration-track:d746cf616dcc771677a4371fbcc5ec8a61f462ef991d4d67653df3a2fbcee9b3` |
| 24 | `instance` | [instSMulCommClass_sphere_ball_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/instsmulcommclass-sphere-ball-ball--18818ea37fc2ea3039993695.md) | 161 | `declaration-track:18818ea37fc2ea3039993695cac3906c94e899aae8afb4d293b999a8cbfe6e63` |
| 25 | `instance` | [instSMulCommClass_sphere_sphere_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/instsmulcommclass-sphere-sphere-closedball--72c996034f5c9292f4b8c167.md) | 165 | `declaration-track:72c996034f5c9292f4b8c1677718783e31e4e4c733447d8ab813948c612df2fa` |
| 26 | `instance` | [instSMulCommClass_sphere_sphere_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/instsmulcommclass-sphere-sphere-ball--019f23ff83d3757d3f504ad2.md) | 169 | `declaration-track:019f23ff83d3757d3f504ad2f00931bf8485591f4df9e96c390f85825c158195` |
| 27 | `instance` | [instSMulCommClass_sphere_sphere_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/instsmulcommclass-sphere-sphere-sphere--8aae187996c21c6733a57cd7.md) | 173 | `declaration-track:8aae187996c21c6733a57cd722a1ba6ff275b77b93bdca42bfa935e56472fa20` |
| 28 | `theorem` | [ne_neg_of_mem_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/ne-neg-of-mem-sphere--29fec59a495f6292e3f1efa3.md) | 183 | `result-track:29fec59a495f6292e3f1efa345e9157eb77985276e254f0a49a59f08f4de2e2a` |
| 29 | `theorem` | [ne_neg_of_mem_unit_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant656e08f22a937283519dd8b7bdfb13dae4cf816905fc739f4cedfd65173319e8.lean/declarations/ne-neg-of-mem-unit-sphere--e6cb51eee7a6ba5495ea6700.md) | 187 | `result-track:e6cb51eee7a6ba5495ea67006ec72c317c9d723d10e56d2ce9b23512cc014a3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
