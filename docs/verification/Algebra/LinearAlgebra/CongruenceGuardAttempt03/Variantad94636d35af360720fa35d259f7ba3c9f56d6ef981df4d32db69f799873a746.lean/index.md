# Verification target: GRWTSK.Algebra.LinearAlgebra.CongruenceGuardAttempt03.Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a1e574a2678fd1a07a9832f81df2d1cc28f0793",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a1e574a2678fd1a07a9832f81df2d1cc28f0793`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/quadratic--5d92639334b36c8dfb02800d.md) | 24 | `declaration-track:5d92639334b36c8dfb02800d7b8120f1cf1405f4a2b8a8968b2313f2db3d6357` |
| 2 | `def` | [HasNegativeDirection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/hasnegativedirection--44696a16d61a4eb289783964.md) | 27 | `declaration-track:44696a16d61a4eb2897839648f9e0cb20372080685b792f6860d30f14a2062be` |
| 3 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/pullback--cadc2adf46f0a38cb31dd6cb.md) | 30 | `declaration-track:cadc2adf46f0a38cb31dd6cbf692a1d1ef1dbbc130db2ca16386409c57377795` |
| 4 | `theorem` | [quadratic_pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/quadratic-pullback--ef5e36378b8726f4f85a9079.md) | 33 | `result-track:ef5e36378b8726f4f85a907910882a11fa570f0a37d0ba8d24ccf0dc5938d185` |
| 5 | `theorem` | [pullback_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/pullback-ishermitian--ffe356641b4d301ab91d2d16.md) | 39 | `result-track:ffe356641b4d301ab91d2d1619f9796772d2ed3ca29a0c8da1d18c66e876200a` |
| 6 | `theorem` | [invertible_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/invertible-psd-iff--299a956a58dee3c881bd534b.md) | 43 | `result-track:299a956a58dee3c881bd534b57ae7725e632d09257ef198d1d09b2237e423ebe` |
| 7 | `theorem` | [unitary_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/unitary-psd-iff--4b3e74f738a04f7f68f9ac14.md) | 47 | `result-track:4b3e74f738a04f7f68f9ac14ddad6e8c48c7d59436a5a65281cf7303e87465b0` |
| 8 | `theorem` | [inverse_negative_witness](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/inverse-negative-witness--552b5d3e65eae3259011ca72.md) | 52 | `result-track:552b5d3e65eae3259011ca72fa4783b41f1c3e60655ff2bfc8c6264990f6b463` |
| 9 | `theorem` | [invertible_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/invertible-negative-iff--7e4167cf02610b7d50b7a7d9.md) | 58 | `result-track:7e4167cf02610b7d50b7a7d9d9bfcf9dda73ed83df4df328a468a78b20f76970` |
| 10 | `theorem` | [negative_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/negative-not-psd--baddf2f373b2329fdafe1d3a.md) | 67 | `result-track:baddf2f373b2329fdafe1d3a3b756f16ef897da33ef78ec8f3569a50f7648c74` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/hermitian-negative-iff-not-psd--c9671f97021c9e2f059f810a.md) | 74 | `result-track:c9671f97021c9e2f059f810a368173b0e633348874667c974fbcf5e37231b907` |
| 12 | `theorem` | [pullback_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/pullback-one--c9d943ce25ae9ed95cf7d14b.md) | 86 | `result-track:c9d943ce25ae9ed95cf7d14b274218721c64093cacc997c5fc2095aec4f32889` |
| 13 | `theorem` | [pullback_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/pullback-mul--f9a546cee05454b2c025b58f.md) | 90 | `result-track:f9a546cee05454b2c025b58f9c4ae24b9a0a2ddb8215d00d39b8feece833d92d` |
| 14 | `def` | [groupTransport](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/grouptransport--5f7edda61b1556b40e66f8a7.md) | 95 | `declaration-track:5f7edda61b1556b40e66f8a7c0ead64e63684b5b5f59dfa6131e0edf021ced3a` |
| 15 | `theorem` | [groupTransport_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/grouptransport-one--10962c3105534415dd710f9e.md) | 98 | `result-track:10962c3105534415dd710f9eb86ec02ab89db24ab3f6fe6805f6d6d91773409c` |
| 16 | `theorem` | [groupTransport_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/grouptransport-mul--02231e98b1d9d0f5fe067b11.md) | 102 | `result-track:02231e98b1d9d0f5fe067b1169f05410e534daf7961ee199b8a042e66215e66d` |
| 17 | `def` | [congruenceAction](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/congruenceaction--5f6e477ef745281edb4a40cf.md) | 109 | `declaration-track:5f6e477ef745281edb4a40cf8943b8bf301c8e9e961df0e442cbc9da753b6d88` |
| 18 | `theorem` | [group_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/group-negative-iff--93be76ea55b84a5f3ee4c8fc.md) | 115 | `result-track:93be76ea55b84a5f3ee4c8fc35bb6e26c0734ebe0071484c913240a132f55c0e` |
| 19 | `theorem` | [group_orbit_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/group-orbit-not-psd--15b31e1560821ebe2b12317a.md) | 120 | `result-track:15b31e1560821ebe2b12317a3b60f6cdabb4698549fb01689b97920818f7358b` |
| 20 | `structure` | [SourcePreserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/sourcepreserving--0497d9de150dfbd3fe027bb2.md) | 126 | `declaration-track:0497d9de150dfbd3fe027bb2b3e76da1f2c70eeaffea1e904cfac3ce01ddb0b3` |
| 21 | `structure` | [CorrectedSource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/correctedsource--bbbf5f091e8dccc7018820e0.md) | 131 | `declaration-track:bbbf5f091e8dccc7018820e06d7720c750c5c309202c719bf2ba3979116e4710` |
| 22 | `structure` | [LossySource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/lossysource--5641909ed026dd664e49a19b.md) | 137 | `declaration-track:5641909ed026dd664e49a19b0a994b27fdc5567027f52680a95fd3607a240a66` |
| 23 | `theorem` | [SourcePreserving.psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/sourcepreserving-psd-iff--ee24ce453feb4a482fba7b1c.md) | 142 | `result-track:ee24ce453feb4a482fba7b1c7347a18b796db0cf409ad804fcac796a3d10fb57` |
| 24 | `theorem` | [SourcePreserving.negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/sourcepreserving-negative-iff--7de91e4c540767d5257f850a.md) | 147 | `result-track:7de91e4c540767d5257f850a863af40595785ad9c74ec7ef915edaa9dc1c4a0d` |
| 25 | `theorem` | [CorrectedSource.quadratic_defect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/correctedsource-quadratic-defect--320c06c9fde473b92857c579.md) | 152 | `result-track:320c06c9fde473b92857c57975ab8d899f0ffb9aca0b45222df0e0bf8b5d7d7b` |
| 26 | `def` | [indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/indefinite--650db0cb139909cb2fde577f.md) | 162 | `declaration-track:650db0cb139909cb2fde577f1b79a03bc068e903c72a33419e0ac05e13227e4c` |
| 27 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/swap--4157a99664cac1d695e971bb.md) | 163 | `declaration-track:4157a99664cac1d695e971bbeb17e4b9ada3f2c31cc4f50ab5209e0780eefb0d` |
| 28 | `def` | [imaginaryShear](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/imaginaryshear--1acd1f23fd54dae90a1f995b.md) | 168 | `declaration-track:1acd1f23fd54dae90a1f995bf7354c6d393738991743f6640f41c4edd8e73726` |
| 29 | `def` | [projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/projection--178d2dc91fa93e302e14efff.md) | 174 | `declaration-track:178d2dc91fa93e302e14efff7929ae860fd1ab588c79e58f1af35fa67275a606` |
| 30 | `theorem` | [indefinite_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/indefinite-hermitian--8df73666e5eae3c5742bda54.md) | 176 | `result-track:8df73666e5eae3c5742bda5437c4f4bbd16c7ecb1ffb91d4157d9fd6ce33ebf7` |
| 31 | `theorem` | [indefinite_negative](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/indefinite-negative--57c29e84a0da15746be080fd.md) | 179 | `result-track:57c29e84a0da15746be080fdd6ed6f4dbb26003a6d75fb19113471447777e1c4` |
| 32 | `theorem` | [swap_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/swap-still-indefinite--1247ab45d6a06df84f1f97ef.md) | 183 | `result-track:1247ab45d6a06df84f1f97ef0fdd9749c16fe13191eb3b07a658da2330cc79f4` |
| 33 | `theorem` | [shear_actual_negative_value](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/shear-actual-negative-value--d2743ffa368cece23b65cc5f.md) | 188 | `result-track:d2743ffa368cece23b65cc5f99dd8cdfbee79d6abe5ce5ccc2cd79c6696bf748` |
| 34 | `theorem` | [shear_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/shear-still-indefinite--2d93d8555514004f3e81f986.md) | 193 | `result-track:2d93d8555514004f3e81f986820524dd8615ad4ccaea4fa4f79c2f4ed8ead4d8` |
| 35 | `theorem` | [projected_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/projected-indefinite--ee1f4460a5dafcc66038489d.md) | 199 | `result-track:ee1f4460a5dafcc66038489dd1a4440054101ef3e8c264fdf832c8a66402ab02` |
| 36 | `theorem` | [projection_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/projection-psd--4743f555f94b91f6a4388117.md) | 203 | `result-track:4743f555f94b91f6a4388117f5ee6d1b2b6fc9e08d0ac41223ec3234e1117aa4` |
| 37 | `def` | [lossy_projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/lossy-projection--0fa515f53a6005f86fef2404.md) | 210 | `declaration-track:0fa515f53a6005f86fef24049fe6d413bd21c84b41246749fd807fdf4a33f938` |
| 38 | `theorem` | [singular_psd_does_not_reflect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/singular-psd-does-not-reflect--9d73824d2523e8095c7bd5e0.md) | 215 | `result-track:9d73824d2523e8095c7bd5e06cfae000173e3e58441ea84bd300b6db3c710f32` |
| 39 | `theorem` | [correction_changes_sign](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/declarations/correction-changes-sign--574f202868585568bf8d7562.md) | 219 | `result-track:574f202868585568bf8d75627771028c75d13271b0732c7f76aa059cb31bd9ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
