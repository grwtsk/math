# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.BallAction.Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f484459d104476fb03896e2b7edafc5948c8116",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f484459d104476fb03896e2b7edafc5948c8116`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.UnitBall` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulActionClosedBallBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/mulactionclosedballball--bd34818296249d47b69c2d41.md) | 28 | `declaration-track:bd34818296249d47b69c2d4121453c6ee892f57aa467c8f45f2f9fca4faa2107` |
| 2 | `instance` | [continuousSMul_closedBall_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/continuoussmul-closedball-ball--bb243a8a1ae17d721863cc1e.md) | 38 | `declaration-track:bb243a8a1ae17d721863cc1ed16a84a2d5c49a01b69c48bec419c9cd62a7a703` |
| 3 | `instance` | [mulActionClosedBallClosedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/mulactionclosedballclosedball--7017a2331fcad924b3839746.md) | 41 | `declaration-track:7017a2331fcad924b3839746b16acf32404a5fe3b72957e6f7bd2ec77af021d5` |
| 4 | `instance` | [continuousSMul_closedBall_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/continuoussmul-closedball-closedball--ad10c7b37013f79b99a90811.md) | 52 | `declaration-track:ad10c7b37013f79b99a90811c2443c5fcb8ba72c6df9a2b8dc976647530facff` |
| 5 | `instance` | [mulActionSphereBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/mulactionsphereball--5fb239840ce452bee9e14f0e.md) | 60 | `declaration-track:5fb239840ce452bee9e14f0ef2050d9c954d146ec1d7be410b85b356c3294dc2` |
| 6 | `instance` | [continuousSMul_sphere_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/continuoussmul-sphere-ball--4f02c17bd37bed0745bbab89.md) | 65 | `declaration-track:4f02c17bd37bed0745bbab89fbe57f14a0cc983bce1b0edae9826eaf45d8cf3f` |
| 7 | `instance` | [mulActionSphereClosedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/mulactionsphereclosedball--af503797dd45699b8d336595.md) | 68 | `declaration-track:af503797dd45699b8d336595d1e169709b1af41449be9a38d90f33e52c526bc8` |
| 8 | `instance` | [continuousSMul_sphere_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/continuoussmul-sphere-closedball--97b25026d6f8b4174af9056b.md) | 73 | `declaration-track:97b25026d6f8b4174af9056bb04291642e1cf23d4f416a67c66c9f72f81e2026` |
| 9 | `instance` | [mulActionSphereSphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/mulactionspheresphere--b747ff11aec9b1237cc5d091.md) | 77 | `declaration-track:b747ff11aec9b1237cc5d09133706b6d1c8c1025570f0f95291fbeb596aae548` |
| 10 | `instance` | [continuousSMul_sphere_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/continuoussmul-sphere-sphere--9fd6e654312320c3ca77eb78.md) | 86 | `declaration-track:9fd6e654312320c3ca77eb78cc88991d8e60e6f055e31b40f543cb269ac6d982` |
| 11 | `instance` | [isScalarTower_closedBall_closedBall_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/isscalartower-closedball-closedball-closedball--68b144512de311cf6dde58de.md) | 95 | `declaration-track:68b144512de311cf6dde58deb40154caeaa0855e7a479ee66b50b5dade252006` |
| 12 | `instance` | [isScalarTower_closedBall_closedBall_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/isscalartower-closedball-closedball-ball--c2b94a75900d0f43d33ef340.md) | 99 | `declaration-track:c2b94a75900d0f43d33ef340ab857a458e666471840c08c2c4f0b61fa10f1519` |
| 13 | `instance` | [isScalarTower_sphere_closedBall_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/isscalartower-sphere-closedball-closedball--285efe2da28804adc24333b1.md) | 103 | `declaration-track:285efe2da28804adc24333b15ed8360701381a20fc2d62c6520306a2b08389de` |
| 14 | `instance` | [isScalarTower_sphere_closedBall_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/isscalartower-sphere-closedball-ball--b06145125df46bfc4a3a5830.md) | 107 | `declaration-track:b06145125df46bfc4a3a5830b451b9a901f41f7286ed5ce5f4289391168255d7` |
| 15 | `instance` | [isScalarTower_sphere_sphere_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/isscalartower-sphere-sphere-closedball--e4783301e15f0d8c653b9982.md) | 111 | `declaration-track:e4783301e15f0d8c653b998271be405d6e74f85f61baacaa97a7b93df2f99a6a` |
| 16 | `instance` | [isScalarTower_sphere_sphere_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/isscalartower-sphere-sphere-ball--91a509ea0ec102df4a190387.md) | 115 | `declaration-track:91a509ea0ec102df4a190387b4f39eec0c6c280494f63bff6131a74e66f9272e` |
| 17 | `instance` | [isScalarTower_sphere_sphere_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/isscalartower-sphere-sphere-sphere--af3b965d642ff2f9b258764b.md) | 119 | `declaration-track:af3b965d642ff2f9b258764b0103b82661530711c01f004696fa01ad226ed0ee` |
| 18 | `instance` | [isScalarTower_sphere_ball_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/isscalartower-sphere-ball-ball--5e0348e5b3f0afd5fca6a585.md) | 123 | `declaration-track:5e0348e5b3f0afd5fca6a585acb9db3dcc97ba0a7f24deba67b44ebfe91580bb` |
| 19 | `instance` | [isScalarTower_closedBall_ball_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/isscalartower-closedball-ball-ball--719a8ec538224b06a965db3a.md) | 127 | `declaration-track:719a8ec538224b06a965db3ada95d572418cb5e3a2c1978fa87eaaa62159d3c1` |
| 20 | `instance` | [instSMulCommClass_closedBall_closedBall_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/instsmulcommclass-closedball-closedball-closedball--f51aa7c5a273b45b11e053a8.md) | 137 | `declaration-track:f51aa7c5a273b45b11e053a8ca3ac0f213976ffca2aac69c7b57c357d93d0e13` |
| 21 | `instance` | [instSMulCommClass_closedBall_closedBall_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/instsmulcommclass-closedball-closedball-ball--ec2eae976afc888e3d9b9f7b.md) | 141 | `declaration-track:ec2eae976afc888e3d9b9f7bbe130ab26863d17fe0a4362f31aefe65dce94cf8` |
| 22 | `instance` | [instSMulCommClass_sphere_closedBall_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/instsmulcommclass-sphere-closedball-closedball--17765ea323ef08ae099e3ee8.md) | 145 | `declaration-track:17765ea323ef08ae099e3ee8fa4e8835f84102c18a6f916e0aa5fd7ca2f963c0` |
| 23 | `instance` | [instSMulCommClass_sphere_closedBall_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/instsmulcommclass-sphere-closedball-ball--d2e5f58f03cdd211d72da362.md) | 149 | `declaration-track:d2e5f58f03cdd211d72da36243b34f7e9725976a607feec014edab3178aa8665` |
| 24 | `instance` | [instSMulCommClass_sphere_ball_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/instsmulcommclass-sphere-ball-ball--79a676f0aea7ada4fb487d70.md) | 153 | `declaration-track:79a676f0aea7ada4fb487d70bce721ccc9a44d0638d1cfc054a7307c24c47466` |
| 25 | `instance` | [instSMulCommClass_sphere_sphere_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/instsmulcommclass-sphere-sphere-closedball--90933eee799bec5e8c65e200.md) | 157 | `declaration-track:90933eee799bec5e8c65e200bce84b5b824a9913e7cd7fba24804c83e6811a7c` |
| 26 | `instance` | [instSMulCommClass_sphere_sphere_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/instsmulcommclass-sphere-sphere-ball--aa028e8c1faab0ab1bfe81ca.md) | 161 | `declaration-track:aa028e8c1faab0ab1bfe81ca1870bec84d525104daf3db54b9edb50252ab2817` |
| 27 | `instance` | [instSMulCommClass_sphere_sphere_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/instsmulcommclass-sphere-sphere-sphere--8c42dd7c3a72f90ad17c8fa2.md) | 165 | `declaration-track:8c42dd7c3a72f90ad17c8fa222af6a9e604140dc7383fa32fda03b105dde295c` |
| 28 | `theorem` | [ne_neg_of_mem_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/ne-neg-of-mem-sphere--8e6a97d441e098fc1a535a24.md) | 175 | `result-track:8e6a97d441e098fc1a535a24f9a6ea1e38b40e963881b98a2d57b5ed73a85e8f` |
| 29 | `theorem` | [ne_neg_of_mem_unit_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallAction/Variant5ed551243d4e538df7b80a5bb91d5da6b06554db7ad74a7326fdd83403341568.lean/declarations/ne-neg-of-mem-unit-sphere--45da680071a3783c8d23a3a6.md) | 179 | `result-track:45da680071a3783c8d23a3a6645c07f002f8ac2db96d1716455982dc372284b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
